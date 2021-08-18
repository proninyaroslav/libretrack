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
import 'package:libretrack/core/model/tracking_service/tracking_service.dart';

void main() {
  group('USPS auth data |', () {
    test('Build', () {
      const authData = AuthData({
        'username': 'foo',
        'companyName': 'Free Software',
      });
      final rpAuthData = USPSAuthData.from(authData);
      expect(rpAuthData.username, authData['username']);
      expect(rpAuthData.companyName, authData['companyName']);
    });
  });

  group('USPS service info |', () {
    const rpData = USPSAuthData(
      username: 'foo',
      companyName: 'Free Software',
    );

    test('Build service info', () {
      final authData = rpData.toAuthData();
      expect(authData['username'], rpData.username);
      expect(authData['companyName'], rpData.companyName);
    });
  });

  group('USPS postal service type |', () {
    test('Get postal service type', () {
      expect(
        TrackingServiceType.usps.getSupportedPostalServices(),
        {PostalServiceType.usps},
      );
    });
  });
}
