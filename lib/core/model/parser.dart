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

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:libretrack/core/entity/entity.dart';

import 'service_response.dart';

part 'parser.freezed.dart';

abstract class Parser {
  ParseResult parse(ServiceResponse response);
}

@freezed
class ParseResult with _$ParseResult {
  const factory ParseResult({
    required ShipmentInfo info,
    required List<ShipmentActivityInfo> activity,
    List<String>? alternateTracks,
  }) = ParseResultData;

  const factory ParseResult.noInfo() = ParseResultNoInfo;

  const factory ParseResult.error(ParseError error) = ParseResultError;
}

@freezed
class ParseError with _$ParseError {
  const factory ParseError.format(String message) = ParseErrorFormat;

  const factory ParseError.serviceTemporary({
    String? code,
    String? message,
  }) = ParseErrorServiceTemporary;

  const factory ParseError.serviceHard({
    String? code,
    String? message,
  }) = ParseErrorServiceHard;

  const factory ParseError.auth({
    String? code,
    String? message,
  }) = ParseErrorAuth;

  const factory ParseError.badRequest({
    String? code,
    String? message,
  }) = ParseErrorBadRequest;

  const factory ParseError.invalidTrackNumber() = ParseErrorInvalidTrackNumber;
}
