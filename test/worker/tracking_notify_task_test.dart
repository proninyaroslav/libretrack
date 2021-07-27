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
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/notification_manager.dart';
import 'package:libretrack/core/settings/settings.dart';
import 'package:libretrack/core/storage/storage_result.dart';
import 'package:libretrack/core/storage/track_number_repository.dart';
import 'package:libretrack/core/worker/tracking_notify_task.dart';
import 'package:libretrack/core/worker/tracking_task.dart';
import 'package:mocktail/mocktail.dart';

import '../mock/mock.dart';

void main() {
  group('Tracking notify task |', () {
    late NotificationManager mockNotifyManager;
    late TrackNumberRepository mockTrackNumberRepo;
    late TrackingNotifyTask notifyTask;
    late AppSettings mockPref;

    setUpAll(() {
      registerFallbackValue<Map<TrackNumberInfo, ShipmentActivityInfo>>({});
      mockNotifyManager = MockNotificationManager();
      mockTrackNumberRepo = MockTrackNumberRepository();
      mockPref = MockAppSettings();
      notifyTask = TrackingNotifyTask(
        mockNotifyManager,
        mockTrackNumberRepo,
        mockPref,
      );
    });

    test('Show', () async {
      final trackingInfo = [
        TrackingInfo(
          id: const TrackingId('1'),
          trackNumber: '1',
          status: TrackingStatus.complete,
          hasNewInfo: true,
          hasNonRetryableError: false,
          invalidTrackNumber: false,
          dateTime: DateTime(2020),
        ),
        TrackingInfo(
          id: const TrackingId('2'),
          trackNumber: '2',
          status: TrackingStatus.inProgress,
          hasNewInfo: true,
          hasNonRetryableError: false,
          invalidTrackNumber: false,
          dateTime: DateTime(2020),
        ),
        TrackingInfo(
          id: const TrackingId('3'),
          trackNumber: '3',
          status: TrackingStatus.complete,
          hasNewInfo: false,
          hasNonRetryableError: false,
          invalidTrackNumber: false,
          dateTime: DateTime(2020),
        ),
        TrackingInfo(
          id: const TrackingId('4'),
          trackNumber: '4',
          status: TrackingStatus.complete,
          hasNewInfo: true,
          hasNonRetryableError: false,
          invalidTrackNumber: false,
          dateTime: DateTime(2020),
        ),
        TrackingInfo(
          id: const TrackingId('5'),
          trackNumber: '5',
          status: TrackingStatus.complete,
          hasNewInfo: false,
          hasNonRetryableError: true,
          invalidTrackNumber: false,
          dateTime: DateTime(2020),
        ),
      ];
      final trackingResult = [
        TrackingTaskResult(
          trackService: const TrackNumberService(
            trackNumber: '1',
            serviceType: PostalServiceType.ups,
          ),
          info: ShipmentInfo.from(
            trackNumber: '1',
            serviceType: PostalServiceType.ups,
          ),
          activity: [
            ShipmentActivityInfo.from(
              trackNumber: '1',
              serviceType: PostalServiceType.ups,
              statusType: ShipmentStatusType.inTransit,
              dateTime: DateTime(2020),
            ),
            ShipmentActivityInfo.from(
              trackNumber: '1',
              serviceType: PostalServiceType.ups,
              statusType: ShipmentStatusType.delivered,
              dateTime: DateTime(2020, 1, 2),
            ),
          ],
        ),
        TrackingTaskResult(
          trackService: const TrackNumberService(
            trackNumber: '2',
            serviceType: PostalServiceType.russianPost,
          ),
          info: ShipmentInfo.from(
            trackNumber: '2',
            serviceType: PostalServiceType.russianPost,
          ),
          activity: [
            ShipmentActivityInfo.from(
              trackNumber: '2',
              serviceType: PostalServiceType.russianPost,
              statusType: ShipmentStatusType.delivered,
            ),
          ],
        ),
        TrackingTaskResult(
          trackService: const TrackNumberService(
            trackNumber: '4',
            serviceType: PostalServiceType.ups,
          ),
          info: ShipmentInfo.from(
            trackNumber: '4',
            serviceType: PostalServiceType.ups,
          ),
          activity: [],
        ),
      ];
      final lastActivities = {
        const TrackNumberInfo('1'): ShipmentActivityInfo.from(
          trackNumber: '1',
          serviceType: PostalServiceType.ups,
          statusType: ShipmentStatusType.delivered,
          dateTime: DateTime(2020, 1, 2),
        ),
      };

      when(
        () => mockTrackNumberRepo.getTrackByTrackNumber('1'),
      ).thenAnswer(
        (_) async => const StorageResult(
          TrackNumberInfo('1'),
        ),
      );
      when(
        () => mockTrackNumberRepo.getTrackByTrackNumber('5'),
      ).thenAnswer(
        (_) async => const StorageResult(
          TrackNumberInfo('5'),
        ),
      );
      when(
        () => mockNotifyManager.newActivitiesNotify(lastActivities),
      ).thenAnswer(
        (_) async => {},
      );
      when(
        () => mockNotifyManager.parcelsHardErrorNotify(
          [const TrackNumberInfo('5')],
        ),
      ).thenAnswer(
        (_) async => {},
      );
      when(() => mockPref.trackingNotifications).thenReturn(true);
      when(() => mockPref.trackingErrorNotifications).thenReturn(true);

      await notifyTask.show(
        trackingInfo: trackingInfo,
        trackingResult: trackingResult,
      );
      verify(
        () => mockNotifyManager.newActivitiesNotify(lastActivities),
      ).called(1);
      verify(
        () => mockNotifyManager.parcelsHardErrorNotify([
          const TrackNumberInfo('5'),
        ]),
      ).called(1);
    });

    test('Disabled notifications', () async {
      when(() => mockPref.trackingNotifications).thenReturn(false);
      when(() => mockPref.trackingErrorNotifications).thenReturn(false);
      await notifyTask.show(trackingInfo: [], trackingResult: []);
      verifyNever(
        () => mockNotifyManager.newActivitiesNotify(any()),
      );
    });

    test('Tracking failed', () async {
      when(
        () => mockTrackNumberRepo.getTrackByTrackNumber('1'),
      ).thenAnswer(
        (_) async => const StorageResult(
          TrackNumberInfo('1'),
        ),
      );
      when(
        () => mockNotifyManager.trackingFailedNotify(
          [const TrackNumberInfo('1')],
        ),
      ).thenAnswer(
        (_) async => {},
      );
      when(() => mockPref.trackingErrorNotifications).thenReturn(true);

      await notifyTask.trackingFailedNotify(['1']);
      verify(
        () => mockNotifyManager.trackingFailedNotify(
          [const TrackNumberInfo('1')],
        ),
      ).called(1);
    });
  });
}
