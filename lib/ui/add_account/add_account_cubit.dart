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

part 'add_account_cubit.freezed.dart';

@freezed
class AddAccountState with _$AddAccountState {
  const factory AddAccountState.initial() = AddAccountStateInitial;

  const factory AddAccountState.adding() = AddAccountStateAdding;

  const factory AddAccountState.added() = AddAccountStateAdded;

  const factory AddAccountState.addFailed({
    Exception? exception,
    StackTrace? stackTrace,
  }) = AddAccountStateAddFailed;
}

@injectable
class AddAccountCubit extends Cubit<AddAccountState> {
  final ServiceRepository _serviceRepo;

  AddAccountCubit(this._serviceRepo) : super(const AddAccountState.initial());

  Future<void> addAccount({
    required TrackingServiceType serviceType,
    required AuthData authData,
  }) async {
    emit(const AddAccountState.adding());
    final res = await _serviceRepo.addService(
      info: TrackingServiceInfo(type: serviceType),
      authData: authData,
    );
    res.when(
      (_) => emit(const AddAccountState.added()),
      error: (error) {
        error.when(database: (e, stackTrace) {
          emit(AddAccountState.addFailed(
            exception: e,
            stackTrace: stackTrace,
          ));
        });
      },
    );
  }
}
