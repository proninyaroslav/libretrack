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

import 'package:flutter_test/flutter_test.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/model/request_builder.dart';
import 'package:libretrack/core/model/tracking_service/tracking_service.dart';
import 'package:libretrack/core/model/type/type.dart';
import 'package:uuid/uuid.dart';

void main() {
  group('UPS request builder |', () {
    const trackService = TrackNumberService(
      trackNumber: '123',
      serviceType: PostalServiceType.ups,
    );
    final upsAuthData = UPSAuthData.from(
      const AuthData({
        'Username': 'foo',
        'Password': 'bar',
        'AccessLicenseNumber': 'test',
      }),
    );
    final builder = DevUPSRequestBuilder(upsAuthData);

    test('Build request', () {
      final expectedUrl = Uri.parse('https://wwwcie.ups.com/json/Track');
      final expectedHeaders = {
        'Access-Control-Allow-Headers':
            'Origin, X-Requested-With, Content-Type, Accept',
        'Access-Control-Allow-Methods': 'POST',
        'Access-Control-Allow-Origin': '*',
        'Content-Type': 'application/json',
      };
      final Map<String, dynamic> expectedBody = {
        'UPSSecurity': {
          'UsernameToken': {
            'Username': upsAuthData.username,
            'Password': upsAuthData.password,
          },
          'ServiceAccessToken': {
            'AccessLicenseNumber': upsAuthData.accessLicenseNumber,
          }
        },
        'TrackRequest': {
          'Request': {
            'SubVersion': '1909',
            'RequestAction': 'Track',
            'RequestOption': 'activity',
            'TransactionReference': {
              'CustomerContext': '',
            },
          },
          'InquiryNumber': trackService.trackNumber,
        },
      };

      final r = builder.build(
        transactionId: TransactionId(const Uuid().v4()),
        trackService: trackService,
      );
      final trackRequest = expectedBody['TrackRequest'] as Map<String, dynamic>;
      final request = trackRequest['Request'] as Map<String, dynamic>;
      final transactionReference =
          request['TransactionReference'] as Map<String, dynamic>;
      transactionReference['CustomerContext'] = r.transactionId.toString();

      expect(r.transactionId, isNotNull);
      expect(r.url, expectedUrl);
      expect(r.headers, expectedHeaders);
      expect(jsonDecode(r.body!), expectedBody);
      expect(r.method, RequestMethod.post);
    });

    test('Production and integration url variants', () {
      final testBuilder = DevUPSRequestBuilder(upsAuthData);
      final prodBuilder = UPSRequestBuilder(upsAuthData);
      final expectedTestUrl = Uri.parse('https://wwwcie.ups.com/json/Track');
      final expectedProdUrl = Uri.parse(
        'https://onlinetools.ups.com/json/Track',
      );

      var request = testBuilder.build(
        transactionId: TransactionId(const Uuid().v4()),
        trackService: trackService,
      );
      expect(request.url, expectedTestUrl);
      request = prodBuilder.build(
        transactionId: TransactionId(const Uuid().v4()),
        trackService: trackService,
      );
      expect(request.url, expectedProdUrl);
    });

    test('Locale longer than 5 characters', () {
      final r = builder.build(
        transactionId: TransactionId(const Uuid().v4()),
        trackService: trackService,
        locale: const Locale('en', 'USS'),
      );
      final body = jsonDecode(r.body!) as Map<String, dynamic>;
      final trackRequest = body['TrackRequest'] as Map<String, dynamic>;
      expect(trackRequest['Locale'], isNull);
    });

    test('Locale', () {
      final r = builder.build(
        transactionId: TransactionId(const Uuid().v4()),
        trackService: trackService,
        locale: const Locale('ru', 'RU'),
      );
      final body = jsonDecode(r.body!) as Map<String, dynamic>;
      final trackRequest = body['TrackRequest'] as Map<String, dynamic>;
      expect(trackRequest['Locale'], 'ru_RU');
    });

    test('Locale shorter than 5 characters', () {
      final r = builder.build(
        transactionId: TransactionId(const Uuid().v4()),
        trackService: trackService,
        locale: const Locale('ru'),
      );
      final body = jsonDecode(r.body!) as Map<String, dynamic>;
      final trackRequest = body['TrackRequest'] as Map<String, dynamic>;
      expect(trackRequest['Locale'], isNull);
    });

    test('Empty country code in the locale', () {
      final r = builder.build(
        transactionId: TransactionId(const Uuid().v4()),
        trackService: trackService,
        locale: const Locale('ru', ''),
      );
      final body = jsonDecode(r.body!) as Map<String, dynamic>;
      final trackRequest = body['TrackRequest'] as Map<String, dynamic>;
      expect(trackRequest['Locale'], isNull);
    });
  });
}
