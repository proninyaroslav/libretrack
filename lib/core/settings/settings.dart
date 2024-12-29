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

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:libretrack/core/entity/converter/customer_type_converter.dart';
import 'package:libretrack/core/entity/track_number_info.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'model.dart';
import 'shared_pref_migrator.dart';

export 'model.dart';

abstract class AppSettings {
  Future<void> startMigration();

  Future<bool> get addAccountTipShown;

  Future<void> setAddAccountTipShown(bool value);

  Future<ParcelsFilterBatch?> get parcelsFilters;

  Future<void> setParcelsFilters(ParcelsFilterBatch? value);

  Future<ParcelsSort?> get parcelsSort;

  Future<void> setParcelsSort(ParcelsSort? value);

  Future<AppThemeType> get theme;

  Future<void> setTheme(AppThemeType value);

  Future<bool> get trackingNotifications;

  Future<void> setTrackingNotifications(bool value);

  Future<AppLocaleType> get locale;

  Future<void> setLocale(AppLocaleType value);

  Future<TrackingFreqLimit> get trackingFrequencyLimit;

  Future<void> setTrackingFrequencyLimit(TrackingFreqLimit value);

  Future<bool> get autoTracking;

  Future<void> setAutoTracking(bool value);

  Future<AutoTrackingFreq> get autoTrackingFreq;

  Future<void> setAutoTrackingFreq(AutoTrackingFreq value);

  Future<int> get trackingHistorySize;

  Future<void> setTrackingHistorySize(int value);

  Future<bool> get trackingErrorNotifications;

  Future<void> setTrackingErrorNotifications(bool value);

  Future<bool> get trayIcon;

  Future<void> setTrayIcon(bool value);

  Future<BarcodeGeneratorType> get barcodeGeneratorType;

  Future<void> setBarcodeGeneratorType(BarcodeGeneratorType value);

  Future<CustomerType> get addParcelsCustomerType;

  Future<void> setAddParcelsCustomerType(CustomerType value);
}

abstract class AppSettingsDefault {
  static const parcelsSort = ParcelsSort.activityDate();

  static const theme = AppThemeType.system();

  static const trackingNotifications = true;

  static const locale = AppLocaleType.system();

  static const trackingFrequencyLimit = TrackingFreqLimit.fifteenMin();

  static const autoTracking = true;

  static const autoTrackingFreq = AutoTrackingFreq.twelveHours();

  static const int trackingHistorySize = 5;

  static const trackingErrorNotifications = true;

  static const trayIcon = false;

  static const barcodeGeneratorType = BarcodeGeneratorType.code128();

  static const addParcelsCustomerType = CustomerType.receiver;
}

@Singleton(as: AppSettings)
class AppSettingsImpl implements AppSettings {
  final SharedPreferencesAsync pref;
  final SharedPreferences prefOld;
  late final SharedPreferencesMigrator migrator;

  AppSettingsImpl(this.pref, this.prefOld) {
    migrator = SharedPreferencesMigrator(oldPrefs: prefOld, newPrefs: pref);
  }

  @override
  Future<void> startMigration() async {
    await migrator.migrate();
  }

  @override
  Future<bool> get addAccountTipShown async =>
      await pref.getBool(_AppSettingsKey.addAccountTipShown) ?? false;

  @override
  Future<void> setAddAccountTipShown(bool value) async =>
      await pref.setBool(_AppSettingsKey.addAccountTipShown, value);

  @override
  Future<ParcelsFilterBatch?> get parcelsFilters async {
    final str = await pref.getString(_AppSettingsKey.parcelsFilters);
    final json = str == null ? null : jsonDecode(str);
    return json == null
        ? null
        : ParcelsFilterBatch.fromJson(json as Map<String, dynamic>);
  }

  @override
  Future<void> setParcelsFilters(ParcelsFilterBatch? value) async {
    final json = value?.toJson();
    if (json != null) {
      await pref.setString(_AppSettingsKey.parcelsFilters, jsonEncode(json));
    }
  }

  @override
  Future<ParcelsSort?> get parcelsSort async {
    final str = await pref.getString(_AppSettingsKey.parcelsSort);
    final json = str == null ? null : jsonDecode(str);
    return json == null
        ? AppSettingsDefault.parcelsSort
        : ParcelsSort.fromJson(json as Map<String, dynamic>);
  }

