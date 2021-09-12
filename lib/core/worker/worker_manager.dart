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
import 'package:libretrack/core/work_manager/registered_workers.dart';
import 'package:libretrack/core/work_manager/work_manager.dart';
import 'package:uuid/uuid.dart';

import '../entity/entity.dart';
import '../model/type/type.dart';
import 'tracking_worker.dart';

abstract class WorkerManager {
  Future<void> tracking({
    required List<TrackNumberService> trackNumberServiceList,
  });

  Future<void> trackingAll();

  Future<void> trackingPeriodic({
    Duration? initialDelay,
    bool replaceIfEnqueued = false,
  });
}

@Singleton(as: WorkerManager)
class WorkerManagerImpl implements WorkerManager {
  final WorkManager _workManager;

  WorkerManagerImpl(this._workManager);

  @override
  Future<void> tracking({
    required List<TrackNumberService> trackNumberServiceList,
    Locale? locale,
  }) async {
    await _workManager.registerOneTime(
      workId: _getUniqueId(WorkersList.trackingWorker, const Uuid().v4()),
      workerName: WorkersList.trackingWorker,
      params: WorkParams(
        constraints: const WorkConstraints(
          networkType: NetworkType.connected,
        ),
        inputData: _makeTrackingWorkData(trackNumberServiceList, locale),
      ),
    );
  }

  WorkData _makeTrackingWorkData(
    List<TrackNumberService> trackNumberServiceList,
    Locale? locale,
  ) {
    return WorkData({
      TrackingWorker.tagTrackNumberServiceList: trackNumberServiceList
          .map(
            (info) => jsonEncode(info.toJson()),
          )
          .toList(),
    });
  }

  @override
  Future<void> trackingAll() async {
    await _workManager.registerOneTime(
      workId: _getUniqueId(WorkersList.trackingAllWorker, const Uuid().v4()),
      workerName: WorkersList.trackingAllWorker,
      params: const WorkParams(
        constraints: WorkConstraints(
          networkType: NetworkType.connected,
        ),
      ),
    );
  }

  String _getUniqueId(String workerName, String baseId) {
    return '$workerName-$baseId';
  }

  @override
  Future<void> trackingPeriodic({
    Duration? initialDelay,
    bool replaceIfEnqueued = false,
  }) async {
    await _workManager.registerOneTime(
      workId: WorkersList.trackingPeriodicWorker,
      workerName: WorkersList.trackingPeriodicWorker,
      params: WorkParams(
        constraints: const WorkConstraints(
          networkType: NetworkType.connected,
        ),
        existingWorkPolicy: replaceIfEnqueued
            ? ExistingWorkPolicy.replace
            : ExistingWorkPolicy.keep,
      ),
      initialDelay: initialDelay,
    );
  }
}
