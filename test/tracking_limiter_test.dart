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
import 'package:libretrack/core/date_time_provider.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/settings/settings.dart';
import 'package:libretrack/core/storage/storage_result.dart';
import 'package:libretrack/core/storage/tracking_repository.dart';
import 'package:libretrack/core/tracking_limiter.dart';
import 'package:mocktail/mocktail.dart';

import 'mock/mock.dart';

void main() {
  group('Tracking limiter |', () {
    late AppSettings mockPref;
    late TrackingRepository mockTrackRepo;
    late DateTimeProvider mockTimeProvider;
    late TrackingLimiter limiter;

    const defaultTrackNumber = '123';
    final defaultLastTracking = TrackingInfo(
      id: const TrackingId('1'),
      trackNumber: defaultTrackNumber,
      status: TrackingStatus.complete,
      hasNewInfo: false,
      hasNonRetryableError: false,
      invalidTrackNumber: false,
      dateTime: DateTime(2021, 1, 1, 10),
    );

    setUpAll(() {
      mockPref = MockAppSettings();
      mockTrackRepo = MockTrackingRepository();
      mockTimeProvider = MockDateTimeProvider();
      limiter = TrackingLimiterImpl(
        mockPref,
        mockTrackRepo,
        mockTimeProvider,
      );

      when(() => mockPref.trackingFrequencyLimit)
          .thenReturn(const TrackingFreqLimit.fifteenMin());
      when(
        () => mockTrackRepo.getTrackingInfoByTrack(defaultTrackNumber),
      ).thenAnswer(
        (_) async => StorageResult([defaultLastTracking]),
      );
    });

    group('Tracking allowed |', () {
      test('Current time: 10:30', () async {
        when(() => mockTimeProvider.now())
            .thenReturn(DateTime(2021, 1, 1, 10, 30));
        expect(
          await limiter.check(defaultTrackNumber),
          const TrackingLimiterState.allowed(trackNumber: defaultTrackNumber),
        );
      });

      test('Current time: 10:15', () async {
        when(() => mockTimeProvider.now())
            .thenReturn(DateTime(2021, 1, 1, 10, 15));
        expect(
          await limiter.check(defaultTrackNumber),
          const TrackingLimiterState.allowed(trackNumber: defaultTrackNumber),
        );
      });

      test('Current time: 2021-03-1', () async {
        when(() => mockTimeProvider.now()).thenReturn(DateTime(2021, 3));
        expect(
          await limiter.check(defaultTrackNumber),
          const TrackingLimiterState.allowed(trackNumber: defaultTrackNumber),
        );
      });
    });

    group('Tracking disallowed |', () {
      test('Current time: 10:10', () async {
        when(() => mockTimeProvider.now())
            .thenReturn(DateTime(2021, 1, 1, 10, 10));
        expect(
          await limiter.check(defaultTrackNumber),
          const TrackingLimiterState.dissalowed(
            trackNumber: defaultTrackNumber,
            remainingTime: Duration(minutes: 5),
          ),
        );
      });

      test('Current time: 10:14:59', () async {
        when(() => mockTimeProvider.now())
            .thenReturn(DateTime(2021, 1, 1, 10, 14, 59));
        expect(
          await limiter.check(defaultTrackNumber),
          const TrackingLimiterState.dissalowed(
            trackNumber: defaultTrackNumber,
            remainingTime: Duration(seconds: 1),
          ),
        );
      });

      test('Current time: 10:00', () async {
        when(() => mockTimeProvider.now()).thenReturn(DateTime(2021, 1, 1, 10));
        expect(
          await limiter.check(defaultTrackNumber),
          const TrackingLimiterState.dissalowed(
            trackNumber: defaultTrackNumber,
            remainingTime: Duration(minutes: 15),
          ),
        );
      });
    });
  });
}
