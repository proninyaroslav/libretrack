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

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:libretrack/core/storage/storage_result.dart';
import 'package:libretrack/core/storage/track_number_repository.dart';
import 'package:libretrack/core/storage/tracking_repository.dart';
import 'package:libretrack/core/tracking_scheduler.dart';
import 'package:libretrack/ui/utils/utils.dart';

import 'parcel_info.dart';

part 'parcels_actions_cubit.freezed.dart';

@freezed
class ParcelsActionsState with _$ParcelsActionsState {
  const factory ParcelsActionsState.initial() = ParcelsActionsStateInitial;

  const factory ParcelsActionsState.deleting() = ParcelsActionsStateDeleting;

  const factory ParcelsActionsState.deleteSuccess() =
      ParcelsActionsStateDeleteSuccess;

  const factory ParcelsActionsState.deleteFailed({
    required StorageError error,
    required int parcelsCount,
  }) = ParcelsActionsStateDeleteFailed;

  const factory ParcelsActionsState.markingAsRead() =
      ParcelsActionsStateMarkingAsRead;

  const factory ParcelsActionsState.markAsReadSuccess() =
      ParcelsActionsStateMarkAsReadSuccess;

  const factory ParcelsActionsState.markAsReadFailed({
    required StorageError error,
    required int parcelsCount,
  }) = ParcelsActionsStateMarkAsReadFailed;

  const factory ParcelsActionsState.movingToActive() =
      ParcelsActionsStateMovingToActive;

  const factory ParcelsActionsState.moveToActiveSuccess() =
      ParcelsActionsStateMoveToActiveSuccess;

  const factory ParcelsActionsState.moveToActiveFailed({
    required StorageError error,
    required int parcelsCount,
  }) = ParcelsActionsStateMoveToActiveFailed;

  const factory ParcelsActionsState.movingToArchive() =
      ParcelsActionsStateMovingToArchive;

  const factory ParcelsActionsState.moveToArchiveSuccess() =
      ParcelsActionsStateMoveToArchiveSuccess;

  const factory ParcelsActionsState.moveToArchiveFailed({
    required StorageError error,
    required int parcelsCount,
  }) = ParcelsActionsStateMoveToArchiveFailed;

  const factory ParcelsActionsState.refreshing() =
      ParcelsActionsStateRefreshing;

  const factory ParcelsActionsState.refreshSuccess() =
      ParcelsActionsStateRefreshSuccess;

  const factory ParcelsActionsState.refreshFailed({
    required Map<String, EnqueueOneshotError> errors,
  }) = ParcelsActionsStateRefreshFailed;

  const factory ParcelsActionsState.refreshFreqLimited({
    required Duration remainingTime,
  }) = ParcelsActionsStateRefreshFreqLimited;

  const factory ParcelsActionsState.sharingString() =
      ParcelsActionsStateSharingString;

  const factory ParcelsActionsState.shareStringSuccess({
    required String text,
  }) = ParcelsActionsStateShareStringSuccess;

  const factory ParcelsActionsState.copyingTrack() =
      ParcelsActionsStateCopyingTrack;

  const factory ParcelsActionsState.copyTrackSuccess({
    required String trackNumbers,
  }) = ParcelsActionsStateCopyTrackSuccess;
}

class ParcelsActionsCubit extends Cubit<ParcelsActionsState> {
  final TrackNumberRepository _trackRepo;
  final TrackingRepository _trackingRepo;
  final TrackingScheduler _trackingScheduler;

  ParcelsActionsCubit(
    this._trackRepo,
    this._trackingRepo,
    this._trackingScheduler,
  ) : super(const ParcelsActionsState.initial());

  void buildShareString(
    Iterable<ParcelInfo> infoList,
  ) {
    emit(const ParcelsActionsState.sharingString());
    final text = infoList
        .map((info) => UiUtils.buildTrackShareString(info.trackInfo))
        .join('\n');
    emit(ParcelsActionsState.shareStringSuccess(text: text));
  }

