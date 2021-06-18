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

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:libretrack/core/settings/settings.dart';
import 'package:libretrack/ui/app_cubit.dart';

part 'appearance_cubit.freezed.dart';

@freezed
class AppearanceState with _$AppearanceState {
  const factory AppearanceState.initial(
    AppearanceInfo info,
  ) = AppearanceStateInitial;

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
}

@freezed
class AppearanceInfo with _$AppearanceInfo {
  const factory AppearanceInfo({
    required AppThemeType theme,
    required bool trackingNotify,
    required AppLocaleType locale,
    required bool trackingErrorNotify,
  }) = _AppearanceInfo;
}

@injectable
class AppearanceSettingsCubit extends Cubit<AppearanceState> {
  final AppSettings _pref;
  final AppCubit _appCubit;

  AppearanceSettingsCubit(this._pref, this._appCubit)
      : super(
          AppearanceState.initial(
            AppearanceInfo(
              theme: _pref.theme,
              trackingNotify: _pref.trackingNotifications,
              locale: _pref.locale,
              trackingErrorNotify: _pref.trackingErrorNotifications,
            ),
          ),
        );

  void setTheme(AppThemeType theme) {
    _pref.theme = theme;
    _appCubit.setTheme(theme);
    emit(AppearanceState.themeChanged(
      state.info.copyWith(theme: theme),
    ));
  }

  void trackingNotify({required bool enable}) {
    _pref.trackingNotifications = enable;
    emit(AppearanceState.trackingNotifyChanged(
      state.info.copyWith(trackingNotify: enable),
    ));
  }

  void setLocale(AppLocaleType locale) {
    _pref.locale = locale;
    _appCubit.setLocale(locale);
    emit(AppearanceState.localeChanged(
      state.info.copyWith(locale: locale),
    ));
  }

  void trackingErrorNotify({required bool enable}) {
    _pref.trackingErrorNotifications = enable;
    emit(AppearanceState.trackingErrorNotifyChanged(
      state.info.copyWith(trackingErrorNotify: enable),
    ));
  }
}
