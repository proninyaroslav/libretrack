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
import 'package:libretrack/platform/system_tray.dart';
import 'package:libretrack/ui/model/app_cubit.dart';
import 'package:libretrack/ui/settings/model/appearance_state.dart';

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
    if (state case AppearanceState(:final info?)) {
      await _pref.setTheme(theme);
      _appCubit.setTheme(theme);
      emit(AppearanceState.themeChanged(
        info.copyWith(theme: theme),
      ));
    }
  }

  Future<void> trackingNotify({required bool enable}) async {
    if (state case AppearanceState(:final info?)) {
      await _pref.setTrackingNotifications(enable);
      emit(AppearanceState.trackingNotifyChanged(
        info.copyWith(trackingNotify: enable),
      ));
    }
  }

  Future<void> setLocale(AppLocaleType locale) async {
    if (state case AppearanceState(:final info?)) {
      await _pref.setLocale(locale);
      _appCubit.setLocale(locale);
      emit(AppearanceState.localeChanged(
        info.copyWith(locale: locale),
      ));
    }
  }

  Future<void> trackingErrorNotify({required bool enable}) async {
    if (state case AppearanceState(:final info?)) {
      await _pref.setTrackingErrorNotifications(enable);
      emit(AppearanceState.trackingErrorNotifyChanged(
        info.copyWith(trackingErrorNotify: enable),
      ));
    }
  }

  Future<void> trayIcon({required bool enable}) async {
    if (state case AppearanceState(:final info?)) {
      await _pref.setTrayIcon(enable);
      await _systemTray.switchTrayIcon(enable: enable);
      emit(AppearanceState.trayIconChanged(
        info.copyWith(trayIcon: enable),
      ));
    }
  }
}
