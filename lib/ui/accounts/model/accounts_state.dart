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
import 'package:libretrack/core/entity/tracking_service.dart';
import 'package:libretrack/core/storage/storage_result.dart';

part 'accounts_state.freezed.dart';

@freezed
class AccountsState with _$AccountsState {
  const factory AccountsState.initial() = AccountsStateInitial;

  const factory AccountsState.loaded(
    List<TrackingServiceInfo> serviceList,
  ) = AccountsStateLoaded;

  const factory AccountsState.loadingFailed({
    required StorageError error,
  }) = AccountsStateLoadingFailed;
}
