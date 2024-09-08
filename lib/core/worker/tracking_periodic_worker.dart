// Copyright (C) 2021-2024 Yaroslav Pronin <proninyaroslav@mail.ru>
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

import 'package:injectable/injectable.dart';
import 'package:libretrack/core/date_time_provider.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/settings/settings.dart';
import 'package:libretrack/core/storage/track_number_repository.dart';
import 'package:libretrack/core/storage/tracking_repository.dart';
import 'package:libretrack/core/work_manager/work_manager.dart';

import '../../logger.dart';
import '../platform_info.dart';
import 'tracking_worker.dart';
import 'worker_manager.dart';

@injectable
class TrackingPeriodicWorker implements Worker {
  final TrackingWorker _trackingWorker;
  final WorkerManager _workerManager;
  final TrackingRepository _trackingRepo;
  final TrackNumberRepository _trackNumberRepo;
  final AppSettings _pref;
  final PlatformInfo _platformInfo;
  final DateTimeProvider _dateTimeProvider;

  TrackingPeriodicWorker(
    this._trackingWorker,
    this._workerManager,
    this._trackingRepo,
    this._trackNumberRepo,
    this._pref,
    this._platformInfo,
    this._dateTimeProvider,
  );

  @override
  Future<WorkResult> doWork(WorkData? inputData) async {
    if (!await _pref.autoTracking) {
      return const WorkResult.success();
    }
    final res1 = await _trackNumberRepo.getAllUnarchivedTracks();
    final trackNumbers = res1.when(
      (list) => list.map((info) => info.trackNumber).toList(),
      error: (e) {
        e.when(database: (e, stackTrace) {
          log().e('Unable to get track list', error: e, stackTrace: stackTrace);
        });
        return null;
      },
    );
    if (trackNumbers == null) {
      return const WorkResult.failure();
    } else if (trackNumbers.isEmpty) {
      return const WorkResult.success();
    }

    final res2 = await _trackingRepo.getLatestTrackingInfoByList(
      trackNumbersList: trackNumbers,
      oldestFirst: true,
    );
    final latestTrackingInfo = res2.when(
      (list) => list,
      error: (e) {
        e.when(database: (e, stackTrace) {
          log().e('Unable to get latest tracking info list',
              error: e, stackTrace: stackTrace);
        });
        return null;
      },
    );

    if (latestTrackingInfo == null) {
      return const WorkResult.failure();
    } else if (latestTrackingInfo.isEmpty) {
      final result = await _doTrack(trackNumbers);
      await _enqueue((await _pref.autoTrackingFreq).toDuration());
      return result;
    } else {
      late final Duration nextEnqueueTime;
      late final WorkResult result;

      final oldestTrackNumbers =
          await _getOldestTrackingInfo(latestTrackingInfo)
              .map((info) => info.trackNumber)
              .toList();

      if (oldestTrackNumbers.isEmpty) {
        result = const WorkResult.success();
        nextEnqueueTime = await _calcNextEnqueueTime(
          currTrackingParcelsCount: 0,
          latestTrackingInfo: latestTrackingInfo,
        );
      } else {
        result = await _doTrack(oldestTrackNumbers);
        if (oldestTrackNumbers.length == latestTrackingInfo.length) {
          nextEnqueueTime = (await _pref.autoTrackingFreq).toDuration();
        } else {
          nextEnqueueTime = await _calcNextEnqueueTime(
            currTrackingParcelsCount: oldestTrackNumbers.length,
            latestTrackingInfo: latestTrackingInfo,
          );
        }
      }
      await _enqueue(nextEnqueueTime);
      return result;
    }
  }

  Stream<TrackingInfo> _getOldestTrackingInfo(
    List<TrackingInfo> trackingInfoList,
  ) async* {
    final currentTime = _dateTimeProvider.now().toUtc();
    final frequency = (await _pref.autoTrackingFreq).toDuration();
    final frequencyLimit = (await _pref.trackingFrequencyLimit).toDuration();
    final timeAgo = currentTime.subtract(frequency);
    final maxTime = timeAgo.add(frequencyLimit);

    for (final info in trackingInfoList) {
      final trackingDate = info.dateTime.toUtc();

      if (trackingDate.isBefore(maxTime) ||
          trackingDate.isAtSameMomentAs(maxTime)) {
        yield info;
      }
    }
  }

  Future<Duration> _calcNextEnqueueTime({
    required int currTrackingParcelsCount,
    required List<TrackingInfo> latestTrackingInfo,
  }) async {
    final currentTime = _dateTimeProvider.now().toUtc();
    final nextOldestTrackDate =
        latestTrackingInfo[currTrackingParcelsCount].dateTime.toUtc();
    final frequency = (await _pref.autoTrackingFreq).toDuration();

    return nextOldestTrackDate.add(frequency).difference(currentTime);
  }

  Future<void> _enqueue(Duration nextEnqueueTime) async {
    await _workerManager.trackingPeriodic(
      initialDelay: nextEnqueueTime,
      replaceIfEnqueued: true,
    );
  }

  Future<WorkResult> _doTrack(List<String> trackNumbersList) async {
    final locale = await (await _pref.locale).when(
      system: () => _platformInfo.currentAsLocale,
      inner: (locale) async => locale,
    );

    final List<TrackNumberService>? trackServiceList = await _trackNumberRepo
        .getTrackNumberServicesByList(trackNumbersList)
        .then(
          (result) => result.when(
            (list) => list,
            error: (e) {
              e.when(database: (e, stackTrace) {
                log().e('Unable to get track service list',
                    error: e, stackTrace: stackTrace);
              });
              return null;
            },
          ),
        );
    if (trackServiceList == null) {
      return const WorkResult.failure();
    }

    return _trackingWorker.doTrack(trackServiceList.toSet(), locale);
  }
}
