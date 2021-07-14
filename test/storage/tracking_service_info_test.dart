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

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/platform_info.dart';
import 'package:libretrack/core/storage/database.dart';
import 'package:libretrack/core/storage/service_auth_storage.dart';
import 'package:libretrack/core/storage/service_repository.dart';
import 'package:libretrack/core/storage/storage_result.dart';

void main() {
  group('Tracking service info storage |', () {
    late ServiceRepository repo;
    late AppDatabase db;
    late FlutterSecureStorage secureStorage;
    late PlatformInfo platformInfo;

    setUp(() async {
      db = await $FloorAppDatabase.inMemoryDatabaseBuilder().build();
      secureStorage = TestFlutterSecureStorage();
      platformInfo = PlatformInfoImpl();
      repo = ServiceRepositoryImpl(
        db,
        ServiceAuthStorageImpl(
          db,
          secureStorage,
          platformInfo,
        ),
      );
    });

    tearDown(() {
      db.close();
    });

    test('Add', () async {
      const expectedInfo = TrackingServiceInfo(
        type: TrackingServiceType.ups,
      );
      const expectedAuthData = AuthData({
        'accessLicenseNumber': '12345',
        'username': 'username',
        'password': 'password',
      });
      expect(
        await repo.getServiceByType(expectedInfo.type),
        const StorageResult<TrackingServiceInfo?>(null),
      );

      expect(
        await repo.addService(info: expectedInfo, authData: expectedAuthData),
        StorageResult.empty,
      );
      expect(
        await repo.getServiceByType(expectedInfo.type),
        const StorageResult<TrackingServiceInfo?>(expectedInfo),
      );
      expect(
        await repo.getAuthDataByType(expectedInfo.type),
        const StorageResult<AuthData?>(expectedAuthData),
      );
    });

    test('Remove', () async {
      const info = TrackingServiceInfo(
        type: TrackingServiceType.ups,
      );
      const authData = AuthData({
        'accessLicenseNumber': '12345',
        'username': 'username',
        'password': 'password',
      });
      expect(
        await repo.addService(info: info, authData: authData),
        StorageResult.empty,
      );
      expect(
        await repo.getServiceByType(TrackingServiceType.ups),
        const StorageResult<TrackingServiceInfo?>(info),
      );
      expect(
        await repo.getAuthDataByType(TrackingServiceType.ups),
        const StorageResult<AuthData?>(authData),
      );

      expect(await repo.deleteService(info), StorageResult.empty);
      expect(
        await repo.getServiceByType(TrackingServiceType.ups),
        const StorageResult<TrackingServiceInfo?>(null),
      );
      expect(
        await repo.getAuthDataByType(TrackingServiceType.ups),
        const StorageResult<AuthData?>(null),
      );
    });

    test('Update', () async {
      const info = TrackingServiceInfo(
        type: TrackingServiceType.ups,
      );
      var authData = const AuthData({
        'accessLicenseNumber': '12345',
        'username': 'username',
        'password': 'password',
      });
      expect(
        await repo.addService(info: info, authData: authData),
        StorageResult.empty,
      );
      expect(
        await repo.getServiceByType(TrackingServiceType.ups),
        const StorageResult<TrackingServiceInfo?>(info),
      );
      expect(
        await repo.getAuthDataByType(TrackingServiceType.ups),
        StorageResult<AuthData?>(authData),
      );

      authData = AuthData({
        ...authData,
        'accessLicenseNumber': 'abc',
      });

      expect(
        await repo.updateAuthData(type: info.type, authData: authData),
        StorageResult.empty,
      );
      expect(
        await repo.getAuthDataByType(TrackingServiceType.ups),
        StorageResult<AuthData?>(authData),
      );
    });

    test('Get by types list', () async {
      const expectedInfo = TrackingServiceInfo(
        type: TrackingServiceType.ups,
      );
      expect(
        await repo.addService(
          info: expectedInfo,
          authData: const AuthData.empty(),
        ),
        StorageResult.empty,
      );

      expect(
        await repo.getServicesByType([TrackingServiceType.ups]),
        const StorageResult([expectedInfo]),
      );
    });

    test('Get high priority service', () async {
      const expectedInfo = TrackingServiceInfo(
        type: TrackingServiceType.ups,
      );

      expect(
        await repo.addService(
          info: expectedInfo,
          authData: const AuthData.empty(),
        ),
        StorageResult.empty,
      );
      expect(
        await repo.addService(
          info: const TrackingServiceInfo(
            type: TrackingServiceType.russianPost,
          ),
          authData: const AuthData.empty(),
        ),
        StorageResult.empty,
      );
      expect(
        await repo.getHighPriorityService(PostalServiceType.ups),
        const StorageResult<TrackingServiceInfo?>(expectedInfo),
      );
    });
  });
}