  @override
  Future<void> setParcelsSort(ParcelsSort? value) async {
    final json = value?.toJson();
    if (json != null) {
      await pref.setString(_AppSettingsKey.parcelsSort, jsonEncode(json));
    }
  }

  @override
  Future<AppThemeType> get theme async {
    final str = await pref.getString(_AppSettingsKey.theme);
    final json = str == null ? null : jsonDecode(str);
    return json == null
        ? AppSettingsDefault.theme
        : AppThemeType.fromJson(json as Map<String, dynamic>);
  }

  @override
  Future<void> setTheme(AppThemeType? value) async {
    final json = value?.toJson();
    if (json != null) {
      await pref.setString(_AppSettingsKey.theme, jsonEncode(json));
    }
  }

  @override
  Future<void> setTrackingNotifications(bool value) async =>
      await pref.setBool(_AppSettingsKey.trackingNotifications, value);

  @override
  Future<bool> get trackingNotifications async =>
      await pref.getBool(_AppSettingsKey.trackingNotifications) ??
      AppSettingsDefault.trackingNotifications;

  @override
  Future<AppLocaleType> get locale async {
    final str = await pref.getString(_AppSettingsKey.locale);
    final json = str == null ? null : jsonDecode(str);
    return json == null
        ? AppSettingsDefault.locale
        : AppLocaleType.fromJson(json as Map<String, dynamic>);
  }

  @override
  Future<void> setLocale(AppLocaleType? value) async {
    final json = value?.toJson();
    if (json != null) {
      await pref.setString(_AppSettingsKey.locale, jsonEncode(json));
    }
  }

  @override
  Future<TrackingFreqLimit> get trackingFrequencyLimit async {
    final str = await pref.getString(_AppSettingsKey.trackingFrequencyLimit);
    final json = str == null ? null : jsonDecode(str);
    return json == null
        ? AppSettingsDefault.trackingFrequencyLimit
        : TrackingFreqLimit.fromJson(json as Map<String, dynamic>);
  }

  @override
  Future<void> setTrackingFrequencyLimit(TrackingFreqLimit? value) async {
    final json = value?.toJson();
    if (json != null) {
      await pref.setString(
          _AppSettingsKey.trackingFrequencyLimit, jsonEncode(json));
    }
  }

  @override
  Future<bool> get autoTracking async =>
      await pref.getBool(_AppSettingsKey.autoTracking) ??
      AppSettingsDefault.autoTracking;

  @override
  Future<void> setAutoTracking(bool value) async =>
      await pref.setBool(_AppSettingsKey.autoTracking, value);

  @override
  Future<AutoTrackingFreq> get autoTrackingFreq async {
    final str = await pref.getString(_AppSettingsKey.autoTrackingFreq);
    final json = str == null ? null : jsonDecode(str);
    return json == null
        ? AppSettingsDefault.autoTrackingFreq
        : AutoTrackingFreq.fromJson(json as Map<String, dynamic>);
  }

  @override
  Future<void> setAutoTrackingFreq(AutoTrackingFreq? value) async {
    final json = value?.toJson();
    if (json != null) {
      await pref.setString(_AppSettingsKey.autoTrackingFreq, jsonEncode(json));
    }
  }

  @override
  Future<void> setTrackingHistorySize(int value) async =>
      await pref.setInt(_AppSettingsKey.trackingHistorySize, value);

  @override
  Future<int> get trackingHistorySize async =>
      await pref.getInt(_AppSettingsKey.trackingHistorySize) ??
      AppSettingsDefault.trackingHistorySize;

  @override
  Future<void> setTrackingErrorNotifications(bool value) async =>
      await pref.setBool(_AppSettingsKey.trackingErrorNotifications, value);

  @override
  Future<bool> get trackingErrorNotifications async =>
      await pref.getBool(_AppSettingsKey.trackingErrorNotifications) ??
      AppSettingsDefault.trackingErrorNotifications;

  @override
  Future<void> setTrayIcon(bool value) async =>
      await pref.setBool(_AppSettingsKey.trayIcon, value);

  @override
  Future<bool> get trayIcon async =>
      await pref.getBool(_AppSettingsKey.trayIcon) ??
      AppSettingsDefault.trayIcon;

