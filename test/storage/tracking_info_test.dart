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
import 'package:libretrack/core/storage/storage_result.dart';
import 'package:libretrack/core/storage/track_number_repository.dart';
import 'package:libretrack/core/storage/tracking_repository.dart';

void main() {
  group('Tracking info storage |', () {
    late TrackingRepository trackingRepo;
    late TrackNumberRepository trackRepo;
    late AppDatabase db;

    setUp(() async {
      db = await $FloorAppDatabase.inMemoryDatabaseBuilder().build();
      trackingRepo = TrackingRepositoryImpl(db);
      trackRepo = TrackNumberRepositoryImpl(db);
    });

    tearDown(() async {
      db.close();
    });

    test('Insert', () async {
      const trackInfo = TrackNumberInfo('123');
      var trackingInfo1 = TrackingInfo(
        id: const TrackingId('1'),
        trackNumber: trackInfo.trackNumber,
        status: TrackingStatus.inProgress,
        hasNewInfo: false,
        invalidTrackNumber: false,
        hasNonRetryableError: false,
        dateTime: DateTime(2020),
      );
      final trackingInfo2 = TrackingInfo(
        id: const TrackingId('2'),
        trackNumber: trackInfo.trackNumber,
        status: TrackingStatus.complete,
        hasNewInfo: false,
        invalidTrackNumber: false,
        hasNonRetryableError: false,
        dateTime: DateTime(2020, 1, 2),
      );

      expect(await trackRepo.addTrack(trackInfo), StorageResult.empty);
      expect(
        await trackingRepo.insertTrackingInfoList(
          [trackingInfo1, trackingInfo2],
        ),
        StorageResult.empty,
      );
      expect(
        await trackingRepo.getTrackingInfoByTrack(
          trackInfo.trackNumber,
          oldestFirst: true,
        ),
        StorageResult([trackingInfo1, trackingInfo2]),
      );

      trackingInfo1 = TrackingInfo(
        id: const TrackingId('1'),
        trackNumber: trackInfo.trackNumber,
        status: TrackingStatus.complete,
        hasNewInfo: true,
        invalidTrackNumber: true,
        hasNonRetryableError: true,
        dateTime: DateTime(2020),
      );
      expect(
        await trackingRepo.insertTrackingInfoList([trackingInfo1]),
        StorageResult.empty,
      );
      expect(
        await trackingRepo.getTrackingInfoByTrack(trackInfo.trackNumber),
        StorageResult([trackingInfo2, trackingInfo1]),
      );
    });

    test('Update', () async {
      const trackInfo = TrackNumberInfo('123');
      var trackingInfo = TrackingInfo(
        id: const TrackingId('1'),
        trackNumber: trackInfo.trackNumber,
        status: TrackingStatus.inProgress,
        hasNewInfo: false,
        invalidTrackNumber: false,
        hasNonRetryableError: false,
        dateTime: DateTime(2020),
      );

      expect(await trackRepo.addTrack(trackInfo), StorageResult.empty);
      expect(
        await trackingRepo.insertTrackingInfoList([trackingInfo]),
        StorageResult.empty,
      );
      expect(
        await trackingRepo.getTrackingInfoByTrack(trackInfo.trackNumber),
        StorageResult([trackingInfo]),
      );

      trackingInfo = TrackingInfo(
        id: const TrackingId('1'),
        trackNumber: trackInfo.trackNumber,
        status: TrackingStatus.complete,
        hasNewInfo: true,
        invalidTrackNumber: true,
        hasNonRetryableError: true,
        dateTime: DateTime(2020),
      );
      expect(
        await trackingRepo.updateTrackingInfoList([trackingInfo]),
        StorageResult.empty,
      );
      expect(
        await trackingRepo.getTrackingInfoByTrack(trackInfo.trackNumber),
        StorageResult([trackingInfo]),
      );

      trackingInfo = TrackingInfo(
        id: const TrackingId('1'),
        trackNumber: trackInfo.trackNumber,
        status: TrackingStatus.complete,
        hasNewInfo: false,
        invalidTrackNumber: true,
        hasNonRetryableError: true,
        dateTime: DateTime(2020),
      );
      expect(
        await trackingRepo.updateTrackingInfo(trackingInfo),
        StorageResult.empty,
      );
      expect(
        await trackingRepo.getTrackingInfoByTrack(trackInfo.trackNumber),
        StorageResult([trackingInfo]),
      );
    });

    test('Autoremoving after removing track number info', () async {
      const trackInfo = TrackNumberInfo('123');
      final trackingInfo = TrackingInfo(
        id: const TrackingId('1'),
        trackNumber: trackInfo.trackNumber,
        status: TrackingStatus.complete,
        hasNewInfo: false,
        invalidTrackNumber: false,
        hasNonRetryableError: false,
        dateTime: DateTime(2020),
      );

      expect(await trackRepo.addTrack(trackInfo), StorageResult.empty);
      expect(
        await trackingRepo.insertTrackingInfoList([trackingInfo]),
        StorageResult.empty,
      );
      expect(
        await trackingRepo.getTrackingInfoByTrack(trackInfo.trackNumber),
        StorageResult([trackingInfo]),
      );

      expect(await trackRepo.deleteTrack(trackInfo), StorageResult.empty);
      expect(
        await trackingRepo.getTrackingInfoByTrack(trackInfo.trackNumber),
        const StorageResult(<TrackingInfo>[]),
      );
    });

    test('Get latest', () async {
      const trackInfo1 = TrackNumberInfo('1');
      const trackInfo2 = TrackNumberInfo('2');
      final trackNumbers = [
        trackInfo1.trackNumber,
        trackInfo2.trackNumber,
      ];
      final trackingInfo1List = [
        TrackingInfo(
          id: const TrackingId('1'),
          trackNumber: trackInfo1.trackNumber,
          status: TrackingStatus.inProgress,
          hasNewInfo: false,
          invalidTrackNumber: false,
          hasNonRetryableError: false,
          dateTime: DateTime(2020),
        ),
        TrackingInfo(
          id: const TrackingId('2'),
          trackNumber: trackInfo1.trackNumber,
          status: TrackingStatus.inProgress,
          hasNewInfo: false,
          invalidTrackNumber: false,
          hasNonRetryableError: false,
          dateTime: DateTime(2020, 1, 2, 8, 59, 59),
        ),
        TrackingInfo(
          id: const TrackingId('3'),
          trackNumber: trackInfo1.trackNumber,
          status: TrackingStatus.complete,
          hasNewInfo: false,
          invalidTrackNumber: false,
          hasNonRetryableError: false,
          dateTime: DateTime(2020, 1, 2, 9),
        ),
      ];
      final trackingInfo2List = [
        TrackingInfo(
          id: const TrackingId('4'),
          trackNumber: trackInfo2.trackNumber,
          status: TrackingStatus.inProgress,
          hasNewInfo: false,
          invalidTrackNumber: false,
          hasNonRetryableError: false,
          dateTime: DateTime(2020),
        ),
        TrackingInfo(
          id: const TrackingId('5'),
          trackNumber: trackInfo2.trackNumber,
          status: TrackingStatus.complete,
          hasNewInfo: false,
          invalidTrackNumber: false,
          hasNonRetryableError: false,
          dateTime: DateTime(2020, 1, 3),
        ),
      ];

      expect(
        await trackingRepo.getLatestTrackingInfoByList(
          trackNumbersList: trackNumbers,
        ),
        const StorageResult(<TrackingInfo>[]),
      );

      await trackRepo.addTrackList([trackInfo1, trackInfo2]);
      await trackRepo.addTrack(trackInfo2);
      await trackingRepo.insertTrackingInfoList(
        [...trackingInfo1List, ...trackingInfo2List],
      );

      expect(
        await trackingRepo.getLatestTrackingInfoByList(
          trackNumbersList: trackNumbers,
        ),
        StorageResult([
          trackingInfo2List.last,
          trackingInfo1List.last,
        ]),
      );

      expect(
        await trackingRepo.getLatestTrackingInfoByList(
            trackNumbersList: trackNumbers, oldestFirst: true),
        StorageResult([
          trackingInfo1List.last,
          trackingInfo2List.last,
        ]),
      );
    });
  });
}
