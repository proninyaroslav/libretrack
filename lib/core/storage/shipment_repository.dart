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

import 'database.dart';
import 'storage_result.dart';

abstract class ShipmentRepository {
  Future<StorageResult<void>> addActivities(
    List<ShipmentActivityInfo> activities,
  );

  Future<StorageResult<void>> replaceActivitiesByTrack(
    String trackNumber,
    List<ShipmentActivityInfo> activities,
  );

  Future<StorageResult<void>> deleteActivitiesByTrack(
    String trackNumber,
  );

  Future<StorageResult<List<ShipmentActivityInfo>>> getActivitiesByTrack(
    String trackNumber, {
    bool oldestFirst = false,
  });

  Future<StorageResult<List<ShipmentActivityInfo>>> getAllActivities();

  Stream<StorageResult<List<ShipmentActivityInfo>>> observeAllActivities();

  Stream<StorageResult<List<ShipmentActivityInfo>>> observeActivitiesByTrack(
    String trackNumber, {
    bool oldestFirst = false,
  });

  Future<StorageResult<int>> addShipmentInfo(
    ShipmentInfo info, {
    List<String>? alternateTracks,
  });

  Future<StorageResult<int>> replaceShipmentInfoByTrack(
    ShipmentInfo info, {
    List<String>? alternateTracks,
  });

  Future<StorageResult<void>> deleteShipmentInfoByTrack(
    String trackNumber,
  );

  Future<StorageResult<List<ShipmentInfo>>> getShipmentInfoByTrack(
    String trackNumber,
  );

  Stream<StorageResult<List<ShipmentInfo>>> observeShipmentInfoByTrack(
    String trackNumber,
  );

  Future<StorageResult<List<AlternateTrackNumber>>> getAlternateTracksById(
    int shipmentId,
  );
}

@Singleton(as: ShipmentRepository, dependsOn: [AppDatabase])
class ShipmentRepositoryImpl extends ShipmentRepository {
  final AppDatabase _db;

  ShipmentRepositoryImpl(this._db);

  @override
  Future<StorageResult<void>> addActivities(
    List<ShipmentActivityInfo> activities,
  ) async {
    try {
      await _db.shipmentDao.addActivities(activities);
      return StorageResult.empty;
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<void>> replaceActivitiesByTrack(
    String trackNumber,
    List<ShipmentActivityInfo> activities,
  ) async {
    try {
      await _db.shipmentDao.replaceActivitiesByTrack(trackNumber, activities);
      return StorageResult.empty;
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<void>> deleteActivitiesByTrack(
    String trackNumber,
  ) async {
    try {
      await _db.shipmentDao.deleteActivitiesByTrack(trackNumber);
      return StorageResult.empty;
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<List<ShipmentActivityInfo>>> getActivitiesByTrack(
    String trackNumber, {
    bool oldestFirst = false,
  }) async {
    try {
      if (oldestFirst) {
        return StorageResult(
          await _db.shipmentDao.getActivitiesByTrackAsc(trackNumber),
        );
      } else {
        return StorageResult(
          await _db.shipmentDao.getActivitiesByTrackDesc(trackNumber),
        );
      }
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Stream<StorageResult<List<ShipmentActivityInfo>>> observeActivitiesByTrack(
    String trackNumber, {
    bool oldestFirst = false,
  }) async* {
    final stream = oldestFirst
        ? _db.shipmentDao.observeActivitiesByTrackAsc(trackNumber)
        : _db.shipmentDao.observeActivitiesByTrackDesc(trackNumber);
    try {
      await for (final value in stream) {
        yield StorageResult(value);
      }
    } on Exception catch (e, stackTrace) {
      yield StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<List<ShipmentActivityInfo>>> getAllActivities() async {
    try {
      return StorageResult(
        await _db.shipmentDao.getAllActivities(),
      );
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Stream<StorageResult<List<ShipmentActivityInfo>>>
      observeAllActivities() async* {
    try {
      await for (final value in _db.shipmentDao.observeAllActivities()) {
        yield StorageResult(value);
      }
    } on Exception catch (e, stackTrace) {
      yield StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<int>> addShipmentInfo(
    ShipmentInfo info, {
    List<String>? alternateTracks,
  }) async {
    try {
      final id = await _db.shipmentDao.addShipmentInfo(info);
      if (alternateTracks != null) {
        await _addAlternateTrackList(id, alternateTracks);
      }
      return StorageResult(id);
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<int>> replaceShipmentInfoByTrack(
    ShipmentInfo info, {
    List<String>? alternateTracks,
  }) async {
    try {
      final id = await _db.shipmentDao.replaceShipmentInfoByTrack(info);
      if (alternateTracks != null) {
        await _addAlternateTrackList(id, alternateTracks);
      }
      return StorageResult(id);
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  Future<StorageResult<void>> _addAlternateTrackList(
    int shipmentId,
    List<String> alternateTracks,
  ) async {
    await _db.shipmentDao.addAlternateTrackList(
      alternateTracks
          .map(
            (track) => AlternateTrackNumber(
              trackNumber: track,
              shipmentId: shipmentId,
            ),
          )
          .toList(),
    );
    return StorageResult.empty;
  }

  @override
  Future<StorageResult<void>> deleteShipmentInfoByTrack(
    String trackNumber,
  ) async {
    try {
      await _db.shipmentDao.deleteShipmentInfoByTrack(trackNumber);
      return StorageResult.empty;
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<List<ShipmentInfo>>> getShipmentInfoByTrack(
    String trackNumber,
  ) async {
    try {
      return StorageResult(
        await _db.shipmentDao.getShipmentInfoByTrack(trackNumber),
      );
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Stream<StorageResult<List<ShipmentInfo>>> observeShipmentInfoByTrack(
    String trackNumber,
  ) async* {
    try {
      await for (final list in _db.shipmentDao.observeShipmentInfoByTrack(
        trackNumber,
      )) {
        yield StorageResult(list);
      }
    } on Exception catch (e, stackTrace) {
      yield StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<List<AlternateTrackNumber>>> getAlternateTracksById(
    int shipmentId,
  ) async {
    try {
      return StorageResult(
        await _db.shipmentDao.getAlternateTracksById(shipmentId),
      );
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }
}
