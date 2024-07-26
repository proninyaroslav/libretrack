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
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/model/http/http_client.dart';
import 'package:libretrack/core/model/request_builder.dart';
import 'package:mocktail/mocktail.dart';
import 'package:uuid/uuid.dart';
import 'package:http/http.dart' as http;

import '../mock/mock.dart';

void main() {
  group('HTTP client implementation |', () {
    late HttpClient httpClient;
    late http.Client mockClient;

    TransactionId makeTransactionId() {
      return TransactionId(const Uuid().v4());
    }

    setUpAll(() {
      mockClient = MockClient();
      httpClient = HttpClientImpl(mockClient);
    });

    test('GET method', () async {
      const expectedBody = 'body';
      final request = ServiceRequest(
        transactionId: makeTransactionId(),
        url: Uri.parse('https://example.org'),
        method: RequestMethod.get,
      );

      when(
        () => mockClient.get(
          request.url,
          headers: request.headers,
        ),
      ).thenAnswer(
        (_) async => http.Response(expectedBody, 200),
      );

      final response = await httpClient.send(request);
      response.when(
        success: (body) => expect(body, expectedBody),
        httpError: (statusCode, body) => fail(
          'HTTP code: $statusCode\n\n$body',
        ),
        exception: (e, stackTrace) => throw [e, stackTrace],
      );
    });

    test('POST method', () async {
      const expectedBody = 'body';
      final request = ServiceRequest(
        transactionId: makeTransactionId(),
        url: Uri.parse('https://example.org'),
        method: RequestMethod.post,
        body: jsonEncode({
          'title': 'foo',
          'body': 'bar',
        }),
        headers: const {
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      when(
        () => mockClient.post(
          request.url,
          headers: request.headers,
          body: request.body,
        ),
      ).thenAnswer(
        (_) async => http.Response(expectedBody, 200),
      );

      final response = await httpClient.send(request);
      response.when(
        success: (body) => expect(body, expectedBody),
        httpError: (statusCode, body) => fail(
          'HTTP code: $statusCode\n\n$body',
        ),
        exception: (e, stackTrace) => throw [e, stackTrace],
      );
    });

    test('PUT method', () async {
      const expectedBody = 'body';
      final request = ServiceRequest(
        transactionId: makeTransactionId(),
        url: Uri.parse('https://example.org'),
        method: RequestMethod.put,
        body: jsonEncode({
          'title': 'foo',
          'body': 'bar',
        }),
        headers: const {
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      when(
        () => mockClient.put(
          request.url,
          headers: request.headers,
          body: request.body,
        ),
      ).thenAnswer(
        (_) async => http.Response(expectedBody, 200),
      );

      final response = await httpClient.send(request);
      response.when(
        success: (body) => expect(body, expectedBody),
        httpError: (statusCode, body) => fail(
          'HTTP code: $statusCode\n\n$body',
        ),
        exception: (e, stackTrace) => throw [e, stackTrace],
      );
    });

    test('PATCH method', () async {
      const expectedBody = 'body';
      final request = ServiceRequest(
        transactionId: makeTransactionId(),
        url: Uri.parse('https://example.org'),
        method: RequestMethod.patch,
        body: jsonEncode({
          'title': 'foo',
          'body': 'bar',
        }),
        headers: const {
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      when(
        () => mockClient.patch(
          request.url,
          headers: request.headers,
          body: request.body,
        ),
      ).thenAnswer(
        (_) async => http.Response(expectedBody, 200),
      );

      final response = await httpClient.send(request);
      response.when(
        success: (body) => expect(body, expectedBody),
        httpError: (statusCode, body) => fail(
          'HTTP code: $statusCode\n\n$body',
        ),
        exception: (e, stackTrace) => throw [e, stackTrace],
      );
    });

    test('Invalid request URL', () async {
      final request = ServiceRequest(
        transactionId: makeTransactionId(),
        url: Uri.parse('http://http.get'),
        method: RequestMethod.get,
      );

      when(
        () => mockClient.get(
          request.url,
          headers: request.headers,
        ),
      ).thenAnswer(
        (_) async => throw const SocketException('test'),
      );

      final response = await httpClient.send(request);
      response.maybeWhen(
        exception: (e, stackTrace) => expect(e is SocketException, isTrue),
        orElse: () => throw response,
      );
    });

    test('HTTP error', () async {
      const expectedBody = 'body';
      final request = ServiceRequest(
        transactionId: makeTransactionId(),
        url: Uri.parse('https://example.org'),
        method: RequestMethod.get,
      );

      when(
        () => mockClient.get(
          request.url,
          headers: request.headers,
        ),
      ).thenAnswer(
        (_) async => http.Response(expectedBody, 500),
      );

      final response = await httpClient.send(request);
      response.when(
        success: (body) => fail(
          'HTTP code: 200\n\n$body',
        ),
        httpError: (statusCode, body) {
          expect(body, expectedBody);
          expect(statusCode, 500);
        },
        exception: (e, stackTrace) => throw [e, stackTrace],
      );
    });
  });
}
