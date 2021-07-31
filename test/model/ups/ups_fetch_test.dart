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

import 'package:flutter_test/flutter_test.dart';
import 'package:libretrack/core/date_time_provider.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/model/fetcher.dart';
import 'package:libretrack/core/model/http/http_client.dart';
import 'package:libretrack/core/model/http/http_client_factory.dart';
import 'package:libretrack/core/model/request_builder.dart';
import 'package:libretrack/core/model/service_response.dart';
import 'package:mocktail/mocktail.dart';
import 'package:uuid/uuid.dart';

import '../../mock/mock.dart';

void main() {
  group('UPS API through Fetcher |', () {
    late Fetcher fetcher;
    late HttpClientFactory mockClientFactory;
    late HttpClient mockClient;
    late DateTimeProvider mockDateTimeProvider;

    setUpAll(() async {
      mockClientFactory = MockHttpClientFactory();
      mockDateTimeProvider = MockDateTimeProvider();
      mockClient = MockHttpClient();
      fetcher = FetcherImpl(mockClientFactory, mockDateTimeProvider);

      when(() => mockDateTimeProvider.now()).thenReturn(DateTime(2021));
      when(() => mockClientFactory.create()).thenReturn(mockClient);
    });

    test('Fetch track info', () async {
      final request = ServiceRequest(
        transactionId: TransactionId(const Uuid().v4()),
        url: Uri.parse('https://example.org'),
        method: RequestMethod.post,
      );
      final expectedResponse = ServiceResponse(
        transactionId: request.transactionId,
        statusCode: 200,
        payload: 'body',
      );

      when(
        () => mockClient.send(request),
      ).thenAnswer(
        (_) async => HttpResponse.success(body: expectedResponse.payload),
      );

      final result = await fetcher.fetch([request]).first;
      result.when(
        (response) => expect(response, expectedResponse),
        error: (request, e) => throw {request: e},
      );
    });
  });
}
