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

import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../env.dart';
import 'model.dart';

export 'model.dart';

abstract class AppSettings {
  abstract bool addAccountTipShown;

  abstract ParcelsFilterBatch? parcelsFilters;

  abstract ParcelsSort? parcelsSort;

  abstract AppThemeType theme;

  abstract bool trackingNotifications;

  abstract AppLocaleType locale;

  abstract TrackingFreqLimit trackingFrequencyLimit;

  abstract bool autoTracking;

  abstract AutoTrackingFreq autoTrackingFreq;

  abstract int trackingHistorySize;

  abstract bool trackingErrorNotifications;

  abstract bool trayIcon;
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
}

@Singleton(as: AppSettings, dependsOn: [SharedPreferences])
class AppSettingsImpl implements AppSettings {
  final SharedPreferences pref;

  AppSettingsImpl(this.pref);

  @override
  bool get addAccountTipShown =>
      pref.getBool(_AppSettingsKey.addAccountTipShown) ?? false;

  @override
  set addAccountTipShown(bool value) =>
      pref.setBool(_AppSettingsKey.addAccountTipShown, value);

  @override
  ParcelsFilterBatch? get parcelsFilters {
    final str = pref.getString(_AppSettingsKey.parcelsFilters);
    final json = str == null ? null : jsonDecode(str);
    return json == null
        ? null
        : ParcelsFilterBatch.fromJson(json as Map<String, dynamic>);
  }

  @override
  set parcelsFilters(ParcelsFilterBatch? value) {
    final json = value?.toJson();
    if (json != null) {
      pref.setString(_AppSettingsKey.parcelsFilters, jsonEncode(json));
    }
  }

  @override
  ParcelsSort? get parcelsSort {
    final str = pref.getString(_AppSettingsKey.parcelsSort);
    final json = str == null ? null : jsonDecode(str);
    return json == null
        ? AppSettingsDefault.parcelsSort
        : ParcelsSort.fromJson(json as Map<String, dynamic>);
  }

  @override
  set parcelsSort(ParcelsSort? value) {
    final json = value?.toJson();
    if (json != null) {
      pref.setString(_AppSettingsKey.parcelsSort, jsonEncode(json));
    }
  }

  @override
  AppThemeType get theme {
    final str = pref.getString(_AppSettingsKey.theme);
    final json = str == null ? null : jsonDecode(str);
    return json == null
        ? AppSettingsDefault.theme
        : AppThemeType.fromJson(json as Map<String, dynamic>);
  }

  @override
  set theme(AppThemeType? value) {
    final json = value?.toJson();
    if (json != null) {
      pref.setString(_AppSettingsKey.theme, jsonEncode(json));
    }
  }

  @override
  set trackingNotifications(bool value) =>
      pref.setBool(_AppSettingsKey.trackingNotifications, value);

  @override
  bool get trackingNotifications =>
      pref.getBool(_AppSettingsKey.trackingNotifications) ??
      AppSettingsDefault.trackingNotifications;

  @override
  AppLocaleType get locale {
    final str = pref.getString(_AppSettingsKey.locale);
    final json = str == null ? null : jsonDecode(str);
    return json == null
        ? AppSettingsDefault.locale
        : AppLocaleType.fromJson(json as Map<String, dynamic>);
  }

  @override
  set locale(AppLocaleType? value) {
    final json = value?.toJson();
    if (json != null) {
      pref.setString(_AppSettingsKey.locale, jsonEncode(json));
    }
  }

  @override
  TrackingFreqLimit get trackingFrequencyLimit {
    final str = pref.getString(_AppSettingsKey.trackingFrequencyLimit);
    final json = str == null ? null : jsonDecode(str);
    return json == null
        ? AppSettingsDefault.trackingFrequencyLimit
        : TrackingFreqLimit.fromJson(json as Map<String, dynamic>);
  }

  @override
  set trackingFrequencyLimit(TrackingFreqLimit? value) {
    final json = value?.toJson();
    if (json != null) {
      pref.setString(_AppSettingsKey.trackingFrequencyLimit, jsonEncode(json));
    }
  }

  @override
  bool get autoTracking =>
      pref.getBool(_AppSettingsKey.autoTracking) ??
      AppSettingsDefault.autoTracking;

  @override
  set autoTracking(bool value) =>
      pref.setBool(_AppSettingsKey.autoTracking, value);

  @override
  AutoTrackingFreq get autoTrackingFreq {
    final str = pref.getString(_AppSettingsKey.autoTrackingFreq);
    final json = str == null ? null : jsonDecode(str);
    return json == null
        ? AppSettingsDefault.autoTrackingFreq
        : AutoTrackingFreq.fromJson(json as Map<String, dynamic>);
  }

  @override
  set autoTrackingFreq(AutoTrackingFreq? value) {
    final json = value?.toJson();
    if (json != null) {
      pref.setString(_AppSettingsKey.autoTrackingFreq, jsonEncode(json));
    }
  }

  @override
  set trackingHistorySize(int value) =>
      pref.setInt(_AppSettingsKey.trackingHistorySize, value);

  @override
  int get trackingHistorySize =>
      pref.getInt(_AppSettingsKey.trackingHistorySize) ??
      AppSettingsDefault.trackingHistorySize;

  @override
  set trackingErrorNotifications(bool value) =>
      pref.setBool(_AppSettingsKey.trackingErrorNotifications, value);

  @override
  bool get trackingErrorNotifications =>
      pref.getBool(_AppSettingsKey.trackingErrorNotifications) ??
      AppSettingsDefault.trackingErrorNotifications;

  @override
  set trayIcon(bool value) => pref.setBool(_AppSettingsKey.trayIcon, value);

  @override
  bool get trayIcon =>
      pref.getBool(_AppSettingsKey.trayIcon) ?? AppSettingsDefault.trayIcon;
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
}

@module
abstract class SharedPreferencesModule {
  @Singleton(env: [Env.prod, Env.dev])
  Future<SharedPreferences> get pref async => SharedPreferences.getInstance();

  @Singleton(env: [Env.test])
  Future<SharedPreferences> get testPref async => TestSharedPreferences();
}

class TestSharedPreferences implements SharedPreferences {
  final Map<String, dynamic> _map = {};

  @override
  Future<bool> clear() async {
    _map.clear();
    return true;
  }

  @override
  Future<bool> commit() async => true;

  @override
  bool containsKey(String key) => _map.containsKey(key);

  @override
  dynamic get(String key) => _map[key];

  @override
  bool? getBool(String key) => get(key) as bool?;

  @override
  double? getDouble(String key) => get(key) as double?;

  @override
  int? getInt(String key) => get(key) as int?;

  @override
  Set<String> getKeys() => _map.keys.toSet();

  @override
  String? getString(String key) => get(key) as String?;

  @override
  List<String>? getStringList(String key) => get(key) as List<String>?;

  @override
  Future<void> reload() async {}

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
}
