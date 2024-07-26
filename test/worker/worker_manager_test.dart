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

import 'package:flutter_test/flutter_test.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/work_manager/registered_workers.dart';
import 'package:libretrack/core/work_manager/work_manager.dart';
import 'package:libretrack/core/worker/tracking_worker.dart';
import 'package:libretrack/core/worker/worker_manager.dart';
import 'package:mocktail/mocktail.dart';

import '../mock/mock.dart';

void main() {
  group('Tracking worker |', () {
    late WorkerManager workerManager;
    late WorkManager mockWorkManager;

    setUpAll(() async {
      mockWorkManager = MockWorkManager();
      workerManager = WorkerManagerImpl(mockWorkManager);
    });

    test('Tracking', () async {
      const info = TrackNumberService(
        trackNumber: '1',
        serviceType: PostalServiceType.ups,
      );
      when(
        () => mockWorkManager.registerOneTime(
          workId: any(named: 'workId'),
          workerName: any(named: 'workerName'),
          params: any(named: 'params'),
        ),
      ).thenAnswer(
        (_) async {},
      );
      await workerManager.tracking(
        trackNumberServiceList: [info],
      );
      verify(
        () => mockWorkManager.registerOneTime(
          workId: any(named: 'workId'),
          workerName: WorkersList.trackingWorker,
          params: WorkParams(
            inputData: WorkData({
              TrackingWorker.tagTrackNumberServiceList: [
                jsonEncode(info.toJson()),
              ],
            }),
            constraints: const WorkConstraints(
              networkType: NetworkType.connected,
            ),
          ),
        ),
      ).called(1);
    });

    test('Tracking without locale', () async {
      const info = TrackNumberService(
        trackNumber: '1',
        serviceType: PostalServiceType.ups,
      );
      when(
        () => mockWorkManager.registerOneTime(
          workId: any(named: 'workId'),
          workerName: any(named: 'workerName'),
          params: any(named: 'params'),
        ),
      ).thenAnswer(
        (_) async {},
      );
      await workerManager.tracking(
        trackNumberServiceList: [info],
      );
      verify(
        () => mockWorkManager.registerOneTime(
          workId: any(named: 'workId'),
          workerName: WorkersList.trackingWorker,
          params: WorkParams(
            inputData: WorkData({
              TrackingWorker.tagTrackNumberServiceList: [
                jsonEncode(info.toJson()),
              ],
            }),
            constraints: const WorkConstraints(
              networkType: NetworkType.connected,
            ),
          ),
        ),
      ).called(1);
    });

    test('Tracking all', () async {
      when(
        () => mockWorkManager.registerOneTime(
          workId: any(named: 'workId'),
          workerName: any(named: 'workerName'),
          params: any(named: 'params'),
        ),
      ).thenAnswer(
        (_) async {},
      );
      await workerManager.trackingAll();
      verify(
        () => mockWorkManager.registerOneTime(
          workId: any(named: 'workId'),
          workerName: WorkersList.trackingAllWorker,
          params: const WorkParams(
            constraints: WorkConstraints(
              networkType: NetworkType.connected,
            ),
          ),
        ),
      ).called(1);
    });
  });
}
