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

import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/platform_info.dart';
import 'package:libretrack/core/storage/database.dart';

import '../../env.dart';

abstract class ServiceAuthStorage {
  Future<void> insert({
    required TrackingServiceType type,
    required AuthData authData,
  });

  Future<void> deleteByServiceType(TrackingServiceType type);

  Future<AuthData?> getByServiceType(TrackingServiceType type);

  bool get isSecureStorageSupported;
}

@Injectable(as: ServiceAuthStorage)
class ServiceAuthStorageImpl implements ServiceAuthStorage {
  final AppDatabase _db;
  final FlutterSecureStorage _secureStorage;
  final PlatformInfo _platformInfo;

  ServiceAuthStorageImpl(
    this._db,
    this._secureStorage,
    this._platformInfo,
  );

  @override
  Future<void> deleteByServiceType(TrackingServiceType type) async {
    if (isSecureStorageSupported) {
      await _secureStorageDelete(_secureStorage, type);
    } else {
      await _dbDelete(_db, type);
    }
  }

  @override
  Future<AuthData?> getByServiceType(TrackingServiceType type) async {
    if (isSecureStorageSupported) {
      return _secureStorageGet(_secureStorage, type);
    } else {
      return _dbGet(_db, type);
    }
  }

  @override
  Future<void> insert({
    required TrackingServiceType type,
    required AuthData authData,
  }) async {
    if (isSecureStorageSupported) {
      await _secureStorageInsert(_secureStorage, type, authData);
    } else {
      await _dbInsert(_db, type, authData);
    }
  }

  // TODO: Windows/macOS/Web support
  @override
  bool get isSecureStorageSupported =>
      _platformInfo.isAndroid || _platformInfo.isIOS || _platformInfo.isLinux;
}

Future<void> _dbInsert(
  AppDatabase db,
  TrackingServiceType type,
  AuthData authData,
) async {
  await db.serviceAuthDao.insertData(authData.entries
      .map(
        (entry) => AuthDataField(
          key: entry.key,
          value: entry.value,
          serviceType: type,
        ),
      )
      .toList());
}

Future<void> _dbDelete(
  AppDatabase db,
  TrackingServiceType type,
) async {
  await db.serviceAuthDao.deleteDataByServiceId(type);
}

Future<AuthData?> _dbGet(
  AppDatabase db,
  TrackingServiceType type,
) async {
  final data = await db.serviceAuthDao.getDataByServiceType(type);

  return data.isEmpty
      ? null
      : AuthData({
          for (var e in data) e.key: e.value,
        });
}

@immutable
class _SecureKey {
  final TrackingServiceType serviceType;
  final String baseKey;

  const _SecureKey({
    required this.serviceType,
    required this.baseKey,
  });

  // ignore: prefer_constructors_over_static_methods
  static _SecureKey? fromKey(String? key) {
    if (key == null) {
      return null;
    }
    final delimeter = key.indexOf(':');
    if (delimeter < 0) {
      return null;
    }
    final serviceType = key.substring(0, delimeter);
    final baseKey = key.substring(delimeter + 1);
    if (serviceType.isEmpty || baseKey.isEmpty) {
      return null;
    } else {
      return _SecureKey(
        serviceType: EnumToString.fromString(
          TrackingServiceType.values,
          serviceType,
        )!,
        baseKey: baseKey,
      );
    }
  }

  static bool isServiceKey(TrackingServiceType type, String key) =>
      key.startsWith('${EnumToString.convertToString(type)}:');

  @override
  String toString() => '${EnumToString.convertToString(serviceType)}:$baseKey';
}

Future<void> _secureStorageInsert(
  FlutterSecureStorage secureStorage,
  TrackingServiceType type,
  AuthData authData,
) async {
  for (final entry in authData.entries) {
    await secureStorage.write(
      key: _SecureKey(
        serviceType: type,
        baseKey: entry.key,
      ).toString(),
      value: entry.value,
    );
  }
}

Future<void> _secureStorageDelete(
  FlutterSecureStorage secureStorage,
  TrackingServiceType type,
) async {
  final keyValueMap = await secureStorage.readAll();
  for (final key in keyValueMap.keys) {
    if (_SecureKey.isServiceKey(type, key)) {
      await secureStorage.delete(key: key);
    }
  }
}

Future<AuthData?> _secureStorageGet(
  FlutterSecureStorage secureStorage,
  TrackingServiceType type,
) async {
  final keyValueMap = await secureStorage.readAll();
  final entries = keyValueMap.entries;
  final map = <String, String>{};
  for (final e in entries) {
    final key = _SecureKey.fromKey(e.key);
    if (key == null || key.serviceType != type) {
      continue;
    }
    map[key.baseKey] = e.value;
  }
  final authData = AuthData(map);

  return authData.isEmpty ? null : authData;
}

class TestFlutterSecureStorage implements FlutterSecureStorage {
  final Map<String?, String?> _keyValueMap = {};

  TestFlutterSecureStorage();

  @override
  Future<bool> containsKey({
    required String key,
    IOSOptions? iOptions = IOSOptions.defaultOptions,
    AndroidOptions? aOptions,
    LinuxOptions? lOptions,
  }) async {
    return _keyValueMap.containsKey(key);
  }

  @override
  Future<void> delete({
    required String key,
    IOSOptions? iOptions = IOSOptions.defaultOptions,
    AndroidOptions? aOptions,
    LinuxOptions? lOptions,
  }) async {
    _keyValueMap.remove(key);
  }

  @override
  Future<void> deleteAll({
    IOSOptions? iOptions = IOSOptions.defaultOptions,
    AndroidOptions? aOptions,
    LinuxOptions? lOptions,
  }) async {
    _keyValueMap.clear();
  }

  @override
  Future<String?> read({
    required String key,
    IOSOptions? iOptions = IOSOptions.defaultOptions,
    AndroidOptions? aOptions,
    LinuxOptions? lOptions,
  }) async {
    return _keyValueMap[key];
  }

  @override
  Future<Map<String, String>> readAll({
    IOSOptions? iOptions = IOSOptions.defaultOptions,
    AndroidOptions? aOptions,
    LinuxOptions? lOptions,
  }) async {
    return Map.from(_keyValueMap);
  }

  @override
  Future<void> write({
    required String key,
    required String? value,
    IOSOptions? iOptions = IOSOptions.defaultOptions,
    AndroidOptions? aOptions,
    LinuxOptions? lOptions,
  }) async {
    _keyValueMap[key] = value;
  }
}

@module
abstract class FlutterSecureStorageModule {
  @Injectable(env: [Env.prod, Env.dev])
  FlutterSecureStorage get storage => const FlutterSecureStorage();

  @Injectable(env: [Env.test])
  FlutterSecureStorage get testStorage => TestFlutterSecureStorage();
}