  @override
  Future<BarcodeGeneratorType> get barcodeGeneratorType async {
    final str = await pref.getString(_AppSettingsKey.barcodeGeneratorType);
    final json = str == null ? null : jsonDecode(str);
    return json == null
        ? AppSettingsDefault.barcodeGeneratorType
        : BarcodeGeneratorType.fromJson(json as Map<String, dynamic>);
  }

  @override
  Future<void> setBarcodeGeneratorType(BarcodeGeneratorType? value) async {
    final json = value?.toJson();
    if (json != null) {
      await pref.setString(
          _AppSettingsKey.barcodeGeneratorType, jsonEncode(json));
    }
  }

  @override
  Future<CustomerType> get addParcelsCustomerType async {
    final strValue = await pref.getString(
      _AppSettingsKey.addParcelsCustomerType,
    );
    return strValue == null
        ? AppSettingsDefault.addParcelsCustomerType
        : CustomerTypeConverter().decode(strValue);
  }

  @override
  Future<void> setAddParcelsCustomerType(CustomerType value) async {
    await pref.setString(
      _AppSettingsKey.addParcelsCustomerType,
      CustomerTypeConverter().encode(value),
    );
  }
}

abstract class _AppSettingsKey {
  static const addAccountTipShown = 'pref_key_add_account_tip_shown';

  static const parcelsFilters = 'pref_key_parcels_filters';

  static const parcelsSort = 'pref_key_parcels_sort';

  static const theme = 'pref_key_theme';

  static const trackingNotifications = 'pref_key_tracking_notifications';

  static const locale = 'pref_key_locale';

  static const trackingFrequencyLimit = 'pref_key_tracking_frequency_limit';

  static const autoTracking = 'pref_key_auto_tracking';

  static const autoTrackingFreq = 'pref_key_auto_tracking_freq';

  static const trackingHistorySize = 'pref_key_tracking_history_size';

  static const trackingErrorNotifications =
      'pref_key_tracking_error_notifications';

  static const trayIcon = 'pref_key_tray_icon';

  static const barcodeGeneratorType = 'pref_key_barcode_generator_type';

  static const addParcelsCustomerType = 'pref_add_parcels_customer_type';
}

@visibleForTesting
class TestSharedPreferencesAsync implements SharedPreferencesAsync {
  final Map<String, dynamic> _map = {};

  dynamic get(String key) => _map[key];

  @override
  Future<bool> containsKey(String key) async => _map.containsKey(key);

  @override
  Future<bool?> getBool(String key) async => get(key) as bool?;

  @override
  Future<double?> getDouble(String key) async => get(key) as double?;

  @override
  Future<int?> getInt(String key) async => get(key) as int?;

  @override
  Future<String?> getString(String key) async => get(key) as String?;

  @override
  Future<List<String>?> getStringList(String key) async =>
      get(key) as List<String>?;

  @override
  Future<bool> remove(String key) async => _map.remove(key) != null;

  bool _set(String key, dynamic value) {
    _map[key] = value;
    return true;
  }

  @override
  Future<bool> setBool(String key, bool value) async => _set(key, value);

  @override
  Future<bool> setDouble(String key, double value) async => _set(key, value);

  @override
  Future<bool> setInt(String key, int value) async => _set(key, value);

  @override
  Future<bool> setString(String key, String value) async => _set(key, value);

  @override
  Future<bool> setStringList(String key, List<String> value) async =>
      _set(key, value);

  @override
  Future<void> clear({Set<String>? allowList}) async {
    if (allowList == null) {
      _map.clear();
    } else {
      _map.removeWhere((k, v) => !allowList.contains(k));
    }
  }

  @override
  Future<Map<String, Object?>> getAll({Set<String>? allowList}) async {
    if (allowList == null) {
      return _map;
    } else {
      return Map.fromEntries(
        _map.entries.where((e) => allowList.contains(e.key)),
      );
    }
  }

  @override
  Future<Set<String>> getKeys({Set<String>? allowList}) async {
    if (allowList == null) {
      return Set.from(_map.keys);
    } else {
      return Set.from(_map.keys.where((k) => allowList.contains(k)));
    }
  }
}
