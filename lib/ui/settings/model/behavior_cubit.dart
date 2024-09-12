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
import 'package:libretrack/core/settings/settings.dart';
import 'package:libretrack/core/tracking_scheduler.dart';
import 'package:libretrack/ui/settings/model/behavior_state.dart';

class BehaviorSettingsCubit extends Cubit<BehaviorState> {
  final AppSettings _pref;
  final TrackingScheduler _trackingScheduler;

  BehaviorSettingsCubit(
    this._pref,
    this._trackingScheduler,
  ) : super(const BehaviorState.initial());

  Future<void> load() async {
    emit(
      BehaviorState.autoTrackingChanged(
        BehaviorInfo(
          trackingLimit: await _pref.trackingFrequencyLimit,
          autoTracking: await _pref.autoTracking,
          autoTrackingFreq: await _pref.autoTrackingFreq,
          trackingHistorySize: await _pref.trackingHistorySize,
        ),
      ),
    );
  }

  Future<void> setTrackingLimit(TrackingFreqLimit limit) async {
    if (state case BehaviorState(:final info?)) {
      await _pref.setTrackingFrequencyLimit(limit);
      emit(BehaviorState.trackingLimitChanged(
        info.copyWith(trackingLimit: limit),
      ));
    }
  }

  Future<void> autoTracking({required bool enable}) async {
    if (state case BehaviorState(:final info?)) {
      await _pref.setAutoTracking(enable);
      await _trackingScheduler.reenqueueAll();
      emit(BehaviorState.autoTrackingChanged(
        info.copyWith(autoTracking: enable),
      ));
    }
  }

  Future<void> setAutoTrackingFreq(AutoTrackingFreq freq) async {
    if (state case BehaviorState(:final info?)) {
      await _pref.setAutoTrackingFreq(freq);
      _trackingScheduler.reenqueueAll();
      emit(BehaviorState.autoTrackingFreqChanged(
        info.copyWith(autoTrackingFreq: freq),
      ));
    }
  }

  Future<void> setTrackingHistorySize(int size) async {
    if (state case BehaviorState(:final info?)) {
      await _pref.setTrackingHistorySize(size);
      emit(BehaviorState.trackingHistorySizeChanged(
        info.copyWith(trackingHistorySize: size),
      ));
    }
  }
}
