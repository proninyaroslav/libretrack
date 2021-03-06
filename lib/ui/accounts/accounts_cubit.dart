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

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/storage/service_repository.dart';
import 'package:libretrack/core/storage/storage_result.dart';

part 'accounts_cubit.freezed.dart';

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

@injectable
class AccountsCubit extends Cubit<AccountsState> {
  final ServiceRepository _serviceRepo;

  AccountsCubit(this._serviceRepo) : super(const AccountsState.initial());

  Future<void> observeServices() async {
    emit(const AccountsState.initial());
    final stream = _serviceRepo.observeAllServices();
    await for (final result in stream) {
      result.when(
        (serviceList) => emit(AccountsState.loaded(serviceList)),
        error: (e) => emit(AccountsState.loadingFailed(error: e)),
      );
      if (result is StorageResultError) {
        break;
      }
    }
  }
}
