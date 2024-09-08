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

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:libretrack/core/settings/settings.dart';
import 'package:libretrack/core/tracking_scheduler.dart';
import 'package:libretrack/ui/settings/settings.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock/mock.dart';

void main() {
  group('BehaviorSettingsCubit |', () {
    late BehaviorSettingsCubit cubit;
    late AppSettings mockPref;
    late TrackingScheduler mockTrackingScheduler;

    setUpAll(() {
      registerFallbackValue(const TrackingFreqLimit.unlimited());
      registerFallbackValue(const AutoTrackingFreq.twelveHours());

      mockPref = MockAppSettings();
      mockTrackingScheduler = MockTrackingScheduler();
      when(() => mockPref.trackingFrequencyLimit).thenAnswer(
        (_) async => const TrackingFreqLimit.fifteenMin(),
      );
      when(() => mockPref.setTrackingFrequencyLimit(any()))
          .thenAnswer((_) async {});
      when(() => mockPref.autoTracking).thenAnswer((_) async => true);
      when(() => mockPref.setAutoTracking(any())).thenAnswer((_) async {});
      when(() => mockPref.autoTrackingFreq).thenAnswer(
        (_) async => const AutoTrackingFreq.twelveHours(),
      );
      when(() => mockPref.setAutoTrackingFreq(any())).thenAnswer((_) async {});
      when(() => mockPref.trackingHistorySize).thenAnswer((_) async => 5);
      when(() => mockPref.setTrackingHistorySize(any()))
          .thenAnswer((_) async {});
      when(() => mockTrackingScheduler.reenqueueAll()).thenAnswer((_) async {});
    });

    setUp(() async {
      cubit = BehaviorSettingsCubit(mockPref, mockTrackingScheduler);
      await cubit.load();
    });

    blocTest(
      'Initial state',
      build: () => cubit,
      expect: () => [],
    );

    blocTest(
      'Change tracking frequency limit',
      build: () => cubit,
      act: (BehaviorSettingsCubit cubit) async {
        await cubit.setTrackingLimit(const TrackingFreqLimit.oneHour());
        verify(
          () => mockPref
              .setTrackingFrequencyLimit(const TrackingFreqLimit.oneHour()),
        ).called(1);

        await cubit.setTrackingLimit(const TrackingFreqLimit.fifteenMin());
        verify(
          () => mockPref
              .setTrackingFrequencyLimit(const TrackingFreqLimit.fifteenMin()),
        ).called(1);
      },
      expect: () => [
        const BehaviorState.trackingLimitChanged(
          BehaviorInfo(
            trackingLimit: TrackingFreqLimit.oneHour(),
            autoTracking: true,
            autoTrackingFreq: AutoTrackingFreq.twelveHours(),
            trackingHistorySize: 5,
          ),
        ),
        const BehaviorState.trackingLimitChanged(
          BehaviorInfo(
            trackingLimit: TrackingFreqLimit.fifteenMin(),
            autoTracking: true,
            autoTrackingFreq: AutoTrackingFreq.twelveHours(),
            trackingHistorySize: 5,
          ),
        ),
      ],
    );

    blocTest(
      'Auto tracking',
      build: () => cubit,
      act: (BehaviorSettingsCubit cubit) async {
        await cubit.autoTracking(enable: false);
        verify(() => mockPref.setAutoTracking(false)).called(1);
        verify(() => mockTrackingScheduler.reenqueueAll()).called(1);
      },
      expect: () => [
        const BehaviorState.autoTrackingChanged(
          BehaviorInfo(
            trackingLimit: TrackingFreqLimit.fifteenMin(),
            autoTracking: false,
            autoTrackingFreq: AutoTrackingFreq.twelveHours(),
            trackingHistorySize: 5,
          ),
        ),
      ],
    );

    blocTest(
      'Auto tracking frequency',
      build: () => cubit,
      act: (BehaviorSettingsCubit cubit) async {
        await cubit.setAutoTrackingFreq(const AutoTrackingFreq.sixHours());
        verify(
          () => mockPref.setAutoTrackingFreq(const AutoTrackingFreq.sixHours()),
        ).called(1);
        verify(() => mockTrackingScheduler.reenqueueAll()).called(1);

        await cubit.setAutoTrackingFreq(const AutoTrackingFreq.twelveHours());
        verify(
          () => mockPref
              .setAutoTrackingFreq(const AutoTrackingFreq.twelveHours()),
        ).called(1);
        verify(() => mockTrackingScheduler.reenqueueAll()).called(1);
      },
      expect: () => [
        const BehaviorState.autoTrackingFreqChanged(
          BehaviorInfo(
            trackingLimit: TrackingFreqLimit.fifteenMin(),
            autoTracking: true,
            autoTrackingFreq: AutoTrackingFreq.sixHours(),
            trackingHistorySize: 5,
          ),
        ),
        const BehaviorState.autoTrackingFreqChanged(
          BehaviorInfo(
            trackingLimit: TrackingFreqLimit.fifteenMin(),
            autoTracking: true,
            autoTrackingFreq: AutoTrackingFreq.twelveHours(),
            trackingHistorySize: 5,
          ),
        ),
      ],
    );

    blocTest(
      'Change tracking history size',
      build: () => cubit,
      act: (BehaviorSettingsCubit cubit) async {
        await cubit.setTrackingHistorySize(10);
        verify(() => mockPref.setTrackingHistorySize(10)).called(1);

        await cubit.setTrackingHistorySize(5);
        verify(() => mockPref.setTrackingHistorySize(5)).called(1);
      },
      expect: () => [
        const BehaviorState.trackingHistorySizeChanged(
          BehaviorInfo(
            trackingLimit: TrackingFreqLimit.fifteenMin(),
            autoTracking: true,
            autoTrackingFreq: AutoTrackingFreq.twelveHours(),
            trackingHistorySize: 10,
          ),
        ),
        const BehaviorState.trackingHistorySizeChanged(
          BehaviorInfo(
            trackingLimit: TrackingFreqLimit.fifteenMin(),
            autoTracking: true,
            autoTrackingFreq: AutoTrackingFreq.twelveHours(),
            trackingHistorySize: 5,
          ),
        ),
      ],
    );
  });
}
