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
import 'package:libretrack/core/storage/service_repository.dart';
import 'package:libretrack/core/storage/storage_result.dart';
import 'package:libretrack/ui/accounts/model/accounts_state.dart';
import 'package:libretrack/ui/model/utils.dart';

class AccountsCubit extends Cubit<AccountsState> {
  final ServiceRepository _serviceRepo;

  AccountsCubit(this._serviceRepo) : super(const AccountsState.initial());

  Future<void> observeServices() async {
    emit(const AccountsState.initial());

    final stream = _serviceRepo.observeAllServices();
    await for (final result in stream) {
      final newState = result.when(
        (serviceList) => AccountsState.loaded(serviceList),
        error: (e) => AccountsState.loadingFailed(error: e),
      );

      safeEmit(newState);

      if (result is StorageResultError) {
        break;
      }
    }
  }
}
