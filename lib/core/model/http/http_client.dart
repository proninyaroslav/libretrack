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
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:libretrack/core/model/request_builder.dart';

part 'http_client.freezed.dart';

abstract class HttpClient {
  Future<HttpResponse> send(ServiceRequest request);

  void close();
}

@freezed
class HttpResponse with _$HttpResponse {
  const factory HttpResponse.success({
    required String body,
  }) = HttpResponseSuccess;

  const factory HttpResponse.httpError({
    required int statusCode,
    required String body,
  }) = HttpResponseError;

  const factory HttpResponse.exception(
    Exception e, {
    StackTrace? stackTrace,
  }) = HttpResponseException;
}

@Injectable(as: HttpClient)
class HttpClientImpl implements HttpClient {
  final http.Client _client;

  HttpClientImpl(this._client);

  @override
  Future<HttpResponse> send(ServiceRequest request) async {
    try {
      final response = await _send(request);
      if (response.statusCode >= 400) {
        return HttpResponse.httpError(
          statusCode: response.statusCode,
          body: response.body,
        );
      } else {
        return HttpResponse.success(body: response.body);
      }
    } on Exception catch (e, stackTrace) {
      return HttpResponse.exception(e, stackTrace: stackTrace);
    }
  }

  Future<http.Response> _send(ServiceRequest request) {
    switch (request.method) {
      case RequestMethod.post:
        return _client.post(
          request.url,
          headers: request.headers,
          body: request.body,
        );
      case RequestMethod.get:
        return _client.get(
          request.url,
          headers: request.headers,
        );
      case RequestMethod.delete:
        return _client.delete(
          request.url,
          headers: request.headers,
        );
      case RequestMethod.put:
        return _client.put(
          request.url,
          headers: request.headers,
          body: request.body,
        );
      case RequestMethod.patch:
        return _client.patch(
          request.url,
          headers: request.headers,
          body: request.body,
        );
    }
  }

  @override
  void close() => _client.close();
}

@module
abstract class ClientModule {
  @injectable
  http.Client get client => http.Client();
}
