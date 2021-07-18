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
import 'package:libretrack/core/model/parser.dart';
import 'package:libretrack/core/model/service_response.dart';
import 'package:libretrack/core/model/type/type.dart';
import 'package:xml/xml.dart';

class RussianPostParser implements Parser {
  late _SupportedLocale _locale;

  @override
  ParseResult parse(ServiceResponse response, {Locale? locale}) {
    _locale = _getSupportedLocale(locale);
    late final XmlDocument root;
    try {
      root = XmlDocument.parse(response.payload);
    } on XmlParserException catch (e) {
      if (response.statusCode != 200) {
        return _handleHttpError(response);
      } else {
        return ParseResult.error(ParseError.format(e.toString()));
      }
    }
    final body = root.getElement('S:Envelope')?.getElement('S:Body');
    final fault = body?.getElement('S:Fault');
    final getOperationHistoryResponse = body?.getElement(
      'ns7:getOperationHistoryResponse',
    );
    if (fault != null) {
      return _parseFault(fault);
    } else if (getOperationHistoryResponse != null) {
      return _parseGetOperationHistoryResponse(getOperationHistoryResponse);
    } else if (response.statusCode != 200) {
      return _handleHttpError(response);
    }

    throw const ParseResult.error(ParseError.format('Unknown XML structure'));
  }

  _SupportedLocale _getSupportedLocale(Locale? locale) {
    if (locale?.languageCode == 'ru') {
      return _SupportedLocale.rus;
    } else {
      return _SupportedLocale.eng;
    }
  }

  ParseResult _handleHttpError(ServiceResponse response) {
    return ParseResult.error(
      ParseError.serviceTemporary(
        code: '${response.statusCode}',
        message: 'HTTP ${response.statusCode}',
      ),
    );
  }

  ParseResult _parseFault(XmlElement fault) {
    final reason = fault.getElement('S:Reason')!.getElement('S:Text');
    final reasonStr = reason!.innerText;
    final code = fault.getElement('S:Code')!.getElement('S:Value');
    final codeStr = code!.innerText;
    final details = fault.getElement('S:Detail');

    return _parseOperationHistoryFaultReason(reasonStr, details) ??
        _parseAuthFaultReason(reasonStr, details) ??
        _parseLangFaultReason(reasonStr, details) ??
        _defaultFaultParser(code: codeStr, reason: reasonStr);
  }

  ParseResult _defaultFaultParser({
    required String code,
    required String reason,
  }) {
    return ParseResult.error(
      code == _SoapErrorCode.sender ||
              code == _SoapErrorCode.dataEncodingUnknown ||
              code == _SoapErrorCode.versionMismatch
          ? ParseError.format(reason)
          : ParseError.badRequest(message: reason),
    );
  }

  ParseResult? _parseOperationHistoryFaultReason(
    String reasonStr,
    XmlElement? details,
  ) {
    final operationHistoryFaultReason = details?.getElement(
      'ns3:OperationHistoryFaultReason',
    );
    return operationHistoryFaultReason == null
        ? null
        : _parseInvalidTrackingNumber(operationHistoryFaultReason) ??
            ParseResult.error(
              ParseError.serviceHard(
                message:
                    '[$reasonStr] ${operationHistoryFaultReason.innerText}',
              ),
            );
  }

  ParseResult? _parseInvalidTrackingNumber(
    XmlElement operationHistoryFaultReason,
  ) {
    final message = operationHistoryFaultReason.innerText;
    if (message == _ErrorMessage.invalidTrackNumberEng ||
        message == _ErrorMessage.invalidTrackNumberRus) {
      return const ParseResult.error(ParseError.invalidTrackNumber());
    } else {
      return null;
    }
  }

  ParseResult? _parseAuthFaultReason(
    String reasonStr,
    XmlElement? details,
  ) {
    final authFaultReason = details?.getElement(
      'ns3:AuthorizationFaultReason',
    );
    return authFaultReason == null
        ? null
        : ParseResult.error(
            ParseError.auth(
              message: '[$reasonStr] ${authFaultReason.innerText}',
            ),
          );
  }

