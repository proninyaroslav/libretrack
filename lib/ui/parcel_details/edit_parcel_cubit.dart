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
import 'package:libretrack/core/storage/track_number_repository.dart';

part 'edit_parcel_cubit.freezed.dart';

@freezed
class EditParcelState with _$EditParcelState {
  const factory EditParcelState.initial({
    @Default(ParcelName()) ParcelName name,
  }) = EditParcelStateInitial;

  const factory EditParcelState.fieldChanged({
    required ParcelName name,
  }) = EditParcelStateFieldChanged;

  const factory EditParcelState.editing() = EditParcelStateEditing;

  const factory EditParcelState.edited({
    required ParcelName name,
  }) = EditParcelStateEdited;

  const factory EditParcelState.editFailed({
    required ParcelName name,
    Exception? exception,
    StackTrace? stackTrace,
  }) = EditParcelStateEditFailed;
}

@freezed
class ParcelName with _$ParcelName {
  const factory ParcelName({
    String? value,
  }) = _ParcelName;
}

@injectable
class EditParcelCubit extends Cubit<EditParcelState> {
  final TrackNumberRepository _trackRepo;

  EditParcelCubit(this._trackRepo) : super(const EditParcelState.initial());

  void nameChanged(String? value) {
    _handleCurrentState(() {
      emit(
        EditParcelState.fieldChanged(
          name: ParcelName(value: value),
        ),
      );
    });
  }

  void _handleCurrentState(VoidCallback onEmit) {
    state.when(
      initial: (name) => onEmit(),
      fieldChanged: (name) => onEmit(),
      editFailed: (name, exception, stackTrace) => onEmit(),
      editing: () => throw StateError('Cannot change fields while editing'),
      edited: (name) => onEmit(),
    );
  }

  Future<void> apply({
    required TrackNumberInfo trackInfo,
  }) async {
    await state.when(
      initial: (name) => _apply(trackInfo, name),
      fieldChanged: (name) => _apply(trackInfo, name),
      editing: () {},
      edited: (name) => _apply(trackInfo, name),
      editFailed: (name, exception, stackTrace) {
        return _apply(trackInfo, name);
      },
    );
  }

  Future<void> _apply(
    TrackNumberInfo trackInfo,
    ParcelName name,
  ) async {
    emit(const EditParcelState.editing());
    final res = await _trackRepo.updateTrack(
      trackInfo.copyWith(description: name.value ?? ''),
    );
    res.when(
      (value) => emit(EditParcelState.edited(name: name)),
      error: (e) => e.when(
        database: (exception, stackTrace) => emit(
          EditParcelState.editFailed(
            name: name,
            exception: exception,
            stackTrace: stackTrace,
          ),
        ),
      ),
    );
  }
}
