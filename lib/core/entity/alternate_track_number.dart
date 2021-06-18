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
import 'package:libretrack/core/entity/entity.dart';

@Entity(
  foreignKeys: [
    ForeignKey(
      entity: ShipmentInfo,
      childColumns: ['shipmentId'],
      parentColumns: ['id'],
      onDelete: ForeignKeyAction.cascade,
    ),
  ],
)
class AlternateTrackNumber extends Equatable {
  @primaryKey
  final String trackNumber;

  final int shipmentId;

  const AlternateTrackNumber({
    required this.trackNumber,
    required this.shipmentId,
  });

  @override
  List<Object> get props => [trackNumber, shipmentId];

  @override
  bool get stringify => true;
}
