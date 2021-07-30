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
  group('Russian Post auth data |', () {
    test('Build', () {
      const authData = AuthData({
        'login': 'foo',
        'password': 'bar',
      });
      final rpAuthData = RussianPostAuthData.from(authData);
      expect(rpAuthData.login, authData['login']);
      expect(rpAuthData.password, authData['password']);
    });
  });

  group('Russian Post service info |', () {
    const rpData = RussianPostAuthData(
      login: 'foo',
      password: 'bar',
    );

    test('Build service info', () {
      final authData = rpData.toAuthData();
      expect(authData['login'], rpData.login);
      expect(authData['password'], rpData.password);
    });
  });

  group('Russian Post postal service type |', () {
    test('Get postal service type', () {
      expect(
        TrackingServiceType.russianPost.getSupportedPostalServices(),
        {PostalServiceType.russianPost},
      );
    });
  });
}
