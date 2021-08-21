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

import 'converter/converter.dart';
import 'entity.dart';

enum PostalServiceType {
  @JsonValue('ups')
  ups,
  @JsonValue('russianPost')
  russianPost,
  @JsonValue('usps')
  usps,
}

@TypeConverters([
  PostalServiceTypeConverter,
  TrackingServiceTypeConverter,
])
@Entity(
  primaryKeys: ['type', 'trackingServiceType'],
  foreignKeys: [
    ForeignKey(
      entity: TrackingServiceInfo,
      childColumns: ['trackingServiceType'],
      parentColumns: ['type'],
      onDelete: ForeignKeyAction.cascade,
    ),
  ],
)
class PostalServiceInfo extends Equatable {
  final PostalServiceType type;

  final TrackingServiceType trackingServiceType;

  /// Used to select a service for tracking in order of priority.
  /// Maximum priority has minimum, non-negative value.
  final int priority;

  const PostalServiceInfo({
    required this.type,
    required this.trackingServiceType,
    required this.priority,
  });

  @override
  List<Object> get props => [type, trackingServiceType, priority];

  @override
  bool get stringify => true;
}
