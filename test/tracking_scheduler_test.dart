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

import 'package:flutter_test/flutter_test.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/settings/settings.dart';
import 'package:libretrack/core/storage/storage_result.dart';
import 'package:libretrack/core/storage/track_number_repository.dart';
import 'package:libretrack/core/tracking_limiter.dart';
import 'package:libretrack/core/tracking_scheduler.dart';
import 'package:libretrack/core/worker/worker_manager.dart';
import 'package:mocktail/mocktail.dart';

import 'mock/mock.dart';

void main() {
  group('Tracking scheduler |', () {
    late TrackingScheduler trackingScheduler;
    late WorkerManager mockWorkerManager;
    late TrackNumberRepository mockTrackRepo;
    late TrackingLimiter mockTrackingLimiter;
    late AppSettings mockPref;

    setUpAll(() {
      mockWorkerManager = MockWorkerManager();
      mockTrackRepo = MockTrackNumberRepository();
      mockTrackingLimiter = MockTrackingLimiter();
      mockPref = MockAppSettings();
      trackingScheduler = TrackingSchedulerImpl(
        mockWorkerManager,
        mockTrackRepo,
        mockTrackingLimiter,
        mockPref,
      );
    });

    test('Init', () async {
      when(() => mockPref.autoTracking).thenReturn(true);
      when(() => mockWorkerManager.trackingPeriodic()).thenAnswer((_) async {});

      await trackingScheduler.init();
      verify(() => mockWorkerManager.trackingPeriodic()).called(1);
    });

    test('Enqueue oneshot', () async {
      const trackInfoList = [
        TrackNumberInfo('1'),
        TrackNumberInfo('2'),
        TrackNumberInfo('3'),
      ];
      final trackNumbersList = trackInfoList
          .map(
            (info) => info.trackNumber,
          )
          .toList();

      when(
        () => mockTrackRepo.getTrackNumberServices(trackNumbersList[0]),
      ).thenAnswer(
        (_) async => StorageResult([
          TrackNumberService(
            trackNumber: trackNumbersList[0],
            serviceType: PostalServiceType.ups,
          ),
        ]),
      );
      when(
        () => mockTrackRepo.getTrackNumberServices(trackNumbersList[1]),
      ).thenAnswer(
        (_) async => StorageResult([
          TrackNumberService(
            trackNumber: trackNumbersList[1],
            serviceType: PostalServiceType.russianPost,
          ),
        ]),
      );
      when(
        () => mockTrackRepo.getTrackNumberServices(trackNumbersList[2]),
      ).thenAnswer(
        (_) async => StorageResult([
          TrackNumberService(
            trackNumber: trackNumbersList[2],
            serviceType: PostalServiceType.ups,
          ),
          TrackNumberService(
            trackNumber: trackNumbersList[2],
            serviceType: PostalServiceType.russianPost,
          ),
        ]),
      );

      when(
        () => mockTrackingLimiter.check(trackNumbersList[0]),
      ).thenAnswer(
        (_) async => TrackingLimiterState.dissalowed(
          trackNumber: trackNumbersList[0],
          remainingTime: const Duration(minutes: 10),
        ),
      );
      when(
        () => mockTrackingLimiter.check(trackNumbersList[1]),
      ).thenAnswer(
        (_) async => TrackingLimiterState.error(
          trackNumber: trackNumbersList[1],
          error: const TrackingLimiterError.storage(StorageError.database()),
        ),
      );
      when(
        () => mockTrackingLimiter.check(trackNumbersList[2]),
      ).thenAnswer(
        (_) async => TrackingLimiterState.allowed(
          trackNumber: trackNumbersList[2],
        ),
      );
      when(
        () => mockWorkerManager.tracking(
          trackNumberServiceList: [
            TrackNumberService(
              trackNumber: trackNumbersList[2],
              serviceType: PostalServiceType.ups,
            ),
            TrackNumberService(
              trackNumber: trackNumbersList[2],
              serviceType: PostalServiceType.russianPost,
            ),
          ],
        ),
      ).thenAnswer((_) async {});
      final expectedResult = [
        EnqueueOneshotResult.dissalowed(
          trackNumber: trackNumbersList[0],
          remainingLimitTime: const Duration(minutes: 10),
        ),
        EnqueueOneshotResult.error(
          trackNumber: trackNumbersList[1],
          error: const EnqueueOneshotError.limiter(
            TrackingLimiterError.storage(
              StorageError.database(),
            ),
          ),
        ),
        EnqueueOneshotResult.success(
          trackNumber: trackNumbersList[2],
        ),
      ];
      when(() => mockPref.autoTrackingFreq)
          .thenReturn(const AutoTrackingFreq.twelveHours());
      when(
        () => mockWorkerManager.trackingPeriodic(
          initialDelay: const Duration(hours: 12),
        ),
      ).thenAnswer((_) async {});

      when(() => mockPref.autoTracking).thenReturn(true);
      expect(
        await trackingScheduler.enqueueOneshot(trackNumbersList),
        expectedResult,
      );
      verify(
        () => mockWorkerManager.trackingPeriodic(
          initialDelay: const Duration(hours: 12),
        ),
      ).called(1);

      when(() => mockPref.autoTracking).thenReturn(false);
      expect(
        await trackingScheduler.enqueueOneshot(trackNumbersList),
        expectedResult,
      );
      verifyNever(
        () => mockWorkerManager.trackingPeriodic(
          initialDelay: const Duration(hours: 12),
        ),
      );
    });

    test('Enqueue oneshot all', () async {
      when(() => mockWorkerManager.trackingAll()).thenAnswer((_) async {});
      when(() => mockPref.autoTrackingFreq)
          .thenReturn(const AutoTrackingFreq.twelveHours());
      when(
        () => mockWorkerManager.trackingPeriodic(
          initialDelay: const Duration(hours: 12),
        ),
      ).thenAnswer((_) async {});

      when(() => mockPref.autoTracking).thenReturn(true);
      await trackingScheduler.enqueueOneshotAll();
      verify(() => mockWorkerManager.trackingAll()).called(1);
      verify(
        () => mockWorkerManager.trackingPeriodic(
          initialDelay: const Duration(hours: 12),
        ),
      ).called(1);

      when(() => mockPref.autoTracking).thenReturn(false);
      await trackingScheduler.enqueueOneshotAll();
      verify(() => mockWorkerManager.trackingAll()).called(1);
      verifyNever(
        () => mockWorkerManager.trackingPeriodic(
          initialDelay: const Duration(hours: 12),
        ),
      );
    });

    test('Reenqueue all', () async {
      when(
        () => mockWorkerManager.trackingPeriodic(
          replaceIfEnqueued: true,
        ),
      ).thenAnswer((_) async {});

      when(() => mockPref.autoTracking).thenReturn(true);
      await trackingScheduler.reenqueueAll();
      verify(
        () => mockWorkerManager.trackingPeriodic(
          replaceIfEnqueued: true,
        ),
      ).called(1);

      when(() => mockPref.autoTracking).thenReturn(false);
      await trackingScheduler.reenqueueAll();
      verifyNever(
        () => mockWorkerManager.trackingPeriodic(
          replaceIfEnqueued: true,
        ),
      );
    });
  });
}
