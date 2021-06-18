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

import 'dart:collection';

import 'package:floor/floor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'converter/tracking_service_type_converter.dart';
import 'entity.dart';

class AuthData extends MapView<String, String>
    with UnmodifiableMapMixin<String, String> {
  const AuthData(Map<String, String> map) : super(map);

  const AuthData.empty() : super(const {});
}

@TypeConverters([TrackingServiceTypeConverter])
@entity
class AuthDataField {
  @primaryKey
  final String key;

  final String value;

  @primaryKey
  final TrackingServiceType serviceType;

  const AuthDataField({
    required this.key,
    required this.value,
    required this.serviceType,
  });
}
