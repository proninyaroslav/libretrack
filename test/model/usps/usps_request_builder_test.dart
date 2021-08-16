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
import 'package:libretrack/core/model/request_builder.dart';
import 'package:libretrack/core/model/tracking_service/usps/usps_request_builder.dart';
import 'package:libretrack/core/model/tracking_service/usps/usps_service_info.dart';
import 'package:uuid/uuid.dart';

void main() {
  group('USPS request builder |', () {
    const trackService = TrackNumberService(
      trackNumber: '123',
      serviceType: PostalServiceType.usps,
    );
    final rpAuthData = USPSAuthData.from(
      const AuthData({
        'username': 'foo',
        'companyName': 'Free Software',
      }),
    );
    final builder = USPSRequestBuilder(rpAuthData);

    test('Build request', () {
      final expectedUrl = Uri(
        scheme: 'https',
        host: 'secure.shippingapis.com',
        path: 'ShippingAPI.dll',
        queryParameters: {
          'API': 'TrackV2',
          'XML': '<TrackFieldRequest USERID="${rpAuthData.username}">'
              '<Revision>1</Revision>'
              '<ClientIp>127.0.0.1</ClientIp>'
              '<SourceId>${rpAuthData.companyName}</SourceId>'
              '<TrackID ID="${trackService.trackNumber}"/>'
              '</TrackFieldRequest>',
        },
      );
      final r = builder.build(
        transactionId: TransactionId(const Uuid().v4()),
        trackService: trackService,
      );
      expect(r.transactionId, isNotNull);
      expect(r.url, expectedUrl);
      expect(r.method, RequestMethod.get);
    });
  });
}
