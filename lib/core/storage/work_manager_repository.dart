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

import 'package:injectable/injectable.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/storage/database.dart';

abstract class WorkManagerRepository {
  Future<void> addWork(WorkInfo info);

  Future<void> addWorkList(List<WorkInfo> infoList);

  Future<void> deleteWork(WorkInfo info);

  Future<void> updateWork(WorkInfo info);

  Future<WorkInfo?> getWorkById(String id);

  Future<List<WorkInfo>> getAll();
}

@Singleton(as: WorkManagerRepository, dependsOn: [AppDatabase])
class WorkManagerRepositoryImpl implements WorkManagerRepository {
  final AppDatabase _db;

  WorkManagerRepositoryImpl(this._db);

  @override
  Future<void> addWork(WorkInfo info) async => _db.workManagerDao.addWork(info);

  @override
  Future<void> addWorkList(List<WorkInfo> infoList) async =>
      _db.workManagerDao.addWorkList(infoList);

  @override
  Future<void> deleteWork(WorkInfo info) async =>
      _db.workManagerDao.deleteWork(info);

  @override
  Future<void> updateWork(WorkInfo info) async =>
      _db.workManagerDao.updateWork(info);

  @override
  Future<WorkInfo?> getWorkById(String id) async =>
      _db.workManagerDao.getWorkById(id);

  @override
  Future<List<WorkInfo>> getAll() async => _db.workManagerDao.getAll();
}
