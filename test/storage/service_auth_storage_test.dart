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

import 'package:flutter/src/foundation/basic_types.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/platform_info.dart';
import 'package:libretrack/core/storage/database.dart';
import 'package:libretrack/core/storage/service_auth_storage.dart';
import 'package:libretrack/core/storage/service_repository.dart';
import 'package:mocktail/mocktail.dart';

import '../mock/mock.dart';

void main() {
  group('Service auth storage (database version) |', () {
    late ServiceAuthStorage authStorage;
    late AppDatabase db;
    late FlutterSecureStorage secureStorage;
    late PlatformInfo platformInfo;
    late ServiceRepository serviceRepo;

    setUp(() async {
      db = await $FloorAppDatabase.inMemoryDatabaseBuilder().build();
      secureStorage = _UnexpectedFlutterSecureStorage();

      platformInfo = MockPlatformInfo();
      when(() => platformInfo.isAndroid).thenReturn(false);
      when(() => platformInfo.isIOS).thenReturn(false);
      when(() => platformInfo.isLinux).thenReturn(false);

      authStorage = ServiceAuthStorageImpl(db, secureStorage, platformInfo);
      serviceRepo = ServiceRepositoryImpl(db, authStorage);
    });

    tearDown(() {
      db.close();
    });

    test('Insert', () async {
      const expectedData1 = AuthData({'foo': 'bar'});
      const expectedData2 = AuthData({'foo': 'baz'});
      await serviceRepo.addService(
        info: const TrackingServiceInfo(type: TrackingServiceType.ups),
        authData: expectedData1,
      );
      await serviceRepo.addService(
        info: const TrackingServiceInfo(type: TrackingServiceType.russianPost),
        authData: expectedData2,
      );
      expect(
        await authStorage.getByServiceType(TrackingServiceType.ups),
        expectedData1,
      );
      expect(
        await authStorage.getByServiceType(TrackingServiceType.russianPost),
        expectedData2,
      );

      const expectedData3 = AuthData({'foo': 'bar', 'baz': 'bar'});
      await authStorage.insert(
        type: TrackingServiceType.ups,
        authData: const AuthData({'baz': 'bar'}),
      );
      expect(
        await authStorage.getByServiceType(TrackingServiceType.ups),
        expectedData3,
      );
    });

    test('Delete', () async {
      const expectedData = AuthData({'foo': 'bar'});
      await serviceRepo.addService(
        info: const TrackingServiceInfo(type: TrackingServiceType.ups),
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
      await serviceRepo.addService(
        info: const TrackingServiceInfo(type: TrackingServiceType.ups),
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
  AndroidOptions get aOptions => throw message;

  @override
  Future<bool> containsKey(
      {required String key,
      IOSOptions? iOptions,
      AndroidOptions? aOptions,
      LinuxOptions? lOptions,
      WebOptions? webOptions,
      MacOsOptions? mOptions,
      WindowsOptions? wOptions}) {
    throw message;
  }

  @override
  Future<void> delete(
      {required String key,
      IOSOptions? iOptions,
      AndroidOptions? aOptions,
      LinuxOptions? lOptions,
      WebOptions? webOptions,
      MacOsOptions? mOptions,
      WindowsOptions? wOptions}) {
    throw message;
  }

  @override
  Future<void> deleteAll(
      {IOSOptions? iOptions,
      AndroidOptions? aOptions,
      LinuxOptions? lOptions,
      WebOptions? webOptions,
      MacOsOptions? mOptions,
      WindowsOptions? wOptions}) {
    throw message;
  }

  @override
  IOSOptions get iOptions => throw message;

  @override
  Future<bool?> isCupertinoProtectedDataAvailable() {
    throw message;
  }

  @override
  LinuxOptions get lOptions => throw message;

  @override
  MacOsOptions get mOptions => throw message;

  @override
  Stream<bool>? get onCupertinoProtectedDataAvailabilityChanged =>
      throw message;

  @override
  Future<String?> read(
      {required String key,
      IOSOptions? iOptions,
      AndroidOptions? aOptions,
      LinuxOptions? lOptions,
      WebOptions? webOptions,
      MacOsOptions? mOptions,
      WindowsOptions? wOptions}) {
    throw message;
  }

  @override
  Future<Map<String, String>> readAll(
      {IOSOptions? iOptions,
      AndroidOptions? aOptions,
      LinuxOptions? lOptions,
      WebOptions? webOptions,
      MacOsOptions? mOptions,
      WindowsOptions? wOptions}) {
    throw message;
  }

  @override
  void registerListener(
      {required String key, required ValueChanged<String?> listener}) {
    throw message;
  }

  @override
  void unregisterAllListeners() {
    throw message;
  }

  @override
  void unregisterAllListenersForKey({required String key}) {
    throw message;
  }

  @override
  void unregisterListener(
      {required String key, required ValueChanged<String?> listener}) {
    throw message;
  }

  @override
  WindowsOptions get wOptions => throw message;

  @override
  WebOptions get webOptions => throw message;

  @override
  Future<void> write(
      {required String key,
      required String? value,
      IOSOptions? iOptions,
      AndroidOptions? aOptions,
      LinuxOptions? lOptions,
      WebOptions? webOptions,
      MacOsOptions? mOptions,
      WindowsOptions? wOptions}) {
    throw message;
  }
}
