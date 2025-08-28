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

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: avoid_classes_with_only_static_members
class AppTheme {
  static final _lightThemeData = ThemeData(
    useMaterial3: false,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.light,
    primarySwatch: paletteLight.primarySwatch,
    primaryColor: paletteLight.primary,
    primaryColorDark: paletteLight.primaryDark,
    primaryColorLight: paletteLight.primaryLight,
    inputDecorationTheme: inputTheme,
    cardTheme: CardThemeData(),
    snackBarTheme: snackBarTheme,
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: outlinedButtonShape,
      ),
    ),
    elevatedButtonTheme: elevatedButtonThemeData,
    appBarTheme: appBarTheme,
  );

  static final _darkThemeData = ThemeData(
    useMaterial3: false,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.dark,
    applyElevationOverlayColor: true,
    primarySwatch: paletteDark.primarySwatch,
    primaryColor: paletteDark.primary,
    primaryColorDark: paletteDark.primaryDark,
    primaryColorLight: paletteDark.primaryLight,
    inputDecorationTheme: inputTheme,
    cardTheme: CardThemeData(),
    snackBarTheme: snackBarTheme,
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: outlinedButtonShape,
      ),
    ),
    elevatedButtonTheme: elevatedButtonThemeData,
    appBarTheme: appBarTheme,
  );

  static const inputTheme = InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    ),
  );

  static final cardTheme = CardThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
  );

  static const snackBarTheme = SnackBarThemeData(
    behavior: SnackBarBehavior.floating,
  );

  static final _onSecondaryLight =
      ThemeData.estimateBrightnessForColor(paletteLight.secondary) ==
              Brightness.dark
          ? Colors.white
          : Colors.black;

  static final _onSecondaryDark =
      ThemeData.estimateBrightnessForColor(paletteDark.secondary) ==
              Brightness.dark
          ? Colors.white
          : Colors.black;

  static ThemeData getThemeData({bool dark = false}) {
    if (dark) {
      return _darkThemeData.copyWith(
        colorScheme: _darkThemeData.colorScheme.copyWith(
          secondary: paletteDark.secondary,
          secondaryContainer: paletteDark.secondaryDark,
          onSecondary: _onSecondaryDark,
        ),
      );
    } else {
      return _lightThemeData.copyWith(
        colorScheme: _lightThemeData.colorScheme.copyWith(
          secondary: paletteLight.secondary,
          secondaryContainer: paletteLight.secondaryDark,
          onSecondary: _onSecondaryLight,
        ),
      );
    }
  }

  static final outlinedButtonShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8.0),
  );

  static final elevatedButtonThemeData = ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    ),
  );

  static const appBarTheme = AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle.light,
  );

  static bool isDark(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Color textPrimaryColorLight(BuildContext context) {
    if (isDark(context)) {
      return Theme.of(context).primaryColor;
    } else {
      return Theme.of(context).primaryColorLight;
    }
  }

  static Color itemSelectableColor(BuildContext context) {
    return AppTheme.textPrimaryColorLight(context).withValues(alpha: 0.24);
  }

  static AppPalette palette(BuildContext context) {
    if (isDark(context)) {
      return paletteDark;
    } else {
      return paletteLight;
    }
  }

  static AppPalette paletteLight = AppPaletteLight();

  static AppPalette paletteDark = AppPaletteDark();
}

abstract class AppPalette {
  MaterialColor get primarySwatch;

  Color get primary;

  Color get primaryLight;

  Color get primaryDark;

  Color get secondary;

  Color get secondaryLight;

  Color get secondaryDark;

  Color get newInfo;

  Color get error;

  Color get ok;

  Color get appLogoColor;
}

class AppPaletteLight implements AppPalette {
  static const MaterialColor indigo = MaterialColor(
    _indigoPrimaryValue,
    <int, Color>{
      50: Color(0xFFE8EAF6),
      100: Color(0xFFC5CAE9),
      200: Color(0xFF9FA8DA),
      300: Color(0xFF7986CB),
      400: Color(0xFF5C6BC0),
      500: Color(0xFF3F51B5),
      600: Color(0xFF3949AB),
      700: Color(0xFF303F9F),
      800: Color(0xFF283593),
      900: Color(_indigoPrimaryValue),
    },
  );
  static const int _indigoPrimaryValue = 0xFF1A237E;

  @override
  MaterialColor get primarySwatch => indigo;

  @override
  Color get primary => const Color(_indigoPrimaryValue);

  @override
  Color get primaryLight => indigo.shade500;

  @override
  Color get primaryDark => const Color(0xFF000051);

  @override
  Color get secondary => Colors.amberAccent.shade400;

  @override
  Color get secondaryLight => Colors.amberAccent.shade100;

  @override
  Color get secondaryDark => Colors.amberAccent.shade700;

  @override
  Color get newInfo => Colors.red;

  @override
  Color get error => Colors.red.shade700;

  @override
  Color get ok => Colors.green.shade500;

  @override
  Color get appLogoColor => const Color(0xff019bd8);
}

class AppPaletteDark implements AppPalette {
  static const MaterialColor indigo = MaterialColor(
    _indigoPrimaryValue,
    <int, Color>{
      50: Color(0xFFE8EAF6),
      100: Color(0xFFC5CAE9),
      200: Color(_indigoPrimaryValue),
      300: Color(0xFF7986CB),
      400: Color(0xFF5C6BC0),
      500: Color(0xFF3F51B5),
      600: Color(0xFF3949AB),
      700: Color(0xFF303F9F),
      800: Color(0xFF283593),
      900: Color(0xFF1A237E),
    },
  );
  static const int _indigoPrimaryValue = 0xFF9FA8DA;

  @override
  MaterialColor get primarySwatch => indigo;

  @override
  Color get primary => const Color(_indigoPrimaryValue);

  @override
  Color get primaryLight => indigo.shade100;

  @override
  Color get primaryDark => indigo.shade500;

  @override
  Color get secondary => Colors.amberAccent;

  @override
  Color get secondaryLight => Colors.amberAccent.shade100;

  @override
  Color get secondaryDark => Colors.amberAccent.shade400;

  @override
  Color get newInfo => Colors.red;

  @override
  Color get error => Colors.red.shade300;

  @override
  Color get ok => Colors.green.shade300;

  @override
  Color get appLogoColor => const Color(0xff019bd8);
}
