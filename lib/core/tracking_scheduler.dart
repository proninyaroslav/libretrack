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

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:libretrack/core/settings/settings.dart';
import 'package:libretrack/core/storage/storage_result.dart';
import 'package:libretrack/core/worker/worker_manager.dart';

import 'entity/entity.dart';
import 'storage/track_number_repository.dart';
import 'tracking_limiter.dart';

part 'tracking_scheduler.freezed.dart';

abstract class TrackingScheduler {
  Future<void> init();

  Future<List<EnqueueOneshotResult>> enqueueOneshot(
    List<String> trackNumbersList,
  );

  Future<void> enqueueOneshotAll();

  Future<void> reenqueueAll();
}

@freezed
class EnqueueOneshotResult with _$EnqueueOneshotResult {
  const factory EnqueueOneshotResult.success({
    required String trackNumber,
  }) = EnqueueOneshotResultSuccess;

  const factory EnqueueOneshotResult.dissalowed({
    required String trackNumber,
    required Duration remainingLimitTime,
  }) = EnqueueOneshotResultDissalowed;

  const factory EnqueueOneshotResult.error({
    required String trackNumber,
    required EnqueueOneshotError error,
  }) = EnqueueOneshotResultError;
}

@freezed
class EnqueueOneshotError with _$EnqueueOneshotError {
  const factory EnqueueOneshotError.storage(StorageError error) =
      EnqueueOneshotErrorStorage;

  const factory EnqueueOneshotError.limiter(TrackingLimiterError error) =
      EnqueueOneshotErrorLimiter;
}

@Singleton(as: TrackingScheduler)
class TrackingSchedulerImpl implements TrackingScheduler {
  final WorkerManager _workerManager;
  final TrackNumberRepository _trackRepo;
  final TrackingLimiter _trackingLimiter;
  final AppSettings _pref;

  TrackingSchedulerImpl(
    this._workerManager,
    this._trackRepo,
    this._trackingLimiter,
    this._pref,
  );

  @override
  Future<void> init() async {
    if (await _pref.autoTracking) {
      _workerManager.trackingPeriodic();
    }
  }

  @override
  Future<List<EnqueueOneshotResult>> enqueueOneshot(
    List<String> trackNumbersList,
  ) async {
    final resultList = <EnqueueOneshotResult>[];
    final filteredList = <TrackNumberService>[];
    for (final trackNumber in trackNumbersList) {
      final state = await _trackingLimiter.check(trackNumber);
      await state.when(
        allowed: (trackNumber) async {
          final res = await _trackRepo.getTrackNumberServices(trackNumber);
          res.when(
            (trackServiceList) {
              filteredList.addAll(trackServiceList);
              resultList.add(EnqueueOneshotResult.success(
                trackNumber: trackNumber,
              ));
            },
            error: (e) {
              resultList.add(EnqueueOneshotResult.error(
                trackNumber: trackNumber,
                error: EnqueueOneshotError.storage(e),
              ));
            },
          );
        },
        dissalowed: (trackNumber, remainingTime) {
          resultList.add(EnqueueOneshotResult.dissalowed(
            trackNumber: trackNumber,
            remainingLimitTime: remainingTime,
          ));
        },
        error: (trackNumber, error) {
          resultList.add(EnqueueOneshotResult.error(
            trackNumber: trackNumber,
            error: EnqueueOneshotError.limiter(error),
          ));
        },
      );
    }

    if (filteredList.isNotEmpty) {
      _workerManager.tracking(trackNumberServiceList: filteredList);
    }
    if (await _pref.autoTracking) {
      _workerManager.trackingPeriodic(
        initialDelay: (await _pref.autoTrackingFreq).toDuration(),
      );
    }

    return resultList;
  }

  @override
  Future<void> enqueueOneshotAll() async {
    _workerManager.trackingAll();

    if (await _pref.autoTracking) {
      _workerManager.trackingPeriodic(
        initialDelay: (await _pref.autoTrackingFreq).toDuration(),
      );
    }
  }

  @override
  Future<void> reenqueueAll() async {
    if (await _pref.autoTracking) {
      _workerManager.trackingPeriodic(replaceIfEnqueued: true);
    }
  }
}
