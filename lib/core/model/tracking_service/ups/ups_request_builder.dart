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

import 'dart:convert';

import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/model/tracking_service/ups/ups_service_info.dart';
import 'package:libretrack/core/model/type/type.dart';
import 'package:libretrack/logger.dart';

import '../../request_builder.dart';

abstract class BaseUPSRequestBuilder implements RequestBuilder {
  static const _headers = {
    'Access-Control-Allow-Headers':
        'Origin, X-Requested-With, Content-Type, Accept',
    'Access-Control-Allow-Methods': 'POST',
    'Access-Control-Allow-Origin': '*',
    'Content-Type': 'application/json',
  };

  final UPSAuthData _authData;

  Uri get _requestUrl;

  BaseUPSRequestBuilder(this._authData);

  @override
  ServiceRequest build({
    required TransactionId transactionId,
    required TrackNumberService trackService,
    Locale? locale,
  }) {
    String? localeStr;
    try {
      localeStr = _validateLocale(locale);
    } on _InvalidLanguageCodeException {
      log(withStack: false).w('[${trackService.trackNumber}] UPS request: '
          'invalid locale $locale; use default locale');
    }
    final body = {
      'UPSSecurity': _makeUPSSecurity(_authData),
      'TrackRequest': {
        'Request': {
          'SubVersion': '1909',
          'RequestAction': 'Track',
          'RequestOption': 'activity',
          'TransactionReference': {
            'CustomerContext': transactionId,
          },
        },
        if (localeStr != null) 'Locale': localeStr,
        'InquiryNumber': trackService.trackNumber,
      },
    };

    return ServiceRequest(
      transactionId: transactionId,
      url: _requestUrl,
      method: RequestMethod.post,
      body: jsonEncode(body),
      headers: _headers,
    );
  }

  String? _validateLocale(Locale? locale) {
    if (locale == null || locale.countryCode == null) {
      return null;
    }
    if (locale.languageCode.isEmpty || locale.countryCode!.isEmpty) {
      return null;
    }
    final localeStr = '${locale.languageCode}_${locale.countryCode}';
    if (localeStr.length > 5) {
      throw _InvalidLanguageCodeException();
    } else {
      return localeStr;
    }
  }

  Map<String, Object> _makeUPSSecurity(UPSAuthData authData) {
    return {
      'UsernameToken': {
        'Username': authData.username,
        'Password': authData.password,
      },
      'ServiceAccessToken': {
        'AccessLicenseNumber': authData.accessLicenseNumber,
      },
    };
  }
}

class _InvalidLanguageCodeException {}

class UPSRequestBuilder extends BaseUPSRequestBuilder {
  UPSRequestBuilder(UPSAuthData authData) : super(authData);

  @override
  Uri get _requestUrl => Uri.https('onlinetools.ups.com', '/json/Track');
}

class DevUPSRequestBuilder extends BaseUPSRequestBuilder {
  DevUPSRequestBuilder(UPSAuthData authData) : super(authData);

  @override
  Uri get _requestUrl => Uri.https('wwwcie.ups.com', '/json/Track');
}
