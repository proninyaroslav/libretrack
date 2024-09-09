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

part 'app_cubit.freezed.dart';

@freezed
sealed class AppState with _$AppState {
  const factory AppState.initial({
    @Default(null) AppThemeType? theme,
    @Default(null) AppLocaleType? locale,
  }) = AppStateInitial;

  const factory AppState.loaded({
    required AppThemeType theme,
    required AppLocaleType locale,
  }) = AppStateLoaded;

  const factory AppState.changed({
    required AppThemeType theme,
    required AppLocaleType locale,
  }) = AppStateChanged;
}

class AppCubit extends Cubit<AppState> {
  final AppSettings _pref;

  AppCubit(this._pref) : super(const AppState.initial());

  Future<void> load() async {
    emit(AppState.changed(
      theme: await _pref.theme,
      locale: await _pref.locale,
    ));
  }

  void setTheme(AppThemeType theme) {
    if (state.locale case final locale?) {
      emit(AppState.changed(
        theme: theme,
        locale: locale,
      ));
    }
  }

  void setLocale(AppLocaleType locale) {
    if (state.theme case final theme?) {
      emit(AppState.changed(
        theme: theme,
        locale: locale,
      ));
    }
  }
}
