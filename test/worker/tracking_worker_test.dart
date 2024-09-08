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

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/model/type/type.dart';
import 'package:libretrack/core/platform_info.dart';
import 'package:libretrack/core/settings/settings.dart';
import 'package:libretrack/core/storage/shipment_repository.dart';
import 'package:libretrack/core/storage/storage_result.dart';
import 'package:libretrack/core/storage/track_number_repository.dart';
import 'package:libretrack/core/storage/tracking_repository.dart';
import 'package:libretrack/core/tracking_limiter.dart';
import 'package:libretrack/core/work_manager/work_manager.dart';
import 'package:libretrack/core/work_manager/worker.dart';
import 'package:libretrack/core/worker/tracking_notify_task.dart';
import 'package:libretrack/core/worker/tracking_task.dart';
import 'package:libretrack/core/worker/tracking_worker.dart';
import 'package:mocktail/mocktail.dart';
import 'package:quiver/iterables.dart';

import '../mock/mock.dart';

void main() {
  group('Tracking worker |', () {
    late TrackNumberRepository mockTrackNumberRepo;
    late ShipmentRepository mockShipmentRepo;
    late TrackingRepository mockTrackingRepo;
    late TrackingTask mockTask;
    late TrackingWorker worker;
    late TrackingNotifyTask mockNotifyTask;
    late PlatformInfo mockPlatformInfo;
    late AppSettings mockPref;
    late TrackingLimiter mockLimiter;

    setUpAll(() async {
      mockTrackNumberRepo = MockTrackNumberRepository();
      mockShipmentRepo = MockShipmentRepository();
      mockTrackingRepo = MockTrackingRepository();
      mockTask = MockTrackingTask();
      mockNotifyTask = MockTrackingNotifyTask();
      mockPlatformInfo = MockPlatformInfo();
      mockPref = MockAppSettings();
      mockLimiter = MockTrackingLimiter();
      worker = TrackingWorker(
        trackingTask: mockTask,
        trackNumberRepo: mockTrackNumberRepo,
        shipmentRepo: mockShipmentRepo,
        trackingRepo: mockTrackingRepo,
        notifyTask: mockNotifyTask,
        platformInfo: mockPlatformInfo,
        pref: mockPref,
        trackingLimiter: mockLimiter,
      );
    });

    test('Run work', () async {
      const trackList = [
        TrackNumberInfo('1'),
        TrackNumberInfo('2'),
        TrackNumberInfo('3'),
      ];
      final trackServices = [
        TrackNumberService(
          trackNumber: trackList[0].trackNumber,
          serviceType: PostalServiceType.ups,
        ),
        TrackNumberService(
          trackNumber: trackList[1].trackNumber,
          serviceType: PostalServiceType.russianPost,
        ),
        TrackNumberService(
          trackNumber: trackList[2].trackNumber,
          serviceType: PostalServiceType.ups,
        ),
      ];
      final successShipmentInfo = ShipmentInfo.from(
        id: 1,
        trackNumber: trackServices[0].trackNumber,
        serviceType: trackServices[0].serviceType,
      );
      final successActivity = ShipmentActivityInfo.from(
        id: 1,
        trackNumber: trackServices[0].trackNumber,
        serviceType: trackServices[0].serviceType,
        statusType: ShipmentStatusType.pickup,
      );
      final init = TrackingInfo(
        id: const TrackingId('1'),
        trackNumber: trackServices[0].trackNumber,
        dateTime: DateTime.now(),
        status: TrackingStatus.inProgress,
        hasNewInfo: false,
        hasNonRetryableError: false,
        invalidTrackNumber: false,
      );
      final complete = TrackingInfo(
        id: const TrackingId('1'),
        trackNumber: trackServices[0].trackNumber,
        dateTime: DateTime.now(),
        status: TrackingStatus.complete,
        hasNewInfo: false,
        hasNonRetryableError: false,
        invalidTrackNumber: false,
      );
      final success = TrackingResponseInfo.from(
        trackingId: const TrackingId('1'),
        trackNumber: trackServices[0].trackNumber,
        dateTime: DateTime.now(),
        serviceType: trackServices[0].serviceType,
        status: TrackingResponseStatus.success,
      );
      final expectedDisabledService = TrackNumberService(
        trackNumber: trackServices[2].trackNumber,
        serviceType: trackServices[2].serviceType,
        isActive: false,
      );
      final expectedResult = TrackingTaskResult(
        trackService: trackServices[0],
        info: successShipmentInfo,
        activity: [successActivity],
      );
      final expectedTaskStates = [
        TrackingTaskState.loading(
          trackingInfoList: [init],
        ),
        TrackingTaskState.loaded(
          result: [expectedResult],
          trackingInfoList: [complete],
          responseInfoList: [success],
          unsupportedServices: [trackServices[1]],
          disabledServices: [expectedDisabledService],
        ),
      ];

      when(
        () => mockTrackingRepo.insertTrackingInfoList(any()),
      ).thenAnswer((_) async => StorageResult.empty);
      when(
        () => mockTrackNumberRepo.deleteTrackNumberServices(
          [trackServices[1]],
        ),
      ).thenAnswer((_) async => StorageResult.empty);
      when(
        () => mockTrackNumberRepo.updateTrackNumberServices(
          [expectedDisabledService],
        ),
      ).thenAnswer((_) async => StorageResult.empty);
      when(
        () => mockTrackingRepo.addResponseList(any()),
      ).thenAnswer((_) async => StorageResult.empty);
      when(
        () => mockTrackingRepo.getTrackingInfoByTrack(
          any(),
          oldestFirst: true,
        ),
      ).thenAnswer((_) async => const StorageResult([]));
      when(
        () => mockShipmentRepo.replaceShipmentInfoByTrack(
          successShipmentInfo,
        ),
      ).thenAnswer((_) async => const StorageResult(1));
      when(
        () => mockShipmentRepo.replaceActivitiesByTrack(
          trackList[0].trackNumber,
          [successActivity],
        ),
      ).thenAnswer((_) async => StorageResult.empty);

      when(() => mockPref.trackingHistorySize).thenAnswer((_) async => 5);
      when(() => mockPlatformInfo.currentAsLocale)
          .thenAnswer((_) async => const Locale('en', 'US'));

      when(() => mockTask.run(
            Set.from(trackServices),
            params: any(named: 'params'),
          )).thenAnswer(
        (_) async* {
          for (final state in expectedTaskStates) {
            yield state;
          }
        },
      );

      when(
        () => mockNotifyTask.show(
          trackingInfo: [complete],
          trackingResult: [expectedResult],
        ),
      ).thenAnswer((_) async => {});

      when(() => mockPref.locale)
          .thenAnswer((_) async => const AppLocaleType.system());

      for (final trackInfo in trackList) {
        when(
          () => mockLimiter.check(trackInfo.trackNumber),
        ).thenAnswer(
          (_) async => TrackingLimiterState.allowed(
            trackNumber: trackInfo.trackNumber,
          ),
        );
      }

      final inputData = WorkData({
        TrackingWorker.tagTrackNumberServiceList: trackServices
            .map(
              (info) => jsonEncode(info.toJson()),
            )
            .toList(),
      });
      expect(await worker.doWork(inputData), const WorkResult.success());

      verify(
        () => mockTrackingRepo.insertTrackingInfoList([init]),
      ).called(1);
      verify(
        () => mockTrackingRepo.insertTrackingInfoList([complete]),
      ).called(1);
      verify(
        () => mockTrackNumberRepo.deleteTrackNumberServices(
          [trackServices[1]],
        ),
      ).called(1);
      verify(
        () => mockTrackNumberRepo.updateTrackNumberServices(
          [expectedDisabledService],
        ),
      ).called(1);
      verify(
        () => mockTrackingRepo.addResponseList([success]),
      ).called(1);
      verify(
        () => mockTrackingRepo.getTrackingInfoByTrack(
          any(),
          oldestFirst: true,
        ),
      ).called(1);
      verify(
        () => mockShipmentRepo.replaceShipmentInfoByTrack(
          successShipmentInfo,
        ),
      ).called(1);
      verify(
        () => mockShipmentRepo.replaceActivitiesByTrack(
          trackList[0].trackNumber,
          [successActivity],
        ),
      ).called(1);
    });

    test('App locale', () async {
      const trackNumberInfo = TrackNumberInfo('1');
      final trackService = TrackNumberService(
        trackNumber: trackNumberInfo.trackNumber,
        serviceType: PostalServiceType.ups,
      );
      final shipmentInfo = ShipmentInfo.from(
        id: 1,
        trackNumber: trackService.trackNumber,
        serviceType: trackService.serviceType,
      );
      final activity = ShipmentActivityInfo.from(
        id: 1,
        trackNumber: trackService.trackNumber,
        serviceType: trackService.serviceType,
        statusType: ShipmentStatusType.pickup,
      );
      final init = TrackingInfo(
        id: const TrackingId('1'),
        trackNumber: trackService.trackNumber,
        dateTime: DateTime.now(),
        status: TrackingStatus.inProgress,
        hasNewInfo: false,
        hasNonRetryableError: false,
        invalidTrackNumber: false,
      );
      final complete = TrackingInfo(
        id: const TrackingId('1'),
        trackNumber: trackService.trackNumber,
        dateTime: DateTime.now(),
        status: TrackingStatus.complete,
        hasNewInfo: false,
        hasNonRetryableError: false,
        invalidTrackNumber: false,
      );
      final success = TrackingResponseInfo.from(
        trackingId: const TrackingId('1'),
        trackNumber: trackService.trackNumber,
        dateTime: DateTime.now(),
        serviceType: trackService.serviceType,
        status: TrackingResponseStatus.success,
      );
      final expectedDisabledService = TrackNumberService(
        trackNumber: trackService.trackNumber,
        serviceType: trackService.serviceType,
        isActive: false,
      );
      final expectedResult = TrackingTaskResult(
        trackService: trackService,
        info: shipmentInfo,
        activity: [activity],
      );
      final expectedTaskStates = [
        TrackingTaskState.loading(
          trackingInfoList: [init],
        ),
        TrackingTaskState.loaded(
          result: [expectedResult],
          trackingInfoList: [complete],
          responseInfoList: [success],
          unsupportedServices: [],
          disabledServices: [expectedDisabledService],
        ),
      ];

      when(
        () => mockTrackingRepo.insertTrackingInfoList(any()),
      ).thenAnswer((_) async => StorageResult.empty);
      when(
        () => mockTrackNumberRepo.deleteTrackNumberServices([]),
      ).thenAnswer((_) async => StorageResult.empty);
      when(
        () => mockTrackNumberRepo.updateTrackNumberServices(
          [expectedDisabledService],
        ),
      ).thenAnswer((_) async => StorageResult.empty);
      when(
        () => mockTrackingRepo.addResponseList(any()),
      ).thenAnswer((_) async => StorageResult.empty);
      when(
        () => mockTrackingRepo.getTrackingInfoByTrack(
          any(),
          oldestFirst: true,
        ),
      ).thenAnswer((_) async => const StorageResult([]));
      when(
        () => mockShipmentRepo.replaceShipmentInfoByTrack(
          shipmentInfo,
        ),
      ).thenAnswer((_) async => const StorageResult(1));
      when(
        () => mockShipmentRepo.replaceActivitiesByTrack(
          trackNumberInfo.trackNumber,
          [activity],
        ),
      ).thenAnswer((_) async => StorageResult.empty);

      when(() => mockPref.trackingHistorySize).thenAnswer((_) async => 5);

      when(() => mockPlatformInfo.currentAsLocale)
          .thenAnswer((_) async => null);

      const locale = Locale('ru', 'RU');
      when(() => mockTask.run(
            {trackService},
            params: const TrackingTaskParams(locale: locale),
          )).thenAnswer(
        (_) async* {
          for (final state in expectedTaskStates) {
            yield state;
          }
        },
      );

      when(
        () => mockNotifyTask.show(
          trackingInfo: [complete],
          trackingResult: [expectedResult],
        ),
      ).thenAnswer((_) async => {});

      when(() => mockPref.locale).thenAnswer(
        (_) async => const AppLocaleType.inner(
          locale: locale,
        ),
      );

      when(
        () => mockLimiter.check(trackNumberInfo.trackNumber),
      ).thenAnswer(
        (_) async => TrackingLimiterState.allowed(
          trackNumber: trackNumberInfo.trackNumber,
        ),
      );

      final inputData = WorkData({
        TrackingWorker.tagTrackNumberServiceList: [
          jsonEncode(trackService.toJson()),
        ],
      });
      expect(await worker.doWork(inputData), const WorkResult.success());
    });

    test('Skip recently tracked parcels', () async {
      const trackList = [
        TrackNumberInfo('1'),
        TrackNumberInfo('2'),
        TrackNumberInfo('3'),
      ];
      final trackServices = [
        TrackNumberService(
          trackNumber: trackList[0].trackNumber,
          serviceType: PostalServiceType.ups,
        ),
        TrackNumberService(
          trackNumber: trackList[1].trackNumber,
          serviceType: PostalServiceType.russianPost,
        ),
        TrackNumberService(
          trackNumber: trackList[2].trackNumber,
          serviceType: PostalServiceType.ups,
        ),
      ];
      final successShipmentInfo = ShipmentInfo.from(
        id: 1,
        trackNumber: trackServices[0].trackNumber,
        serviceType: trackServices[0].serviceType,
      );
      final successActivity = ShipmentActivityInfo.from(
        id: 1,
        trackNumber: trackServices[0].trackNumber,
        serviceType: trackServices[0].serviceType,
        statusType: ShipmentStatusType.pickup,
      );
      final init = TrackingInfo(
        id: const TrackingId('1'),
        trackNumber: trackServices[0].trackNumber,
        dateTime: DateTime.now(),
        status: TrackingStatus.inProgress,
        hasNewInfo: false,
        hasNonRetryableError: false,
        invalidTrackNumber: false,
      );
      final complete = TrackingInfo(
        id: const TrackingId('1'),
        trackNumber: trackServices[0].trackNumber,
        dateTime: DateTime.now(),
        status: TrackingStatus.complete,
        hasNewInfo: false,
        hasNonRetryableError: false,
        invalidTrackNumber: false,
      );
      final success = TrackingResponseInfo.from(
        trackingId: const TrackingId('1'),
        trackNumber: trackServices[0].trackNumber,
        dateTime: DateTime.now(),
        serviceType: trackServices[0].serviceType,
        status: TrackingResponseStatus.success,
      );
      final expectedResult = TrackingTaskResult(
        trackService: trackServices[0],
        info: successShipmentInfo,
        activity: [successActivity],
      );
      final expectedTaskStates = [
        TrackingTaskState.loading(
          trackingInfoList: [init],
        ),
        TrackingTaskState.loaded(
          result: [expectedResult],
          trackingInfoList: [complete],
          responseInfoList: [success],
          unsupportedServices: [],
          disabledServices: [],
        ),
      ];

      when(
        () => mockTrackingRepo.insertTrackingInfoList(any()),
      ).thenAnswer((_) async => StorageResult.empty);
      when(
        () => mockTrackNumberRepo.deleteTrackNumberServices([]),
      ).thenAnswer((_) async => StorageResult.empty);
      when(
        () => mockTrackNumberRepo.updateTrackNumberServices([]),
      ).thenAnswer((_) async => StorageResult.empty);
      when(
        () => mockTrackingRepo.addResponseList(any()),
      ).thenAnswer((_) async => StorageResult.empty);
      when(
        () => mockTrackingRepo.getTrackingInfoByTrack(
          any(),
          oldestFirst: true,
        ),
      ).thenAnswer((_) async => const StorageResult([]));
      when(
        () => mockShipmentRepo.replaceShipmentInfoByTrack(
          successShipmentInfo,
        ),
      ).thenAnswer((_) async => const StorageResult(1));
      when(
        () => mockShipmentRepo.replaceActivitiesByTrack(
          trackList[0].trackNumber,
          [successActivity],
        ),
      ).thenAnswer((_) async => StorageResult.empty);

      when(() => mockPref.trackingHistorySize).thenAnswer((_) async => 5);

      when(() => mockPlatformInfo.currentAsLocale)
          .thenAnswer((_) async => const Locale('en', 'US'));

      when(() => mockTask.run(
            {trackServices[0]},
            params: any(named: 'params'),
          )).thenAnswer(
        (_) async* {
          for (final state in expectedTaskStates) {
            yield state;
          }
        },
      );

      when(
        () => mockNotifyTask.show(
          trackingInfo: [complete],
          trackingResult: [expectedResult],
        ),
      ).thenAnswer((_) async => {});

      when(() => mockPref.locale)
          .thenAnswer((_) async => const AppLocaleType.system());

      when(
        () => mockLimiter.check(trackList[0].trackNumber),
      ).thenAnswer(
        (_) async => TrackingLimiterState.allowed(
          trackNumber: trackList[0].trackNumber,
        ),
      );
      when(
        () => mockLimiter.check(trackList[1].trackNumber),
      ).thenAnswer(
        (_) async => TrackingLimiterState.dissalowed(
          trackNumber: trackList[1].trackNumber,
          remainingTime: const Duration(minutes: 5),
        ),
      );
      when(
        () => mockLimiter.check(trackList[2].trackNumber),
      ).thenAnswer(
        (_) async => TrackingLimiterState.dissalowed(
          trackNumber: trackList[2].trackNumber,
          remainingTime: const Duration(minutes: 10),
        ),
      );

      final inputData = WorkData({
        TrackingWorker.tagTrackNumberServiceList: trackServices
            .map(
              (info) => jsonEncode(info.toJson()),
            )
            .toList(),
      });
      expect(await worker.doWork(inputData), const WorkResult.success());
    });

    group('Remove old tracking info |', () {
      const trackNumberInfo = TrackNumberInfo('1');
      final trackService = TrackNumberService(
        trackNumber: trackNumberInfo.trackNumber,
        serviceType: PostalServiceType.ups,
      );
      final oldTrackingInfoList = range(4)
          .map(
            (i) => TrackingInfo(
              id: TrackingId('$i'),
              trackNumber: trackNumberInfo.trackNumber,
              dateTime: DateTime.now(),
              status: TrackingStatus.complete,
              hasNewInfo: false,
              hasNonRetryableError: false,
              invalidTrackNumber: false,
            ),
          )
          .toList();
      final initTrackingInfo = TrackingInfo(
        id: const TrackingId('5'),
        trackNumber: trackNumberInfo.trackNumber,
        dateTime: DateTime.now(),
        status: TrackingStatus.inProgress,
        hasNewInfo: false,
        hasNonRetryableError: false,
        invalidTrackNumber: false,
      );
      final trackingInfo = initTrackingInfo.copyWith(
        status: TrackingStatus.complete,
      );
      final allTrackingInfo = [...oldTrackingInfoList, trackingInfo];
      final expectedTaskStates = [
        TrackingTaskState.loading(
          trackingInfoList: [initTrackingInfo],
        ),
        TrackingTaskState.loaded(
          result: [],
          trackingInfoList: [trackingInfo],
          responseInfoList: [],
        ),
      ];
      final inputData = WorkData({
        TrackingWorker.tagTrackNumberServiceList: [
          jsonEncode(trackService.toJson()),
        ],
      });

      setUpAll(() {
        when(
          () => mockTrackingRepo.insertTrackingInfoList(any()),
        ).thenAnswer((_) async => StorageResult.empty);
        when(
          () => mockTrackingRepo.getTrackingInfoByTrack(
            trackNumberInfo.trackNumber,
            oldestFirst: true,
          ),
        ).thenAnswer((_) async => StorageResult(allTrackingInfo));
        when(
          () => mockTrackNumberRepo.deleteTrackNumberServices([]),
        ).thenAnswer((_) async => StorageResult.empty);
        when(
          () => mockTrackNumberRepo.updateTrackNumberServices([]),
        ).thenAnswer((_) async => StorageResult.empty);
        when(
          () => mockTrackingRepo.addResponseList([]),
        ).thenAnswer((_) async => StorageResult.empty);
        when(
          () => mockPlatformInfo.currentAsLocale,
        ).thenAnswer((_) async => const Locale('en', 'US'));
        when(
          () => mockTask.run({trackService}, params: any(named: 'params')),
        ).thenAnswer(
          (_) async* {
            for (final state in expectedTaskStates) {
              yield state;
            }
          },
        );
        when(() => mockPref.locale)
            .thenAnswer((_) async => const AppLocaleType.system());
        when(
          () => mockLimiter.check(trackNumberInfo.trackNumber),
        ).thenAnswer(
          (_) async => TrackingLimiterState.allowed(
            trackNumber: trackNumberInfo.trackNumber,
          ),
        );
        when(
          () => mockNotifyTask.show(
            trackingInfo: [trackingInfo],
            trackingResult: [],
          ),
        ).thenAnswer((_) async => {});
      });

      test('Normal case', () async {
        when(
          () => mockPref.trackingHistorySize,
        ).thenAnswer((_) async => allTrackingInfo.length - 1);
        when(
          () => mockTrackingRepo.deleteTrackingInfoByList(
            [allTrackingInfo[0]],
          ),
        ).thenAnswer((_) async => StorageResult.empty);

        expect(await worker.doWork(inputData), const WorkResult.success());
        verify(
          () => mockTrackingRepo.deleteTrackingInfoByList(
            [allTrackingInfo[0]],
          ),
        ).called(1);
      });

      test('History size == 0', () async {
        when(() => mockPref.trackingHistorySize).thenAnswer((_) async => 0);
        when(
          () => mockTrackingRepo.deleteTrackingInfoByList(
            allTrackingInfo,
          ),
        ).thenAnswer((_) async => StorageResult.empty);

        expect(await worker.doWork(inputData), const WorkResult.success());
        verify(
          () => mockTrackingRepo.deleteTrackingInfoByList(
            allTrackingInfo,
          ),
        ).called(1);
      });

      test('History size is negative', () async {
        when(() => mockPref.trackingHistorySize).thenAnswer((_) async => -1);
        expect(
          () => worker.doWork(inputData),
          throwsA(isA<UnsupportedError>()),
        );
      });

      test('Current tracking info has non retryable error', () async {
        final trackingInfo = initTrackingInfo.copyWith(
          status: TrackingStatus.complete,
          hasNonRetryableError: true,
        );
        final allTrackingInfo = [...oldTrackingInfoList, trackingInfo];
        final expectedTaskStates = [
          TrackingTaskState.loading(
            trackingInfoList: [initTrackingInfo],
          ),
          TrackingTaskState.loaded(
            result: [],
            trackingInfoList: [trackingInfo],
            responseInfoList: [],
          ),
        ];
        when(
          () => mockTrackingRepo.getTrackingInfoByTrack(
            trackNumberInfo.trackNumber,
            oldestFirst: true,
          ),
        ).thenAnswer((_) async => StorageResult(allTrackingInfo));
        when(
          () => mockTask.run({trackService}, params: any(named: 'params')),
        ).thenAnswer(
          (_) async* {
            for (final state in expectedTaskStates) {
              yield state;
            }
          },
        );
        when(
          () => mockNotifyTask.show(
            trackingInfo: [trackingInfo],
            trackingResult: [],
          ),
        ).thenAnswer((_) async => {});

        when(() => mockPref.trackingHistorySize).thenAnswer((_) async => 0);
        when(
          () => mockTrackingRepo.deleteTrackingInfoByList([]),
        ).thenAnswer((_) async => StorageResult.empty);

        expect(await worker.doWork(inputData), const WorkResult.success());
        verify(
          () => mockTrackingRepo.deleteTrackingInfoByList([]),
        ).called(1);
      });

      test('History size less than the maximum value', () async {
        when(
          () => mockPref.trackingHistorySize,
        ).thenAnswer((_) async => allTrackingInfo.length + 1);
        when(
          () => mockTrackingRepo.deleteTrackingInfoByList([]),
        ).thenAnswer((_) async => StorageResult.empty);

        expect(await worker.doWork(inputData), const WorkResult.success());
        verify(
          () => mockTrackingRepo.deleteTrackingInfoByList([]),
        ).called(1);
      });
    });
  });
}
