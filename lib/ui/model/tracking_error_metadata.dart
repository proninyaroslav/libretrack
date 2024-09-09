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

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:libretrack/core/entity/tracking_info.dart';
import 'package:libretrack/locale.dart';

part 'tracking_error_metadata.freezed.dart';

@freezed
class TrackingErrorMetadata with _$TrackingErrorMetadata {
  static const defaultIcon = '⛔';

  const factory TrackingErrorMetadata({
    required TrackingError error,
    required String localizedMessage,
    required bool isReportable,
  }) = _TrackingErrorMetadata;
}

class TrackingErrorMetadataMapper {
  static TrackingErrorMetadata of(
    BuildContext context,
    TrackingError error,
  ) {
    switch (error.type) {
      case TrackingErrorType.unknown:
        return TrackingErrorMetadata(
          error: error,
          localizedMessage: S.of(context).trackingErrorUnknown,
          isReportable: true,
        );
      case TrackingErrorType.network:
        return TrackingErrorMetadata(
          error: error,
          localizedMessage: S.of(context).trackingErrorNetwork,
          isReportable: false,
        );
      case TrackingErrorType.service:
        return TrackingErrorMetadata(
          error: error,
          localizedMessage: S.of(context).trackingErrorService,
          isReportable: false,
        );
      case TrackingErrorType.auth:
        return TrackingErrorMetadata(
          error: error,
          localizedMessage: S.of(context).trackingErrorAuth,
          isReportable: false,
        );
      case TrackingErrorType.missingAuthData:
        return TrackingErrorMetadata(
          error: error,
          localizedMessage: S.of(context).trackingErrorMissingAuthData,
          isReportable: false,
        );
      case TrackingErrorType.missingTrackingService:
        return TrackingErrorMetadata(
          error: error,
          localizedMessage: S.of(context).trackingErrorMissingAccount,
          isReportable: false,
        );
      case TrackingErrorType.invalidTrackNumber:
        return TrackingErrorMetadata(
          error: error,
          localizedMessage: S.of(context).trackingErrorInvalidTrackNumber,
          isReportable: false,
        );
    }
  }
}
