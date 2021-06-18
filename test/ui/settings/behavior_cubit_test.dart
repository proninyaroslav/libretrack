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

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:libretrack/core/settings/settings.dart';
import 'package:libretrack/core/tracking_scheduler.dart';
import 'package:libretrack/ui/settings/settings.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock/mock.dart';

void main() {
  group('BehaviorSettingsCubit', () {
    late BehaviorSettingsCubit cubit;
    late AppSettings mockPref;
    late TrackingScheduler mockTrackingScheduler;

    setUpAll(() {
      mockPref = MockAppSettings();
      mockTrackingScheduler = MockTrackingScheduler();
      when(() => mockPref.trackingFrequencyLimit).thenReturn(
        const TrackingFreqLimit.fifteenMin(),
      );
      when(() => mockPref.autoTracking).thenReturn(true);
      when(() => mockPref.autoTrackingFreq).thenReturn(
        const AutoTrackingFreq.twelveHours(),
      );
      when(() => mockPref.trackingHistorySize).thenReturn(5);
      when(() => mockTrackingScheduler.reenqueueAll()).thenAnswer((_) async {});
    });

    setUp(() {
      cubit = BehaviorSettingsCubit(mockPref, mockTrackingScheduler);
    });

    blocTest(
      'Initial state',
      build: () => cubit,
      expect: () => [],
    );

    blocTest(
      'Change tracking frequency limit',
      build: () => cubit,
      act: (BehaviorSettingsCubit cubit) {
        cubit.setTrackingLimit(const TrackingFreqLimit.oneHour());
        verify(
          () => mockPref.trackingFrequencyLimit =
              const TrackingFreqLimit.oneHour(),
        ).called(1);

        cubit.setTrackingLimit(const TrackingFreqLimit.fifteenMin());
        verify(
          () => mockPref.trackingFrequencyLimit =
              const TrackingFreqLimit.fifteenMin(),
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
      act: (BehaviorSettingsCubit cubit) {
        cubit.autoTracking(enable: true);
        verify(() => mockPref.autoTracking = true).called(1);
        verify(() => mockTrackingScheduler.reenqueueAll()).called(1);

        cubit.autoTracking(enable: false);
        verify(() => mockPref.autoTracking = false).called(1);
        verify(() => mockTrackingScheduler.reenqueueAll()).called(1);
      },
      expect: () => [
        const BehaviorState.autoTrackingChanged(
          BehaviorInfo(
            trackingLimit: TrackingFreqLimit.fifteenMin(),
            autoTracking: true,
            autoTrackingFreq: AutoTrackingFreq.twelveHours(),
            trackingHistorySize: 5,
          ),
        ),
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
      act: (BehaviorSettingsCubit cubit) {
        cubit.setAutoTrackingFreq(const AutoTrackingFreq.sixHours());
        verify(
          () => mockPref.autoTrackingFreq = const AutoTrackingFreq.sixHours(),
        ).called(1);
        verify(() => mockTrackingScheduler.reenqueueAll()).called(1);

        cubit.setAutoTrackingFreq(const AutoTrackingFreq.twelveHours());
        verify(
          () =>
              mockPref.autoTrackingFreq = const AutoTrackingFreq.twelveHours(),
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
      act: (BehaviorSettingsCubit cubit) {
        cubit.setTrackingHistorySize(10);
        verify(() => mockPref.trackingHistorySize = 10).called(1);

        cubit.setTrackingHistorySize(5);
        verify(() => mockPref.trackingHistorySize = 5).called(1);
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
