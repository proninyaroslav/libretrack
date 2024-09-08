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
import 'package:libretrack/platform/system_tray.dart';
import 'package:libretrack/ui/app_cubit.dart';

part 'appearance_cubit.freezed.dart';

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

class AppearanceSettingsCubit extends Cubit<AppearanceState> {
  final AppSettings _pref;
  final AppCubit _appCubit;
  final SystemTray _systemTray;

  AppearanceSettingsCubit(
    this._pref,
    this._appCubit,
    this._systemTray,
  ) : super(const AppearanceState.initial());

  Future<void> load() async {
    emit(
      AppearanceState.loaded(AppearanceInfo(
        theme: await _pref.theme,
        trackingNotify: await _pref.trackingNotifications,
        locale: await _pref.locale,
        trackingErrorNotify: await _pref.trackingErrorNotifications,
        trayIcon: await _pref.trayIcon,
      )),
    );
  }

  Future<void> setTheme(AppThemeType theme) async {
    if (state.info case final info?) {
      await _pref.setTheme(theme);
      _appCubit.setTheme(theme);
      emit(AppearanceState.themeChanged(
        info.copyWith(theme: theme),
      ));
    }
  }

  Future<void> trackingNotify({required bool enable}) async {
    if (state.info case final info?) {
      await _pref.setTrackingNotifications(enable);
      emit(AppearanceState.trackingNotifyChanged(
        info.copyWith(trackingNotify: enable),
      ));
    }
  }

  Future<void> setLocale(AppLocaleType locale) async {
    if (state.info case final info?) {
      await _pref.setLocale(locale);
      _appCubit.setLocale(locale);
      emit(AppearanceState.localeChanged(
        info.copyWith(locale: locale),
      ));
    }
  }

  Future<void> trackingErrorNotify({required bool enable}) async {
    if (state.info case final info?) {
      await _pref.setTrackingErrorNotifications(enable);
      emit(AppearanceState.trackingErrorNotifyChanged(
        info.copyWith(trackingErrorNotify: enable),
      ));
    }
  }

  Future<void> trayIcon({required bool enable}) async {
    if (state.info case final info?) {
      await _pref.setTrayIcon(enable);
      await _systemTray.switchTrayIcon(enable: enable);
      emit(AppearanceState.trayIconChanged(
        info.copyWith(trayIcon: enable),
      ));
    }
  }
}
