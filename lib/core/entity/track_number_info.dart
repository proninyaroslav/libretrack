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

import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'converter/converter.dart';
import 'entity.dart';

part 'track_number_info.g.dart';

@TypeConverters([
  NullableDateTimeConverter,
  CustomerTypeConverter,
])
@entity
class TrackNumberInfo extends Equatable {
  @primaryKey
  final String trackNumber;

  final String? description;

  final bool isArchived;

  final DateTime? dateAdded;

  final CustomerType customerType;

  const TrackNumberInfo(
    this.trackNumber, {
    this.description,
    this.isArchived = false,
    this.dateAdded,
    this.customerType = CustomerType.receiver,
  });

  @override
  List<Object?> get props => [
        trackNumber,
        description,
        isArchived,
        dateAdded,
        customerType,
      ];

  @override
  bool get stringify => true;

  TrackNumberInfo copyWith({
    String? trackNumber,
    String? description,
    bool? isArchived,
    DateTime? dateAdded,
    CustomerType? customerType,
  }) =>
      TrackNumberInfo(
        trackNumber ?? this.trackNumber,
        description: description ?? this.description,
        isArchived: isArchived ?? this.isArchived,
        dateAdded: dateAdded ?? this.dateAdded,
        customerType: customerType ?? this.customerType,
      );
}

@TypeConverters([PostalServiceTypeConverter])
@Entity(
  primaryKeys: ['trackNumber', 'serviceType'],
  foreignKeys: [
    ForeignKey(
      entity: TrackNumberInfo,
      childColumns: ['trackNumber'],
      parentColumns: ['trackNumber'],
      onDelete: ForeignKeyAction.cascade,
    ),
  ],
)
@JsonSerializable()
class TrackNumberService extends Equatable {
  final String trackNumber;

  @JsonKey(name: 'serviceType')
  final PostalServiceType serviceType;

  /// if `true`, a pair of track number + service is allowed for tracking
  /// `false` if the service with non-temporary, hard error, or have a final status
  /// (for example, the parcel is delivered).
  final bool isActive;

  const TrackNumberService({
    required this.trackNumber,
    required this.serviceType,
    this.isActive = true,
  });

  factory TrackNumberService.fromJson(Map<String, dynamic> json) =>
      _$TrackNumberServiceFromJson(json);

  Map<String, dynamic> toJson() => _$TrackNumberServiceToJson(this);

  @override
  List<Object> get props => [
        trackNumber,
        serviceType,
        isActive,
      ];

  @override
  bool get stringify => true;

  TrackNumberService copyWith({
    String? trackNumber,
    PostalServiceType? serviceType,
    bool? isActive,
  }) =>
      TrackNumberService(
        trackNumber: trackNumber ?? this.trackNumber,
        serviceType: serviceType ?? this.serviceType,
        isActive: isActive ?? this.isActive,
      );
}

enum CustomerType {
  @JsonValue('receiver')
  receiver,

  @JsonValue('shipper')
  shipper,
}