  ParseResult? _parseLangFaultReason(
    String reasonStr,
    XmlElement? details,
  ) {
    final langFaultReason = details?.getElement(
      'ns3:LanguageFaultReason',
    );
    return langFaultReason == null
        ? null
        : ParseResult.error(
            ParseError.badRequest(
              message: '[$reasonStr] ${langFaultReason.innerText}',
            ),
          );
  }

  ParseResult _parseGetOperationHistoryResponse(
    XmlElement getOperationHistoryResponse,
  ) {
    final operationHistoryData = getOperationHistoryResponse.getElement(
      'ns3:OperationHistoryData',
    );
    final historyRecords =
        operationHistoryData!.findElements('ns3:historyRecord');
    if (historyRecords.isEmpty) {
      return const ParseResult.noInfo();
    }
    final activityList = <ShipmentActivityInfo>[];
    Address? shipToAddress, shipFromAddress;
    String? trackNumber;
    _Cash? cashOnDelivery;
    String? serviceDescription, shipmentDescription;
    _Weight? weight;
    for (final record in historyRecords.toList().reversed) {
      Address? activityLocation;
      final itemParameters = record.getElement('ns3:ItemParameters');
      if (itemParameters != null) {
        trackNumber ??= _parseTrackingNumber(itemParameters);
      }
      if (trackNumber == null || trackNumber.isEmpty) {
        return const ParseResult.error(
          ParseError.format(
            'Barcode not found',
          ),
        );
      }

      final addressParameters = record.getElement('ns3:AddressParameters');
      if (addressParameters != null) {
        shipToAddress ??= _parseAddress(
          addressParameters,
          _AddressType.shipTo,
        );
        shipFromAddress ??= _parseAddress(
          addressParameters,
          _AddressType.shipFrom,
        );
        activityLocation = _parseAddress(
          addressParameters,
          _AddressType.operation,
        );
      }

      final financeParameters = record.getElement('ns3:FinanceParameters');
      if (financeParameters != null) {
        cashOnDelivery ??= _parseCashOnDelivery(financeParameters);
      }

      if (itemParameters != null) {
        serviceDescription ??= _parseServiceDescription(itemParameters);
        shipmentDescription ??= _parseShipmentDescription(itemParameters);
        weight ??= _parseWeight(itemParameters);
      }

      activityList.add(
        ShipmentActivityInfo.from(
          trackNumber: trackNumber,
          serviceType: PostalServiceType.russianPost,
          statusType: ShipmentStatusType.delivered,
          activityLocation: activityLocation,
        ),
      );
    }

    return ParseResult(
      info: ShipmentInfo.from(
        trackNumber: trackNumber!,
        serviceType: PostalServiceType.russianPost,
        shipperAddress: shipFromAddress,
        receiverAddress: shipToAddress,
        cashOnDelivery: cashOnDelivery?.toCashValue(),
        serviceDescription: serviceDescription,
        shipmentDescription: shipmentDescription,
        weight: weight?.toUnitOfMeasurement(),
      ),
      activity: activityList,
    );
  }

  String? _parseTrackingNumber(XmlElement itemParameters) {
    return itemParameters.getElement('ns3:Barcode')?.innerText;
  }

  Address? _parseAddress(XmlElement addressParameters, _AddressType type) {
    late final XmlElement? address;
    late final XmlElement? country;
    switch (type) {
      case _AddressType.shipTo:
        address = addressParameters.getElement('ns3:DestinationAddress');
        country = addressParameters.getElement('ns3:MailDirect');
        break;
      case _AddressType.shipFrom:
        address = null;
        country = addressParameters.getElement('ns3:CountryFrom');
        break;
      case _AddressType.operation:
        address = addressParameters.getElement('ns3:OperationAddress');
        country = addressParameters.getElement('ns3:CountryOper');
        break;
    }
    if (address == null && country == null) {
      return null;
    }
    final postalCode = address?.getElement('ns3:Index')?.innerText;
    final description = address?.getElement('ns3:Description')?.innerText;
    late String? countryName;
    switch (_locale) {
      case _SupportedLocale.rus:
        countryName = country?.getElement('ns3:NameRU')?.innerText;
        break;
      case _SupportedLocale.eng:
        countryName = country?.getElement('ns3:NameEN')?.innerText;
        break;
    }
    final countryCode =
        (country?.getElement('ns3:Code2A') ?? country?.getElement('ns3:Code3A'))
            ?.innerText;

    final location = [
      if (description != null) description,
      if (countryName != null) countryName,
    ];

    return Address(
      location: location.isEmpty ? null : location.join(', '),
      postalCode: postalCode,
      countryCode: countryCode,
    );
  }

