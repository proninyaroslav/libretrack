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

import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'address.dart';
import 'converter/converter.dart';
import 'entity.dart';

@TypeConverters([
  PostalServiceTypeConverter,
  DateTimeConverter,
  ShipmentStatusTypeConverter,
])
@Entity(
  foreignKeys: [
    ForeignKey(
      entity: TrackNumberInfo,
      childColumns: ['trackNumber'],
      parentColumns: ['trackNumber'],
      onDelete: ForeignKeyAction.cascade,
    ),
  ],
)
class ShipmentActivityInfo extends Equatable {
  @PrimaryKey(autoGenerate: true)
  final int? id;

  final String trackNumber;

  final PostalServiceType serviceType;

  final ShipmentStatusType statusType;

  final String? statusDescription;

  @ignore
  final Address? activityLocation;

  final DateTime dateTime;

  // TODO: remove it; wait for @Embedded
  ShipmentActivityInfo({
    this.id,
    required this.trackNumber,
    required this.serviceType,
    required this.statusType,
    this.statusDescription,
    // ignore: non_constant_identifier_names
    this.location_,
    // ignore: non_constant_identifier_names
    this.postalCode_,
    // ignore: non_constant_identifier_names
    this.countryCode_,
    required this.dateTime,
  }) : activityLocation =
            location_ == null && postalCode_ == null && countryCode_ == null
                ? null
                : Address(
                    location: location_,
                    postalCode: postalCode_,
                    countryCode: countryCode_,
                  );

  @ignore
  ShipmentActivityInfo.from({
    this.id,
    required this.trackNumber,
    required this.serviceType,
    required this.statusType,
    this.statusDescription,
    this.activityLocation,
    DateTime? dateTime,
  })  : dateTime = dateTime ?? DateTime.fromMillisecondsSinceEpoch(0),
        location_ = activityLocation?.location,
        postalCode_ = activityLocation?.postalCode,
        countryCode_ = activityLocation?.countryCode;

  @override
  List<Object?> get props => [
        id,
        trackNumber,
        serviceType,
        statusType,
        statusDescription,
        activityLocation,
        dateTime,
      ];

  @override
  bool get stringify => true;

  // TODO: remove it; wait for @Embedded
  //===================================================
  @ColumnInfo(name: 'activityLocation_location')
  // ignore: non_constant_identifier_names
  final String? location_;

  @ColumnInfo(name: 'activityLocation_postalCode')
  // ignore: non_constant_identifier_names
  final String? postalCode_;

  @ColumnInfo(name: 'activityLocation_countryCode')
  // ignore: non_constant_identifier_names
  final String? countryCode_;
}

enum ShipmentStatusType {
  @JsonValue('notAvailable')
  notAvailable,

  @JsonValue('infoReceived')
  infoReceived,

  @JsonValue('pickup')
  pickup,

  @JsonValue('inTransit')
  inTransit,

  @JsonValue('outForDelivery')
  outForDelivery,

  @JsonValue('delivered')
  delivered,

  @JsonValue('returnedToShipper')
  returnedToShipper,

  @JsonValue('other')
  other,

  @JsonValue('notDelivered')
  notDelivered,

  @JsonValue('inStorage')
  inStorage,

  @JsonValue('inTransitArrivedWaypoint')
  inTransitArrivedWaypoint,

  @JsonValue('inTransitDepartedWaypoint')
  inTransitDepartedWaypoint,

  @JsonValue('exportedFromDepartureCountry')
  exportedFromDepartureCountry,

  @JsonValue('importedToDestinationCountry')
  importedToDestinationCountry,

  @JsonValue('arrivedAtCustoms')
  arrivedAtCustoms,

  @JsonValue('customsClearanceComplete')
  customsClearanceComplete,
}
