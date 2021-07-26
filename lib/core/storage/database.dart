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

import 'dart:async';

import 'package:floor/floor.dart';
import 'package:injectable/injectable.dart';
import 'package:libretrack/core/entity/converter/converter.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/env.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import 'dao/dao.dart';

part 'database.g.dart';

@Database(version: 2, entities: [
  TrackingServiceInfo,
  AuthDataField,
  PostalServiceInfo,
  TrackNumberInfo,
  TrackNumberService,
  ShipmentActivityInfo,
  ShipmentInfo,
  AlternateTrackNumber,
  WorkInfo,
  TrackingInfo,
  TrackingResponseInfo,
])
abstract class AppDatabase extends FloorDatabase {
  TrackingServiceDao get trackingServiceDao;

  ServiceAuthDao get serviceAuthDao;

  PostalServiceDao get postalServiceDao;

  TrackNumberInfoDao get trackNumberDao;

  ShipmentDao get shipmentDao;

  WorkManagerDao get workManagerDao;

  TrackingDao get trackingDao;

  TrackNumberServiceDao get trackNumberServiceDao;
}

@module
abstract class AppDatabaseModule {
  @Singleton(env: [Env.prod, Env.dev])
  Future<AppDatabase> get db async => $FloorAppDatabase
      .databaseBuilder('libretrack.db')
      .addMigrations(migrations)
      .build();

  @Singleton(env: [Env.test])
  Future<AppDatabase> get inMemoryDb async =>
      $FloorAppDatabase.inMemoryDatabaseBuilder().build();
}

final migrations = [
  Migration(1, 2, (db) async {
    await db.transaction((txn) async {
      // Create the new table
      await txn.execute(
        'CREATE TABLE IF NOT EXISTS `ShipmentInfo_new` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `trackNumber` TEXT NOT NULL, `serviceType` TEXT NOT NULL, `serviceDescription` TEXT, `shipmentDescription` TEXT, `signedForByName` TEXT, `pickupDate` INTEGER, `deliveryDate` INTEGER, `estimatedDeliveryDate` INTEGER, `scheduledDeliveryDate` INTEGER, `serviceMessage` TEXT, `cashOnDelivery_value` REAL, `cashOnDelivery_currencyCode` TEXT, `shipper_location` TEXT, `shipper_postalCode` TEXT, `shipper_countryCode` TEXT, `receiver_location` TEXT, `receiver_postalCode` TEXT, `receiver_countryCode` TEXT, `weight_Value` REAL, `weight_Measurement` TEXT, `volume_Value` REAL, `volume_Measurement` TEXT, FOREIGN KEY (`trackNumber`) REFERENCES `TrackNumberInfo` (`trackNumber`) ON UPDATE NO ACTION ON DELETE CASCADE)',
      );

      // Copy the data
      await txn.execute(
        'INSERT INTO `ShipmentInfo_new` (`id`, `trackNumber`, `serviceType`, `serviceDescription`, `shipmentDescription`, `signedForByName`, `pickupDate`, `deliveryDate`, `estimatedDeliveryDate`, `scheduledDeliveryDate`, `serviceMessage`, `cashOnDelivery_value`, `cashOnDelivery_currencyCode`, `shipper_location`, `shipper_postalCode`, `shipper_countryCode`, `receiver_location`, `receiver_postalCode`, `receiver_countryCode`, `weight_Value`, `weight_Measurement`, `volume_Value`, `volume_Measurement`) SELECT `id`, `trackNumber`, `serviceType`, `serviceDescription`, `shipmentDescription`, `signedForByName`, `pickupDate`, `deliveryDate`, `estimatedDeliveryDate`, `scheduledDeliveryDate`, `serviceMessage`, `cashOnDelivery_value`, `cashOnDelivery_currencyCode`, `shipper_location`, `shipper_postalCode`, `shipper_countryCode`, `receiver_location`, `receiver_postalCode`, `receiver_countryCode`, `weight_Value`, `weight_Measurement`, `volume_Value`, `volume_Measurement` FROM `ShipmentInfo`',
      );

      // Delete the old table
      await txn.execute('DROP TABLE `ShipmentInfo`');

      // Change the new table name
      await txn.execute(
        'ALTER TABLE `ShipmentInfo_new` RENAME TO `ShipmentInfo`',
      );
    });
  }),
];
