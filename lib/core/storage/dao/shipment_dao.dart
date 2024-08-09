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

import 'package:floor/floor.dart';
import 'package:libretrack/core/entity/entity.dart';

@dao
abstract class ShipmentDao {
  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> addActivities(List<ShipmentActivityInfo> activities);

  @transaction
  Future<void> replaceActivitiesByTrack(
    String trackNumber,
    List<ShipmentActivityInfo> activities,
  ) async {
    await deleteActivitiesByTrack(trackNumber);
    await addActivities(activities);
  }

  @Query('DELETE FROM ShipmentActivityInfo WHERE trackNumber = :trackNumber')
  Future<void> deleteActivitiesByTrack(String trackNumber);

  @Query('SELECT * FROM ShipmentActivityInfo')
  Future<List<ShipmentActivityInfo>> getAllActivities();

  @Query('SELECT * FROM ShipmentActivityInfo')
  Stream<List<ShipmentActivityInfo>> observeAllActivities();

  @Query('''
  SELECT * FROM ShipmentActivityInfo WHERE trackNumber = :trackNumber
  ORDER BY dateTime ASC
  ''')
  Future<List<ShipmentActivityInfo>> getActivitiesByTrackAsc(
    String trackNumber,
  );

  @Query('''
  SELECT * FROM ShipmentActivityInfo WHERE trackNumber = :trackNumber
  ORDER BY dateTime DESC
  ''')
  Future<List<ShipmentActivityInfo>> getActivitiesByTrackDesc(
    String trackNumber,
  );

  @Query('''
  SELECT * FROM ShipmentActivityInfo WHERE trackNumber = :trackNumber
  ORDER BY dateTime ASC
  ''')
  Stream<List<ShipmentActivityInfo>> observeActivitiesByTrackAsc(
    String trackNumber,
  );

  @Query('''
  SELECT * FROM ShipmentActivityInfo WHERE trackNumber = :trackNumber
  ORDER BY dateTime DESC
  ''')
  Stream<List<ShipmentActivityInfo>> observeActivitiesByTrackDesc(
    String trackNumber,
  );

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<int> addShipmentInfo(ShipmentInfo info);

  @transaction
  Future<int> replaceShipmentInfoByTrack(
    ShipmentInfo info,
  ) async {
    await deleteShipmentInfoByTrack(info.trackNumber);
    return addShipmentInfo(info);
  }

  @Query('DELETE FROM ShipmentInfo WHERE trackNumber = :trackNumber')
  Future<void> deleteShipmentInfoByTrack(String trackNumber);

  @Query('SELECT * FROM ShipmentInfo WHERE trackNumber = :trackNumber')
  Future<List<ShipmentInfo>> getShipmentInfoByTrack(String trackNumber);

  @Query('SELECT * FROM ShipmentInfo WHERE trackNumber = :trackNumber')
  Stream<List<ShipmentInfo>> observeShipmentInfoByTrack(String trackNumber);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> addAlternateTrackList(List<AlternateTrackNumber> trackNumbers);

  @Query('SELECT * FROM AlternateTrackNumber WHERE shipmentId = :shipmentId')
  Future<List<AlternateTrackNumber>> getAlternateTracksById(int shipmentId);

  @Query('SELECT * FROM ShipmentInfo')
  Future<List<ShipmentInfo>> getAllShipmentInfo();
}
