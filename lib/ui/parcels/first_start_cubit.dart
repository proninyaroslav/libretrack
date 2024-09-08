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
import 'package:libretrack/core/settings/settings.dart';
import 'package:libretrack/core/storage/service_repository.dart';

part 'first_start_cubit.freezed.dart';

@freezed
class FirstStartState with _$FirstStartState {
  const factory FirstStartState.initial() = FirstStartStateInitial;
  const factory FirstStartState.showAddAccountTip() =
      FirstStartStateShowAddAccountTip;
  const factory FirstStartState.hideAddAccountTip() =
      FirstStartStateHideAddAccountTip;
}

class FirstStartCubit extends Cubit<FirstStartState> {
  final ServiceRepository _serviceRepo;
  final AppSettings _pref;

  FirstStartCubit(
    this._serviceRepo,
    this._pref,
  ) : super(const FirstStartState.initial());

  Future<void> showAddAccountTip() async {
    if (await _pref.addAccountTipShown) {
      emit(const FirstStartState.hideAddAccountTip());
    } else {
      final result = await _serviceRepo.getAllServices();
      result.when(
        (list) => emit(
          list.isEmpty
              ? const FirstStartState.showAddAccountTip()
              : const FirstStartState.hideAddAccountTip(),
        ),
        error: (e) => emit(const FirstStartState.hideAddAccountTip()),
      );
    }
  }

  Future<void> addAccountTipShown() async {
    await _pref.setAddAccountTipShown(true);
    emit(const FirstStartState.hideAddAccountTip());
  }
}
