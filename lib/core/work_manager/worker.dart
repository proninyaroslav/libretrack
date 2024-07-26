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

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'worker.freezed.dart';

abstract class Worker {
  Future<WorkResult> doWork(WorkData? inputData);
}

@freezed
class WorkResult with _$WorkResult {
  const factory WorkResult.success() = WorkResultSuccess;
  const factory WorkResult.failure() = WorkResultFailure;
}

@freezed
class WorkParams with _$WorkParams {
  const factory WorkParams({
    WorkConstraints? constraints,
    WorkData? inputData,
    @Default(ExistingWorkPolicy.replace) ExistingWorkPolicy existingWorkPolicy,
  }) = _WorkParams;
}

@freezed
class WorkConstraints with _$WorkConstraints {
  const factory WorkConstraints({
    NetworkType? networkType,
  }) = _WorkConstraints;
}

enum NetworkType {
  @JsonValue('connected')
  connected,

  /// Limited connection
  @JsonValue('metered')
  metered,

  @JsonValue('notRequired')
  notRequired,

  /// **iOS doesn't support this**
  @JsonValue('notRoaming')
  notRoaming,

  /// Unlimited connection
  @JsonValue('unmetered')
  unmetered,
}

/// An enumeration of the conflict resolution policies in case of a collision.
enum ExistingWorkPolicy {
  /// If there is existing pending (uncompleted) work with the same unique name, do nothing.
  @JsonValue('keep')
  keep,

  /// If there is existing pending (uncompleted) work with the same unique name, cancel and delete it.
  @JsonValue('replace')
  replace
}

class WorkData extends Equatable {
  final Map<String, dynamic> _data;

  const WorkData(this._data);

  const WorkData.empty() : _data = const {};

  String? getString(String key) => _tryCast<String>(_data[key]);

  List<String>? getStringList(String key) => _tryCastList<String>(_data[key]);

  void setString(String key, String value) => _data[key] = value;

  void setStringList(String key, List<String> value) => _data[key] = value;

  bool? getBool(String key) => _tryCast<bool>(_data[key]);

  List<bool>? getBoolList(String key) => _tryCastList<bool>(_data[key]);

  // ignore: avoid_positional_boolean_parameters
  void setBool(String key, bool value) => _data[key] = value;

  void setBoolList(String key, List<bool> value) => _data[key] = value;

  int? getInt(String key) => _tryCast<int>(_data[key]);

  List<int>? getIntList(String key) => _tryCastList<int>(_data[key]);

  void setInt(String key, int value) => _data[key] = value;

  void setIntList(String key, List<int> value) => _data[key] = value;

  int? getDouble(String key) => _tryCast<int>(_data[key]);

  List<int>? getDoubleList(String key) => _tryCastList<int>(_data[key]);

  void setDouble(String key, double value) => _data[key] = value;

  void setDoubleList(String key, List<double> value) => _data[key] = value;

  T? _tryCast<T>(dynamic value) => value is T ? value : null;

  List<T>? _tryCastList<T>(dynamic value) {
    try {
      return value is List ? value.cast<T>() : null;
      // ignore: avoid_catching_errors
    } on TypeError {
      return null;
    }
  }

  UnmodifiableMapView<String, dynamic> asMap() => UnmodifiableMapView(_data);

  @override
  List<Object> get props => [_data];

  @override
  bool get stringify => true;
}
