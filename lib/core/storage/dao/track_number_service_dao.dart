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

import 'package:floor/floor.dart';
import 'package:libretrack/core/entity/entity.dart';

@dao
abstract class TrackNumberServiceDao {
  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> addTrackNumberServices(List<TrackNumberService> infoList);

  @update
  Future<void> updateTrackNumberServices(List<TrackNumberService> infoList);

  @delete
  Future<void> deleteTrackNumberServices(List<TrackNumberService> infoList);

  @Query('SELECT * FROM TrackNumberService')
  Stream<List<TrackNumberService>> observeAllTrackNumberServices();

  @Query('''
  SELECT * FROM TrackNumberService WHERE trackNumber = :trackNumber
  ''')
  Stream<List<TrackNumberService>> observeTrackNumberServices(
    String trackNumber,
  );

  @Query('SELECT * FROM TrackNumberService')
  Future<List<TrackNumberService>> getAllTrackNumberServices();

  @Query('''
  SELECT * FROM TrackNumberService WHERE trackNumber = :trackNumber
  ''')
  Future<List<TrackNumberService>> getTrackNumberServices(
    String trackNumber,
  );

  @Query('''
  SELECT * FROM TrackNumberService WHERE trackNumber IN (:trackNumberList)
  ''')
  Future<List<TrackNumberService>> getTrackNumberServicesByList(
    List<String> trackNumberList,
  );

  @Query('''
  SELECT * FROM TrackNumberService
  WHERE trackNumber IN (:trackNumberList) AND isActive = 1
  ''')
  Future<List<TrackNumberService>> getActiveTrackNumberServicesByList(
    List<String> trackNumberList,
  );

  @Query('''
  SELECT * FROM TrackNumberService
  WHERE trackNumber = :trackNumber AND isActive = 1
  ''')
  Future<List<TrackNumberService>> getActiveTrackNumberServices(
    String trackNumber,
  );
}
