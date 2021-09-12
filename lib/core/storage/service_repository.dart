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

import 'package:injectable/injectable.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/storage/service_auth_storage.dart';

import 'database.dart';
import 'storage_result.dart';

abstract class ServiceRepository {
  Future<StorageResult<void>> addService({
    required TrackingServiceInfo info,
    required AuthData authData,
  });

  Future<StorageResult<TrackingServiceInfo?>> getServiceByType(
    TrackingServiceType type,
  );

  Future<StorageResult<TrackingServiceInfo?>> getHighPriorityService(
    PostalServiceType postalServiceType,
  );

  Future<StorageResult<void>> deleteService(
    TrackingServiceInfo info,
  );

  Future<StorageResult<AuthData?>> getAuthDataByType(
    TrackingServiceType type,
  );

  Future<StorageResult<void>> updateAuthData({
    required TrackingServiceType type,
    required AuthData authData,
  });

  Future<StorageResult<List<TrackingServiceInfo>>> getServicesByType(
    List<TrackingServiceType> types,
  );

  Future<StorageResult<List<TrackingServiceInfo>>> getAllServices();

  Stream<StorageResult<List<TrackingServiceInfo>>> observeAllServices();

  bool get isAuthStorageSecured;
}

@Singleton(as: ServiceRepository)
class ServiceRepositoryImpl implements ServiceRepository {
  final AppDatabase _db;
  final ServiceAuthStorage _authStorage;

  ServiceRepositoryImpl(this._db, this._authStorage);

  @override
  Future<StorageResult<void>> addService({
    required TrackingServiceInfo info,
    required AuthData authData,
  }) async {
    try {
      final currentPostalServices =
          await _db.postalServiceDao.getAllLowPriority();
      final serviceMap = Map.fromEntries(
        currentPostalServices.map(
          (info) => MapEntry(info.type, info),
        ),
      );

      final supportedServices = info.type.getSupportedPostalServices();
      final supportedServicesInfo = supportedServices.map((type) {
        final current = serviceMap[type];
        return PostalServiceInfo(
          type: type,
          trackingServiceType: info.type,
          priority: current == null ? 0 : current.priority + 1,
        );
      }).toList();

      await _db.trackingServiceDao.addService(info);
      await _authStorage.insert(type: info.type, authData: authData);
      await _db.postalServiceDao.add(supportedServicesInfo);
      return StorageResult.empty;
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<TrackingServiceInfo?>> getServiceByType(
    TrackingServiceType type,
  ) async {
    try {
      return StorageResult(
        await _db.trackingServiceDao.getServiceByType(type),
      );
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<TrackingServiceInfo?>> getHighPriorityService(
    PostalServiceType postalServiceType,
  ) async {
    try {
      return StorageResult(
        await _db.trackingServiceDao.getHighPriorityService(
          postalServiceType,
        ),
      );
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<void>> deleteService(
    TrackingServiceInfo info,
  ) async {
    try {
      await _db.trackingServiceDao.deleteService(info);
      await _authStorage.deleteByServiceType(info.type);
      return StorageResult.empty;
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<AuthData?>> getAuthDataByType(
    TrackingServiceType type,
  ) async {
    try {
      return StorageResult(
        await _authStorage.getByServiceType(type),
      );
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<void>> updateAuthData({
    required TrackingServiceType type,
    required AuthData authData,
  }) async {
    try {
      await _authStorage.insert(type: type, authData: authData);
      return StorageResult.empty;
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<List<TrackingServiceInfo>>> getServicesByType(
    List<TrackingServiceType> types,
  ) async {
    try {
      return StorageResult(
        await _db.trackingServiceDao.getServicesByType(types),
      );
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<List<TrackingServiceInfo>>> getAllServices() async {
    try {
      return StorageResult(
        await _db.trackingServiceDao.getAll(),
      );
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Stream<StorageResult<List<TrackingServiceInfo>>> observeAllServices() async* {
    try {
      await for (final value in _db.trackingServiceDao.observeAll()) {
        yield StorageResult(value);
      }
    } on Exception catch (e, stackTrace) {
      yield StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  bool get isAuthStorageSecured => _authStorage.isSecureStorageSupported;
}
