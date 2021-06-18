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

import 'type/type.dart';

part 'request_builder.freezed.dart';

abstract class RequestBuilder {
  ServiceRequest build({
    required TransactionId transactionId,
    required TrackNumberService trackService,
    Locale? locale,
  });
}

@freezed
class ServiceRequest with _$ServiceRequest {
  const factory ServiceRequest({
    required TransactionId transactionId,
    required Uri url,
    required RequestMethod method,
    String? body,
    @Default({}) Map<String, String> headers,
  }) = _ServiceRequest;
}

enum RequestMethod {
  @JsonValue('get')
  get,

  @JsonValue('post')
  post,

  @JsonValue('put')
  put,

  @JsonValue('delete')
  delete,

  @JsonValue('patch')
  patch,
}
