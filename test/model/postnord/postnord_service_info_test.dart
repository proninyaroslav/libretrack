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
import 'package:libretrack/core/model/tracking_service/postnord/postnord_service_info.dart';

void main() {
  group('PostNord auth data |', () {
    test('Build', () {
      const authData = AuthData({
        'apiKey': 'test',
      });
      final upsAuthData = PostNordAuthData.from(authData);
      expect(
        upsAuthData.apiKey,
        authData['apiKey'],
      );
    });
  });

  group('UPS service info |', () {
    const upsAuthData = PostNordAuthData(
      apiKey: 'test',
    );

    test('Build service info', () {
      final authData = upsAuthData.toAuthData();
      expect(
        authData['apiKey'],
        upsAuthData.apiKey,
      );
    });
  });

  group('PostNord postal service type |', () {
    test('Get postal service type', () {
      expect(
        TrackingServiceType.postNord.getSupportedPostalServices(),
        {PostalServiceType.postNord},
      );
    });
  });
}
