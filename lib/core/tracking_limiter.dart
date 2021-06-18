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

import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:libretrack/core/storage/storage_result.dart';
import 'package:libretrack/core/storage/tracking_repository.dart';
import 'package:libretrack/core/date_time_provider.dart';

import 'settings/settings.dart';

part 'tracking_limiter.freezed.dart';

abstract class TrackingLimiter {
  Future<TrackingLimiterState> check(String trackNumber);
}

@freezed
class TrackingLimiterState with _$TrackingLimiterState {
  const factory TrackingLimiterState.allowed({
    required String trackNumber,
  }) = TrackingLimiterStateAllowed;

  const factory TrackingLimiterState.dissalowed({
    required String trackNumber,
    required Duration remainingTime,
  }) = TrackingLimiterStateDissalowed;

  const factory TrackingLimiterState.error({
    required String trackNumber,
    required TrackingLimiterError error,
  }) = TrackingLimiterStateError;
}

@freezed
class TrackingLimiterError with _$TrackingLimiterError {
  const factory TrackingLimiterError.storage(
    StorageError error,
  ) = TrackingLimiterErrorStorage;
}

@Injectable(as: TrackingLimiter)
class TrackingLimiterImpl implements TrackingLimiter {
  final AppSettings _pref;
  final TrackingRepository _trackRepo;
  final DateTimeProvider _timeProvider;

  TrackingLimiterImpl(
    this._pref,
    this._trackRepo,
    this._timeProvider,
  );

  @override
  Future<TrackingLimiterState> check(String trackNumber) async {
    final res = await _trackRepo.getTrackingInfoByTrack(trackNumber);
    return res.when(
      (trackingList) {
        final lastTracking = trackingList.isEmpty ? null : trackingList.first;
        if (lastTracking == null) {
          return TrackingLimiterState.allowed(trackNumber: trackNumber);
        }
        final frequency = _pref.trackingFrequencyLimit.toDuration();
        final lastTrackingTime = lastTracking.dateTime.toUtc();
        final nextTrackingTime = lastTrackingTime.add(frequency);
        final currentTime = _timeProvider.now().toUtc();

        if (currentTime.isBefore(nextTrackingTime)) {
          return TrackingLimiterState.dissalowed(
            trackNumber: trackNumber,
            remainingTime: nextTrackingTime.difference(currentTime),
          );
        } else {
          return TrackingLimiterState.allowed(trackNumber: trackNumber);
        }
      },
      error: (e) => TrackingLimiterState.error(
        trackNumber: trackNumber,
        error: TrackingLimiterError.storage(e),
      ),
    );
  }
}
