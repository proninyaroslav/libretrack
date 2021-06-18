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
import 'package:mocktail/mocktail.dart';

import '../mock/mock.dart';

void main() {
  group('Service auth storage (database version) |', () {
    late ServiceAuthStorage authStorage;
    late AppDatabase db;
    late FlutterSecureStorage secureStorage;
    late PlatformInfo platformInfo;

    setUp(() async {
      db = await $FloorAppDatabase.inMemoryDatabaseBuilder().build();
      secureStorage = _UnexpectedFlutterSecureStorage();

      platformInfo = MockPlatformInfo();
      when(() => platformInfo.isAndroid).thenReturn(false);
      when(() => platformInfo.isIOS).thenReturn(false);

      authStorage = ServiceAuthStorageImpl(db, secureStorage, platformInfo);
    });

    tearDown(() {
      db.close();
    });

    test('Insert', () async {
      const expectedData1 = AuthData({'foo': 'bar'});
      await authStorage.insert(
        type: TrackingServiceType.ups,
        authData: expectedData1,
      );
      expect(
        await authStorage.getByServiceType(TrackingServiceType.ups),
        expectedData1,
      );

      const expectedData2 = AuthData({'foo': 'bar', 'baz': 'bar'});
      await authStorage.insert(
        type: TrackingServiceType.ups,
        authData: const AuthData({'baz': 'bar'}),
      );
      expect(
        await authStorage.getByServiceType(TrackingServiceType.ups),
        expectedData2,
      );
    });

    test('Delete', () async {
      const expectedData = AuthData({'foo': 'bar'});
      await authStorage.insert(
        type: TrackingServiceType.ups,
        authData: expectedData,
      );
      expect(
        await authStorage.getByServiceType(TrackingServiceType.ups),
        expectedData,
      );

      await authStorage.deleteByServiceType(TrackingServiceType.ups);
      expect(
        await authStorage.getByServiceType(TrackingServiceType.ups),
        isNull,
      );
    });

    test('Replace', () async {
      const expectedData1 = AuthData({'foo': 'bar'});
      const expectedData2 = AuthData({'foo': 'baz'});
      await authStorage.insert(
        type: TrackingServiceType.ups,
        authData: expectedData1,
      );
      expect(
        await authStorage.getByServiceType(TrackingServiceType.ups),
        expectedData1,
      );

      await authStorage.insert(
        type: TrackingServiceType.ups,
        authData: expectedData2,
      );
      expect(
        await authStorage.getByServiceType(TrackingServiceType.ups),
        expectedData2,
      );
    });
  });

  group('Service auth storage (secure storage version) |', () {
    late ServiceAuthStorage authStorage;
    late AppDatabase db;
    late FlutterSecureStorage secureStorage;
    late PlatformInfo platformInfo;

    setUp(() async {
      db = MockAppDatabase();
      when(() => db.serviceAuthDao).thenAnswer((_) =>
          throw 'Unexpected access to the database instead of secure storage');
      secureStorage = TestFlutterSecureStorage();

      platformInfo = MockPlatformInfo();
      when(() => platformInfo.isAndroid).thenReturn(true);
      when(() => platformInfo.isIOS).thenReturn(true);

      authStorage = ServiceAuthStorageImpl(db, secureStorage, platformInfo);
    });

    test('Insert', () async {
      const expectedData1 = AuthData({'foo': 'bar'});
      await authStorage.insert(
        type: TrackingServiceType.ups,
        authData: expectedData1,
      );
      expect(
        await authStorage.getByServiceType(TrackingServiceType.ups),
        expectedData1,
      );

      const expectedData2 = AuthData({'foo': 'bar', 'baz': 'bar'});
      await authStorage.insert(
        type: TrackingServiceType.ups,
        authData: const AuthData({'baz': 'bar'}),
      );
      expect(
        await authStorage.getByServiceType(TrackingServiceType.ups),
        expectedData2,
      );
    });

    test('Delete', () async {
      const expectedData = AuthData({'foo': 'bar'});
      await authStorage.insert(
        type: TrackingServiceType.ups,
        authData: expectedData,
      );
      expect(
        await authStorage.getByServiceType(TrackingServiceType.ups),
        expectedData,
      );

      await authStorage.deleteByServiceType(TrackingServiceType.ups);
      expect(
        await authStorage.getByServiceType(TrackingServiceType.ups),
        isNull,
      );
    });

    test('Replace', () async {
      const expectedData1 = AuthData({'foo': 'bar'});
      const expectedData2 = AuthData({'foo': 'baz'});
      await authStorage.insert(
        type: TrackingServiceType.ups,
        authData: expectedData1,
      );
      expect(
        await authStorage.getByServiceType(TrackingServiceType.ups),
        expectedData1,
      );

      await authStorage.insert(
        type: TrackingServiceType.ups,
        authData: expectedData2,
      );
      expect(
        await authStorage.getByServiceType(TrackingServiceType.ups),
        expectedData2,
      );
    });
  });
}

class _UnexpectedFlutterSecureStorage implements FlutterSecureStorage {
  static const message =
      'Unexpected access to the secure storage instead of database';

  @override
  Future<bool> containsKey({
    required String key,
    IOSOptions? iOptions = IOSOptions.defaultOptions,
    AndroidOptions? aOptions,
    LinuxOptions? lOptions,
  }) {
    throw message;
  }

  @override
  Future<void> delete({
    required String key,
    IOSOptions? iOptions = IOSOptions.defaultOptions,
    AndroidOptions? aOptions,
    LinuxOptions? lOptions,
  }) {
    throw message;
  }

  @override
  Future<void> deleteAll({
    IOSOptions? iOptions = IOSOptions.defaultOptions,
    AndroidOptions? aOptions,
    LinuxOptions? lOptions,
  }) {
    throw message;
  }

  @override
  Future<String?> read({
    required String key,
    IOSOptions? iOptions = IOSOptions.defaultOptions,
    AndroidOptions? aOptions,
    LinuxOptions? lOptions,
  }) {
    throw message;
  }

  @override
  Future<Map<String, String>> readAll({
    IOSOptions? iOptions = IOSOptions.defaultOptions,
    AndroidOptions? aOptions,
    LinuxOptions? lOptions,
  }) {
    throw message;
  }

  @override
  Future<void> write({
    required String key,
    required String? value,
    IOSOptions? iOptions = IOSOptions.defaultOptions,
    AndroidOptions? aOptions,
    LinuxOptions? lOptions,
  }) {
    throw message;
  }
}
