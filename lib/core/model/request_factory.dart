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

import 'package:injectable/injectable.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/model/tracking_service/usps/usps_request_builder.dart';
import 'package:libretrack/env.dart';

import 'request_builder.dart';
import 'tracking_service/tracking_service.dart';

abstract class RequestFactory {
  RequestBuilder builderOf({
    required TrackingServiceInfo info,
    required AuthData authData,
  });
}

@Injectable(as: RequestFactory, env: [Env.prod])
class RequestFactoryImpl implements RequestFactory {
  @override
  RequestBuilder builderOf({
    required TrackingServiceInfo info,
    required AuthData authData,
  }) =>
      _mapServiceToBuilder(info: info, authData: authData);
}

@Injectable(as: RequestFactory, env: [Env.dev, Env.test])
class DevRequestFactoryImpl implements RequestFactory {
  @override
  RequestBuilder builderOf({
    required TrackingServiceInfo info,
    required AuthData authData,
  }) =>
      _mapServiceToBuilder(
        info: info,
        authData: authData,
        isProduction: false,
      );
}

RequestBuilder _mapServiceToBuilder({
  required TrackingServiceInfo info,
  required AuthData authData,
  bool isProduction = true,
}) {
  switch (info.type) {
    case TrackingServiceType.ups:
      final upsAuthData = UPSAuthData.from(authData);
      return isProduction
          ? UPSRequestBuilder(upsAuthData)
          : DevUPSRequestBuilder(upsAuthData);
    case TrackingServiceType.russianPost:
      final rpAuthData = RussianPostAuthData.from(authData);
      return RussianPostRequestBuilder(rpAuthData);
    case TrackingServiceType.usps:
      final uspsAuthData = USPSAuthData.from(authData);
      return USPSRequestBuilder(uspsAuthData);
  }
}
