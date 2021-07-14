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

import 'package:libretrack/core/entity/track_number_info.dart';
import 'package:libretrack/core/entity/transaction_id.dart';
import 'package:libretrack/core/model/type/locale.dart';
import 'package:xml/xml.dart';

import '../../request_builder.dart';
import 'russian_post_service_info.dart';

class RussianPostRequestBuilder implements RequestBuilder {
  static final _requestUrl = Uri.parse('https://tracking.russianpost.ru/rtm34');
  static const _namespaces = {
    'http://www.w3.org/2003/05/soap-envelope': 'soap',
    'http://russianpost.org/operationhistory': 'oper',
    'http://russianpost.org/operationhistory/data': 'data',
    'http://schemas.xmlsoap.org/soap/envelope': 'soapenv',
  };
  static const _headers = {
    'Content-Type': 'application/soap+xml; charset=utf-8',
  };

  final RussianPostAuthData authData;

  RussianPostRequestBuilder(this.authData);

  @override
  ServiceRequest build({
    required TransactionId transactionId,
    required TrackNumberService trackService,
    Locale? locale,
  }) {
    String localeStr = _getLocaleStr(locale);

    final builder = XmlBuilder();
    builder.processing('xml', 'version="1.0" encoding="UTF-8"');
    builder.element('soap:Envelope', namespaces: _namespaces, nest: () {
      builder.element('soap:Header');
      builder.element('soap:Body', nest: () {
        builder.element('oper:getOperationHistory', nest: () {
          builder.element('data:OperationHistoryRequest', nest: () {
            builder.element('data:Barcode', nest: trackService.trackNumber);
            builder.element('data:MessageType', nest: 0);
            builder.element('data:Language', nest: localeStr);
          });
          builder.element(
            'data:AuthorizationHeader',
            attributes: {'soapenv:mustUnderstand': '1'},
            nest: () {
              builder.element('data:login', nest: authData.login);
              builder.element('data:password', nest: authData.password);
            },
          );
        });
      });
    });

    return ServiceRequest(
      transactionId: transactionId,
      url: _requestUrl,
      method: RequestMethod.post,
      headers: _headers,
      body: builder.buildDocument().toXmlString(),
    );
  }

  String _getLocaleStr(Locale? locale) {
    if (locale?.languageCode == 'ru') {
      return _SupportedLocale.rus;
    } else {
      return _SupportedLocale.eng;
    }
  }
}

class _SupportedLocale {
  static const String rus = 'RUS';
  static const String eng = 'ENG';
}
