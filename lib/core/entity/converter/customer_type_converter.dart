// Copyright (C) 2024 Yaroslav Pronin <proninyaroslav@mail.ru>
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

import 'package:enum_to_string/enum_to_string.dart';
import 'package:floor/floor.dart';
import 'package:libretrack/core/entity/entity.dart';

class CustomerTypeConverter extends TypeConverter<CustomerType, String> {
  @override
  CustomerType decode(String databaseValue) {
    return EnumToString.fromString(
      CustomerType.values,
      databaseValue,
    )!;
  }

  @override
  String encode(CustomerType value) {
    return EnumToString.convertToString(value);
  }
}
