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
import 'package:libretrack/core/entity/track_number_info.dart';
import 'package:libretrack/core/storage/track_number_repository.dart';
import 'package:libretrack/core/storage/tracking_repository.dart';
import 'package:libretrack/core/tracking_scheduler.dart';
import 'package:libretrack/ui/model/utils.dart';
import 'package:libretrack/ui/parcel_details/model/details_actions_state.dart';

import 'parcel_info.dart';

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

  Future<void> changeCustomerType(
    ParcelInfo info, {
    required CustomerType type,
  }) async {
    emit(const DetailsActionsState.changingCustomerType());
    final res = await _trackRepo.updateTrack(
      info.trackInfo.copyWith(customerType: type),
    );
    res.when(
      (value) => emit(const DetailsActionsState.changeCustomerTypeSuccess()),
      error: (e) =>
          emit(DetailsActionsState.changeCustomerTypeFailed(error: e)),
    );
  }
}
