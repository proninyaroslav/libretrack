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
import 'package:libretrack/core/work_manager/work_manager.dart';
import 'package:libretrack/logger.dart';

import '../entity/entity.dart';
import '../platform_info.dart';
import '../settings/settings.dart';
import '../storage/track_number_repository.dart';
import 'tracking_worker.dart';

@injectable
class TrackingAllWorker implements Worker {
  final TrackingWorker _trackingWorker;
  final TrackNumberRepository _trackNumberRepo;
  final PlatformInfo _platformInfo;
  final AppSettings _pref;

  TrackingAllWorker(
    this._trackingWorker,
    this._trackNumberRepo,
    this._platformInfo,
    this._pref,
  );

  @override
  Future<WorkResult> doWork(WorkData? inputData) async {
    final locale = await _pref.locale.when(
      system: () => _platformInfo.currentAsLocale,
      inner: (locale) async => locale,
    );
    final res = await _trackNumberRepo.getAllUnarchivedTracks();
    final trackNumbers = res.when(
      (list) => list.map((info) => info.trackNumber).toList(),
      error: (e) {
        e.when(database: (e, stackTrace) {
          log().e('Unable to get track list', e, stackTrace);
        });
        return null;
      },
    );
    if (trackNumbers == null) {
      return const WorkResult.failure();
    }

    final List<TrackNumberService>? trackServiceList = await _trackNumberRepo
        .getActiveTrackNumberServicesByList(trackNumbers)
        .then(
          (result) => result.when(
            (list) => list,
            error: (e) {
              e.when(
                database: (e, stackTrace) {
                  log().e(
                    'Unable to get track service list',
                    e,
                    stackTrace,
                  );
                },
              );
              return null;
            },
          ),
        );
    if (trackServiceList == null) {
      return const WorkResult.failure();
    }

    return _trackingWorker.doTrack(trackServiceList.toSet(), locale);
  }
}
