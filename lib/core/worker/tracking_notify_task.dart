// Copyright (C) 2021-2024 Yaroslav Pronin <proninyaroslav@mail.ru>
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
import 'package:libretrack/core/notification_manager.dart';
import 'package:libretrack/core/settings/settings.dart';
import 'package:libretrack/core/storage/track_number_repository.dart';
import 'package:quiver/iterables.dart';

import '../entity/entity.dart';
import 'tracking_task.dart';

@injectable
class TrackingNotifyTask {
  final NotificationManager _notifyManager;
  final TrackNumberRepository _trackNumberRepo;
  final AppSettings _pref;

  TrackingNotifyTask(
    this._notifyManager,
    this._trackNumberRepo,
    this._pref,
  );

  Future<void> show({
    required Iterable<TrackingInfo> trackingInfo,
    required Iterable<TrackingTaskResult> trackingResult,
  }) async {
    if (!await _pref.trackingNotifications &&
        !await _pref.trackingErrorNotifications) {
      return;
    }

    final trackWithNewInfo = <String>{};
    final trackWithError = <String>{};
    for (final info in trackingInfo) {
      if (info.hasNewInfo && info.status == TrackingStatus.complete) {
        trackWithNewInfo.add(info.trackNumber);
      }
      if (info.hasNonRetryableError) {
        trackWithError.add(info.trackNumber);
      }
    }
    await Future.wait([
      if (await _pref.trackingNotifications)
        _newActivitiesNotify(trackWithNewInfo, trackingResult),
      if (await _pref.trackingErrorNotifications)
        _parcelsHardErrorNotify(trackWithError),
    ]);
  }

  Future<void> _newActivitiesNotify(
    Set<String> trackWithNewInfo,
    Iterable<TrackingTaskResult> trackingResult,
  ) async {
    final lastActivities = <TrackNumberInfo, ShipmentActivityInfo>{};
    for (final result in trackingResult) {
      if (!trackWithNewInfo.contains(result.trackService.trackNumber)) {
        continue;
      }
      final lastActivity = max<ShipmentActivityInfo>(
        result.activity,
        (a, b) => a.dateTime.compareTo(b.dateTime),
      );
      if (lastActivity == null) {
        continue;
      }
      final res = await _trackNumberRepo.getTrackByTrackNumber(
        lastActivity.trackNumber,
      );
      res.maybeWhen(
        (trackInfo) {
          if (trackInfo != null) {
            lastActivities[trackInfo] = lastActivity;
          }
        },
        orElse: () {},
      );
    }

    if (lastActivities.isEmpty) {
      return;
    }

    await _notifyManager.newActivitiesNotify(lastActivities);
  }

  Future<void> _parcelsHardErrorNotify(Set<String> trackWithError) async {
    final infoList = <TrackNumberInfo>[];
    for (final trackNumber in trackWithError) {
      final res = await _trackNumberRepo.getTrackByTrackNumber(trackNumber);
      res.maybeWhen(
        (trackInfo) {
          if (trackInfo != null) {
            infoList.add(trackInfo);
          }
        },
        orElse: () {},
      );
    }

    await _notifyManager.parcelsHardErrorNotify(infoList);
  }

  Future<void> trackingFailedNotify(Iterable<String> trackNumbersList) async {
    if (!await _pref.trackingErrorNotifications) {
      return;
    }

    final infoList = <TrackNumberInfo>[];
    for (final trackNumber in trackNumbersList) {
      final res = await _trackNumberRepo.getTrackByTrackNumber(trackNumber);
      res.maybeWhen(
        (trackInfo) {
          if (trackInfo != null) {
            infoList.add(trackInfo);
          }
        },
        orElse: () {},
      );
    }
    await _notifyManager.trackingFailedNotify(infoList);
  }
}
