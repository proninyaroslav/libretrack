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

import 'package:flutter_test/flutter_test.dart';
import 'package:libretrack/core/date_time_provider.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/model/type/type.dart';
import 'package:libretrack/core/platform_info.dart';
import 'package:libretrack/core/settings/settings.dart';
import 'package:libretrack/core/storage/storage_result.dart';
import 'package:libretrack/core/storage/track_number_repository.dart';
import 'package:libretrack/core/storage/tracking_repository.dart';
import 'package:libretrack/core/work_manager/work_manager.dart';
import 'package:libretrack/core/worker/tracking_periodic_worker.dart';
import 'package:libretrack/core/worker/tracking_worker.dart';
import 'package:libretrack/core/worker/worker_manager.dart';
import 'package:mocktail/mocktail.dart';

import '../mock/mock.dart';

void main() {
  group('Tracking periodic worker |', () {
    late TrackingPeriodicWorker worker;
    late TrackingWorker mockTrackingWorker;
    late WorkerManager mockWorkerManager;
    late TrackingRepository mockTrackingRepo;
    late TrackNumberRepository mockTrackNumberRepo;
    late AppSettings mockPref;
    late PlatformInfo mockPlatformInfo;
    late DateTimeProvider mockDateTimeProvider;

    setUpAll(() async {
      mockTrackingWorker = MockTrackingWorker();
      mockWorkerManager = MockWorkerManager();
      mockTrackingRepo = MockTrackingRepository();
      mockTrackNumberRepo = MockTrackNumberRepository();
      mockPref = MockAppSettings();
      mockPlatformInfo = MockPlatformInfo();
      mockDateTimeProvider = MockDateTimeProvider();
      worker = TrackingPeriodicWorker(
        mockTrackingWorker,
        mockWorkerManager,
        mockTrackingRepo,
        mockTrackNumberRepo,
        mockPref,
        mockPlatformInfo,
        mockDateTimeProvider,
      );
    });

    test('Usual working case', () async {
      const locale = Locale('en', 'US');
      when(() => mockPlatformInfo.currentAsLocale)
          .thenAnswer((_) async => locale);
      when(() => mockPref.locale).thenReturn(const AppLocaleType.system());
      when(() => mockPref.autoTracking).thenReturn(true);
      when(() => mockPref.autoTrackingFreq)
          .thenReturn(const AutoTrackingFreq.sixHours());
      when(() => mockPref.trackingFrequencyLimit)
          .thenReturn(const TrackingFreqLimit.fifteenMin());
      when(
        () => mockTrackNumberRepo.getAllUnarchivedTracks(),
      ).thenAnswer(
        (_) async => const StorageResult([
          TrackNumberInfo('1'),
          TrackNumberInfo('2'),
          TrackNumberInfo('3'),
        ]),
      );

      when(() => mockDateTimeProvider.now())
          .thenReturn(DateTime(2021, 1, 1, 9));
      when(
        () => mockTrackingRepo.getLatestTrackingInfoByList(
          trackNumbersList: ['1', '2', '3'],
          oldestFirst: true,
        ),
      ).thenAnswer(
        (_) async => StorageResult([
          TrackingInfo(
            id: const TrackingId('1'),
            trackNumber: '1',
            status: TrackingStatus.complete,
            hasNewInfo: false,
            hasNonRetryableError: false,
            invalidTrackNumber: false,
            dateTime: DateTime(2021, 1, 1, 3),
          ),
          TrackingInfo(
            id: const TrackingId('2'),
            trackNumber: '2',
            status: TrackingStatus.complete,
            hasNewInfo: false,
            hasNonRetryableError: false,
            invalidTrackNumber: false,
            dateTime: DateTime(2021, 1, 1, 10),
          ),
          TrackingInfo(
            id: const TrackingId('3'),
            trackNumber: '3',
            status: TrackingStatus.complete,
            hasNewInfo: false,
            hasNonRetryableError: false,
            invalidTrackNumber: false,
            dateTime: DateTime(2021, 1, 1, 10, 5),
          ),
        ]),
      );
      when(
        () => mockTrackNumberRepo.getActiveTrackNumberServicesByList(['1']),
      ).thenAnswer(
        (_) async => const StorageResult([
          TrackNumberService(
            trackNumber: '1',
            serviceType: PostalServiceType.ups,
          ),
        ]),
      );
      when(
        () => mockTrackingWorker.doTrack({
          const TrackNumberService(
            trackNumber: '1',
            serviceType: PostalServiceType.ups,
          ),
        }, locale),
      ).thenAnswer(
        (_) async => const WorkResult.success(),
      );
      when(
        () => mockWorkerManager.trackingPeriodic(
          initialDelay: const Duration(hours: 7),
          replaceIfEnqueued: true,
        ),
      ).thenAnswer((_) async {});

      expect(await worker.doWork(null), const WorkResult.success());
      verify(
        () => mockWorkerManager.trackingPeriodic(
          initialDelay: const Duration(hours: 7),
          replaceIfEnqueued: true,
        ),
      ).called(1);

      // Next run
      when(() => mockDateTimeProvider.now())
          .thenReturn(DateTime(2021, 1, 1, 16));
      when(
        () => mockTrackingRepo.getLatestTrackingInfoByList(
          trackNumbersList: ['1', '2', '3'],
          oldestFirst: true,
        ),
      ).thenAnswer(
        (_) async => StorageResult([
          TrackingInfo(
            id: const TrackingId('1'),
            trackNumber: '1',
            status: TrackingStatus.complete,
            hasNewInfo: false,
            hasNonRetryableError: false,
            invalidTrackNumber: false,
            dateTime: DateTime(2021, 1, 1, 9),
          ),
          TrackingInfo(
            id: const TrackingId('2'),
            trackNumber: '2',
            status: TrackingStatus.complete,
            hasNewInfo: false,
            hasNonRetryableError: false,
            invalidTrackNumber: false,
            dateTime: DateTime(2021, 1, 1, 10),
          ),
          TrackingInfo(
            id: const TrackingId('3'),
            trackNumber: '3',
            status: TrackingStatus.complete,
            hasNewInfo: false,
            hasNonRetryableError: false,
            invalidTrackNumber: false,
            dateTime: DateTime(2021, 1, 1, 10, 5),
          ),
        ]),
      );
      when(
        () => mockTrackNumberRepo.getActiveTrackNumberServicesByList(
          ['1', '2', '3'],
        ),
      ).thenAnswer(
        (_) async => const StorageResult([
          TrackNumberService(
            trackNumber: '1',
            serviceType: PostalServiceType.ups,
          ),
          TrackNumberService(
            trackNumber: '2',
            serviceType: PostalServiceType.ups,
          ),
          TrackNumberService(
            trackNumber: '3',
            serviceType: PostalServiceType.ups,
          ),
        ]),
      );
      when(
        () => mockTrackingWorker.doTrack({
          const TrackNumberService(
            trackNumber: '1',
            serviceType: PostalServiceType.ups,
          ),
          const TrackNumberService(
            trackNumber: '2',
            serviceType: PostalServiceType.ups,
          ),
          const TrackNumberService(
            trackNumber: '3',
            serviceType: PostalServiceType.ups,
          ),
        }, locale),
      ).thenAnswer(
        (_) async => const WorkResult.success(),
      );
      when(
        () => mockWorkerManager.trackingPeriodic(
          initialDelay: const Duration(hours: 6),
          replaceIfEnqueued: true,
        ),
      ).thenAnswer((_) async {});

      expect(await worker.doWork(null), const WorkResult.success());
      verify(
        () => mockWorkerManager.trackingPeriodic(
          initialDelay: const Duration(hours: 6),
          replaceIfEnqueued: true,
        ),
      ).called(1);
    });

    test('Auto tracking is disabled', () async {
      when(() => mockPref.autoTracking).thenReturn(false);
      expect(await worker.doWork(null), const WorkResult.success());
    });

    test('No oldest tracking info', () async {
      const locale = Locale('en', 'US');
      when(() => mockPlatformInfo.currentAsLocale)
          .thenAnswer((_) async => locale);
      when(() => mockPref.locale).thenReturn(const AppLocaleType.system());
      when(() => mockPref.autoTracking).thenReturn(true);
      when(() => mockPref.autoTrackingFreq)
          .thenReturn(const AutoTrackingFreq.sixHours());
      when(() => mockPref.trackingFrequencyLimit)
          .thenReturn(const TrackingFreqLimit.fifteenMin());
      when(
        () => mockTrackNumberRepo.getAllUnarchivedTracks(),
      ).thenAnswer(
        (_) async => const StorageResult([
          TrackNumberInfo('1'),
          TrackNumberInfo('2'),
        ]),
      );

      when(() => mockDateTimeProvider.now())
          .thenReturn(DateTime(2021, 1, 1, 9));
      when(
        () => mockTrackingRepo.getLatestTrackingInfoByList(
          trackNumbersList: ['1', '2'],
          oldestFirst: true,
        ),
      ).thenAnswer(
        (_) async => StorageResult([
          TrackingInfo(
            id: const TrackingId('1'),
            trackNumber: '1',
            status: TrackingStatus.complete,
            hasNewInfo: false,
            hasNonRetryableError: false,
            invalidTrackNumber: false,
            dateTime: DateTime(2021, 1, 1, 9),
          ),
          TrackingInfo(
            id: const TrackingId('2'),
            trackNumber: '2',
            status: TrackingStatus.complete,
            hasNewInfo: false,
            hasNonRetryableError: false,
            invalidTrackNumber: false,
            dateTime: DateTime(2021, 1, 1, 15),
          ),
        ]),
      );
      when(
        () => mockWorkerManager.trackingPeriodic(
          initialDelay: const Duration(hours: 6),
          replaceIfEnqueued: true,
        ),
      ).thenAnswer((_) async {});

      expect(await worker.doWork(null), const WorkResult.success());
      verify(
        () => mockWorkerManager.trackingPeriodic(
          initialDelay: const Duration(hours: 6),
          replaceIfEnqueued: true,
        ),
      ).called(1);

      // Next run
      when(() => mockDateTimeProvider.now())
          .thenReturn(DateTime(2021, 1, 1, 15));
      when(
        () => mockTrackingRepo.getLatestTrackingInfoByList(
          trackNumbersList: ['1', '2'],
          oldestFirst: true,
        ),
      ).thenAnswer(
        (_) async => StorageResult([
          TrackingInfo(
            id: const TrackingId('1'),
            trackNumber: '1',
            status: TrackingStatus.complete,
            hasNewInfo: false,
            hasNonRetryableError: false,
            invalidTrackNumber: false,
            dateTime: DateTime(2021, 1, 1, 9),
          ),
          TrackingInfo(
            id: const TrackingId('2'),
            trackNumber: '2',
            status: TrackingStatus.complete,
            hasNewInfo: false,
            hasNonRetryableError: false,
            invalidTrackNumber: false,
            dateTime: DateTime(2021, 1, 1, 15),
          ),
        ]),
      );
      when(
        () => mockTrackNumberRepo.getActiveTrackNumberServicesByList(['1']),
      ).thenAnswer(
        (_) async => const StorageResult([
          TrackNumberService(
            trackNumber: '1',
            serviceType: PostalServiceType.ups,
          ),
        ]),
      );
      when(
        () => mockTrackingWorker.doTrack({
          const TrackNumberService(
            trackNumber: '1',
            serviceType: PostalServiceType.ups,
          ),
        }, locale),
      ).thenAnswer(
        (_) async => const WorkResult.success(),
      );
      when(
        () => mockWorkerManager.trackingPeriodic(
          initialDelay: const Duration(hours: 6),
          replaceIfEnqueued: true,
        ),
      ).thenAnswer((_) async {});

      expect(await worker.doWork(null), const WorkResult.success());
      verify(
        () => mockWorkerManager.trackingPeriodic(
          initialDelay: const Duration(hours: 6),
          replaceIfEnqueued: true,
        ),
      ).called(1);
    });

    test('Auto tracking is disabled', () async {
      when(() => mockPref.autoTracking).thenReturn(false);
      expect(await worker.doWork(null), const WorkResult.success());
    });

    test('Using app locale', () async {
      const locale = Locale('ru', 'RU');
      when(() => mockPref.locale)
          .thenReturn(const AppLocaleType.inner(locale: locale));
      when(() => mockPref.autoTracking).thenReturn(true);
      when(() => mockPref.autoTrackingFreq)
          .thenReturn(const AutoTrackingFreq.sixHours());
      when(() => mockPref.trackingFrequencyLimit)
          .thenReturn(const TrackingFreqLimit.fifteenMin());
      when(
        () => mockTrackNumberRepo.getAllUnarchivedTracks(),
      ).thenAnswer(
        (_) async => const StorageResult([
          TrackNumberInfo('1'),
        ]),
      );

      when(() => mockDateTimeProvider.now())
          .thenReturn(DateTime(2021, 1, 1, 9));
      when(
        () => mockTrackingRepo.getLatestTrackingInfoByList(
          trackNumbersList: ['1'],
          oldestFirst: true,
        ),
      ).thenAnswer(
        (_) async => StorageResult([
          TrackingInfo(
            id: const TrackingId('1'),
            trackNumber: '1',
            status: TrackingStatus.complete,
            hasNewInfo: false,
            hasNonRetryableError: false,
            invalidTrackNumber: false,
            dateTime: DateTime(2021, 1, 1, 3),
          ),
        ]),
      );
      when(
        () => mockTrackNumberRepo.getActiveTrackNumberServicesByList(['1']),
      ).thenAnswer(
        (_) async => const StorageResult([
          TrackNumberService(
            trackNumber: '1',
            serviceType: PostalServiceType.ups,
          ),
        ]),
      );
      when(
        () => mockTrackingWorker.doTrack({
          const TrackNumberService(
            trackNumber: '1',
            serviceType: PostalServiceType.ups,
          ),
        }, locale),
      ).thenAnswer(
        (_) async => const WorkResult.success(),
      );
      when(
        () => mockWorkerManager.trackingPeriodic(
          initialDelay: const Duration(hours: 6),
          replaceIfEnqueued: true,
        ),
      ).thenAnswer((_) async {});

      expect(await worker.doWork(null), const WorkResult.success());
      verify(
        () => mockWorkerManager.trackingPeriodic(
          initialDelay: const Duration(hours: 6),
          replaceIfEnqueued: true,
        ),
      ).called(1);
    });

    test('Scheduled run delayed ', () async {
      const locale = Locale('en', 'US');
      when(() => mockPlatformInfo.currentAsLocale)
          .thenAnswer((_) async => locale);
      when(() => mockPref.locale).thenReturn(const AppLocaleType.system());
      when(() => mockPref.autoTracking).thenReturn(true);
      when(() => mockPref.autoTrackingFreq)
          .thenReturn(const AutoTrackingFreq.sixHours());
      when(() => mockPref.trackingFrequencyLimit)
          .thenReturn(const TrackingFreqLimit.fifteenMin());
      when(
        () => mockTrackNumberRepo.getAllUnarchivedTracks(),
      ).thenAnswer(
        (_) async => const StorageResult([
          TrackNumberInfo('1'),
          TrackNumberInfo('2'),
        ]),
      );

      when(() => mockDateTimeProvider.now())
          .thenReturn(DateTime(2021, 1, 1, 15));
      when(
        () => mockTrackingRepo.getLatestTrackingInfoByList(
          trackNumbersList: ['1', '2'],
          oldestFirst: true,
        ),
      ).thenAnswer(
        (_) async => StorageResult([
          TrackingInfo(
            id: const TrackingId('1'),
            trackNumber: '1',
            status: TrackingStatus.complete,
            hasNewInfo: false,
            hasNonRetryableError: false,
            invalidTrackNumber: false,
            dateTime: DateTime(2021, 1, 1, 9),
          ),
          TrackingInfo(
            id: const TrackingId('2'),
            trackNumber: '2',
            status: TrackingStatus.complete,
            hasNewInfo: false,
            hasNonRetryableError: false,
            invalidTrackNumber: false,
            dateTime: DateTime(2021, 1, 1, 10),
          ),
        ]),
      );
      when(
        () => mockTrackNumberRepo.getActiveTrackNumberServicesByList(['1']),
      ).thenAnswer(
        (_) async => const StorageResult([
          TrackNumberService(
            trackNumber: '1',
            serviceType: PostalServiceType.ups,
          ),
        ]),
      );
      when(
        () => mockTrackingWorker.doTrack({
          const TrackNumberService(
            trackNumber: '1',
            serviceType: PostalServiceType.ups,
          ),
        }, locale),
      ).thenAnswer(
        (_) async => const WorkResult.success(),
      );
      when(
        () => mockWorkerManager.trackingPeriodic(
          initialDelay: const Duration(hours: 1),
          replaceIfEnqueued: true,
        ),
      ).thenAnswer((_) async {});

      expect(await worker.doWork(null), const WorkResult.success());
      verify(
        () => mockWorkerManager.trackingPeriodic(
          initialDelay: const Duration(hours: 1),
          replaceIfEnqueued: true,
        ),
      ).called(1);

      // Next run
      when(() => mockDateTimeProvider.now())
          .thenReturn(DateTime(2021, 1, 1, 18));
      when(
        () => mockTrackingRepo.getLatestTrackingInfoByList(
          trackNumbersList: ['1', '2'],
          oldestFirst: true,
        ),
      ).thenAnswer(
        (_) async => StorageResult([
          TrackingInfo(
            id: const TrackingId('2'),
            trackNumber: '2',
            status: TrackingStatus.complete,
            hasNewInfo: false,
            hasNonRetryableError: false,
            invalidTrackNumber: false,
            dateTime: DateTime(2021, 1, 1, 10),
          ),
          TrackingInfo(
            id: const TrackingId('1'),
            trackNumber: '1',
            status: TrackingStatus.complete,
            hasNewInfo: false,
            hasNonRetryableError: false,
            invalidTrackNumber: false,
            dateTime: DateTime(2021, 1, 1, 15),
          ),
        ]),
      );
      when(
        () => mockTrackNumberRepo.getActiveTrackNumberServicesByList(['2']),
      ).thenAnswer(
        (_) async => const StorageResult([
          TrackNumberService(
            trackNumber: '2',
            serviceType: PostalServiceType.ups,
          ),
        ]),
      );
      when(
        () => mockTrackingWorker.doTrack({
          const TrackNumberService(
            trackNumber: '2',
            serviceType: PostalServiceType.ups,
          ),
        }, locale),
      ).thenAnswer(
        (_) async => const WorkResult.success(),
      );
      when(
        () => mockWorkerManager.trackingPeriodic(
          initialDelay: const Duration(hours: 3),
          replaceIfEnqueued: true,
        ),
      ).thenAnswer((_) async {});

      expect(await worker.doWork(null), const WorkResult.success());
      verify(
        () => mockWorkerManager.trackingPeriodic(
          initialDelay: const Duration(hours: 3),
          replaceIfEnqueued: true,
        ),
      ).called(1);
    });

    test('No track numbers', () async {
      when(() => mockPref.autoTracking).thenReturn(true);
      when(
        () => mockTrackNumberRepo.getAllUnarchivedTracks(),
      ).thenAnswer(
        (_) async => const StorageResult([]),
      );
      expect(await worker.doWork(null), const WorkResult.success());
    });

    test('No latest tracking info', () async {
      const locale = Locale('en', 'US');
      when(() => mockPref.locale)
          .thenReturn(const AppLocaleType.inner(locale: locale));
      when(() => mockPref.autoTracking).thenReturn(true);
      when(() => mockPref.autoTrackingFreq)
          .thenReturn(const AutoTrackingFreq.sixHours());
      when(() => mockPref.trackingFrequencyLimit)
          .thenReturn(const TrackingFreqLimit.fifteenMin());
      when(
        () => mockTrackNumberRepo.getAllUnarchivedTracks(),
      ).thenAnswer(
        (_) async => const StorageResult([
          TrackNumberInfo('1'),
        ]),
      );

      when(() => mockDateTimeProvider.now())
          .thenReturn(DateTime(2021, 1, 1, 9));
      when(
        () => mockTrackingRepo.getLatestTrackingInfoByList(
          trackNumbersList: ['1'],
          oldestFirst: true,
        ),
      ).thenAnswer(
        (_) async => const StorageResult([]),
      );
      when(
        () => mockTrackNumberRepo.getActiveTrackNumberServicesByList(['1']),
      ).thenAnswer(
        (_) async => const StorageResult([
          TrackNumberService(
            trackNumber: '1',
            serviceType: PostalServiceType.ups,
          ),
        ]),
      );
      when(
        () => mockTrackingWorker.doTrack({
          const TrackNumberService(
            trackNumber: '1',
            serviceType: PostalServiceType.ups,
          ),
        }, locale),
      ).thenAnswer(
        (_) async => const WorkResult.success(),
      );
      when(
        () => mockWorkerManager.trackingPeriodic(
          initialDelay: const Duration(hours: 6),
          replaceIfEnqueued: true,
        ),
      ).thenAnswer((_) async {});

      expect(await worker.doWork(null), const WorkResult.success());
      verify(
        () => mockWorkerManager.trackingPeriodic(
          initialDelay: const Duration(hours: 6),
          replaceIfEnqueued: true,
        ),
      ).called(1);
    });
  });
}
