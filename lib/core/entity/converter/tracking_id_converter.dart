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

import 'package:floor/floor.dart';
import 'package:libretrack/core/entity/entity.dart';

class TrackingIdConverter extends TypeConverter<TrackingId, String> {
  @override
  TrackingId decode(String databaseValue) {
    return TrackingId(databaseValue);
  }

  @override
  String encode(TrackingId value) {
    return value.toString();
  }
}

class NullableTrackingIdConverter extends TypeConverter<TrackingId?, String?> {
  @override
  TrackingId? decode(String? databaseValue) {
    return databaseValue == null ? null : TrackingId(databaseValue);
  }

  @override
  String? encode(TrackingId? value) {
    return value?.toString();
  }
}
