// Copyright (C) 2021 Yaroslav Pronin <proninyaroslav@mail.ru>
// Copyright (C) 2021 Insurgo Inc. <insurgo@riseup.net>
//
// This file is part of LibreTrack.
//
// LibreTrack is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// LibreTrack is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with LibreTrack.  If not, see <http://www.gnu.org/licenses/>.

import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/storage/shipment_repository.dart';
import 'package:libretrack/core/storage/track_number_repository.dart';
import 'package:libretrack/core/storage/tracking_repository.dart';
import 'package:libretrack/core/work_manager/work_manager.dart';
import 'package:libretrack/logger.dart';

import '../model/type/type.dart';
import '../platform_info.dart';
import '../settings/settings.dart';
import '../storage/storage_result.dart';
import '../tracking_limiter.dart';
import 'tracking_notify_task.dart';
import 'tracking_task.dart';

@injectable
class TrackingWorker implements Worker {
  static const tagTrackNumberServiceList = 'track_number_service_list';

  final TrackingTask _trackingTask;
  final TrackNumberRepository _trackNumberRepo;
  final ShipmentRepository _shipmentRepo;
  final TrackingRepository _trackingRepo;
  final TrackingNotifyTask _notifyTask;
  final PlatformInfo _platformInfo;
  final AppSettings _pref;
  final TrackingLimiter _trackingLimiter;

  TrackingWorker({
    required TrackingTask trackingTask,
    required TrackNumberRepository trackNumberRepo,
    required ShipmentRepository shipmentRepo,
    required TrackingRepository trackingRepo,
    required TrackingNotifyTask notifyTask,
    required PlatformInfo platformInfo,
    required AppSettings pref,
    required TrackingLimiter trackingLimiter,
  })  : _trackingTask = trackingTask,
        _trackNumberRepo = trackNumberRepo,
        _shipmentRepo = shipmentRepo,
        _trackingRepo = trackingRepo,
        _notifyTask = notifyTask,
        _platformInfo = platformInfo,
        _pref = pref,
        _trackingLimiter = trackingLimiter;

  @override
  Future<WorkResult> doWork(WorkData? inputData) async {
    final trackServiceList = await _parseTrackNumberServices(inputData);
    if (trackServiceList == null) {
      return const WorkResult.success();
    }
    final locale = await _pref.locale.when(
      system: () => _platformInfo.currentAsLocale,
      inner: (locale) async => locale,
    );
    return doTrack(trackServiceList, locale);
  }

  Future<WorkResult> doTrack(
    Set<TrackNumberService> trackServiceList,
    Locale? locale,
  ) async {
    final stream = _trackingTask.run(
      await _filter(trackServiceList),
      params: TrackingTaskParams(locale: locale),
    );
    await for (final state in stream) {
      final result = await state.map(
        loading: _onLoading,
        loaded: _onLoaded,
      );
      if (result is! WorkResultSuccess) {
        return result;
      }
    }
    return const WorkResult.success();
  }

  Future<Set<TrackNumberService>> _filter(
    Set<TrackNumberService> trackServiceList,
  ) async {
    final skippedTrackNumbers = <String>{};
    final filtered = <TrackNumberService>{};

    for (final trackService in trackServiceList) {
      final trackNumber = trackService.trackNumber;
      if (skippedTrackNumbers.contains(trackNumber)) {
        continue;
      }
      final state = await _trackingLimiter.check(trackNumber);
      state.when(
        allowed: (trackNumber) {
          filtered.add(trackService);
        },
        dissalowed: (trackNumber, remainingTime) {
          skippedTrackNumbers.add(trackNumber);
        },
        error: (trackNumber, error) {
          filtered.add(trackService);
          error.when(
            storage: (error) => error.when(
              database: (e, stackTrace) {
                log().e('Unable to check tracking',
                    error: e, stackTrace: stackTrace);
              },
            ),
          );
        },
      );
    }

    return filtered;
  }

  Future<WorkResult> _onLoading(TrackingTaskStateLoading state) async {
    final err = await _saveTrackingInfo(state.trackingInfoList);
    if (err != null) {
      err.when(
        database: (e, stackTrace) {
          log().e('Unable to save tracking info list',
              error: e, stackTrace: stackTrace);
        },
      );
      _trackingFailedNotify(state.trackingInfoList);
      return const WorkResult.failure();
    } else {
      return const WorkResult.success();
    }
  }