  void copyTrackNumbers(Iterable<ParcelInfo> infoList) {
    emit(const ParcelsActionsState.copyingTrack());
    final trackNumbers =
        infoList.map((info) => info.trackInfo.trackNumber).join('\n');
    emit(ParcelsActionsState.copyTrackSuccess(trackNumbers: trackNumbers));
  }

  Future<void> deleteParcels(
    Iterable<ParcelInfo> infoList,
  ) async {
    emit(const ParcelsActionsState.deleting());
    final res = await _trackRepo.deleteTrackList(
      infoList.map((info) => info.trackInfo).toList(),
    );
    res.when(
      (value) => emit(const ParcelsActionsState.deleteSuccess()),
      error: (e) => emit(
        ParcelsActionsState.deleteFailed(
          error: e,
          parcelsCount: infoList.length,
        ),
      ),
    );
  }

  Future<void> markAsRead(
    Iterable<ParcelInfo> infoList,
  ) async {
    emit(const ParcelsActionsState.markingAsRead());
    final trackingInfoList = infoList
        .where((info) =>
            info.lastTrackingInfo != null && info.lastTrackingInfo!.hasNewInfo)
        .map(
          (info) => info.lastTrackingInfo!.copyWith(hasNewInfo: false),
        )
        .toList();
    final res = await _trackingRepo.updateTrackingInfoList(trackingInfoList);
    res.when(
      (value) => emit(const ParcelsActionsState.markAsReadSuccess()),
      error: (e) => emit(
        ParcelsActionsState.markAsReadFailed(
          error: e,
          parcelsCount: infoList.length,
        ),
      ),
    );
  }

  Future<void> moveToActive(
    Iterable<ParcelInfo> infoList,
  ) async {
    emit(const ParcelsActionsState.movingToActive());
    final list = infoList
        .map(
          (info) => info.trackInfo.copyWith(isArchived: false),
        )
        .toList();
    final res = await _trackRepo.updateTrackList(list);
    res.when(
      (value) => emit(const ParcelsActionsState.moveToActiveSuccess()),
      error: (e) => emit(
        ParcelsActionsState.moveToActiveFailed(
          error: e,
          parcelsCount: infoList.length,
        ),
      ),
    );
  }

  Future<void> moveToArchive(
    Iterable<ParcelInfo> infoList,
  ) async {
    emit(const ParcelsActionsState.movingToArchive());
    final trackList = infoList
        .map(
          (info) => info.trackInfo.copyWith(isArchived: true),
        )
        .toList();
    final res = await _trackRepo.updateTrackList(trackList);
    res.when(
      (value) {
        emit(const ParcelsActionsState.moveToArchiveSuccess());
        markAsRead(infoList);
      },
      error: (e) => emit(
        ParcelsActionsState.moveToArchiveFailed(
          error: e,
          parcelsCount: infoList.length,
        ),
      ),
    );
  }

  Future<void> refresh(Iterable<ParcelInfo> infoList) async {
    emit(const ParcelsActionsState.refreshing());
    final trackNumbersList = infoList
        .map(
          (info) => info.trackInfo.trackNumber,
        )
        .toList();

    final resList = await _trackingScheduler.enqueueOneshot(trackNumbersList);
    if (resList.length == 1) {
      resList.first.when(
        success: (trackNumber) {
          emit(const ParcelsActionsState.refreshSuccess());
        },
        dissalowed: (trackNumber, remainingTime) {
          emit(ParcelsActionsState.refreshFreqLimited(
            remainingTime: remainingTime,
          ));
        },
        error: (trackNumber, error) {
          emit(ParcelsActionsState.refreshFailed(
            errors: {trackNumber: error},
          ));
        },
      );
    } else {
      final errors = Map.fromEntries(
        resList
            .whereType<EnqueueOneshotResultError>()
            .map((res) => MapEntry(res.trackNumber, res.error)),
      );
      if (errors.isEmpty) {
        emit(const ParcelsActionsState.refreshSuccess());
      } else {
        emit(ParcelsActionsState.refreshFailed(errors: errors));
      }
    }
  }

  void refreshAll() => _trackingScheduler.enqueueOneshotAll();
}
