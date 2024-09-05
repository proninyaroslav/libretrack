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

import 'package:flutter_test/flutter_test.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/storage/database.dart';
import 'package:libretrack/core/storage/storage_result.dart';
import 'package:libretrack/core/storage/track_number_repository.dart';
import 'package:quiver/iterables.dart';

void main() {
  group('Track number info storage |', () {
    late TrackNumberRepository repo;
    late AppDatabase db;

    setUp(() async {
      db = await $FloorAppDatabase.inMemoryDatabaseBuilder().build();
      repo = TrackNumberRepositoryImpl(db);
    });

    tearDown(() async {
      db.close();
    });

    test('Add', () async {
      const expectedInfo1 = TrackNumberInfo(
        '123',
        description: 'test',
        isArchived: true,
      );
      const expectedInfo2 = TrackNumberInfo('12345');
      expect(
        await repo.getTrackByTrackNumber(expectedInfo1.trackNumber),
        const StorageResult<TrackNumberInfo?>(null),
      );
      expect(
        await repo.getTrackByTrackNumber(expectedInfo2.trackNumber),
        const StorageResult<TrackNumberInfo?>(null),
      );

      expect(await repo.addTrack(expectedInfo1), StorageResult.empty);
      expect(await repo.addTrack(expectedInfo2), StorageResult.empty);
      expect(
        await repo.getTrackByTrackNumber(expectedInfo1.trackNumber),
        const StorageResult<TrackNumberInfo?>(expectedInfo1),
      );
      expect(
        await repo.getTrackByTrackNumber(expectedInfo2.trackNumber),
        const StorageResult<TrackNumberInfo?>(expectedInfo2),
      );
    });

    test('Remove', () async {
      const info = TrackNumberInfo('123');
      expect(await repo.addTrack(info), StorageResult.empty);
      final result = await repo.getTrackByTrackNumber(info.trackNumber);
      expect(result, const StorageResult<TrackNumberInfo?>(info));

      expect(await repo.deleteTrack(info), StorageResult.empty);
      expect(
        await repo.getTrackByTrackNumber(info.trackNumber),
        const StorageResult<TrackNumberInfo?>(null),
      );
    });

    test('Update', () async {
      var info = const TrackNumberInfo('123');
      expect(await repo.addTrack(info), StorageResult.empty);
      expect(
        await repo.getTrackByTrackNumber(info.trackNumber),
        StorageResult<TrackNumberInfo?>(info),
      );

      info = TrackNumberInfo(info.trackNumber, description: 'test');
      expect(await repo.updateTrack(info), StorageResult.empty);
      expect(
        await repo.getTrackByTrackNumber(info.trackNumber),
        StorageResult<TrackNumberInfo?>(info),
      );
    });

    test('Get all', () async {
      expect(
          await repo.getAllTracks(), const StorageResult(<TrackNumberInfo>[]));

      final expectedInfoList =
          range(10).map((i) => TrackNumberInfo(i.toString())).toList();
      expect(await repo.addTrackList(expectedInfoList), StorageResult.empty);

      expect(await repo.getAllTracks(), StorageResult(expectedInfoList));
    });

    test('Get unarchived tracks', () async {
      const infoList = [
        TrackNumberInfo('123', isArchived: true),
        TrackNumberInfo('12345'),
        TrackNumberInfo('123456789'),
      ];
      const expectedInfoList = [
        TrackNumberInfo('12345'),
        TrackNumberInfo('123456789'),
      ];
      expect(await repo.addTrackList(infoList), StorageResult.empty);

      expect(
        await repo.getAllUnarchivedTracks(),
        const StorageResult(expectedInfoList),
      );
    });
  });

  group('Track number service storage |', () {
    late TrackNumberRepository trackRepo;
    late AppDatabase db;

    setUp(() async {
      db = await $FloorAppDatabase.inMemoryDatabaseBuilder().build();
      trackRepo = TrackNumberRepositoryImpl(db);
    });

    tearDown(() async {
      db.close();
    });

    test('Add', () async {
      const trackInfo1 = TrackNumberInfo('123');
      const trackInfo2 = TrackNumberInfo('12345');
      final trackService1 = TrackNumberService(
        trackNumber: trackInfo1.trackNumber,
        serviceType: PostalServiceType.ups,
      );
      final trackService2 = TrackNumberService(
        trackNumber: trackInfo2.trackNumber,
        serviceType: PostalServiceType.russianPost,
        isActive: false,
      );

      expect(
        await trackRepo.addTrackList([trackInfo1, trackInfo2]),
        StorageResult.empty,
      );
      expect(
        await trackRepo.addTrackNumberServices([trackService1, trackService2]),
        StorageResult.empty,
      );
      expect(
        await trackRepo.getTrackNumberServices(trackInfo1.trackNumber),
        StorageResult([trackService1]),
      );
      expect(
        await trackRepo.getTrackNumberServices(trackInfo2.trackNumber),
        StorageResult([trackService2]),
      );
    });

    test('Update', () async {
      const trackInfo = TrackNumberInfo('123');
      final trackService = TrackNumberService(
        trackNumber: trackInfo.trackNumber,
        serviceType: PostalServiceType.ups,
      );

      expect(await trackRepo.addTrack(trackInfo), StorageResult.empty);
      expect(
        await trackRepo.addTrackNumberServices([trackService]),
        StorageResult.empty,
      );
      expect(
        await trackRepo.getTrackNumberServices(trackInfo.trackNumber),
        StorageResult([trackService]),
      );

      final updatedTrackService = trackService.copyWith(isActive: false);
      expect(
        await trackRepo.updateTrackNumberServices([updatedTrackService]),
        StorageResult.empty,
      );
      expect(
        await trackRepo.getTrackNumberServices(trackInfo.trackNumber),
        StorageResult([updatedTrackService]),
      );
    });

    test('Autoremoving after removing track', () async {
      const trackInfo = TrackNumberInfo('123');
      final trackServices = [
        TrackNumberService(
          trackNumber: trackInfo.trackNumber,
          serviceType: PostalServiceType.ups,
        )
      ];

      expect(await trackRepo.addTrack(trackInfo), StorageResult.empty);
      expect(
        await trackRepo.addTrackNumberServices(trackServices),
        StorageResult.empty,
      );
      expect(
        await trackRepo.getTrackNumberServices(trackInfo.trackNumber),
        StorageResult(trackServices),
      );

      await trackRepo.deleteTrack(trackInfo);
      expect(
        await trackRepo.getTrackNumberServices(trackInfo.trackNumber),
        const StorageResult(<TrackNumberService>[]),
      );
    });

    test('Autoremoving after removing service', () async {
      const trackInfo = TrackNumberInfo('123');
      final trackServices = [
        TrackNumberService(
          trackNumber: trackInfo.trackNumber,
          serviceType: PostalServiceType.ups,
        )
      ];

      expect(await trackRepo.addTrack(trackInfo), StorageResult.empty);
      expect(
        await trackRepo.addTrackNumberServices(trackServices),
        StorageResult.empty,
      );
      expect(
        await trackRepo.getTrackNumberServices(trackInfo.trackNumber),
        StorageResult(trackServices),
      );

      await trackRepo.deleteTrack(trackInfo);
      expect(
        await trackRepo.getTrackNumberServices(trackInfo.trackNumber),
        const StorageResult(<TrackNumberService>[]),
      );
    });

    test('Get by track number list', () async {
      const trackInfoList = [
        TrackNumberInfo('123'),
        TrackNumberInfo('12345'),
        TrackNumberInfo('123456789'),
      ];
      final trackServiceList = trackInfoList
          .map(
            (info) => TrackNumberService(
              trackNumber: info.trackNumber,
              serviceType: PostalServiceType.ups,
            ),
          )
          .toList();

      expect(
        await trackRepo.addTrackList(trackInfoList),
        StorageResult.empty,
      );
      expect(
        await trackRepo.addTrackNumberServices(trackServiceList),
        StorageResult.empty,
      );
      expect(
        await trackRepo.getTrackNumberServicesByList(
          trackInfoList.sublist(0, 2).map((info) => info.trackNumber).toList(),
        ),
        StorageResult(trackServiceList.sublist(0, 2)),
      );
    });
  });
}
