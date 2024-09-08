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

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:libretrack/core/model/type/locale.dart';
import 'package:libretrack/core/settings/settings.dart';
import 'package:libretrack/platform/system_tray.dart';
import 'package:libretrack/ui/app_cubit.dart';
import 'package:libretrack/ui/settings/settings.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock/mock.dart';

void main() {
  group('AppearanceSettingsCubit |', () {
    late AppearanceSettingsCubit cubit;
    late AppSettings mockPref;
    late AppCubit mockAppCubit;
    late SystemTray mockSystemTray;

    setUpAll(() {
      registerFallbackValue(const AppThemeType.system());
      registerFallbackValue(const AppLocaleType.system());

      mockPref = MockAppSettings();
      when(() => mockPref.theme).thenAnswer(
        (_) async => const AppThemeType.system(),
      );
      when(() => mockPref.setTheme(any())).thenAnswer((_) async {});
      when(() => mockPref.trackingNotifications).thenAnswer((_) async => false);
      when(() => mockPref.setTrackingNotifications(any()))
          .thenAnswer((_) async {});
      when(() => mockPref.locale).thenAnswer(
        (_) async => const AppLocaleType.system(),
      );
      when(() => mockPref.setLocale(any())).thenAnswer((_) async {});
      when(() => mockPref.trackingErrorNotifications)
          .thenAnswer((_) async => false);
      when(() => mockPref.setTrackingErrorNotifications(any()))
          .thenAnswer((_) async {});
      mockSystemTray = MockSystemTray();
      when(
        () => mockSystemTray.switchTrayIcon(
          enable: any(named: 'enable'),
        ),
      ).thenAnswer((_) async => {});
      when(() => mockPref.trayIcon).thenAnswer((_) async => true);
      when(() => mockPref.setTrayIcon(any())).thenAnswer((_) async {});
      mockAppCubit = MockAppCubit();
      when(() => mockAppCubit.setTheme(any())).thenAnswer((_) {});
      when(() => mockAppCubit.setLocale(any())).thenAnswer((_) {});
    });

    setUp(() async {
      cubit = AppearanceSettingsCubit(
        mockPref,
        mockAppCubit,
        mockSystemTray,
      );
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
      act: (AppearanceSettingsCubit cubit) async {
        await cubit.setTheme(const AppThemeType.dark());
        verify(
          () => mockAppCubit.setTheme(const AppThemeType.dark()),
        ).called(1);
        verify(
          () => mockPref.setTheme(const AppThemeType.dark()),
        ).called(1);

        await cubit.setTheme(const AppThemeType.light());
        verify(
          () => mockAppCubit.setTheme(const AppThemeType.light()),
        ).called(1);
        verify(
          () => mockPref.setTheme(const AppThemeType.light()),
        ).called(1);

        await cubit.setTheme(const AppThemeType.system());
        verify(
          () => mockAppCubit.setTheme(const AppThemeType.system()),
        ).called(1);
        verify(
          () => mockPref.setTheme(const AppThemeType.system()),
        ).called(1);
      },
      expect: () => [
        const AppearanceState.themeChanged(
          AppearanceInfo(
            theme: AppThemeType.dark(),
            trackingNotify: false,
            locale: AppLocaleType.system(),
            trackingErrorNotify: false,
            trayIcon: true,
          ),
        ),
        const AppearanceState.themeChanged(
          AppearanceInfo(
            theme: AppThemeType.light(),
            trackingNotify: false,
            locale: AppLocaleType.system(),
            trackingErrorNotify: false,
            trayIcon: true,
          ),
        ),
        const AppearanceState.themeChanged(
          AppearanceInfo(
            theme: AppThemeType.system(),
            trackingNotify: false,
            locale: AppLocaleType.system(),
            trackingErrorNotify: false,
            trayIcon: true,
          ),
        ),
      ],
    );

    blocTest(
      'Tracking notifications',
      build: () => cubit,
      act: (AppearanceSettingsCubit cubit) async {
        await cubit.trackingNotify(enable: true);
        verify(
          () => mockPref.setTrackingNotifications(true),
        ).called(1);

        await cubit.trackingNotify(enable: false);
        verify(
          () => mockPref.setTrackingNotifications(false),
        ).called(1);
      },
      expect: () => [
        const AppearanceState.trackingNotifyChanged(
          AppearanceInfo(
            theme: AppThemeType.system(),
            trackingNotify: true,
            locale: AppLocaleType.system(),
            trackingErrorNotify: false,
            trayIcon: true,
          ),
        ),
        const AppearanceState.trackingNotifyChanged(
          AppearanceInfo(
            theme: AppThemeType.system(),
            trackingNotify: false,
            locale: AppLocaleType.system(),
            trackingErrorNotify: false,
            trayIcon: true,
          ),
        ),
      ],
    );

    blocTest(
      'Change locale',
      build: () => cubit,
      act: (AppearanceSettingsCubit cubit) async {
        await cubit.setLocale(
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
          () => mockPref.setLocale(
            const AppLocaleType.inner(
              locale: Locale('ru', 'RU'),
            ),
          ),
        ).called(1);

        await cubit.setLocale(const AppLocaleType.system());
        verify(
          () => mockAppCubit.setLocale(
            const AppLocaleType.system(),
          ),
        ).called(1);
        verify(
          () => mockPref.setLocale(const AppLocaleType.system()),
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
            trayIcon: true,
          ),
        ),
        const AppearanceState.localeChanged(
          AppearanceInfo(
            theme: AppThemeType.system(),
            trackingNotify: false,
            locale: AppLocaleType.system(),
            trackingErrorNotify: false,
            trayIcon: true,
          ),
        ),
      ],
    );

    blocTest(
      'Tracking error notifications',
      build: () => cubit,
      act: (AppearanceSettingsCubit cubit) async {
        await cubit.trackingErrorNotify(enable: true);
        verify(
          () => mockPref.setTrackingErrorNotifications(true),
        ).called(1);

        await cubit.trackingErrorNotify(enable: false);
        verify(
          () => mockPref.setTrackingErrorNotifications(false),
        ).called(1);
      },
      expect: () => [
        const AppearanceState.trackingErrorNotifyChanged(
          AppearanceInfo(
            theme: AppThemeType.system(),
            trackingNotify: false,
            locale: AppLocaleType.system(),
            trackingErrorNotify: true,
            trayIcon: true,
          ),
        ),
        const AppearanceState.trackingErrorNotifyChanged(
          AppearanceInfo(
            theme: AppThemeType.system(),
            trackingNotify: false,
            locale: AppLocaleType.system(),
            trackingErrorNotify: false,
            trayIcon: true,
          ),
        ),
      ],
    );

    blocTest(
      'Tray icon',
      build: () => cubit,
      act: (AppearanceSettingsCubit cubit) async {
        await cubit.trayIcon(enable: true);
        verify(
          () => mockPref.setTrayIcon(true),
        ).called(1);
        verify(
          () => mockSystemTray.switchTrayIcon(enable: true),
        ).called(1);

        await cubit.trayIcon(enable: false);
        verify(
          () => mockPref.setTrayIcon(false),
        ).called(1);
        verify(
          () => mockSystemTray.switchTrayIcon(enable: false),
        ).called(1);
      },
      expect: () => [
        const AppearanceState.trayIconChanged(
          AppearanceInfo(
            theme: AppThemeType.system(),
            trackingNotify: false,
            locale: AppLocaleType.system(),
            trackingErrorNotify: false,
            trayIcon: true,
          ),
        ),
        const AppearanceState.trayIconChanged(
          AppearanceInfo(
            theme: AppThemeType.system(),
            trackingNotify: false,
            locale: AppLocaleType.system(),
            trackingErrorNotify: false,
            trayIcon: false,
          ),
        ),
      ],
    );
  });
}
