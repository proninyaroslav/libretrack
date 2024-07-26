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
import 'package:quiver/iterables.dart';

void main() {
  group('Tracking response info storage |', () {
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

    test('Add', () async {
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
      final infoList1 = range(1, 6)
          .map(
            (i) => TrackingResponseInfo.from(
              id: i as int,
              trackNumber: trackInfo.trackNumber,
              trackingId: trackingInfo.id,
              dateTime: DateTime(2020, 1, i),
              serviceType: PostalServiceType.ups,
              status: TrackingResponseStatus.noInfo,
              error: const TrackingError(
                type: TrackingErrorType.network,
                isRetryable: true,
              ),
            ),
          )
          .toList();
      final infoList2 = range(6, 11)
          .map(
            (i) => TrackingResponseInfo.from(
              id: i as int,
              trackNumber: trackInfo.trackNumber,
              trackingId: trackingInfo.id,
              dateTime: DateTime(2020, 1, i),
              serviceType: PostalServiceType.russianPost,
              status: TrackingResponseStatus.success,
            ),
          )
          .toList();
      final infoList = infoList1 + infoList2;

      expect(await trackRepo.addTrack(trackInfo), StorageResult.empty);
      expect(
        await trackingRepo.insertTrackingInfoList([trackingInfo]),
        StorageResult.empty,
      );
      expect(
        await trackingRepo.addResponseList(infoList),
        StorageResult.empty,
      );
      expect(
        await trackingRepo.getResponseByTrackingId(trackingInfo.id),
        StorageResult(infoList),
      );

      infoList.sort((a, b) => b.dateTime.compareTo(a.dateTime));
      expect(
        await trackingRepo.getResponseByTrack(trackInfo.trackNumber),
        StorageResult(infoList),
      );

      infoList.sort((a, b) => a.dateTime.compareTo(b.dateTime));
      expect(
        await trackingRepo.getResponseByTrack(
          trackInfo.trackNumber,
          oldestFirst: true,
        ),
        StorageResult(infoList),
      );
    });

    test('Autoremoving after removing tracking info', () async {
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
      final infoList = range(1, 6)
          .map(
            (i) => TrackingResponseInfo.from(
              id: i as int,
              trackNumber: trackInfo.trackNumber,
              trackingId: trackingInfo.id,
              dateTime: DateTime(2020, 1, i),
              serviceType: PostalServiceType.ups,
              status: TrackingResponseStatus.success,
            ),
          )
          .toList();

      expect(await trackRepo.addTrack(trackInfo), StorageResult.empty);
      expect(
        await trackingRepo.insertTrackingInfoList([trackingInfo]),
        StorageResult.empty,
      );
      expect(
        await trackingRepo.addResponseList(infoList),
        StorageResult.empty,
      );
      expect(
        await trackingRepo.getResponseByTrackingId(trackingInfo.id),
        StorageResult(infoList),
      );

      expect(
        await trackingRepo.deleteTrackingInfo(trackingInfo),
        StorageResult.empty,
      );
      expect(
        await trackingRepo.getTrackingInfoByTrack(trackInfo.trackNumber),
        const StorageResult(<TrackingInfo>[]),
      );
      expect(
        await trackingRepo.getResponseByTrackingId(trackingInfo.id),
        const StorageResult(<TrackingResponseInfo>[]),
      );
    });
  });
}
