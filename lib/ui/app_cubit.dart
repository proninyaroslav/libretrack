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

part 'app_cubit.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial({
    required AppThemeType theme,
    required AppLocaleType locale,
  }) = AppStateInitial;

  const factory AppState.changed({
    required AppThemeType theme,
    required AppLocaleType locale,
  }) = AppStateChanged;
}

@Singleton(dependsOn: [AppSettings])
class AppCubit extends Cubit<AppState> {
  AppCubit(AppSettings pref)
      : super(
          AppState.initial(
            theme: pref.theme,
            locale: pref.locale,
          ),
        );

  void setTheme(AppThemeType theme) {
    emit(AppState.changed(
      theme: theme,
      locale: state.locale,
    ));
  }

  void setLocale(AppLocaleType locale) {
    emit(AppState.changed(
      theme: state.theme,
      locale: locale,
    ));
  }
}
