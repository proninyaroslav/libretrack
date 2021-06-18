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

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:libretrack/core/entity/entity.dart';

part 'parcel_info.freezed.dart';

@freezed
class ParcelInfo with _$ParcelInfo {
  const factory ParcelInfo({
    required TrackNumberInfo trackInfo,
    @Default([]) List<TrackNumberService> trackServices,
    @Default([]) List<ShipmentInfoEntry> shipmentInfoList,
    @Default([]) List<ShipmentActivityInfo> activities,
    @Default([]) List<TrackingHistoryEntry> trackingHistory,
  }) = _ParcelInfo;
}

@freezed
class TrackingHistoryEntry with _$TrackingHistoryEntry {
  const factory TrackingHistoryEntry({
    required TrackingInfo trackingInfo,
    required List<TrackingResponseInfo> responseList,
  }) = _TrackingHistoryEntry;
}

@freezed
class ShipmentInfoEntry with _$ShipmentInfoEntry {
  const factory ShipmentInfoEntry({
    required ShipmentInfo shipmentInfo,
    @Default([]) List<AlternateTrackNumber> alternateTrackNumbers,
  }) = _ShipmentInfoEntry;
}

extension TrackingErrorExtension on TrackingError {
  bool isReportable() =>
      type == TrackingErrorType.service || type == TrackingErrorType.unknown;
}
