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

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:libretrack/core/model/type/locale.dart';
import 'package:libretrack/core/settings/settings.dart';
import 'package:libretrack/ui/app_cubit.dart';
import 'package:libretrack/ui/settings/settings.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock/mock.dart';

void main() {
  group('AppearanceSettingsCubit', () {
    late AppearanceSettingsCubit cubit;
    late AppSettings mockPref;
    late AppCubit mockAppCubit;

    setUpAll(() {
      mockPref = MockAppSettings();
      when(() => mockPref.theme).thenReturn(
        const AppThemeType.system(),
      );
      when(() => mockPref.trackingNotifications).thenReturn(false);
      when(() => mockPref.locale).thenReturn(
        const AppLocaleType.system(),
      );
      when(() => mockPref.trackingErrorNotifications).thenReturn(false);
      mockAppCubit = MockAppCubit();
    });

    setUp(() {
      cubit = AppearanceSettingsCubit(mockPref, mockAppCubit);
    });

    blocTest(
      'Initial state',
      build: () => cubit,
      expect: () => [],
    );

    blocTest(
      'Change theme',
      build: () => cubit,
      act: (AppearanceSettingsCubit cubit) {
        cubit.setTheme(const AppThemeType.dark());
        verify(
          () => mockAppCubit.setTheme(const AppThemeType.dark()),
        ).called(1);
        verify(
          () => mockPref.theme = const AppThemeType.dark(),
        ).called(1);

        cubit.setTheme(const AppThemeType.light());
        verify(
          () => mockAppCubit.setTheme(const AppThemeType.light()),
        ).called(1);
        verify(
          () => mockPref.theme = const AppThemeType.light(),
        ).called(1);

        cubit.setTheme(const AppThemeType.system());
        verify(
          () => mockAppCubit.setTheme(const AppThemeType.system()),
        ).called(1);
        verify(
          () => mockPref.theme = const AppThemeType.system(),
        ).called(1);
      },
      expect: () => [
        const AppearanceState.themeChanged(
          AppearanceInfo(
            theme: AppThemeType.dark(),
            trackingNotify: false,
            locale: AppLocaleType.system(),
            trackingErrorNotify: false,
          ),
        ),
        const AppearanceState.themeChanged(
          AppearanceInfo(
            theme: AppThemeType.light(),
            trackingNotify: false,
            locale: AppLocaleType.system(),
            trackingErrorNotify: false,
          ),
        ),
        const AppearanceState.themeChanged(
          AppearanceInfo(
            theme: AppThemeType.system(),
            trackingNotify: false,
            locale: AppLocaleType.system(),
            trackingErrorNotify: false,
          ),
        ),
      ],
    );

    blocTest(
      'Tracking notifications',
      build: () => cubit,
      act: (AppearanceSettingsCubit cubit) {
        cubit.trackingNotify(enable: true);
        verify(
          () => mockPref.trackingNotifications = true,
        ).called(1);

        cubit.trackingNotify(enable: false);
        verify(
          () => mockPref.trackingNotifications = false,
        ).called(1);
      },
      expect: () => [
        const AppearanceState.trackingNotifyChanged(
          AppearanceInfo(
            theme: AppThemeType.system(),
            trackingNotify: true,
            locale: AppLocaleType.system(),
            trackingErrorNotify: false,
          ),
        ),
        const AppearanceState.trackingNotifyChanged(
          AppearanceInfo(
            theme: AppThemeType.system(),
            trackingNotify: false,
            locale: AppLocaleType.system(),
            trackingErrorNotify: false,
          ),
        ),
      ],
    );

    blocTest(
      'Change locale',
      build: () => cubit,
      act: (AppearanceSettingsCubit cubit) {
        cubit.setLocale(
          const AppLocaleType.inner(
            locale: Locale('ru', 'RU'),
          ),
        );
        verify(
          () => mockAppCubit.setLocale(
            const AppLocaleType.inner(
              locale: Locale('ru', 'RU'),
            ),
          ),
        ).called(1);
        verify(
          () => mockPref.locale = const AppLocaleType.inner(
            locale: Locale('ru', 'RU'),
          ),
        ).called(1);

        cubit.setLocale(const AppLocaleType.system());
        verify(
          () => mockAppCubit.setLocale(
            const AppLocaleType.system(),
          ),
        ).called(1);
        verify(
          () => mockPref.locale = const AppLocaleType.system(),
        ).called(1);
      },
      expect: () => [
        const AppearanceState.localeChanged(
          AppearanceInfo(
            theme: AppThemeType.system(),
            trackingNotify: false,
            locale: AppLocaleType.inner(
              locale: Locale('ru', 'RU'),
            ),
            trackingErrorNotify: false,
          ),
        ),
        const AppearanceState.localeChanged(
          AppearanceInfo(
            theme: AppThemeType.system(),
            trackingNotify: false,
            locale: AppLocaleType.system(),
            trackingErrorNotify: false,
          ),
        ),
      ],
    );

    blocTest(
      'Tracking error notifications',
      build: () => cubit,
      act: (AppearanceSettingsCubit cubit) {
        cubit.trackingErrorNotify(enable: true);
        verify(
          () => mockPref.trackingErrorNotifications = true,
        ).called(1);

        cubit.trackingErrorNotify(enable: false);
        verify(
          () => mockPref.trackingErrorNotifications = false,
        ).called(1);
      },
      expect: () => [
        const AppearanceState.trackingErrorNotifyChanged(
          AppearanceInfo(
            theme: AppThemeType.system(),
            trackingNotify: false,
            locale: AppLocaleType.system(),
            trackingErrorNotify: true,
          ),
        ),
        const AppearanceState.trackingErrorNotifyChanged(
          AppearanceInfo(
            theme: AppThemeType.system(),
            trackingNotify: false,
            locale: AppLocaleType.system(),
            trackingErrorNotify: false,
          ),
        ),
      ],
    );
  });
}
