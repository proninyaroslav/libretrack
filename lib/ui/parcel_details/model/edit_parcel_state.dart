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

part 'edit_parcel_state.freezed.dart';

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
