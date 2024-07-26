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
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/model/fetcher.dart';
import 'package:libretrack/core/model/http/http_client.dart';
import 'package:libretrack/core/model/http/http_client_factory.dart';
import 'package:libretrack/core/model/request_builder.dart';
import 'package:libretrack/core/model/service_response.dart';
import 'package:libretrack/env.dart';
import 'package:libretrack/injector.dart';
import 'package:mocktail/mocktail.dart';
import 'package:quiver/iterables.dart';

import '../mock/mock.dart';

void main() {
  group('Fetcher |', () {
    late Fetcher fetcher;
    late HttpClientFactory mockClientFactory;
    late HttpClient mockClient;

    setUpAll(() async {
      await initInjector(Env.test);
      getIt.allowReassignment = true;
    });

    setUp(() {
      mockClientFactory = MockHttpClientFactory();
      mockClient = MockHttpClient();
      when(() => mockClientFactory.create()).thenReturn(mockClient);

      getIt.registerSingleton<HttpClientFactory>(mockClientFactory);
      getIt.registerSingleton<HttpClient>(mockClient);
      fetcher = getIt<Fetcher>();
    });

    void initClient(
      HttpClient mockClient,
      Map<FetchResult, ServiceRequest> resultToRequest,
    ) {
      for (final entry in resultToRequest.entries) {
        when(() => mockClient.send(entry.value)).thenAnswer((_) async {
          return entry.key.when(
            (response) => HttpResponse.success(body: response.payload),
            error: (request, e) => e.when(
              (message) => HttpResponse.exception(Exception(message)),
              exception: (e, stackTrace) => HttpResponse.exception(
                e,
                stackTrace: stackTrace,
              ),
            ),
          );
        });
      }
    }

    test('Send single request to the single service', () async {
      final request = ServiceRequest(
        transactionId: const TransactionId('1'),
        url: Uri(host: 'test'),
        method: RequestMethod.post,
      );
      const response = HttpResponse.success(body: 'foo');
      when(() => mockClient.send(request)).thenAnswer((_) async => response);

      final result = await fetcher.fetch([request]).first;
      result.when(
        (response) {
          expect(response.transactionId, request.transactionId);
          expect(response.payload, 'foo');
        },
        error: (request, e) => throw {request: e},
      );
    });

    test('Send multiple requests to the single service', () async {
      final requestList = range(0, 3).map((i) {
        return ServiceRequest(
          transactionId: TransactionId('$i'),
          url: Uri(host: 'test'),
          method: RequestMethod.post,
        );
      }).toList();

      final resultToRequest = Map<FetchResult, ServiceRequest>.fromEntries(
        requestList.map(
          (r) => MapEntry(
            FetchResult(
              ServiceResponse(
                transactionId: r.transactionId,
                statusCode: 200,
                payload: 'foo${r.transactionId}',
              ),
            ),
            r,
          ),
        ),
      );
      initClient(mockClient, resultToRequest);

      await for (final result in fetcher.fetch(requestList)) {
        final request = resultToRequest[result];
        result.when(
          (response) {
            expect(response.transactionId, request!.transactionId);
            expect(response.payload, 'foo${request.transactionId}');
          },
          error: (request, e) => throw {request: e},
        );
      }
    });

    test('Send multiple requests to the multiple services', () async {
      final requestList = range(0, 3).expand((i) {
        return range(0, 3).map((j) {
          return ServiceRequest(
            transactionId: TransactionId('$i$j'),
            url: Uri(host: 'test$i'),
            method: RequestMethod.post,
          );
        });
      }).toList();

      final resultToRequest = Map<FetchResult, ServiceRequest>.fromEntries(
        requestList.map(
          (r) => MapEntry(
            FetchResult(
              ServiceResponse(
                transactionId: r.transactionId,
                statusCode: 200,
                payload: 'foo${r.transactionId}',
              ),
            ),
            r,
          ),
        ),
      );
      initClient(mockClient, resultToRequest);

      await for (final result in fetcher.fetch(requestList)) {
        final request = resultToRequest[result];
        result.when(
          (response) {
            expect(response.transactionId, request!.transactionId);
            expect(response.payload, 'foo${request.transactionId}');
          },
          error: (request, e) => throw {request: e},
        );
      }
    });

    test('Send multiple requests to the multiple services with errors',
        () async {
      final requestList = range(0, 3).expand((i) {
        return range(0, 3).map((j) {
          return ServiceRequest(
            transactionId: TransactionId('$i$j'),
            url: Uri(host: 'test$i'),
            method: RequestMethod.post,
          );
        });
      }).toList();

      final resultToRequest = Map<FetchResult, ServiceRequest>.fromEntries(
        enumerate(requestList).map(
          (v) {
            final request = v.value;
            if (v.index.isOdd) {
              return MapEntry(
                FetchResult(
                  ServiceResponse(
                    transactionId: request.transactionId,
                    statusCode: 200,
                    payload: 'foo${request.transactionId}',
                  ),
                ),
                request,
              );
            } else {
              return MapEntry(
                FetchResult.error(
                  request: request,
                  error: FetchError.exception(
                    Exception('error${request.transactionId}'),
                  ),
                ),
                request,
              );
            }
          },
        ),
      );
      initClient(mockClient, resultToRequest);

      await for (final result in fetcher.fetch(requestList)) {
        final request = resultToRequest[result];
        result.when(
          (response) {
            expect(response.transactionId, request!.transactionId);
            expect(response.payload, 'foo${request.transactionId}');
          },
          error: (r, e) {
            expect(r, request);
            e.when(
              (message) => expect(message, 'error${request!.transactionId}'),
              exception: (e, stackTrace) => expect(
                e.toString(),
                Exception('error${request!.transactionId}').toString(),
              ),
            );
          },
        );
      }
    });
  });
}
