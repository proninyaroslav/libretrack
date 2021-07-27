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
import 'package:libretrack/core/model/type/type.dart';
import 'package:libretrack/core/platform_info.dart';
import 'package:libretrack/core/settings/settings.dart';
import 'package:libretrack/core/storage/storage_result.dart';
import 'package:libretrack/core/storage/track_number_repository.dart';
import 'package:libretrack/core/work_manager/work_manager.dart';
import 'package:libretrack/core/work_manager/worker.dart';
import 'package:libretrack/core/worker/tracking_all_worker.dart';
import 'package:libretrack/core/worker/tracking_worker.dart';
import 'package:mocktail/mocktail.dart';

import '../mock/mock.dart';

void main() {
  group('Tracking all worker |', () {
    late TrackingAllWorker trackingAllWorker;
    late TrackingWorker mockTrackingWorker;
    late TrackNumberRepository mockTrackNumberRepo;
    late PlatformInfo mockPlatformInfo;
    late AppSettings mockPref;

    setUpAll(() {
      mockTrackingWorker = MockTrackingWorker();
      mockTrackNumberRepo = MockTrackNumberRepository();
      mockPlatformInfo = MockPlatformInfo();
      mockPref = MockAppSettings();
      trackingAllWorker = TrackingAllWorker(
        mockTrackingWorker,
        mockTrackNumberRepo,
        mockPlatformInfo,
        mockPref,
      );
    });

    test('Run work', () async {
      const trackInfoList = [
        TrackNumberInfo('1'),
        TrackNumberInfo('2', isArchived: true),
        TrackNumberInfo('3'),
      ];
      final trackServiceList = [
        TrackNumberService(
          trackNumber: trackInfoList[0].trackNumber,
          serviceType: PostalServiceType.ups,
        ),
        TrackNumberService(
          trackNumber: trackInfoList[1].trackNumber,
          serviceType: PostalServiceType.ups,
        ),
        TrackNumberService(
          trackNumber: trackInfoList[2].trackNumber,
          serviceType: PostalServiceType.russianPost,
        ),
      ];
      final nonArchivedTracks = trackInfoList
          .where(
            (info) => !info.isArchived,
          )
          .toList();
      when(() => mockTrackNumberRepo.getAllUnarchivedTracks()).thenAnswer(
        (_) async => StorageResult(nonArchivedTracks),
      );
      when(() => mockTrackNumberRepo.getActiveTrackNumberServicesByList(
            nonArchivedTracks.map((info) => info.trackNumber).toList(),
          )).thenAnswer(
        (_) async => StorageResult(trackServiceList),
      );
      const locale = Locale('ru', 'RU');
      when(() => mockPlatformInfo.currentAsLocale)
          .thenAnswer((_) async => locale);
      when(() => mockTrackingWorker.doTrack(
            trackServiceList.toSet(),
            locale,
          )).thenAnswer(
        (_) async => const WorkResult.success(),
      );
      when(() => mockPref.locale).thenReturn(const AppLocaleType.system());
      await trackingAllWorker.doWork(const WorkData.empty());

      verify(() => mockTrackingWorker.doTrack(
            trackServiceList.toSet(),
            locale,
          )).called(1);
    });

    test('App locale', () async {
      const trackInfo = TrackNumberInfo('1');
      final trackService = TrackNumberService(
        trackNumber: trackInfo.trackNumber,
        serviceType: PostalServiceType.ups,
      );
      when(() => mockTrackNumberRepo.getAllUnarchivedTracks()).thenAnswer(
        (_) async => const StorageResult([trackInfo]),
      );
      when(() => mockTrackNumberRepo.getActiveTrackNumberServicesByList(
            [trackInfo.trackNumber],
          )).thenAnswer(
        (_) async => StorageResult([trackService]),
      );
      when(() => mockPlatformInfo.currentAsLocale)
          .thenAnswer((_) async => null);
      const locale = Locale('ru', 'RU');
      when(() => mockTrackingWorker.doTrack(
            {trackService},
            locale,
          )).thenAnswer(
        (_) async => const WorkResult.success(),
      );
      when(() => mockPref.locale).thenReturn(
        const AppLocaleType.inner(
          locale: locale,
        ),
      );
      await trackingAllWorker.doWork(const WorkData.empty());

      verify(
        () => mockTrackingWorker.doTrack(
          {trackService},
          locale,
        ),
      ).called(1);
    });
  });
}
