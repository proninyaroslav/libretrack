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

import 'dart:collection';

import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/model/type/locale.dart';

part 'model.freezed.dart';
part 'model.g.dart';
part 'parcels_filter_batch.dart';

@freezed
class ParcelsSort with _$ParcelsSort {
  const factory ParcelsSort.alphabetically({
    @Default(false) bool isDesc,
  }) = ParcelsSortAlphabetically;

  const factory ParcelsSort.activityDate({
    @Default(false) bool oldestFirst,
  }) = ParcelsSortActivityDate;

  const factory ParcelsSort.dateAdded({
    @Default(false) bool oldestFirst,
  }) = ParcelsSortDateAdded;

  factory ParcelsSort.fromJson(Map<String, dynamic> json) =>
      _$ParcelsSortFromJson(json);
}

@freezed
class ParcelsFilter with _$ParcelsFilter {
  const factory ParcelsFilter.search({
    String? query,
  }) = ParcelsFilterSearch;

  const factory ParcelsFilter.active() = ParcelsFilterActive;

  const factory ParcelsFilter.archive() = ParcelsFilterArchive;

  const factory ParcelsFilter.status({
    ShipmentStatusType? statusType,
  }) = ParcelsFilterStatus;

  const factory ParcelsFilter.newInfo() = ParcelsFilterNewInfo;

  const factory ParcelsFilter.error() = ParcelsFilterError;

  const factory ParcelsFilter.postalService({
    PostalServiceType? serviceType,
  }) = ParcelsFilterPostalService;

  factory ParcelsFilter.fromJson(Map<String, dynamic> json) =>
      _$ParcelsFilterFromJson(json);
}

@freezed
class AppThemeType with _$AppThemeType {
  const factory AppThemeType.light() = AppThemeTypeLight;
  const factory AppThemeType.dark() = AppThemeTypeDark;
  const factory AppThemeType.system() = AppThemeTypeSystem;

  factory AppThemeType.fromJson(Map<String, dynamic> json) =>
      _$AppThemeTypeFromJson(json);
}

@freezed
class AppLocaleType with _$AppLocaleType {
  const factory AppLocaleType.system() = AppLocaleTypeSystem;
  const factory AppLocaleType.inner({
    required Locale locale,
  }) = AppLocaleTypeInner;

  factory AppLocaleType.fromJson(Map<String, dynamic> json) =>
      _$AppLocaleTypeFromJson(json);
}

@freezed
class TrackingFreqLimit with _$TrackingFreqLimit {
  /// Once every 15 minutes
  const factory TrackingFreqLimit.fifteenMin() = TrackingFreqLimitFifteenMin;

  /// Once every 30 minutes
  const factory TrackingFreqLimit.thirtyMin() = TrackingFreqLimitThirtyMin;

  /// Once every 45 minutes
  const factory TrackingFreqLimit.fortyFiveMin() =
      TrackingFreqLimitFortyFiveMin;

  /// Once every 1 hour
  const factory TrackingFreqLimit.oneHour() = TrackingFreqLimitOneHour;

  factory TrackingFreqLimit.fromJson(Map<String, dynamic> json) =>
      _$TrackingFreqLimitFromJson(json);
}

@freezed
class AutoTrackingFreq with _$AutoTrackingFreq {
  /// Every 6 hours
  const factory AutoTrackingFreq.sixHours() = AutoTrackingFreqSixHours;

  /// Every 12 hours
  const factory AutoTrackingFreq.twelveHours() = AutoTrackingFreqTwelveHours;

  /// Every 1 day (24 hours)
  const factory AutoTrackingFreq.oneDay() = AutoTrackingFreqOneDay;

  /// Every 3 days
  const factory AutoTrackingFreq.threeDays() = AutoTrackingFreqThreeDays;

  /// Every one week
  const factory AutoTrackingFreq.oneWeek() = AutoTrackingFreqOneWeek;

  factory AutoTrackingFreq.fromJson(Map<String, dynamic> json) =>
      _$AutoTrackingFreqFromJson(json);
}

extension TrackingFreqLimitExtension on TrackingFreqLimit {
  Duration toDuration() => when(
        fifteenMin: () => const Duration(minutes: 15),
        thirtyMin: () => const Duration(minutes: 30),
        fortyFiveMin: () => const Duration(minutes: 45),
        oneHour: () => const Duration(hours: 1),
      );
}

extension AutoTrackingFreqExtension on AutoTrackingFreq {
  Duration toDuration() => when(
        sixHours: () => const Duration(hours: 6),
        twelveHours: () => const Duration(hours: 12),
        oneDay: () => const Duration(days: 1),
        threeDays: () => const Duration(days: 3),
        oneWeek: () => const Duration(days: 7),
      );
}

@freezed
class BarcodeGeneratorType with _$BarcodeGeneratorType {
  const factory BarcodeGeneratorType.code128() = BarcodeGeneratorTypeCode128;

  const factory BarcodeGeneratorType.qrCode() = BarcodeGeneratorTypeQrCode;

  factory BarcodeGeneratorType.fromJson(Map<String, dynamic> json) =>
      _$BarcodeGeneratorTypeFromJson(json);
}
