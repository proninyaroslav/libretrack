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

import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/model/tracking_service/tracking_service.dart';
import 'package:libretrack/core/model/type/locale.dart';
import 'package:xml/xml.dart';

import '../../request_builder.dart';

class USPSRequestBuilder implements RequestBuilder {
  final USPSAuthData _authData;

  USPSRequestBuilder(this._authData);

  @override
  ServiceRequest build({
    required TransactionId transactionId,
    required TrackNumberService trackService,
    Locale? locale,
  }) {
    final builder = XmlBuilder();
    builder.element(
      'TrackFieldRequest',
      attributes: {'USERID': _authData.username},
      nest: () {
        builder.element('Revision', nest: '1');
        builder.element('ClientIp', nest: '127.0.0.1');
        builder.element('SourceId', nest: _authData.companyName);
        builder.element('TrackID', attributes: {
          'ID': trackService.trackNumber,
        });
      },
    );

    return ServiceRequest(
      transactionId: transactionId,
      url: _buildRequestUrl(builder.buildDocument()),
      method: RequestMethod.get,
    );
  }

  Uri _buildRequestUrl(XmlDocument xml) => Uri(
        scheme: 'https',
        host: 'secure.shippingapis.com',
        path: 'ShippingAPI.dll',
        queryParameters: {
          'API': 'TrackV2',
          'XML': xml.toXmlString(),
        },
      );
}
