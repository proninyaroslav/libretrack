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

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:libretrack/core/storage/storage_result.dart';
import 'package:libretrack/core/storage/track_number_repository.dart';
import 'package:libretrack/core/storage/tracking_repository.dart';
import 'package:libretrack/core/tracking_scheduler.dart';
import 'package:libretrack/ui/utils/utils.dart';

import 'parcel_info.dart';

part 'details_actions_cubit.freezed.dart';

@freezed
class DetailsActionsState with _$DetailsActionsState {
  const factory DetailsActionsState.initial() = DetailsActionsStateInitial;

  const factory DetailsActionsState.deleting() = DetailsActionsStateDeleting;

  const factory DetailsActionsState.deleteSuccess() =
      DetailsActionsStateDeleteSuccess;

  const factory DetailsActionsState.deleteFailed({
    required StorageError error,
  }) = DetailsActionsStateDeleteFailed;

  const factory DetailsActionsState.markingAsRead() =
      DetailsActionsStateMarkingAsRead;

  const factory DetailsActionsState.markAsReadSuccess() =
      DetailsActionsStateMarkAsReadSuccess;

  const factory DetailsActionsState.markAsReadFailed({
    required StorageError error,
  }) = DetailsActionsStateMarkAsReadFailed;

  const factory DetailsActionsState.movingToActive() =
      DetailsActionsStateMovingToActive;

  const factory DetailsActionsState.moveToActiveSuccess() =
      DetailsActionsStateMoveToActiveSuccess;

  const factory DetailsActionsState.moveToActiveFailed({
    required StorageError error,
  }) = DetailsActionsStateMoveToActiveFailed;

  const factory DetailsActionsState.movingToArchive() =
      DetailsActionsStateMovingToArchive;

  const factory DetailsActionsState.moveToArchiveSuccess() =
      DetailsActionsStateMoveToArchiveSuccess;

  const factory DetailsActionsState.moveToArchiveFailed({
    required StorageError error,
  }) = DetailsActionsStateMoveToArchiveFailed;

  const factory DetailsActionsState.refreshing() =
      DetailsActionsStateRefreshing;

  const factory DetailsActionsState.refreshSuccess() =
      DetailsActionsStateRefreshSuccess;

  const factory DetailsActionsState.refreshFailed({
    required StorageError error,
  }) = DetailsActionsStateRefreshFailed;

  const factory DetailsActionsState.refreshFreqLimited({
    required Duration remainingTime,
  }) = DetailsActionsStateRefreshFreqLimited;

  const factory DetailsActionsState.sharingString() =
      DetailsActionsStateSharingString;

  const factory DetailsActionsState.shareStringSuccess({
    required String text,
  }) = DetailsActionsStateShareStringSuccess;

  const factory DetailsActionsState.copyingTrack() =
      DetailsActionsStateCopyingTrack;

  const factory DetailsActionsState.copyTrackSuccess({
    required String trackNumber,
  }) = DetailsActionsStateCopyTrackSuccess;

  const factory DetailsActionsState.activating() =
      DetailsActionsStateActivating;

  const factory DetailsActionsState.activateSuccess() =
      DetailsActionsStateActivateSuccess;

  const factory DetailsActionsState.activateFailed({
    required StorageError error,
  }) = DetailsActionsStateActivateFailed;
}

class DetailsActionsCubit extends Cubit<DetailsActionsState> {
  final TrackNumberRepository _trackRepo;
  final TrackingRepository _trackingRepo;
  final TrackingScheduler _trackingScheduler;

  DetailsActionsCubit(
    this._trackRepo,
    this._trackingRepo,
    this._trackingScheduler,
  ) : super(const DetailsActionsState.initial());

  Future<void> deleteParcel(ParcelInfo info) async {
    emit(const DetailsActionsState.deleting());
    final res = await _trackRepo.deleteTrack(info.trackInfo);
    res.when(
      (value) => emit(const DetailsActionsState.deleteSuccess()),
      error: (e) => emit(DetailsActionsState.deleteFailed(error: e)),
    );
  }

  Future<void> moveToArchive(ParcelInfo info) async {
    emit(const DetailsActionsState.movingToArchive());
    final res = await _trackRepo.updateTrack(
      info.trackInfo.copyWith(isArchived: true),
    );
    res.when(
      (value) => emit(const DetailsActionsState.moveToArchiveSuccess()),
      error: (e) => emit(DetailsActionsState.moveToArchiveFailed(error: e)),
    );
  }

  Future<void> moveToActive(ParcelInfo info) async {
    emit(const DetailsActionsState.movingToActive());
    final res = await _trackRepo.updateTrack(
      info.trackInfo.copyWith(isArchived: false),
    );
    res.when(
      (value) => emit(const DetailsActionsState.moveToActiveSuccess()),
      error: (e) => emit(DetailsActionsState.moveToActiveFailed(error: e)),
    );
  }

  Future<void> refresh(ParcelInfo info) async {
    emit(const DetailsActionsState.refreshing());

    final resList = await _trackingScheduler.enqueueOneshot(
      [info.trackInfo.trackNumber],
    );
    resList.first.when(
      success: (trackNumber) {
        emit(const DetailsActionsState.refreshSuccess());
      },
      dissalowed: (trackNumber, remainingTime) {
        emit(DetailsActionsState.refreshFreqLimited(
          remainingTime: remainingTime,
        ));
      },
      error: (trackNumber, error) {
        emit(DetailsActionsState.refreshFailed(
          error: error.when(
            storage: (e) => e,
            limiter: (e) => e.when(storage: (e) => e),
          ),
        ));
      },
    );
  }

  void copyTrackNumber(ParcelInfo info) {
    emit(const DetailsActionsState.copyingTrack());
    emit(
      DetailsActionsState.copyTrackSuccess(
        trackNumber: info.trackInfo.trackNumber,
      ),
    );
  }

  void buildShareString(ParcelInfo info) {
    emit(const DetailsActionsState.sharingString());
    emit(
      DetailsActionsState.shareStringSuccess(
        text: UiUtils.buildTrackShareString(info.trackInfo),
      ),
    );
  }

  Future<void> markAsRead(ParcelInfo info) async {
    if (info.trackingHistory.isEmpty) {
      return;
    }
    emit(const DetailsActionsState.markingAsRead());
    final lastTrackingInfo = info.trackingHistory.first.trackingInfo;
    if (!lastTrackingInfo.hasNewInfo) {
      emit(const DetailsActionsState.markAsReadSuccess());
      return;
    }
    final res = await _trackingRepo.updateTrackingInfo(
      lastTrackingInfo.copyWith(hasNewInfo: false),
    );
    res.when(
      (value) => emit(const DetailsActionsState.markAsReadSuccess()),
      error: (e) => emit(DetailsActionsState.markAsReadFailed(error: e)),
    );
  }

  Future<void> activateTracking(ParcelInfo info) async {
    emit(const DetailsActionsState.activating());
    final res = await _trackRepo.updateTrackNumberServices(
      info.trackServices
          .map((trackService) => trackService.copyWith(isActive: true))
          .toList(),
    );
    res.when(
      (value) => emit(const DetailsActionsState.activateSuccess()),
      error: (e) => emit(DetailsActionsState.activateFailed(error: e)),
    );
  }
}
