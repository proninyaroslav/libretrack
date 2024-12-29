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

part 'details_actions_state.freezed.dart';

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

  const factory DetailsActionsState.changingCustomerType() =
      DetailsActionsStateChangingCustomerType;

  const factory DetailsActionsState.changeCustomerTypeSuccess() =
      DetailsActionsStateChangeCustomerTypeSuccess;

  const factory DetailsActionsState.changeCustomerTypeFailed({
    required StorageError error,
  }) = DetailsActionsStateChangeCustomerTypeFailed;
}