  Future<WorkResult> _onLoaded(TrackingTaskStateLoaded state) async {
    if (state.unsupportedServices != null) {
      final err = await _deleteUnsupportedServices(state.unsupportedServices!);
      err?.when(
        database: (e, stackTrace) {
          log().e('Unable to delete unsupported services',
              error: e, stackTrace: stackTrace);
        },
      );
    }

    if (state.disabledServices != null) {
      final err = await _saveDisableServices(state.disabledServices!);
      err?.when(
        database: (e, stackTrace) {
          log().e('Unable to save disabled services',
              error: e, stackTrace: stackTrace);
        },
      );
    }

    StorageError? err = await _saveTrackingInfo(state.trackingInfoList);
    if (err == null) {
      err = await _saveResponseInfo(state.responseInfoList);
      err?.when(
        database: (e, stackTrace) {
          log().e('Unable to save response info list',
              error: e, stackTrace: stackTrace);
        },
      );
    } else {
      err.when(
        database: (e, stackTrace) {
          log().e('Unable to save tracking info list',
              error: e, stackTrace: stackTrace);
        },
      );
      _trackingFailedNotify(state.trackingInfoList);
      return const WorkResult.failure();
    }

    err = await _deleteOldTrackingInfo(state.trackingInfoList);
    err?.when(
      database: (e, stackTrace) {
        log().e('Unable to remove old tracking info',
            error: e, stackTrace: stackTrace);
      },
    );

    for (final result in state.result) {
      StorageError? err = await _saveShipmentInfo(result);
      if (err != null) {
        err.when(
          database: (e, stackTrace) {
            log().e('Unable to save shipment info',
                error: e, stackTrace: stackTrace);
          },
        );
        continue;
      }

      err = await _saveActivities(result);
      err?.when(
        database: (e, stackTrace) {
          log().e('Unable to save activity list',
              error: e, stackTrace: stackTrace);
        },
      );
    }

    await _notifyTask.show(
      trackingInfo: state.trackingInfoList,
      trackingResult: state.result,
    );

    return const WorkResult.success();
  }

  Future<StorageError?> _saveTrackingInfo(
    List<TrackingInfo> trackingInfoList,
  ) {
    return _trackingRepo.insertTrackingInfoList(trackingInfoList).then(
          (res) => res.when(
            (value) => null,
            error: (e) => e,
          ),
        );
  }

  Future<StorageError?> _saveResponseInfo(
    List<TrackingResponseInfo> responseInfoList,
  ) {
    return _trackingRepo.addResponseList(responseInfoList).then(
          (res) => res.when(
            (value) => null,
            error: (e) => e,
          ),
        );
  }

  Future<StorageError?> _deleteUnsupportedServices(
    List<TrackNumberService> unsupportedServices,
  ) {
    return _trackNumberRepo.deleteTrackNumberServices(unsupportedServices).then(
          (res) => res.when(
            (value) => null,
            error: (e) => e,
          ),
        );
  }

  Future<StorageError?> _saveDisableServices(
    List<TrackNumberService> disabledServices,
  ) {
    return _trackNumberRepo.updateTrackNumberServices(disabledServices).then(
          (res) => res.when(
            (value) => null,
            error: (e) => e,
          ),
        );
  }

  Future<StorageError?> _saveShipmentInfo(TrackingTaskResult result) {
    return _shipmentRepo
        .replaceShipmentInfoByTrack(
          result.info,
          alternateTracks: result.alternateTracks,
        )
        .then(
          (res) => res.when(
            (value) => null,
            error: (e) => e,
          ),
        );
  }

  Future<StorageError?> _saveActivities(TrackingTaskResult result) {
    return _shipmentRepo
        .replaceActivitiesByTrack(
          result.trackService.trackNumber,
          result.activity,
        )
        .then(
          (res) => res.when(
            (value) => null,
            error: (e) => e,
          ),
        );
  }

  Future<Set<TrackNumberService>?> _parseTrackNumberServices(
    WorkData? inputData,
  ) async {
    final trackNumberServiceList = inputData?.getStringList(
      tagTrackNumberServiceList,
    );
    if (trackNumberServiceList == null) {
      return null;
    } else {
      return Set.from(
        trackNumberServiceList.map(
          (json) {
            try {
              return TrackNumberService.fromJson(
                jsonDecode(json) as Map<String, dynamic>,
              );
            } catch (e, stackTrace) {
              log().e('Cannot decode input data: $json',
                  error: e, stackTrace: stackTrace);
            }
          },
        ).where((trackService) => trackService != null),
      );
    }
  }

  Future<StorageError?> _deleteOldTrackingInfo(
    List<TrackingInfo> currTrackingInfoList,
  ) async {
    final maxSize = _pref.trackingHistorySize;
    if (maxSize < 0) {
      throw UnsupportedError('Tracking history size cannot be negative');
    }

    final deleteList = <TrackingInfo>[];
    for (final currInfo in currTrackingInfoList) {
      // Keep full history
      if (currInfo.hasNonRetryableError) {
        continue;
      }
      final trackNumber = currInfo.trackNumber;
      late final List<TrackingInfo> list;
      try {
        list = await _trackingRepo
            .getTrackingInfoByTrack(trackNumber, oldestFirst: true)
            .then(
              (res) => res.when(
                (value) => value,
                error: (e) => throw e,
              ),
            );
      } on StorageError catch (e) {
        return e;
      }
      if (list.isEmpty) {
        return null;
      }

      final size = list.length - maxSize;
      if (size > 0) {
        deleteList.addAll(list.getRange(0, size));
      }
    }

    final res = await _trackingRepo.deleteTrackingInfoByList(deleteList);
    return res.when(
      (value) => null,
      error: (e) => e,
    );
  }

  Future<void> _trackingFailedNotify(List<TrackingInfo> infoList) =>
      _notifyTask.trackingFailedNotify(
        infoList.map((info) => info.trackNumber),
      );
}
