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
import 'package:libretrack/core/model/parser.dart';
import 'package:libretrack/core/model/parser_factory.dart';
import 'package:libretrack/core/model/request_builder.dart';
import 'package:libretrack/core/model/request_factory.dart';
import 'package:libretrack/core/model/service_response.dart';
import 'package:libretrack/core/model/tracking_service.dart';
import 'package:libretrack/core/model/type/type.dart';
import 'package:mocktail/mocktail.dart';
import 'package:quiver/iterables.dart';

import '../mock/mock.dart';

void main() {
  group('Tracking service |', () {
    late RequestFactory mockRequestFactory;
    late RequestBuilder mockRequestBuilder;
    late Fetcher mockFetcher;
    late ParserFactory mockParserFactory;
    late Parser mockParser;
    late TrackingService trackingService;

    setUpAll(() async {
      registerFallbackValue(FakeTrackingServiceInfo());
      registerFallbackValue(FakeAuthData());
    });

    setUp(() {
      mockRequestFactory = MockRequestFactory();
      mockRequestBuilder = MockRequestBuilder();
      when(() => mockRequestFactory.builderOf(
            info: any(named: 'info'),
            authData: any(named: 'authData'),
          )).thenReturn(mockRequestBuilder);
      mockFetcher = MockFetcher();
      mockParserFactory = MockParserFactory();
      mockParser = MockParser();
      when(() => mockParserFactory.parserOf(any())).thenReturn(mockParser);

      trackingService = TrackingServiceImpl(
        mockRequestFactory,
        mockFetcher,
        mockParserFactory,
      );
    });

    test('Multiple tracking requests', () async {
      const serviceInfo = TrackingServiceInfo(
        type: TrackingServiceType.ups,
      );
      final requestList = <TrackingRequest>[];
      final serviceRequestList = <ServiceRequest>[];
      final serviceResponseList = <ServiceResponse>[];
      for (final i in range(1, 6)) {
        final id = TransactionId('$i');
        final trackService = TrackNumberService(
          trackNumber: (i as int).isEven ? '$i' : '${i - 1}',
          serviceType:
              i.isEven ? PostalServiceType.ups : PostalServiceType.russianPost,
        );

        final request = TrackingRequest(
          id: id,
          trackService: trackService,
          serviceInfo: serviceInfo,
          authData: const AuthData.empty(),
          locale: const Locale('ru', 'RU'),
        );
        requestList.add(request);

        final serviceRequest = ServiceRequest(
          transactionId: id,
          url: Uri(host: 'test'),
          method: RequestMethod.post,
          body: '$i',
        );
        serviceRequestList.add(serviceRequest);

        final serviceResponse = ServiceResponse(
          transactionId: serviceRequest.transactionId,
          statusCode: 200,
          payload: serviceRequest.body!,
        );
        serviceResponseList.add(serviceResponse);

        when(() => mockRequestBuilder.build(
              transactionId: id,
              trackService: trackService,
              locale: const Locale('ru', 'RU'),
            )).thenReturn(serviceRequest);

        when(
          () => mockParser.parse(
            serviceResponse,
            locale: const Locale('ru', 'RU'),
          ),
        ).thenReturn(
          ParseResult(
            info: ShipmentInfo.from(
              trackNumber: trackService.trackNumber,
              serviceType: trackService.serviceType,
            ),
            activity: [
              ShipmentActivityInfo.from(
                trackNumber: trackService.trackNumber,
                serviceType: trackService.serviceType,
                statusType: ShipmentStatusType.delivered,
              ),
            ],
          ),
        );
      }
      when(() => mockFetcher.fetch(serviceRequestList)).thenAnswer(
        (_) => Stream.fromIterable(
          serviceResponseList.map(
            (response) => FetchResult(response),
          ),
        ),
      );

      final resultList = await trackingService.fetch(requestList);
      for (final result in resultList) {
        result.when(
          (request, info, activity, alternateTracks) {
            final expectedRequest = requestList.firstWhere((r) => request == r);
            expect(request, expectedRequest);
            expect(info.trackNumber, expectedRequest.trackService.trackNumber);
            expect(info.serviceType, expectedRequest.trackService.serviceType);
            expect(
              activity[0].trackNumber,
              expectedRequest.trackService.trackNumber,
            );
            expect(activity[0].serviceType,
                expectedRequest.trackService.serviceType);
            expect(activity[0].statusType, ShipmentStatusType.delivered);
          },
          noInfo: (request) => throw result,
          error: (request, e, isRetryable) => throw e,
        );
      }
    });

    test('Service returned different track number', () async {
      const serviceInfo = TrackingServiceInfo(
        type: TrackingServiceType.ups,
      );
      const id = TransactionId('1');
      const trackService = TrackNumberService(
        trackNumber: '123',
        serviceType: PostalServiceType.ups,
      );
      const expectedRequest = TrackingRequest(
        id: id,
        trackService: trackService,
        serviceInfo: serviceInfo,
        authData: AuthData.empty(),
      );
      final serviceRequest = ServiceRequest(
        transactionId: id,
        url: Uri(host: 'test'),
        method: RequestMethod.post,
        body: '321',
      );
      final serviceResponse = ServiceResponse(
        transactionId: serviceRequest.transactionId,
        statusCode: 200,
        payload: serviceRequest.body!,
      );
      when(() => mockRequestBuilder.build(
            transactionId: id,
            trackService: trackService,
          )).thenReturn(serviceRequest);

      when(() => mockParser.parse(serviceResponse)).thenReturn(
        ParseResult(
          info: ShipmentInfo.from(
            trackNumber: serviceResponse.payload,
            serviceType: trackService.serviceType,
          ),
          activity: [
            ShipmentActivityInfo.from(
              trackNumber: serviceResponse.payload,
              serviceType: trackService.serviceType,
              statusType: ShipmentStatusType.delivered,
            ),
          ],
        ),
      );
      when(() => mockFetcher.fetch([serviceRequest])).thenAnswer(
        (_) => Stream.fromIterable([FetchResult(serviceResponse)]),
      );

      final resultList = await trackingService.fetch([expectedRequest]);
      for (final result in resultList) {
        result.when(
          (request, info, activity, alternateTracks) => throw result,
          noInfo: (request) => throw result,
          error: (request, e, isRetryable) {
            expect(e is TrackingServiceErrorParse, isTrue);
            expect(
              (e as TrackingServiceErrorParse).e is ParseErrorFormat,
              isTrue,
            );
          },
        );
      }
    });

    test('Service returned different track number (ignore case)', () async {
      const serviceInfo = TrackingServiceInfo(
        type: TrackingServiceType.ups,
      );
      const id = TransactionId('1');
      const trackService = TrackNumberService(
        trackNumber: 'ABC',
        serviceType: PostalServiceType.ups,
      );
      const expectedRequest = TrackingRequest(
        id: id,
        trackService: trackService,
        serviceInfo: serviceInfo,
        authData: AuthData.empty(),
      );
      final serviceRequest = ServiceRequest(
        transactionId: id,
        url: Uri(host: 'test'),
        method: RequestMethod.post,
        body: 'abc',
      );
      final serviceResponse = ServiceResponse(
        transactionId: serviceRequest.transactionId,
        statusCode: 200,
        payload: serviceRequest.body!,
      );
      when(() => mockRequestBuilder.build(
            transactionId: id,
            trackService: trackService,
          )).thenReturn(serviceRequest);

      when(() => mockParser.parse(serviceResponse)).thenReturn(
        ParseResult(
          info: ShipmentInfo.from(
            trackNumber: serviceResponse.payload,
            serviceType: trackService.serviceType,
          ),
          activity: [
            ShipmentActivityInfo.from(
              trackNumber: serviceResponse.payload,
              serviceType: trackService.serviceType,
              statusType: ShipmentStatusType.delivered,
            ),
          ],
        ),
      );
      when(() => mockFetcher.fetch([serviceRequest])).thenAnswer(
        (_) => Stream.fromIterable([FetchResult(serviceResponse)]),
      );

      final resultList = await trackingService.fetch([expectedRequest]);
      for (final result in resultList) {
        expect(result is TrackingServiceResultData, isTrue);
      }
    });
  });
}
