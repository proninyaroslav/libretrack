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

part 'appearance_state.freezed.dart';

@freezed
sealed class AppearanceState with _$AppearanceState {
  const factory AppearanceState.initial({
    @Default(null) AppearanceInfo? info,
  }) = AppearanceStateInitial;

  const factory AppearanceState.loaded(
    AppearanceInfo info,
  ) = AppearanceStateLoaded;

  const factory AppearanceState.themeChanged(
    AppearanceInfo info,
  ) = AppearanceStateThemeChanged;

  const factory AppearanceState.trackingNotifyChanged(
    AppearanceInfo info,
  ) = AppearanceStateTrackingNotifyChanged;

  const factory AppearanceState.localeChanged(
    AppearanceInfo info,
  ) = AppearanceStateLocaleChanged;

  const factory AppearanceState.trackingErrorNotifyChanged(
    AppearanceInfo info,
  ) = AppearanceStateTrackingErrorNotifyChanged;

  const factory AppearanceState.trayIconChanged(
    AppearanceInfo info,
  ) = AppearanceStateTrayIconChanged;
}

@freezed
class AppearanceInfo with _$AppearanceInfo {
  const factory AppearanceInfo({
    required AppThemeType theme,
    required bool trackingNotify,
    required AppLocaleType locale,
    required bool trackingErrorNotify,
    required bool trayIcon,
  }) = _AppearanceInfo;
}
