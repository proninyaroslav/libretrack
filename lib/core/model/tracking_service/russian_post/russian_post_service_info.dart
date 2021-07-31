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

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:libretrack/core/entity/entity.dart';

part 'russian_post_service_info.freezed.dart';

const String _loginField = 'login';
const String _passwordField = 'password';

@freezed
class RussianPostAuthData with _$RussianPostAuthData {
  const factory RussianPostAuthData({
    required String login,
    required String password,
  }) = _RussianPostAuthData;

  const RussianPostAuthData._();

  // ignore: prefer_constructors_over_static_methods
  static RussianPostAuthData from(AuthData authData) {
    return RussianPostAuthData(
      login: authData[_loginField]!,
      password: authData[_passwordField]!,
    );
  }

  AuthData toAuthData() {
    return AuthData(
      {
        _loginField: login,
        _passwordField: password,
      },
    );
  }
}
