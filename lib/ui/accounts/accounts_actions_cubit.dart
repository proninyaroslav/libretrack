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
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/storage/service_repository.dart';
import 'package:libretrack/core/storage/storage_result.dart';

part 'accounts_actions_cubit.freezed.dart';

@freezed
class AccountsActionsState with _$AccountsActionsState {
  const factory AccountsActionsState.initial() = AccountsActionsStateInitial;

  const factory AccountsActionsState.deleting() = AccountsActionsStateDeleting;

  const factory AccountsActionsState.deleteSuccess() =
      AccountsActionsStateDeleteSuccess;

  const factory AccountsActionsState.deleteFailed({
    required StorageError error,
  }) = AccountsActionsStateDeleteFailed;
}

class AccountsActionsCubit extends Cubit<AccountsActionsState> {
  final ServiceRepository _serviceRepo;

  AccountsActionsCubit(this._serviceRepo)
      : super(const AccountsActionsState.initial());

  Future<void> deleteService(TrackingServiceInfo info) async {
    emit(const AccountsActionsState.deleting());
    final res = await _serviceRepo.deleteService(info);
    res.when(
      (value) => emit(const AccountsActionsState.deleteSuccess()),
      error: (e) => emit(AccountsActionsState.deleteFailed(error: e)),
    );
  }
}
