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

import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/settings/settings.dart';

import 'parcel_info.dart';

extension ParcelsFilterExtension on ParcelsFilter {
  bool apply(ParcelInfo? info) {
    return when(
      search: (query) => _FiltersCollection.search(info, query),
      archive: () => _FiltersCollection.archive(info),
      status: (statusType) => _FiltersCollection.status(info, statusType),
      newInfo: () => _FiltersCollection.newInfo(info),
      error: () => _FiltersCollection.error(info),
      postalService: (serviceType) =>
          _FiltersCollection.postalService(info, serviceType),
      receiver: () => _FiltersCollection.receiver(info),
      shipper: () => _FiltersCollection.shipper(info),
    );
  }
}

extension ParcelsFilterBatchExtension on ParcelsFilterBatch {
  bool applyAll(ParcelInfo? info) {
    return where(
      (filter) => filter != null,
    ).fold(
      true,
      (result, filter) => result && filter!.apply(info),
    );
  }
}

class _FiltersCollection {
  static bool archive(ParcelInfo? info) => info?.trackInfo.isArchived ?? false;

  static bool receiver(ParcelInfo? info) {
    return _active(info) &&
        info?.trackInfo.customerType == CustomerType.receiver;
  }

  static bool shipper(ParcelInfo? info) {
    return _active(info) &&
        info?.trackInfo.customerType == CustomerType.shipper;
  }

  static bool _active(ParcelInfo? info) {
    if (info == null) {
      return false;
    } else {
      return !info.trackInfo.isArchived;
    }
  }

  static bool search(ParcelInfo? info, String? query) {
    final pattern = query?.toLowerCase().trim();
    if (pattern == null || pattern.isEmpty) {
      return true;
    }
    if (info == null) {
      return false;
    } else {
      final trackInfo = info.trackInfo;
      return trackInfo.trackNumber.toLowerCase().contains(pattern) ||
          (trackInfo.description?.toLowerCase().contains(pattern) ?? false);
    }
  }

  static bool status(
    ParcelInfo? info,
    ShipmentStatusType? statusType,
  ) {
    if (statusType == null) {
      return true;
    } else if (info == null) {
      return false;
    } else {
      return info.currentStatus == statusType;
    }
  }

  static bool newInfo(ParcelInfo? info) {
    if (info?.lastTrackingInfo == null) {
      return false;
    } else {
      return info!.lastTrackingInfo!.hasNewInfo;
    }
  }

  static bool error(ParcelInfo? info) {
    if (info?.lastTrackingInfo == null) {
      return false;
    } else {
      return info!.lastTrackingInfo!.hasNonRetryableError ||
          info.lastTrackingInfo!.invalidTrackNumber;
    }
  }

  static bool postalService(
    ParcelInfo? info,
    PostalServiceType? serviceType,
  ) {
    if (serviceType == null) {
      return true;
    } else if (info == null) {
      return false;
    } else {
      return info.trackServices.any(
        (trackService) => trackService.serviceType == serviceType,
      );
    }
  }
}
