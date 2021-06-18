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

import 'dart:convert';

import 'package:floor/floor.dart';
import 'package:libretrack/core/work_manager/work_manager.dart';

class WorkDataConverter extends TypeConverter<WorkData, String> {
  @override
  WorkData decode(String databaseValue) {
    return WorkData(
      jsonDecode(databaseValue) as Map<String, dynamic>,
    );
  }

  @override
  String encode(WorkData value) {
    return jsonEncode(value.asMap());
  }
}

class NullableWorkDataConverter extends TypeConverter<WorkData?, String?> {
  @override
  WorkData? decode(String? databaseValue) {
    return databaseValue == null
        ? null
        : WorkData(
            jsonDecode(databaseValue) as Map<String, dynamic>,
          );
  }

  @override
  String? encode(WorkData? value) {
    return value == null ? null : jsonEncode(value.asMap());
  }
}
