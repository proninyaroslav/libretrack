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
    _Cash? cashOnDelivery,
        declaredValue,
        customDuty,
        additionalRateFee,
        shippingRateFee,
        insuranceRateFee;
    String? serviceDescription, shipmentDescription;
    _Weight? weight;
    _DateTime? pickupDate, deliveryDate;
    String? receiverName, shipperName;
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
        declaredValue ??= _parseDeclaredValue(financeParameters);
        customDuty ??= _parseCustomDuty(financeParameters);
        additionalRateFee ??= _parseAdditionalRateFee(financeParameters);
        shippingRateFee ??= _parseShippingRateFee(financeParameters);
        insuranceRateFee ??= _parseInsuranceRateFee(financeParameters);
      }

      if (itemParameters != null) {
        serviceDescription ??= _parseServiceDescription(itemParameters);
        shipmentDescription ??= _parseShipmentDescription(itemParameters);
        weight ??= _parseWeight(itemParameters);
      }

      final userParameters = record.getElement('ns3:UserParameters');
      if (userParameters != null) {
        receiverName ??= _parseReceiverName(userParameters);
        shipperName ??= _parseShipperName(userParameters);
      }

      final operationParameters = record.getElement('ns3:OperationParameters');
      _Status? status;
      _DateTime? activityDateTime;
      if (operationParameters != null) {
        status ??= _parseStatus(operationParameters);
        activityDateTime ??= _parseActivityDateTime(operationParameters);
      }
      if (status != null) {
        if (pickupDate == null && status.type == ShipmentStatusType.pickup) {
          pickupDate = activityDateTime;
        }
        if (deliveryDate == null &&
            status.type == ShipmentStatusType.delivered) {
          deliveryDate = activityDateTime;
        }
        activityList.add(
          ShipmentActivityInfo.from(
            trackNumber: trackNumber,
            serviceType: PostalServiceType.russianPost,
            statusType: status.type ?? ShipmentStatusType.notAvailable,
            statusDescription: status.description,
            activityLocation: activityLocation,
            dateTime: activityDateTime?.toDateTime(),
          ),
        );
      }
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
        deliveryDate: deliveryDate?.toDateTime(),
        pickupDate: pickupDate?.toDateTime(),
        declaredValue: declaredValue?.toCashValue(),
        customDuty: customDuty?.toCashValue(),
        additionalRateFee: additionalRateFee?.toCashValue(),
        shippingRateFee: shippingRateFee?.toCashValue(),
        insuranceRateFee: insuranceRateFee?.toCashValue(),
        shipperName: shipperName,
        receiverName: receiverName,
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

  _Cash? _parseDeclaredValue(XmlElement financeParameters) {
    final value = financeParameters.getElement('ns3:Value')?.innerText;
    return value == null ? null : _Cash(value);
  }

  _Cash? _parseCustomDuty(XmlElement financeParameters) {
    final value = financeParameters.getElement('ns3:CustomDuty')?.innerText;
    return value == null ? null : _Cash(value);
  }

  _Cash? _parseAdditionalRateFee(XmlElement financeParameters) {
    final value = financeParameters.getElement('ns3:Rate')?.innerText;
    return value == null ? null : _Cash(value);
  }

  _Cash? _parseShippingRateFee(XmlElement financeParameters) {
    final value = financeParameters.getElement('ns3:MassRate')?.innerText;
    return value == null ? null : _Cash(value);
  }

  _Cash? _parseInsuranceRateFee(XmlElement financeParameters) {
    final value = financeParameters.getElement('ns3:InsrRate')?.innerText;
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

  _Status _parseStatus(XmlElement operationParameters) {
    final type = operationParameters.getElement('ns3:OperType');
    final typeId = type?.getElement('ns3:Id')?.innerText;
    final typeName = type?.getElement('ns3:Name')?.innerText;

    final attr = operationParameters.getElement('ns3:OperAttr');
    final attrId = attr?.getElement('ns3:Id')?.innerText;
    final attrName = attr?.getElement('ns3:Name')?.innerText;

    final statusType = _shipmentStatusTypeMap['$typeId:$attrId'] ??
        _shipmentStatusTypeMap[typeId];
    final description = [
      if (typeName != null) typeName,
      if (attrName != null) attrName,
    ].join(' - ');
    return _Status(
      type: statusType,
      description: description.isEmpty ? null : description,
    );
  }

  _DateTime? _parseActivityDateTime(XmlElement operationParameters) {
    final date = operationParameters.getElement('ns3:OperDate')?.innerText;
    return date == null ? null : _DateTime(date);
  }

  String? _parseReceiverName(XmlElement userParameters) {
    final value = userParameters.getElement('ns3:Rcpn')?.innerText;
    return value == null || value.isEmpty ? null : value;
  }

  String? _parseShipperName(XmlElement userParameters) {
    final value = userParameters.getElement('ns3:Sndr')?.innerText;
    return value == null || value.isEmpty ? null : value;
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

  Currency toCashValue() => Currency(int.parse(value) / 100, 'RUB');
}

class _Weight {
  String value;

  _Weight(this.value);

  UnitOfMeasurement toUnitOfMeasurement() => UnitOfMeasurement(
        value: int.parse(value) / 1000,
        measurement: Measurement.kilogram,
      );
}

class _Status {
  final ShipmentStatusType? type;
  final String? description;

  _Status({required this.type, this.description});
}

class _DateTime {
  final String dateTime;

  const _DateTime(this.dateTime);

  DateTime? toDateTime() => DateTime.tryParse(dateTime);
}

const _undefinedIdCode = '0';

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

/// Format: "operType:operAttr": status
const _shipmentStatusTypeMap = <String, ShipmentStatusType>{
  '1': ShipmentStatusType.pickup,
  '1:3': ShipmentStatusType.infoReceived,
  '2': ShipmentStatusType.delivered,
  '3': ShipmentStatusType.returnedToShipper,
  '4': ShipmentStatusType.inTransit,
  '5': ShipmentStatusType.notDelivered,
  '6': ShipmentStatusType.inStorage,
  '7': ShipmentStatusType.inStorage,
  '8': ShipmentStatusType.inTransit,
  '8:1': ShipmentStatusType.inTransitDepartedWaypoint,
  '8:2': ShipmentStatusType.outForDelivery,
  '8:3': ShipmentStatusType.inTransitArrivedWaypoint,
  '8:4': ShipmentStatusType.inTransitDepartedWaypoint,
  '8:5': ShipmentStatusType.inTransitArrivedWaypoint,
  '8:6': ShipmentStatusType.inTransitDepartedWaypoint,
  '8:7': ShipmentStatusType.inTransitArrivedWaypoint,
  '8:8': ShipmentStatusType.inTransitDepartedWaypoint,
  '8:9': ShipmentStatusType.outForDelivery,
  '8:10': ShipmentStatusType.outForDelivery,
  '8:13': ShipmentStatusType.importedToDestinationCountry,
  '8:14': ShipmentStatusType.outForDelivery,
  '8:15': ShipmentStatusType.outForDelivery,
  '8:16': ShipmentStatusType.outForDelivery,
  '8:17': ShipmentStatusType.inTransitDepartedWaypoint,
  '8:18': ShipmentStatusType.outForDelivery,
  '8:19': ShipmentStatusType.inStorage,
  '8:20': ShipmentStatusType.inTransitDepartedWaypoint,
  '8:23': ShipmentStatusType.outForDelivery,
  '8:24': ShipmentStatusType.outForDelivery,
  '8:25': ShipmentStatusType.outForDelivery,
  '8:26': ShipmentStatusType.other,
  '8:27': ShipmentStatusType.outForDelivery,
  '8:28': ShipmentStatusType.outForDelivery,
  '8:29': ShipmentStatusType.other,
  '8:30': ShipmentStatusType.inTransitArrivedWaypoint,
  '8:31': ShipmentStatusType.inTransitDepartedWaypoint,
  '8:33': ShipmentStatusType.outForDelivery,
  '8:34': ShipmentStatusType.other,
  '8:35': ShipmentStatusType.outForDelivery,
  '8:37': ShipmentStatusType.outForDelivery,
  '8:38': ShipmentStatusType.outForDelivery,
  '8:40': ShipmentStatusType.notDelivered,
  '8:41': ShipmentStatusType.returnedToShipper,
  '8:42': ShipmentStatusType.outForDelivery,
  '8:43': ShipmentStatusType.outForDelivery,
  '8:47': ShipmentStatusType.other,
  '8:50': ShipmentStatusType.other,
  '9': ShipmentStatusType.importedToDestinationCountry,
  '10': ShipmentStatusType.exportedFromDepartureCountry,
  '11': ShipmentStatusType.arrivedAtCustoms,
  '12': ShipmentStatusType.notDelivered,
  '13': ShipmentStatusType.infoReceived,
  '14': ShipmentStatusType.arrivedAtCustoms,
  '14:1': ShipmentStatusType.customsClearanceComplete,
  '14:16': ShipmentStatusType.customsClearanceComplete,
  '15': ShipmentStatusType.inTransit,
  '16': ShipmentStatusType.notDelivered,
  '17': ShipmentStatusType.other,
  '18': ShipmentStatusType.notDelivered,
  '19': ShipmentStatusType.other,
  '20': ShipmentStatusType.infoReceived,
  '21': ShipmentStatusType.delivered,
  '22': ShipmentStatusType.notDelivered,
  '23': ShipmentStatusType.inStorage,
  '24': ShipmentStatusType.inTransit,
  '25': ShipmentStatusType.other,
  '26': ShipmentStatusType.other,
  '27': ShipmentStatusType.infoReceived,
  '28': ShipmentStatusType.infoReceived,
  '29': ShipmentStatusType.importedToDestinationCountry,
  '30': ShipmentStatusType.inTransit,
  '31': ShipmentStatusType.inTransit,
  '31:21': ShipmentStatusType.inTransitArrivedWaypoint,
  '31:23': ShipmentStatusType.importedToDestinationCountry,
  '31:40': ShipmentStatusType.inTransitArrivedWaypoint,
  '32': ShipmentStatusType.inTransit,
  '33': ShipmentStatusType.inTransit,
  '33:1': ShipmentStatusType.inTransitDepartedWaypoint,
  '33:2': ShipmentStatusType.inTransitArrivedWaypoint,
  '34': ShipmentStatusType.other,
  '35': ShipmentStatusType.notDelivered,
  '36': ShipmentStatusType.other,
  '37': ShipmentStatusType.infoReceived,
  '38': ShipmentStatusType.inTransit,
  '39': ShipmentStatusType.inTransit,
  '40': ShipmentStatusType.inTransit,
  '41': ShipmentStatusType.other,
  '42': ShipmentStatusType.notDelivered,
  '42:8': ShipmentStatusType.outForDelivery,
  '42:9': ShipmentStatusType.outForDelivery,
  '43': ShipmentStatusType.other,
  '44': ShipmentStatusType.other,
  '45': ShipmentStatusType.other,
  '46': ShipmentStatusType.other,
  '47': ShipmentStatusType.other,
  '48': ShipmentStatusType.other,
  '49': ShipmentStatusType.other,
  '50': ShipmentStatusType.notDelivered,
  '51': ShipmentStatusType.notDelivered,
  '52': ShipmentStatusType.other,
};
