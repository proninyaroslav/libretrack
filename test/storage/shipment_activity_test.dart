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
import 'package:libretrack/core/storage/database.dart';
import 'package:libretrack/core/storage/shipment_repository.dart';
import 'package:libretrack/core/storage/storage_result.dart';
import 'package:libretrack/core/storage/track_number_repository.dart';
import 'package:quiver/iterables.dart';

void main() {
  group('Shipment activity storage |', () {
    late ShipmentRepository shipmentRepo;
    late TrackNumberRepository trackRepo;
    late Future<AppDatabase> db;

    setUp(() async {
      db = $FloorAppDatabase.inMemoryDatabaseBuilder().build();
      shipmentRepo = ShipmentRepositoryImpl(await db);
      trackRepo = TrackNumberRepositoryImpl(await db);
    });

    tearDown(() async {
      (await db).close();
    });

    test('Add', () async {
      const info = TrackNumberInfo('123');
      final activities1 = range(1, 5)
          .map((i) => ShipmentActivityInfo.from(
                id: i as int,
                trackNumber: info.trackNumber,
                serviceType: PostalServiceType.ups,
                statusType: ShipmentStatusType.other,
                statusDescription: '$i',
                activityLocation: Address(location: 'test location $i'),
                dateTime: DateTime(2020, 1, i),
              ))
          .toList();
      final activities2 = range(5, 10)
          .map((i) => ShipmentActivityInfo.from(
                id: i as int,
                trackNumber: info.trackNumber,
                serviceType: PostalServiceType.ups,
                statusType: ShipmentStatusType.other,
                dateTime: DateTime(2020, 1, i),
              ))
          .toList();
      final activities = activities1 + activities2;
      activities.sort((a, b) => b.dateTime.compareTo(a.dateTime));

      expect(await trackRepo.addTrack(info), StorageResult.empty);
      expect(
        await shipmentRepo.addActivities(activities),
        StorageResult.empty,
      );
      expect(
        await shipmentRepo.getActivitiesByTrack(info.trackNumber),
        StorageResult(activities),
      );

      activities.sort((a, b) => a.dateTime.compareTo(b.dateTime));
      expect(
        await shipmentRepo.getActivitiesByTrack(
          info.trackNumber,
          oldestFirst: true,
        ),
        StorageResult(activities),
      );
    });

    test('Delete', () async {
      const info = TrackNumberInfo('123');
      final activities = range(1, 10)
          .map(
            (i) => ShipmentActivityInfo.from(
              id: i as int,
              trackNumber: info.trackNumber,
              serviceType: PostalServiceType.ups,
              statusType: ShipmentStatusType.other,
            ),
          )
          .toList();

      expect(await trackRepo.addTrack(info), StorageResult.empty);
      expect(
        await shipmentRepo.addActivities(activities),
        StorageResult.empty,
      );
      expect(
        await shipmentRepo.getActivitiesByTrack(info.trackNumber),
        StorageResult(activities),
      );

      expect(
        await shipmentRepo.deleteActivitiesByTrack(info.trackNumber),
        StorageResult.empty,
      );
      expect(
        await shipmentRepo.getActivitiesByTrack(info.trackNumber),
        const StorageResult([]),
      );
    });

    test('Autoremoving after removing track', () async {
      const info = TrackNumberInfo('123');
      final activities = range(1, 10)
          .map(
            (i) => ShipmentActivityInfo.from(
              id: i as int,
              trackNumber: info.trackNumber,
              serviceType: PostalServiceType.ups,
              statusType: ShipmentStatusType.other,
            ),
          )
          .toList();

      expect(await trackRepo.addTrack(info), StorageResult.empty);
      expect(
        await shipmentRepo.addActivities(activities),
        StorageResult.empty,
      );
      expect(
        await shipmentRepo.getActivitiesByTrack(info.trackNumber),
        StorageResult(activities),
      );

      expect(await trackRepo.deleteTrack(info), StorageResult.empty);
      expect(
        await shipmentRepo.getActivitiesByTrack(info.trackNumber),
        const StorageResult([]),
      );
    });

    test('Replace', () async {
      const info = TrackNumberInfo('123');
      var activities = range(1, 10)
          .map(
            (i) => ShipmentActivityInfo.from(
              id: i as int,
              trackNumber: info.trackNumber,
              serviceType: PostalServiceType.ups,
              statusType: ShipmentStatusType.other,
            ),
          )
          .toList();

      expect(await trackRepo.addTrack(info), StorageResult.empty);
      expect(
        await shipmentRepo.addActivities(activities),
        StorageResult.empty,
      );
      expect(
        await shipmentRepo.getActivitiesByTrack(info.trackNumber),
        StorageResult(activities),
      );

      activities = range(11, 15)
          .map(
            (i) => ShipmentActivityInfo.from(
              id: i as int,
              trackNumber: info.trackNumber,
              serviceType: PostalServiceType.ups,
              statusType: ShipmentStatusType.delivered,
            ),
          )
          .toList();
      expect(
        await shipmentRepo.replaceActivitiesByTrack(
          info.trackNumber,
          activities,
        ),
        StorageResult.empty,
      );
      expect(
        await shipmentRepo.getActivitiesByTrack(info.trackNumber),
        StorageResult(activities),
      );
    });
  });
}
