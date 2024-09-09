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

part 'edit_account_state.freezed.dart';

@freezed
class EditAccountState with _$EditAccountState {
  const factory EditAccountState.initial() = EditAccountStateInitial;

  const factory EditAccountState.applying() = EditAccountStateApplying;

  const factory EditAccountState.applied() = EditAccountStateApplied;

  const factory EditAccountState.applyFailed({
    Exception? exception,
    StackTrace? stackTrace,
  }) = EditAccountStateApplyFailed;
}