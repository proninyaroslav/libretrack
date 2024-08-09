// Copyright (C) 2024 Yaroslav Pronin <proninyaroslav@mail.ru>
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

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:libretrack/core/entity/service_auth.dart';

part 'postnord_service_info.freezed.dart';

const String _apiKey = 'apiKey';

class PostNordLocale {
  PostNordLocale._();

  static const list = {'en', 'sv', 'no', 'da', 'fi'};
  static const defaultLocale = 'en';
}

@freezed
class PostNordAuthData with _$PostNordAuthData {
  const factory PostNordAuthData({required String apiKey}) = _PostNordAuthData;

  const PostNordAuthData._();

  static PostNordAuthData from(AuthData authData) {
    return PostNordAuthData(apiKey: authData[_apiKey]!);
  }

  AuthData toAuthData() {
    return AuthData(
      {_apiKey: apiKey},
    );
  }
}
