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

abstract class TrackingRepository {
  Future<StorageResult<void>> insertTrackingInfoList(
    List<TrackingInfo> infoList,
  );

  Future<StorageResult<void>> updateTrackingInfoList(
    List<TrackingInfo> infoList,
  );

  Future<StorageResult<void>> updateTrackingInfo(
    TrackingInfo info,
  );

  Future<StorageResult<void>> deleteTrackingInfo(
    TrackingInfo info,
  );

  Future<StorageResult<void>> deleteTrackingInfoByList(
    List<TrackingInfo> infoList,
  );

  Future<StorageResult<List<TrackingInfo>>> getTrackingInfoByTrack(
    String trackNumber, {
    bool oldestFirst = false,
  });

  Future<StorageResult<List<TrackingInfo>>> getAllTrackingInfo();

  Stream<StorageResult<List<TrackingInfo>>> observeAllTrackingInfo();

  Stream<StorageResult<List<TrackingInfo>>> observeTrackingInfoByTrack(
    String trackNumber, {
    bool oldestFirst = false,
  });

  Future<StorageResult<void>> addResponseList(
    List<TrackingResponseInfo> infoList,
  );

  Future<StorageResult<List<TrackingResponseInfo>>> getResponseByTrackingId(
    TrackingId id,
  );

  Future<StorageResult<List<TrackingResponseInfo>>> getAllResponse();

  Future<StorageResult<List<TrackingResponseInfo>>> getResponseByTrack(
    String trackNumber, {
    bool oldestFirst = false,
  });

  Future<StorageResult<List<TrackingInfo>>> getLatestTrackingInfoByList({
    required List<String> trackNumbersList,
    bool oldestFirst = false,
  });
}

@Singleton(as: TrackingRepository)
class TrackingRepositoryImpl extends TrackingRepository {
  final AppDatabase _db;

  TrackingRepositoryImpl(this._db);

  @override
  Future<StorageResult<void>> insertTrackingInfoList(
    List<TrackingInfo> infoList,
  ) async {
    try {
      await _db.trackingDao.insertTrackingInfoList(infoList);
      return StorageResult.empty;
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<void>> updateTrackingInfoList(
    List<TrackingInfo> infoList,
  ) async {
    try {
      await _db.trackingDao.updateTrackingInfoList(infoList);
      return StorageResult.empty;
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<void>> updateTrackingInfo(
    TrackingInfo info,
  ) async {
    try {
      await _db.trackingDao.updateTrackingInfo(info);
      return StorageResult.empty;
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<void>> deleteTrackingInfo(TrackingInfo info) async {
    try {
      await _db.trackingDao.deleteTrackingInfo(info);
      return StorageResult.empty;
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<void>> deleteTrackingInfoByList(
    List<TrackingInfo> infoList,
  ) async {
    try {
      await _db.trackingDao.deleteTrackingInfoByList(infoList);
      return StorageResult.empty;
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<List<TrackingInfo>>> getTrackingInfoByTrack(
    String trackNumber, {
    bool oldestFirst = false,
  }) async {
    try {
      return StorageResult(
        oldestFirst
            ? await _db.trackingDao.getTrackingInfoByTrackAsc(trackNumber)
            : await _db.trackingDao.getTrackingInfoByTrackDesc(trackNumber),
      );
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<List<TrackingInfo>>> getAllTrackingInfo() async {
    try {
      return StorageResult(
        await _db.trackingDao.getAllTrackingInfo(),
      );
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Stream<StorageResult<List<TrackingInfo>>> observeAllTrackingInfo() async* {
    try {
      await for (final value in _db.trackingDao.observeAllTrackingInfo()) {
        yield StorageResult(value);
      }
    } on Exception catch (e, stackTrace) {
      yield StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Stream<StorageResult<List<TrackingInfo>>> observeTrackingInfoByTrack(
    String trackNumber, {
    bool oldestFirst = false,
  }) async* {
    try {
      final stream = oldestFirst
          ? _db.trackingDao.observeTrackingInfoByTrackAsc(trackNumber)
          : _db.trackingDao.observeTrackingInfoByTrackDesc(trackNumber);
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
  Future<StorageResult<void>> addResponseList(
    List<TrackingResponseInfo> infoList,
  ) async {
    try {
      await _db.trackingDao.addResponseList(infoList);
      return StorageResult.empty;
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<List<TrackingResponseInfo>>> getResponseByTrackingId(
    TrackingId id,
  ) async {
    try {
      return StorageResult(
        await _db.trackingDao.getResponseByTrackingId(id),
      );
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<List<TrackingResponseInfo>>> getAllResponse() async {
    try {
      return StorageResult(
        await _db.trackingDao.getAllResponse(),
      );
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<List<TrackingResponseInfo>>> getResponseByTrack(
    String trackNumber, {
    bool oldestFirst = false,
  }) async {
    try {
      return StorageResult(
        oldestFirst
            ? await _db.trackingDao.getResponseByTrackAsc(trackNumber)
            : await _db.trackingDao.getResponseByTrackDesc(trackNumber),
      );
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }

  @override
  Future<StorageResult<List<TrackingInfo>>> getLatestTrackingInfoByList({
    required List<String> trackNumbersList,
    bool oldestFirst = false,
  }) async {
    try {
      return StorageResult(
        oldestFirst
            ? await _db.trackingDao.getLatestTrackingInfoByListAsc(
                trackNumbersList,
              )
            : await _db.trackingDao.getLatestTrackingInfoByListDesc(
                trackNumbersList,
              ),
      );
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(exception: e, stackTrace: stackTrace),
      );
    }
  }
}
