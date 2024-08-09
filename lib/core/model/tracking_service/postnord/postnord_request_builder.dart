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

import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/model/tracking_service/postnord/postnord_service_info.dart';
import 'package:libretrack/core/model/type/type.dart';
import 'package:libretrack/logger.dart';

import '../../request_builder.dart';

abstract class BasePostNordRequestBuilder implements RequestBuilder {
  static const _apiVersion = 5;

  final PostNordAuthData _authData;

  Uri get _requestUrl;

  BasePostNordRequestBuilder(this._authData);

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
      log(withStack: false).w('[${trackService.trackNumber}] PostNord request: '
          'invalid locale $locale; use default locale (${PostNordLocale.defaultLocale})');
    }

    return ServiceRequest(
      transactionId: transactionId,
      url: _buildUrl(_authData, trackService, localeStr),
      method: RequestMethod.get,
      headers: _buildHeaders(transactionId),
    );
  }

  Map<String, String> _buildHeaders(TransactionId transactionId) {
    return {
      'Content-Type': 'application/json',
      'X-External-Request-ID': transactionId.toJson(),
    };
  }

  Uri _buildUrl(
    PostNordAuthData authData,
    TrackNumberService trackService,
    String? locale,
  ) {
    return Uri(
        scheme: _requestUrl.scheme,
        host: _requestUrl.host,
        path:
            '/rest/shipment/v$_apiVersion/trackandtrace/findByIdentifier.json',
        queryParameters: {
          'apikey': authData.apiKey,
          'id': trackService.trackNumber,
          'locale': locale ?? PostNordLocale.defaultLocale,
        });
  }

  String? _validateLocale(Locale? locale) {
    final languageCode = locale?.languageCode;
    if (languageCode == null || languageCode.isEmpty) {
      return null;
    }
    if (PostNordLocale.list.contains(languageCode)) {
      return languageCode;
    } else {
      throw _InvalidLanguageCodeException();
    }
  }
}

class _InvalidLanguageCodeException {}

class PostNordRequestBuilder extends BasePostNordRequestBuilder {
  PostNordRequestBuilder(super.authData);

  @override
  Uri get _requestUrl => Uri.https('api2.postnord.com');
}

class DevPostNordRequestBuilder extends BasePostNordRequestBuilder {
  DevPostNordRequestBuilder(super.authData);

  @override
  Uri get _requestUrl =>
      Uri.https('api2.postnord.com' /* atapi2.postnord.com */);
}
