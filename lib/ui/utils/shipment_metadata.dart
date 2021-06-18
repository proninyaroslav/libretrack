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
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/locale.dart';
import 'package:libretrack/ui/widget/rrect_icon.dart';
import 'package:libretrack/ui/widget/status_icons.dart';

part 'shipment_metadata.freezed.dart';

@freezed
class ShipmentStatusMetadata with _$ShipmentStatusMetadata {
  const factory ShipmentStatusMetadata({
    required ShipmentStatusType type,
    required RRectIconData iconData,
    required String emoji,
    String? localizedName,
  }) = _ShipmentStatusMetadata;
}

class ShipmentStatusMetadataMapper {
  static ShipmentStatusMetadata of(
    BuildContext context,
    ShipmentStatusType type,
  ) {
    return ofLocale(S.of(context), type);
  }

  static ShipmentStatusMetadata ofLocale(
    S locale,
    ShipmentStatusType type,
  ) {
    switch (type) {
      case ShipmentStatusType.notAvailable:
        return ShipmentStatusMetadata(
          type: type,
          iconData: StatusIconsData.notAvailable,
          emoji: '❓',
          localizedName: locale.statusNotAvailable,
        );
      case ShipmentStatusType.infoReceived:
        return ShipmentStatusMetadata(
          type: type,
          iconData: StatusIconsData.infoReceived,
          emoji: 'ℹ️',
          localizedName: locale.statusInfoReceived,
        );
      case ShipmentStatusType.pickup:
        return ShipmentStatusMetadata(
          type: type,
          iconData: StatusIconsData.pickup,
          emoji: '📦',
          localizedName: locale.statusPickup,
        );
      case ShipmentStatusType.inTransit:
        return ShipmentStatusMetadata(
          type: type,
          iconData: StatusIconsData.inTransit,
          emoji: '✈️',
          localizedName: locale.statusInTransit,
        );
      case ShipmentStatusType.outForDelivery:
        return ShipmentStatusMetadata(
          type: type,
          iconData: StatusIconsData.outForDelivery,
          emoji: '📦',
          localizedName: locale.statusOutForDelivery,
        );
      case ShipmentStatusType.delivered:
        return ShipmentStatusMetadata(
          type: type,
          iconData: StatusIconsData.delivered,
          emoji: '✅',
          localizedName: locale.statusDelivered,
        );
      case ShipmentStatusType.returnedToShipper:
        return ShipmentStatusMetadata(
          type: type,
          iconData: StatusIconsData.returnedToShipper,
          emoji: '❗️',
          localizedName: locale.statusReturnedToShipper,
        );
      case ShipmentStatusType.other:
        return ShipmentStatusMetadata(
          type: type,
          emoji: '✈️',
          iconData: StatusIconsData.inTransit,
        );
    }
  }
}
