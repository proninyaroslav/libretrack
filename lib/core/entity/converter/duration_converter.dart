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

class DurationConverter extends TypeConverter<Duration, int> {
  @override
  Duration decode(int databaseValue) {
    return Duration(
      milliseconds: databaseValue,
    );
  }

  @override
  int encode(Duration value) {
    return value.inMilliseconds;
  }
}

class NullableDurationConverter extends TypeConverter<Duration?, int?> {
  @override
  Duration? decode(int? databaseValue) {
    return databaseValue == null
        ? null
        : Duration(
            milliseconds: databaseValue,
          );
  }

  @override
  int? encode(Duration? value) {
    return value?.inMilliseconds;
  }
}
