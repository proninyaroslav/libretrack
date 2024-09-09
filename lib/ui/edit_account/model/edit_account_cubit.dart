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
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/storage/service_repository.dart';
import 'package:libretrack/ui/edit_account/model/edit_account_state.dart';

class EditAccountCubit extends Cubit<EditAccountState> {
  final ServiceRepository _serviceRepo;

  EditAccountCubit(this._serviceRepo) : super(const EditAccountState.initial());

  Future<void> apply({
    required TrackingServiceType type,
    required AuthData authData,
  }) async {
    emit(const EditAccountState.applying());
    final res = await _serviceRepo.updateAuthData(
      type: type,
      authData: authData,
    );
    res.when(
      (_) => emit(const EditAccountState.applied()),
      error: (error) {
        error.when(database: (e, stackTrace) {
          emit(EditAccountState.applyFailed(
            exception: e,
            stackTrace: stackTrace,
          ));
        });
      },
    );
  }
}
