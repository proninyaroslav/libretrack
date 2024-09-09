// Copyright (C) 202-2024 Yaroslav Pronin <proninyaroslav@mail.ru>
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
import 'package:libretrack/core/model/type/locale.dart';
import 'package:libretrack/core/settings/settings.dart';
import 'package:libretrack/ui/model/app_cubit.dart';
import 'package:mocktail/mocktail.dart';

import '../mock/mock.dart';

void main() {
  group('AppCubit |', () {
    late AppCubit cubit;
    late AppSettings mockSettings;

    setUpAll(() {
      mockSettings = MockAppSettings();
      when(() => mockSettings.theme).thenAnswer(
        (_) async => const AppThemeType.system(),
      );
      when(() => mockSettings.locale)
          .thenAnswer((_) async => const AppLocaleType.system());
    });

    setUp(() async {
      cubit = AppCubit(mockSettings);
      await cubit.load();
    });

    blocTest(
      'Initial state',
      build: () => cubit,
      expect: () => [],
    );

    blocTest(
      'Change theme',
      build: () => cubit,
      act: (AppCubit cubit) {
        cubit.setTheme(const AppThemeType.dark());
        cubit.setTheme(const AppThemeType.light());
        cubit.setTheme(const AppThemeType.system());
      },
      expect: () => [
        const AppState.changed(
          theme: AppThemeType.dark(),
          locale: AppLocaleType.system(),
        ),
        const AppState.changed(
          theme: AppThemeType.light(),
          locale: AppLocaleType.system(),
        ),
        const AppState.changed(
          theme: AppThemeType.system(),
          locale: AppLocaleType.system(),
        ),
      ],
    );
    blocTest(
      'Change locale',
      build: () => cubit,
      act: (AppCubit cubit) {
        cubit.setLocale(
          const AppLocaleType.inner(
            locale: Locale('ru', 'RU'),
          ),
        );
        cubit.setLocale(
          const AppLocaleType.system(),
        );
      },
      expect: () => [
        const AppState.changed(
          theme: AppThemeType.system(),
          locale: AppLocaleType.inner(
            locale: Locale('ru', 'RU'),
          ),
        ),
        const AppState.changed(
          theme: AppThemeType.system(),
          locale: AppLocaleType.system(),
        ),
      ],
    );
  });
}
