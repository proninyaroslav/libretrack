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

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'unit_of_measurement.freezed.dart';

@freezed
class UnitOfMeasurement with _$UnitOfMeasurement {
  const factory UnitOfMeasurement({
    required double value,
    required Measurement measurement,
  }) = _UnitOfMeasurement;
}

enum Measurement {
  @JsonValue('kilogram')
  kilogram,

  @JsonValue('pound')
  pound,

  @JsonValue('ounce')
  ounce,

  @JsonValue('liter')
  liter,

  @JsonValue('gallon')
  gallon,

  @JsonValue('barrel')
  barrel,

  @JsonValue('squareMeter')
  squareMeter,

  @JsonValue('squareFeet')
  squareFeet,

  @JsonValue('squareYard')
  squareYard,

  @JsonValue('meter')
  meter,

  @JsonValue('centimeter')
  centimeter,

  @JsonValue('cubicMeter')
  cubicMeter,

  @JsonValue('cubicCentimeter')
  cubicCentimeter,
}
