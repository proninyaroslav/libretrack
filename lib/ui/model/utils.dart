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

import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:libretrack/core/entity/dimensions.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/model/type/locale.dart';
import 'package:libretrack/core/settings/settings.dart';
import 'package:libretrack/locale.dart';
import 'package:libretrack/ui/model/native_locale_names.dart' as locale_names;
import 'package:responsive_builder/responsive_builder.dart';

export 'service_metadata.dart';
export 'shipment_metadata.dart';
export 'tracking_error_metadata.dart';

// ignore: avoid_classes_with_only_static_members
class UiUtils {
  static const double fabBottomMargin = kFloatingActionButtonMargin + 60;

  static const Duration defaultAnimatedListDuration =
      Duration(milliseconds: 200);

  static const snackBarDisplayLongDuration = Duration(milliseconds: 5500);

  static FloatingActionButtonLocation getAdaptiveFabLocation(
    BuildContext context,
    Orientation orientation,
  ) {
    final deviceType = getDeviceType(MediaQuery.of(context).size);
    final isLarge = deviceType == DeviceScreenType.tablet ||
        deviceType == DeviceScreenType.desktop;
    if (isLarge) {
      return FloatingActionButtonLocation.endFloat;
    } else if (orientation == Orientation.portrait) {
      return FloatingActionButtonLocation.centerFloat;
    } else {
      return FloatingActionButtonLocation.endFloat;
    }
  }

  static String buildTrackShareString(TrackNumberInfo info) {
    if (info.description == null) {
      return info.trackNumber;
    } else {
      return '${info.description}: ${info.trackNumber}';
    }
  }

  static final formatMMMMdjm = DateFormat.MMMMd().add_jm();

  static List<String> splitWords(String s) =>
      RegExp(r'[^\p{Z}]+', unicode: true)
          .allMatches(s)
          .map((m) => m.group(0))
          .where((word) => word != null)
          .map((word) => word!)
          .toList();

  static final supportedLocales = AppLocalizations.supportedLocales
      .map(
        (ui.Locale locale) => MapEntry(
          Locale(
            locale.languageCode,
            locale.countryCode,
          ),
          localeToLocalizedStr(locale.toString()),
        ),
      )
      .toList()
    ..sort(
      (a, b) => a.value.compareTo(b.value),
    );

  static String localeToLocalizedStr(String locale) {
    return locale_names.all_native_names[locale] ?? locale;
  }

  static String formatRemainingLimitTime(
    BuildContext context,
    Duration duration,
  ) {
    final list = <String>[];
    final hours = duration.inHours;
    final minutes = duration.inMinutes - hours * 60;
    final seconds = duration.inSeconds - duration.inMinutes * 60;

    if (hours > 0) {
      list.add(S.of(context).hoursShortFormat(hours));
    }
    if (minutes > 0) {
      list.add(S.of(context).minutesShortFormat(minutes));
    }
    if (seconds > 0) {
      list.add(S.of(context).secondsShortFormat(seconds));
    }

    return list.join(' ');
  }
}

extension UnitOfMeasurementExtension on UnitOfMeasurement {
  String format(BuildContext context) {
    final valueStr = value.removeDecimalZeroFormat();
    switch (measurement) {
      case Measurement.kilogram:
        return S.of(context).kilogramUnitShort(valueStr);
      case Measurement.pound:
        return S.of(context).poundUnitShort(valueStr);
      case Measurement.ounce:
        return S.of(context).ounceUnitShort(valueStr);
      case Measurement.liter:
        return S.of(context).literUnitShort(valueStr);
      case Measurement.gallon:
        return S.of(context).gallonUnitShort(valueStr);
      case Measurement.barrel:
        return S.of(context).barrelUnitShort(valueStr);
      case Measurement.squareMeter:
        return S.of(context).barrelUnitShort(valueStr);
      case Measurement.squareFeet:
        return S.of(context).squareFeetUnitShort(valueStr);
      case Measurement.squareYard:
        return S.of(context).squareYardUnitShort(valueStr);
      case Measurement.meter:
        return S.of(context).meterUnitShort(valueStr);
      case Measurement.centimeter:
        return S.of(context).centimeterUnitShort(valueStr);
      case Measurement.cubicMeter:
        return S.of(context).cubicMeterUnitShort(valueStr);
      case Measurement.cubicCentimeter:
        return S.of(context).cubicCentimeterUnitShort(valueStr);
    }
  }
}

extension DimensionsExtension on Dimensions {
  String format(BuildContext context) {
    return S.of(context).dimensionsUnit(
          length.format(context),
          width.format(context),
          height.format(context),
        );
  }
}

extension CurrencyExtension on Currency {
  String format(BuildContext context) {
    return "${value.removeDecimalZeroFormat()} $currencyCode";
  }
}

extension AddressExtension on Address {
  String format(BuildContext context) {
    final locationStr = [
      if (postalCode != null) postalCode,
      if (location != null) location,
      if (countryCode != null) countryCode,
    ];

    return locationStr.join(', ');
  }
}

extension AppThemeTypeExtension on AppThemeType {
  String toLocalizedString(BuildContext context) {
    return when(
      light: () => S.of(context).settingsThemeLight,
      dark: () => S.of(context).settingsThemeDark,
      system: () => S.of(context).settingsThemeSystem,
    );
  }
}

extension TrackingFreqLimitExtension on TrackingFreqLimit {
  String toLocalizedString(BuildContext context) {
    return when(
      fifteenMin: () => S.of(context).settingsTrackingFreqFifteenMin,
      thirtyMin: () => S.of(context).settingsTrackingFreqThirtyMin,
      fortyFiveMin: () => S.of(context).settingsTrackingFreqFortyFiveMin,
      oneHour: () => S.of(context).settingsTrackingFreqOneHour,
      unlimited: () => S.of(context).settingsTrackingFreqUnlimited,
    );
  }
}

extension AutoTrackingFreqExtension on AutoTrackingFreq {
  String toLocalizedString(BuildContext context) {
    return when(
      sixHours: () => S.of(context).settingsAutoTrackingFreqSixHours,
      twelveHours: () => S.of(context).settingsAutoTrackingFreqTwelveHours,
      oneDay: () => S.of(context).settingsAutoTrackingFreqOneDay,
      threeDays: () => S.of(context).settingsAutoTrackingFreqThreeDays,
      oneWeek: () => S.of(context).settingsAutoTrackingFreqOneWeek,
    );
  }
}

extension DoubleExtension on double {
  String removeDecimalZeroFormat() {
    return truncateToDouble() == this ? toStringAsFixed(0) : toString();
  }
}
