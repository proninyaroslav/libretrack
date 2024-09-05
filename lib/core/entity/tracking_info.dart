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

import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'converter/converter.dart';
import 'entity.dart';

part 'tracking_info.freezed.dart';
part 'tracking_info.g.dart';

class TrackingId extends Equatable {
  final String _id;

  const TrackingId(this._id);

  @override
  List<Object> get props => [_id];

  @override
  String toString() => _id;

  String toJson() => _id;
}

@TypeConverters([
  TrackingIdConverter,
  TrackingStatusConverter,
  DateTimeConverter,
])
@Entity(
  foreignKeys: [
    ForeignKey(
      entity: TrackNumberInfo,
      childColumns: ['trackNumber'],
      parentColumns: ['trackNumber'],
      onDelete: ForeignKeyAction.cascade,
    ),
  ],
)
class TrackingInfo extends Equatable {
  @primaryKey
  final TrackingId id;

  final String trackNumber;

  final TrackingStatus status;

  final bool hasNewInfo;

  final bool hasNonRetryableError;

  final bool invalidTrackNumber;

  final DateTime dateTime;

  const TrackingInfo({
    required this.id,
    required this.trackNumber,
    required this.status,
    required this.hasNewInfo,
    required this.hasNonRetryableError,
    required this.invalidTrackNumber,
    required this.dateTime,
  });

  @override
  List<Object> get props => [
        id,
        trackNumber,
        status,
        hasNewInfo,
        hasNonRetryableError,
        invalidTrackNumber,
        dateTime,
      ];

  @override
  bool get stringify => true;

  TrackingInfo copyWith({
    TrackingId? id,
    String? trackNumber,
    TrackingStatus? status,
    bool? hasNewInfo,
    bool? hasNonRetryableError,
    bool? invalidTrackNumber,
    DateTime? dateTime,
  }) =>
      TrackingInfo(
        id: id ?? this.id,
        trackNumber: trackNumber ?? this.trackNumber,
        status: status ?? this.status,
        hasNewInfo: hasNewInfo ?? this.hasNewInfo,
        hasNonRetryableError: hasNonRetryableError ?? this.hasNonRetryableError,
        invalidTrackNumber: invalidTrackNumber ?? this.invalidTrackNumber,
        dateTime: dateTime ?? this.dateTime,
      );
}

enum TrackingStatus {
  @JsonValue('inProgress')
  inProgress,

  @JsonValue('complete')
  complete,
}

@TypeConverters([
  PostalServiceTypeConverter,
  DateTimeConverter,
  TrackingResponseStatusConverter,
  NullableTrackingErrorTypeConverter,
  TrackingIdConverter,
])
@Entity(
  foreignKeys: [
    ForeignKey(
      entity: TrackingInfo,
      childColumns: ['trackingId'],
      parentColumns: ['id'],
      onDelete: ForeignKeyAction.cascade,
    ),
  ],
)
class TrackingResponseInfo extends Equatable {
  @PrimaryKey(autoGenerate: true)
  final int? id;

  final String trackNumber;

  final TrackingId trackingId;

  final PostalServiceType serviceType;

  final TrackingResponseStatus status;

  final DateTime dateTime;

  @ignore
  final TrackingError? error;

  // TODO: remove it; wait for @Embedded
  TrackingResponseInfo({
    this.id,
    required this.trackNumber,
    required this.trackingId,
    required this.dateTime,
    required this.serviceType,
    required this.status,
    // ignore: non_constant_identifier_names
    this.errorType_,
    // ignore: non_constant_identifier_names
    required this.errorIsRetryable_,
    // ignore: non_constant_identifier_names
    this.errorMessage_,
    // ignore: non_constant_identifier_names
    this.errorCode_,
    // ignore: non_constant_identifier_names
    this.errorStackTrace_,
  }) : error = errorType_ == null
            ? null
            : TrackingError(
                type: errorType_,
                isRetryable: errorIsRetryable_,
                message: errorMessage_,
                code: errorCode_,
                stackTrace: errorStackTrace_,
              );

  @ignore
  TrackingResponseInfo.from({
    this.id,
    required this.trackNumber,
    required this.trackingId,
    required this.dateTime,
    required this.serviceType,
    required this.status,
    this.error,
  })  : errorType_ = error?.type,
        errorIsRetryable_ = error?.isRetryable ?? false,
        errorMessage_ = error?.message,
        errorCode_ = error?.code,
        errorStackTrace_ = error?.stackTrace;

  @override
  List<Object?> get props => [
        id,
        trackNumber,
        trackingId,
        dateTime,
        serviceType,
        status,
        error,
      ];

  @override
  bool get stringify => true;

  // TODO: remove it; wait for @Embedded
  //===================================================

  @ColumnInfo(name: 'error_type')
  // ignore: non_constant_identifier_names
  final TrackingErrorType? errorType_;

  @ColumnInfo(name: 'error_isRetryable')
  // ignore: non_constant_identifier_names
  final bool errorIsRetryable_;

  @ColumnInfo(name: 'error_message')
  // ignore: non_constant_identifier_names
  final String? errorMessage_;

  @ColumnInfo(name: 'error_code')
  // ignore: non_constant_identifier_names
  final String? errorCode_;

  @ColumnInfo(name: 'error_stackTrace')
  // ignore: non_constant_identifier_names
  final String? errorStackTrace_;
}

enum TrackingResponseStatus {
  @JsonValue('success')
  success,

  @JsonValue('fail')
  fail,

  @JsonValue('noInfo')
  noInfo,

  @JsonValue('trackingStopped')
  trackingStopped,
}

enum TrackingErrorType {
  @JsonValue('unknown')
  unknown,

  @JsonValue('network')
  network,

  @JsonValue('service')
  service,

  @JsonValue('auth')
  auth,

  @JsonValue('invalidTrackNumber')
  invalidTrackNumber,

  @JsonValue('missingAuthData')
  missingAuthData,

  @JsonValue('missingTrackingService')
  missingTrackingService,
}

@freezed
class TrackingError with _$TrackingError {
  const factory TrackingError({
    required TrackingErrorType type,
    required bool isRetryable,
    String? message,
    String? code,
    String? stackTrace,
  }) = _TrackingError;

  factory TrackingError.fromJson(Map<String, dynamic> json) =>
      _$TrackingErrorFromJson(json);
}
