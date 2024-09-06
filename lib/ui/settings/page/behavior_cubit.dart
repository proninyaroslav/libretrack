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

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:libretrack/core/settings/settings.dart';
import 'package:libretrack/core/tracking_scheduler.dart';

part 'behavior_cubit.freezed.dart';

@freezed
class BehaviorState with _$BehaviorState {
  const factory BehaviorState.initial(
    BehaviorInfo info,
  ) = BehaviorStateInitial;

  const factory BehaviorState.trackingLimitChanged(
    BehaviorInfo info,
  ) = BehaviorStateTrackingLimitChanged;

  const factory BehaviorState.autoTrackingChanged(
    BehaviorInfo info,
  ) = BehaviorStateAutoTrackingChanged;

  const factory BehaviorState.autoTrackingFreqChanged(
    BehaviorInfo info,
  ) = BehaviorStateAutoTrackingFreqChanged;

  const factory BehaviorState.trackingHistorySizeChanged(
    BehaviorInfo info,
  ) = BehaviorStateTrackingHistorySizeChanged;
}

@freezed
class BehaviorInfo with _$BehaviorInfo {
  const factory BehaviorInfo({
    required TrackingFreqLimit trackingLimit,
    required bool autoTracking,
    required AutoTrackingFreq autoTrackingFreq,
    required int trackingHistorySize,
  }) = _BehaviorInfo;
}

class BehaviorSettingsCubit extends Cubit<BehaviorState> {
  final AppSettings _pref;
  final TrackingScheduler _trackingScheduler;

  BehaviorSettingsCubit(this._pref, this._trackingScheduler)
      : super(
          BehaviorState.initial(
            BehaviorInfo(
              trackingLimit: _pref.trackingFrequencyLimit,
              autoTracking: _pref.autoTracking,
              autoTrackingFreq: _pref.autoTrackingFreq,
              trackingHistorySize: _pref.trackingHistorySize,
            ),
          ),
        );

  void setTrackingLimit(TrackingFreqLimit limit) {
    _pref.trackingFrequencyLimit = limit;
    emit(BehaviorState.trackingLimitChanged(
      state.info.copyWith(trackingLimit: limit),
    ));
  }

  void autoTracking({required bool enable}) {
    _pref.autoTracking = enable;
    _trackingScheduler.reenqueueAll();
    emit(BehaviorState.autoTrackingChanged(
      state.info.copyWith(autoTracking: enable),
    ));
  }

  void setAutoTrackingFreq(AutoTrackingFreq freq) {
    _pref.autoTrackingFreq = freq;
    _trackingScheduler.reenqueueAll();
    emit(BehaviorState.autoTrackingFreqChanged(
      state.info.copyWith(autoTrackingFreq: freq),
    ));
  }

  void setTrackingHistorySize(int size) {
    _pref.trackingHistorySize = size;
    emit(BehaviorState.trackingHistorySizeChanged(
      state.info.copyWith(trackingHistorySize: size),
    ));
  }
}
