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

void main() {
  group('Shipment info storage |', () {
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
      const trackInfo = TrackNumberInfo('123');
      final info1 = ShipmentInfo.from(
        id: 1,
        trackNumber: trackInfo.trackNumber,
        serviceType: PostalServiceType.ups,
        serviceDescription: 'UPS Standard',
        shipmentDescription: 'Small Package',
        signedForByName: 'Foo Bar',
        weight: const UnitOfMeasurement(
          value: 1,
          measurement: Measurement.kilogram,
        ),
        volume: const UnitOfMeasurement(
          value: 0.5,
          measurement: Measurement.liter,
        ),
        pickupDate: DateTime(2020),
        deliveryDate: DateTime(2020, 1, 5),
        estimatedDeliveryDate: DateTime(2020, 1, 5),
        scheduledDeliveryDate: DateTime(2020, 1, 5),
        cashOnDelivery: const Currency(100, 'USD'),
        shipperAddress: const Address(
          location: 'test location 1',
          postalCode: '123',
          countryCode: 'US',
        ),
        receiverAddress: const Address(
          location: 'test location 2',
          postalCode: '12345',
          countryCode: 'US',
        ),
        serviceMessage: 'test',
      );
      final info2 = ShipmentInfo.from(
        id: 2,
        trackNumber: trackInfo.trackNumber,
        serviceType: PostalServiceType.russianPost,
      );

      expect(await trackRepo.addTrack(trackInfo), StorageResult.empty);
      expect(
        await shipmentRepo.addShipmentInfo(info1),
        const StorageResult(1),
      );
      expect(
        await shipmentRepo.addShipmentInfo(info2),
        const StorageResult(2),
      );

      expect(
        await shipmentRepo.getShipmentInfoByTrack(trackInfo.trackNumber),
        StorageResult([info1, info2]),
      );
    });

    test('Delete', () async {
      const trackInfo = TrackNumberInfo('123');
      final info = ShipmentInfo.from(
        id: 1,
        trackNumber: trackInfo.trackNumber,
        serviceType: PostalServiceType.ups,
      );

      expect(await trackRepo.addTrack(trackInfo), StorageResult.empty);
      expect(
        await shipmentRepo.addShipmentInfo(info),
        const StorageResult(1),
      );
      expect(
        await shipmentRepo.getShipmentInfoByTrack(trackInfo.trackNumber),
        StorageResult([info]),
      );

      expect(
        await shipmentRepo.deleteShipmentInfoByTrack(trackInfo.trackNumber),
        StorageResult.empty,
      );
      expect(
        await shipmentRepo.getShipmentInfoByTrack(trackInfo.trackNumber),
        const StorageResult([]),
      );
    });

    test('Autoremoving after removing track', () async {
      const trackInfo = TrackNumberInfo('123');
      final info = ShipmentInfo.from(
        id: 1,
        trackNumber: trackInfo.trackNumber,
        serviceType: PostalServiceType.ups,
      );

      expect(await trackRepo.addTrack(trackInfo), StorageResult.empty);
      expect(
        await shipmentRepo.addShipmentInfo(info),
        const StorageResult(1),
      );
      expect(
        await shipmentRepo.getShipmentInfoByTrack(trackInfo.trackNumber),
        StorageResult([info]),
      );

      expect(await trackRepo.deleteTrack(trackInfo), StorageResult.empty);
      expect(
        await shipmentRepo.getShipmentInfoByTrack(trackInfo.trackNumber),
        const StorageResult([]),
      );
    });

    test('Alternate tracking numbers', () async {
      const trackInfo = TrackNumberInfo('123');
      const shipmentId = 1;
      final info = ShipmentInfo.from(
        id: shipmentId,
        trackNumber: trackInfo.trackNumber,
        serviceType: PostalServiceType.ups,
      );
      const alternateTracks = [
        AlternateTrackNumber(trackNumber: '123', shipmentId: shipmentId),
        AlternateTrackNumber(trackNumber: '12345', shipmentId: shipmentId),
      ];

      expect(await trackRepo.addTrack(trackInfo), StorageResult.empty);
      expect(
        await shipmentRepo.addShipmentInfo(
          info,
          alternateTracks: alternateTracks.map((t) => t.trackNumber).toList(),
        ),
        const StorageResult(1),
      );
      expect(
        await shipmentRepo.getAlternateTracksById(shipmentId),
        const StorageResult(alternateTracks),
      );
    });

    test('Replace', () async {
      const trackInfo = TrackNumberInfo('123');
      var info = ShipmentInfo.from(
        id: 1,
        trackNumber: trackInfo.trackNumber,
        serviceType: PostalServiceType.ups,
      );

      expect(await trackRepo.addTrack(trackInfo), StorageResult.empty);
      expect(
        await shipmentRepo.addShipmentInfo(info),
        const StorageResult(1),
      );
      expect(
        await shipmentRepo.getShipmentInfoByTrack(trackInfo.trackNumber),
        StorageResult([info]),
      );

      info = ShipmentInfo.from(
        id: 2,
        trackNumber: trackInfo.trackNumber,
        serviceType: PostalServiceType.ups,
        signedForByName: 'Foo Bar',
      );
      expect(
        await shipmentRepo.replaceShipmentInfoByTrack(info),
        const StorageResult(2),
      );
      expect(
        await shipmentRepo.getShipmentInfoByTrack(trackInfo.trackNumber),
        StorageResult([info]),
      );
    });
  });
}
