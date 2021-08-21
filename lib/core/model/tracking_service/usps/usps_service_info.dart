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

part 'usps_service_info.freezed.dart';

const String _usernameField = 'username';
const String _companyNameField = 'companyName';

@freezed
class USPSAuthData with _$USPSAuthData {
  const factory USPSAuthData({
    required String username,
    required String companyName,
  }) = _USPSAuthData;

  const USPSAuthData._();

  // ignore: prefer_constructors_over_static_methods
  static USPSAuthData from(AuthData authData) {
    return USPSAuthData(
      username: authData[_usernameField]!,
      companyName: authData[_companyNameField]!,
    );
  }

  AuthData toAuthData() {
    return AuthData({
      _usernameField: username,
      _companyNameField: companyName,
    });
  }
}
