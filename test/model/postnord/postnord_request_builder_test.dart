// Copyright (C) 2024 Yaroslav Pronin <proninyaroslav@mail.ru>
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
import 'package:libretrack/core/model/request_builder.dart';
import 'package:libretrack/core/model/tracking_service/postnord/postnord_request_builder.dart';
import 'package:libretrack/core/model/tracking_service/postnord/postnord_service_info.dart';
import 'package:libretrack/core/model/type/type.dart';
import 'package:uuid/uuid.dart';

void main() {
  group('PostNord request builder |', () {
    const trackService = TrackNumberService(
      trackNumber: '123',
      serviceType: PostalServiceType.postNord,
    );
    final postNordAuthData = PostNordAuthData.from(
      const AuthData({
        'apiKey': 'test',
      }),
    );
    final builder = DevPostNordRequestBuilder(postNordAuthData);

    test('Build request', () {
      final transactionId = TransactionId(const Uuid().v4());
      final expectedUrl = Uri.https('api2.postnord.com',
          '/rest/shipment/v5/trackandtrace/findByIdentifier.json', {
        'apikey': postNordAuthData.apiKey,
        'id': trackService.trackNumber,
        'locale': PostNordLocale.defaultLocale,
      });
      final expectedHeaders = {
        'Content-Type': 'application/json',
        'X-External-Request-ID': transactionId.toJson(),
      };

      final r = builder.build(
        transactionId: transactionId,
        trackService: trackService,
      );

      expect(r.transactionId, isNotNull);
      expect(r.url, expectedUrl);
      expect(r.headers, expectedHeaders);
      expect(r.method, RequestMethod.get);
    });

    test('Production and integration url variants', () {
      final testBuilder = DevPostNordRequestBuilder(postNordAuthData);
      final prodBuilder = PostNordRequestBuilder(postNordAuthData);
      final expectedUrl = Uri.https('api2.postnord.com',
          '/rest/shipment/v5/trackandtrace/findByIdentifier.json', {
        'apikey': postNordAuthData.apiKey,
        'id': trackService.trackNumber,
        'locale': PostNordLocale.defaultLocale,
      });

      var request = testBuilder.build(
        transactionId: TransactionId(const Uuid().v4()),
        trackService: trackService,
      );
      expect(request.url, expectedUrl);
      request = prodBuilder.build(
        transactionId: TransactionId(const Uuid().v4()),
        trackService: trackService,
      );
      expect(request.url, expectedUrl);
    });

    test('Locale', () {
      final r = builder.build(
        transactionId: TransactionId(const Uuid().v4()),
        trackService: trackService,
        locale: const Locale('sv', ''),
      );
      expect(r.url.queryParameters['locale'], 'sv');
    });
  });
}
