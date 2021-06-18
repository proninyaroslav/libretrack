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
import 'package:libretrack/core/storage/work_manager_repository.dart';
import 'package:libretrack/core/work_manager/worker.dart';

void main() {
  group('Work Manager storage |', () {
    late WorkManagerRepository repo;
    late AppDatabase db;

    setUp(() async {
      db = await $FloorAppDatabase.inMemoryDatabaseBuilder().build();
      repo = WorkManagerRepositoryImpl(db);
    });

    tearDown(() async {
      db.close();
    });

    test('Add', () async {
      final expectedInfo1 = WorkInfo.from(
        id: '1',
        workerName: 'test',
        type: WorkType.oneTime,
        frequency: const Duration(minutes: 15),
        lastRunning: DateTime(2020),
        inputData: const WorkData({
          'string': 'foo',
          'int': 1,
          'double': 1.1,
          'bool': true,
          'string_list': ['foo', 'bar', 'baz'],
          'int_list': [1, 2, 3],
          'double_list': [1.1, 2.2, 3.3],
          'bool_list': [true, false, true],
        }),
        constraints: const WorkConstraints(
          networkType: NetworkType.connected,
        ),
      );
      final expectedInfo2 = WorkInfo.from(
        id: '2',
        workerName: 'test',
        type: WorkType.oneTime,
      );
      expect(await repo.getWorkById(expectedInfo1.id), isNull);
      expect(await repo.getWorkById(expectedInfo2.id), isNull);

      await repo.addWork(expectedInfo1);
      await repo.addWork(expectedInfo2);
      expect(await repo.getWorkById(expectedInfo1.id), expectedInfo1);
      expect(await repo.getWorkById(expectedInfo2.id), expectedInfo2);
    });

    test('Remove', () async {
      WorkInfo? info = WorkInfo.from(
        id: '1',
        workerName: 'test',
        type: WorkType.oneTime,
      );
      await repo.addWork(info);
      info = await repo.getWorkById(info.id);
      expect(info, isNotNull);

      await repo.deleteWork(info!);
      expect(await repo.getWorkById(info.id), isNull);
    });

    test('Get all', () async {
      final expectedInfoList = [
        WorkInfo.from(id: '1', workerName: 'test', type: WorkType.oneTime),
        WorkInfo.from(id: '2', workerName: 'test', type: WorkType.oneTime),
        WorkInfo.from(id: '3', workerName: 'test', type: WorkType.oneTime),
      ];
      expect(await repo.getAll(), isEmpty);

      await repo.addWorkList(expectedInfoList);
      expect(await repo.getAll(), expectedInfoList);
    });
  });
}