  _Cash? _parseCashOnDelivery(XmlElement financeParameters) {
    final value = financeParameters.getElement('ns3:Payment')?.innerText;
    return value == null ? null : _Cash(value);
  }

  String? _parseServiceDescription(XmlElement itemParameters) {
    final mailType = itemParameters.getElement('ns3:MailType');
    final id = mailType?.getElement('ns3:Id')?.innerText;
    final name = mailType?.getElement('ns3:Name')?.innerText;
    return _nonServiceMailId.contains(id) ? null : name;
  }

  String? _parseShipmentDescription(XmlElement itemParameters) {
    final complexItemName =
        itemParameters.getElement('ns3:ComplexItemName')?.innerText;

    final mailRank = itemParameters.getElement('ns3:MailRank');
    final mailRankName = _parseMailRank(mailRank);

    final postMark = itemParameters.getElement('ns3:PostMark');
    final postMarkName = _parsePostMark(postMark);

    if (complexItemName != null) {
      return [
        complexItemName,
        if (mailRankName != null) mailRankName,
        if (postMarkName != null) postMarkName,
      ].join(' ');
    } else {
      final mailType = itemParameters.getElement('ns3:MailType');
      final mailTypeName = _parseMailType(mailType);

      final mailCtg = itemParameters.getElement('ns3:MailCtg');
      final mailCtgName = _parseMailCtg(mailCtg);

      final description = [
        if (mailTypeName != null) mailTypeName,
        if (mailCtgName != null) mailCtgName,
        if (mailRankName != null) mailRankName,
        if (postMarkName != null) postMarkName,
      ];
      return description.isEmpty ? null : description.join(' ');
    }
  }

  String? _parseMailType(XmlElement? mailType) {
    final id = mailType?.getElement('ns3:Id')?.innerText;
    return id == _undefinedIdCode
        ? null
        : mailType?.getElement('ns3:Name')?.innerText;
  }

  String? _parseMailCtg(XmlElement? mailCtg) {
    return mailCtg?.getElement('ns3:Name')?.innerText;
  }

  String? _parseMailRank(XmlElement? mailRank) {
    final id = mailRank?.getElement('ns3:Id')?.innerText;
    return id == _undefinedIdCode
        ? null
        : mailRank?.getElement('ns3:Name')?.innerText;
  }

  String? _parsePostMark(XmlElement? postMark) {
    final id = postMark?.getElement('ns3:Id')?.innerText;
    return id == _undefinedIdCode
        ? null
        : postMark?.getElement('ns3:Name')?.innerText;
  }

  _Weight? _parseWeight(XmlElement itemParameters) {
    final value = itemParameters.getElement('ns3:Mass')?.innerText;
    return value == null ? null : _Weight(value);
  }
}

class _SoapErrorCode {
  // ignore: unused_field
  static const sender = 'S:Sender';

  // ignore: unused_field
  static const receiver = 'S:Receiver';

  // ignore: unused_field
  static const dataEncodingUnknown = 'S:DataEncodingUnknown';

  // ignore: unused_field
  static const versionMismatch = 'S:VersionMismatch';
}

class _ErrorMessage {
  // ignore: unused_field
  static const invalidTrackNumberEng =
      'The format of the request data is invalid';
  // ignore: unused_field
  static const invalidTrackNumberRus =
      'Формат данных запроса не соответствует установленному в регламенте обмена';
}

enum _SupportedLocale {
  rus,
  eng,
}

enum _AddressType {
  shipTo,
  shipFrom,
  operation,
}

class _Cash {
  String value;

  _Cash(this.value);

  CashOnDelivery toCashValue() =>
      CashOnDelivery(int.parse(value) ~/ 100, 'RUB');
}

const _nonServiceMailId = {
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '8',
  '9',
  '12',
  '13',
  '14',
};

const _undefinedIdCode = '0';

class _Weight {
  String value;

  _Weight(this.value);

  UnitOfMeasurement toUnitOfMeasurement() => UnitOfMeasurement(
        value: int.parse(value) / 1000,
        measurement: Measurement.kilogram,
      );
}
