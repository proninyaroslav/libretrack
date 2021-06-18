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

/// Fallback `WorkManager` storage (for desktop and iOS)
@dao
abstract class WorkManagerDao {
  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> addWork(WorkInfo info);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> addWorkList(List<WorkInfo> info);

  @delete
  Future<void> deleteWork(WorkInfo info);

  @update
  Future<void> updateWork(WorkInfo info);

  @Query('SELECT * FROM WorkInfo WHERE id = :id')
  Future<WorkInfo?> getWorkById(String id);

  @Query('SELECT * FROM WorkInfo')
  Future<List<WorkInfo>> getAll();
}
