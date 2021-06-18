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
import 'package:libretrack/core/entity/converter/converter.dart';
import 'package:libretrack/core/entity/entity.dart';

@TypeConverters([TrackingIdConverter, DateTimeConverter])
@dao
abstract class TrackingDao {
  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertTrackingInfoList(List<TrackingInfo> infoList);

  @Update(onConflict: OnConflictStrategy.replace)
  Future<void> updateTrackingInfoList(List<TrackingInfo> infoList);

  @Update(onConflict: OnConflictStrategy.replace)
  Future<void> updateTrackingInfo(TrackingInfo info);

  @delete
  Future<void> deleteTrackingInfo(TrackingInfo info);

  @delete
  Future<void> deleteTrackingInfoByList(List<TrackingInfo> infoList);

  @Query('''
  SELECT * FROM TrackingInfo WHERE trackNumber = :trackNumber
  ORDER BY dateTime ASC
  ''')
  Future<List<TrackingInfo>> getTrackingInfoByTrackAsc(String trackNumber);

  @Query('''
  SELECT * FROM TrackingInfo WHERE trackNumber = :trackNumber
  ORDER BY dateTime DESC
  ''')
  Future<List<TrackingInfo>> getTrackingInfoByTrackDesc(String trackNumber);

  @Query('SELECT * FROM TrackingInfo')
  Future<List<TrackingInfo>> getAllTrackingInfo();

  @Query('SELECT * FROM TrackingInfo')
  Stream<List<TrackingInfo>> observeAllTrackingInfo();

  @Query('''
  SELECT * FROM TrackingInfo WHERE trackNumber = :trackNumber
  ORDER BY dateTime ASC
  ''')
  Stream<List<TrackingInfo>> observeTrackingInfoByTrackAsc(
    String trackNumber,
  );

  @Query('''
  SELECT * FROM TrackingInfo WHERE trackNumber = :trackNumber
  ORDER BY dateTime DESC
  ''')
  Stream<List<TrackingInfo>> observeTrackingInfoByTrackDesc(
    String trackNumber,
  );

  @Query('''
  SELECT *, MAX(dateTime) FROM TrackingInfo
  WHERE trackNumber IN (:trackNumbersList)
  GROUP BY trackNumber ORDER BY dateTime ASC
  ''')
  Future<List<TrackingInfo>> getLatestTrackingInfoByListAsc(
    List<String> trackNumbersList,
  );

  @Query('''
  SELECT *, MAX(dateTime) FROM TrackingInfo
  WHERE trackNumber IN (:trackNumbersList)
  GROUP BY trackNumber ORDER BY dateTime DESC
  ''')
  Future<List<TrackingInfo>> getLatestTrackingInfoByListDesc(
    List<String> trackNumbersList,
  );

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> addResponseList(List<TrackingResponseInfo> infoList);

  @Query('SELECT * FROM TrackingResponseInfo WHERE trackingId = :id')
  Future<List<TrackingResponseInfo>> getResponseByTrackingId(TrackingId id);

  @Query('SELECT * FROM TrackingResponseInfo')
  Future<List<TrackingResponseInfo>> getAllResponse();

  @Query('''
  SELECT * FROM TrackingResponseInfo WHERE trackNumber = :trackNumber
  ORDER BY dateTime ASC
  ''')
  Future<List<TrackingResponseInfo>> getResponseByTrackAsc(
    String trackNumber,
  );

  @Query('''
  SELECT * FROM TrackingResponseInfo WHERE trackNumber = :trackNumber
  ORDER BY dateTime DESC
  ''')
  Future<List<TrackingResponseInfo>> getResponseByTrackDesc(
    String trackNumber,
  );
}
