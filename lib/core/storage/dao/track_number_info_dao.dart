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
abstract class TrackNumberInfoDao {
  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> addTrack(TrackNumberInfo info);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> addTrackList(List<TrackNumberInfo> infoList);

  @update
  Future<void> updateTrack(TrackNumberInfo info);

  @update
  Future<void> updateTrackList(List<TrackNumberInfo> infoList);

  @delete
  Future<void> deleteTrack(TrackNumberInfo info);

  @delete
  Future<void> deleteTrackList(List<TrackNumberInfo> infoList);

  @Query('SELECT * FROM TrackNumberInfo')
  Future<List<TrackNumberInfo>> getAll();

  @Query('SELECT * FROM TrackNumberInfo WHERE isArchived = 0')
  Future<List<TrackNumberInfo>> getAllUnarchived();

  @Query('SELECT * FROM TrackNumberInfo')
  Stream<List<TrackNumberInfo>> observeAll();

  @Query('SELECT * FROM TrackNumberInfo WHERE trackNumber = :trackNumber')
  Stream<TrackNumberInfo?> observeByTrack(String trackNumber);

  @Query('SELECT * FROM TrackNumberInfo WHERE trackNumber = :trackNumber')
  Future<TrackNumberInfo?> getByTrack(String trackNumber);
}
