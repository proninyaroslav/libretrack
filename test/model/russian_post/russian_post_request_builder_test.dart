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

import 'package:flutter_test/flutter_test.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/model/tracking_service/tracking_service.dart';
import 'package:libretrack/core/model/type/type.dart';
import 'package:uuid/uuid.dart';
import 'package:xml/xml.dart';

void main() {
  group('Russian Post request builder |', () {
    const trackService = TrackNumberService(
      trackNumber: '123',
      serviceType: PostalServiceType.russianPost,
    );
    final rpAuthData = RussianPostAuthData.from(
      const AuthData({
        'login': 'foo',
        'password': 'bar',
      }),
    );
    final builder = RussianPostRequestBuilder(rpAuthData);

    test('Build request', () {
      final expectedUrl = Uri.parse('https://tracking.russianpost.ru/rtm34');
      final r = builder.build(
        transactionId: TransactionId(const Uuid().v4()),
        trackService: trackService,
      );

      expect(r.transactionId, isNotNull);
      expect(r.url, expectedUrl);

      final actualBody = XmlDocument.parse(r.body!);

      final envelope = actualBody.getElement('soap:Envelope');
      expect(envelope, isNotNull);
      expect(
        Map.fromEntries(
          envelope!.attributes.map(
            (a) => MapEntry(a.name.local, a.value),
          ),
        ),
        {
          'soap': 'http://www.w3.org/2003/05/soap-envelope',
          'oper': 'http://russianpost.org/operationhistory',
          'data': 'http://russianpost.org/operationhistory/data',
          'soapenv': 'http://schemas.xmlsoap.org/soap/envelope',
        },
      );
      expect(envelope.getElement('soap:Header'), isNotNull);

      final body = envelope.getElement('soap:Body');
      expect(body, isNotNull);

      final getOperationHistory = body!.getElement('oper:getOperationHistory');
      expect(getOperationHistory, isNotNull);

      final operationHistoryRequest = getOperationHistory!.getElement(
        'data:OperationHistoryRequest',
      );
      expect(operationHistoryRequest, isNotNull);

      final barcode = operationHistoryRequest!.getElement('data:Barcode');
      expect(barcode?.innerText, trackService.trackNumber);

      final messageType = operationHistoryRequest.getElement(
        'data:MessageType',
      );
      expect(messageType?.innerText, '0');

      final language = operationHistoryRequest.getElement('data:Language');
      expect(language?.innerText, 'ENG');

      final authorizationHeader = getOperationHistory.getElement(
        'data:AuthorizationHeader',
      );
      expect(authorizationHeader?.getAttribute('soapenv:mustUnderstand'), '1');

      final login = authorizationHeader!.getElement('data:login');
      expect(login?.innerText, rpAuthData.login);

      final password = authorizationHeader.getElement('data:password');
      expect(password?.innerText, rpAuthData.password);
    });

    test('Locale', () {
      final r = builder.build(
        transactionId: TransactionId(const Uuid().v4()),
        trackService: trackService,
        locale: const Locale('ru', 'RU'),
      );
      final bodyXml = XmlDocument.parse(r.body!);
      final envelope = bodyXml.getElement('soap:Envelope');
      final body = envelope?.getElement('soap:Body');
      final getOperationHistory = body?.getElement('oper:getOperationHistory');
      final operationHistoryRequest = getOperationHistory?.getElement(
        'data:OperationHistoryRequest',
      );
      final language = operationHistoryRequest?.getElement('data:Language');
      expect(language?.innerText, 'RUS');
    });

    test('Unsupported locale', () {
      final r = builder.build(
        transactionId: TransactionId(const Uuid().v4()),
        trackService: trackService,
        locale: const Locale('zh', 'CN'),
      );
      final bodyXml = XmlDocument.parse(r.body!);
      final envelope = bodyXml.getElement('soap:Envelope');
      final body = envelope?.getElement('soap:Body');
      final getOperationHistory = body?.getElement('oper:getOperationHistory');
      final operationHistoryRequest = getOperationHistory?.getElement(
        'data:OperationHistoryRequest',
      );
      final language = operationHistoryRequest?.getElement('data:Language');
      expect(language?.innerText, 'ENG');
    });
  });
}
