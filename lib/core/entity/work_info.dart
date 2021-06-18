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

import '../work_manager/work_manager.dart';
import 'converter/converter.dart';

@TypeConverters([
  NullableDateTimeConverter,
  NullableDurationConverter,
  WorkTypeConverter,
  NullableWorkDataConverter,
  NullableNetworkTypeConverter,
  NullableDurationConverter,
])
@entity
class WorkInfo extends Equatable {
  @primaryKey
  final String id;

  final String workerName;

  final WorkType type;

  /// Typically used for work with type [WorkType.periodic]
  final Duration? frequency;

  final DateTime? lastRunning;

  final WorkData? inputData;

  @ignore
  final WorkConstraints? constraints;

  /// Typically used for work with type [WorkType.oneTime]
  final Duration? initialDelay;

  // TODO: remove it; wait for @Embedded
  WorkInfo({
    required this.id,
    required this.workerName,
    required this.type,
    this.frequency,
    this.inputData,
    this.lastRunning,
    this.initialDelay,
    // ignore: non_constant_identifier_names
    this.networkType_,
  }) : constraints = networkType_ == null
            ? null
            : WorkConstraints(
                networkType: networkType_,
              );

  WorkInfo.from({
    required this.id,
    required this.workerName,
    required this.type,
    this.frequency,
    this.inputData,
    this.constraints,
    this.lastRunning,
    this.initialDelay,
  }) : networkType_ = constraints?.networkType;

  @override
  List<Object?> get props => [
        id,
        workerName,
        type,
        frequency,
        constraints,
        inputData,
        lastRunning,
        initialDelay,
      ];

  @override
  bool get stringify => true;

  WorkInfo copyWith({
    String? id,
    String? workerName,
    WorkType? type,
    Duration? frequency,
    DateTime? lastRunning,
    WorkData? inputData,
    WorkConstraints? constraints,
    Duration? initialDelay,
  }) =>
      WorkInfo.from(
        id: id ?? this.id,
        workerName: workerName ?? this.workerName,
        type: type ?? this.type,
        frequency: frequency ?? this.frequency,
        lastRunning: lastRunning ?? this.lastRunning,
        inputData: inputData ?? this.inputData,
        constraints: constraints ?? this.constraints,
        initialDelay: initialDelay ?? this.initialDelay,
      );

  // TODO: remove it; wait for @Embedded
  //===================================================
  @ColumnInfo(name: 'constraints_networkType')
  // ignore: non_constant_identifier_names
  final NetworkType? networkType_;
}

enum WorkType {
  @JsonValue('periodic')
  periodic,

  @JsonValue('oneTime')
  oneTime,
}
