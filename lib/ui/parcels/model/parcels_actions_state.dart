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

// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:libretrack/core/storage/storage_result.dart';
import 'package:libretrack/core/tracking_scheduler.dart';

part 'parcels_actions_state.freezed.dart';

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

  const factory ParcelsActionsState.changingCustomerType() =
      ParcelsActionsStateChangingCustomerType;

  const factory ParcelsActionsState.changeCustomerTypeSuccess() =
      ParcelsActionsStateChangeCustomerTypeSuccess;

  const factory ParcelsActionsState.changeCustomerTypeFailed({
    required StorageError error,
    required int parcelsCount,
  }) = ParcelsActionsStateChangeCustomerTypeFailed;
}
