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

abstract class TrackNumberRepository {
  Future<StorageResult<void>> addTrack(TrackNumberInfo info);

  Future<StorageResult<void>> addTrackList(
    List<TrackNumberInfo> infoList,
  );

  Future<StorageResult<void>> updateTrack(TrackNumberInfo info);

  Future<StorageResult<void>> updateTrackList(
    List<TrackNumberInfo> infoList,
  );

  Future<StorageResult<void>> deleteTrack(TrackNumberInfo info);

  Future<StorageResult<void>> deleteTrackList(
    List<TrackNumberInfo> infoList,
  );

  Future<StorageResult<List<TrackNumberInfo>>> getAllTracks();

  Future<StorageResult<List<TrackNumberInfo>>> getAllUnarchivedTracks();

  Stream<StorageResult<List<TrackNumberInfo>>> observeAllTracks();

  Stream<StorageResult<TrackNumberInfo?>> observeTrack(
    String trackNumber,
  );

  Future<StorageResult<TrackNumberInfo?>> getTrackByTrackNumber(
    String trackNumber,
  );

  Future<StorageResult<void>> addTrackNumberServices(
    List<TrackNumberService> infoList,
  );

  Future<StorageResult<void>> updateTrackNumberServices(
    List<TrackNumberService> infoList,
  );

  Future<StorageResult<void>> deleteTrackNumberServices(
    List<TrackNumberService> infoList,
  );

  Stream<StorageResult<List<TrackNumberService>>>
      observeAllTrackNumberServices();

  Stream<StorageResult<List<TrackNumberService>>> observeTrackNumberServices(
    String trackNumber,
  );

  Future<StorageResult<List<TrackNumberService>>> getAllTrackNumberServices();

  Future<StorageResult<List<TrackNumberService>>> getTrackNumberServices(
    String trackNumber,
  );

  Future<StorageResult<List<TrackNumberService>>> getTrackNumberServicesByList(
    List<String> trackNumberList,
  );

  Future<StorageResult<List<TrackNumberService>>>
      getActiveTrackNumberServicesByList(
    List<String> trackNumberList,
  );

  Future<StorageResult<List<TrackNumberService>>> getActiveTrackNumberServices(
    String trackNumber,
  );
}

@Singleton(as: TrackNumberRepository)
class TrackNumberRepositoryImpl implements TrackNumberRepository {
  final AppDatabase _db;

  TrackNumberRepositoryImpl(this._db);

  @override
  Future<StorageResult<void>> addTrack(TrackNumberInfo info) async {
    try {
      await _db.trackNumberDao.addTrack(info);
      return StorageResult.empty;
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<void>> addTrackList(
    List<TrackNumberInfo> infoList,
  ) async {
    try {
      await _db.trackNumberDao.addTrackList(infoList);
      return StorageResult.empty;
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<void>> updateTrack(TrackNumberInfo info) async {
    try {
      await _db.trackNumberDao.updateTrack(info);
      return StorageResult.empty;
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<void>> updateTrackList(
    List<TrackNumberInfo> infoList,
  ) async {
    try {
      await _db.trackNumberDao.updateTrackList(infoList);
      return StorageResult.empty;
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<void>> deleteTrack(TrackNumberInfo info) async {
    try {
      await _db.trackNumberDao.deleteTrack(info);
      return StorageResult.empty;
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<List<TrackNumberInfo>>> getAllTracks() async {
    try {
      return StorageResult(
        await _db.trackNumberDao.getAll(),
      );
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<List<TrackNumberInfo>>> getAllUnarchivedTracks() async {
    try {
      return StorageResult(
        await _db.trackNumberDao.getAllUnarchived(),
      );
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Stream<StorageResult<List<TrackNumberInfo>>> observeAllTracks() async* {
    try {
      await for (final value in _db.trackNumberDao.observeAll()) {
        yield StorageResult(value);
      }
    } on Exception catch (e, stackTrace) {
      yield StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Stream<StorageResult<TrackNumberInfo?>> observeTrack(
    String trackNumber,
  ) async* {
    try {
      await for (final value in _db.trackNumberDao.observeByTrack(
        trackNumber,
      )) {
        yield StorageResult(value);
      }
    } on Exception catch (e, stackTrace) {
      yield StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<TrackNumberInfo?>> getTrackByTrackNumber(
    String trackNumber,
  ) async {
    try {
      return StorageResult(
        await _db.trackNumberDao.getByTrack(trackNumber),
      );
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<void>> deleteTrackList(
    List<TrackNumberInfo> infoList,
  ) async {
    try {
      await _db.trackNumberDao.deleteTrackList(infoList);
      return StorageResult.empty;
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<void>> addTrackNumberServices(
    List<TrackNumberService> infoList,
  ) async {
    try {
      await _db.trackNumberServiceDao.addTrackNumberServices(infoList);
      return StorageResult.empty;
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<void>> updateTrackNumberServices(
    List<TrackNumberService> infoList,
  ) async {
    try {
      await _db.trackNumberServiceDao.updateTrackNumberServices(infoList);
      return StorageResult.empty;
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<void>> deleteTrackNumberServices(
    List<TrackNumberService> infoList,
  ) async {
    try {
      await _db.trackNumberServiceDao.deleteTrackNumberServices(infoList);
      return StorageResult.empty;
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Stream<StorageResult<List<TrackNumberService>>>
      observeAllTrackNumberServices() async* {
    try {
      final stream = _db.trackNumberServiceDao.observeAllTrackNumberServices();
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
  Stream<StorageResult<List<TrackNumberService>>> observeTrackNumberServices(
    String trackNumber,
  ) async* {
    try {
      final stream = _db.trackNumberServiceDao.observeTrackNumberServices(
        trackNumber,
      );
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
  Future<StorageResult<List<TrackNumberService>>>
      getAllTrackNumberServices() async {
    try {
      return StorageResult(
        await _db.trackNumberServiceDao.getAllTrackNumberServices(),
      );
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<List<TrackNumberService>>> getTrackNumberServices(
    String trackNumber,
  ) async {
    try {
      return StorageResult(
        await _db.trackNumberServiceDao.getTrackNumberServices(
          trackNumber,
        ),
      );
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<List<TrackNumberService>>> getTrackNumberServicesByList(
    List<String> trackNumberList,
  ) async {
    try {
      return StorageResult(
        await _db.trackNumberServiceDao.getTrackNumberServicesByList(
          trackNumberList,
        ),
      );
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<List<TrackNumberService>>>
      getActiveTrackNumberServicesByList(
    List<String> trackNumberList,
  ) async {
    try {
      return StorageResult(
        await _db.trackNumberServiceDao.getActiveTrackNumberServicesByList(
          trackNumberList,
        ),
      );
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<List<TrackNumberService>>> getActiveTrackNumberServices(
    String trackNumber,
  ) async {
    try {
      return StorageResult(
        await _db.trackNumberServiceDao.getActiveTrackNumberServices(
          trackNumber,
        ),
      );
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }
}
