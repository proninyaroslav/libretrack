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

// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:libretrack/core/settings/model.dart';

part 'behavior_state.freezed.dart';

@freezed
class BehaviorState with _$BehaviorState {
  const factory BehaviorState.initial({
    @Default(null) BehaviorInfo? info,
  }) = BehaviorStateInitial;

  const factory BehaviorState.loaded(
    BehaviorInfo info,
  ) = BehaviorStateLoaded;

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
