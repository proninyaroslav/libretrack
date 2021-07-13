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

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:libretrack/core/entity/entity.dart';

import '../../parser.dart';
import '../../service_response.dart';

part 'ups_parser.freezed.dart';

class UPSParser implements Parser {
  @override
  ParseResult parse(ServiceResponse response) {
    Map<String, dynamic> root;
    try {
      root = jsonDecode(response.payload) as Map<String, dynamic>;
    } on FormatException catch (e) {
      return ParseResult.error(ParseError.format(e.toString()));
    }

    if (root['Error'] != null) {
      return _parseSimpleError(root['Error'] as Map<String, dynamic>);
    } else if (root['Fault'] != null) {
      return _parseFault(root['Fault'] as Map<String, dynamic>);
    } else if (root['TrackResponse'] != null) {
      return _parseTrackResponse(
        response.transactionId,
        root['TrackResponse'] as Map<String, dynamic>,
      );
    }

    throw const ParseResult.error(ParseError.format('Unknown JSON structure'));
  }

  ParseResult _parseSimpleError(Map<String, dynamic> error) {
    final code = error['Code'] as String?;
    final description = error['Description'] as String?;

    switch (code) {
      case _SimpleErrorCode.unrecognizedError:
      case _SimpleErrorCode.networkError:
        return ParseResult.error(
          ParseError.serviceTemporary(
            code: code,
            message: description,
          ),
        );
      case _SimpleErrorCode.unknownOperation:
      case _SimpleErrorCode.jsonError:
        return ParseResult.error(
          ParseError.badRequest(
            code: code,
            message: description,
          ),
        );
    }

    return ParseResult.error(
      ParseError.badRequest(
        code: code,
        message: description,
      ),
    );
  }

  ParseResult _parseFault(Map<String, dynamic> fault) {
    final detail = fault['detail'] as Map<String, dynamic>;
    final errors = detail['Errors'] as Map<String, dynamic>;
    final errorDetail = errors['ErrorDetail'] as Map<String, dynamic>;
    final primaryErrorCode =
        errorDetail['PrimaryErrorCode'] as Map<String, dynamic>;

    final severity = errorDetail['Severity'] as String?;
    final code = primaryErrorCode['Code'] as String?;
    final description = primaryErrorCode['Description'] as String?;

    final result = _faultHandleNoInfo(code) ??
        _faultHandleInvalidTrackNumber(code) ??
        _faultHandleBadRequest(code, description) ??
        _faultHandleOther(severity, code, description);

    return result;
  }

  ParseResult? _faultHandleNoInfo(String? code) {
    if (_FaultCode.noInfoList.contains(code)) {
      return const ParseResult.noInfo();
    } else {
      return null;
    }
  }

  ParseResult? _faultHandleBadRequest(
    String? code,
    String? description,
  ) {
    if (_FaultCode.badRequestList.contains(code)) {
      return ParseResult.error(
        ParseError.badRequest(
          code: code,
          message: description,
        ),
      );
    } else {
      return null;
    }
  }

  ParseResult? _faultHandleInvalidTrackNumber(String? code) {
    if (_FaultCode.invalidTrackNumberList.contains(code)) {
      return const ParseResult.error(ParseError.invalidTrackNumber());
    } else {
      return null;
    }
  }

  ParseResult _faultHandleOther(
    String? severity,
    String? code,
    String? description,
  ) {
    switch (severity) {
      case _FaultSeverity.authentication:
        return ParseResult.error(
          ParseError.auth(
            code: code,
            message: description,
          ),
        );
      case _FaultSeverity.transient:
        return ParseResult.error(
          ParseError.serviceTemporary(
            code: code,
            message: description,
          ),
        );
      case _FaultSeverity.hard:
        return ParseResult.error(
          ParseError.serviceHard(
            code: code,
            message: description,
          ),
        );
    }

    return ParseResult.error(
      ParseError.serviceHard(
        code: code,
        message: description,
      ),
    );
  }

  ParseResult _parseTrackResponse(
    TransactionId transactionId,
    Map<String, dynamic> trackResponse,
  ) {
    final response = trackResponse['Response'] as Map<String, dynamic>;
    final shipment = trackResponse['Shipment'] as Map<String, dynamic>?;
    final result = _checkTransactionId(
          transactionId,
          response['TransactionReference'] as Map<String, dynamic>,
        ) ??
        _parseResponseStatus(
          response['ResponseStatus'] as Map<String, dynamic>,
        );
    if (result != null) {
      return result;
    }
    final trackNumber = _parseInquiryNumber(
      shipment!['InquiryNumber'] as Map<String, dynamic>,
    );
    if (trackNumber.isEmpty) {
      return const ParseResult.error(
        ParseError.format(
          'InquiryNumber not found',
        ),
      );
    }
    final package = _getPackageByTrackNumber(shipment['Package'], trackNumber);
    final packageActivity = _getPackageActivity(package);
    final shipmentActivity = shipment['Activity'];
    List activityList;
    if (packageActivity is List) {
      activityList = packageActivity;
    } else {
      activityList = packageActivity == null ? [] : [packageActivity];
    }
    if (shipmentActivity != null) {
      if (shipmentActivity is List) {
        activityList.addAll(shipmentActivity);
      } else {
        activityList.add(shipmentActivity);
      }
    }

    final List<_Alert>? alerts = _parseAlert(response['Alert']);
    final serviceDescription = _parseServiceDescription(
      shipment['Service'] as Map<String, dynamic>?,
    );
    final shippingDescription = _parseShipmentType(
      shipment['ShipmentType'] as Map<String, dynamic>?,
    );
    final packageWeight = package == null ? null : package['PackageWeight'];
    final shipmentWeight = shipment['ShipmentWeight'];
    final weight = _parseWeight(
      (shipmentWeight ?? packageWeight) as Map<String, dynamic>?,
    );
    final volume = _parseVolume(shipment['Volume'] as Map<String, dynamic>?);
    final deliveryDateUnavailable = _parseDeliveryDateUnavailable(
      shipment['DeliveryDateUnavailable'] as Map<String, dynamic>?,
    );
    if (deliveryDateUnavailable != null) {
      alerts?.add(deliveryDateUnavailable);
    }
    final shipmentCOD = shipment['COD'];
    final packageCOD = package == null ? null : package['COD'];
    final cashOnDelivery = _parseCashOnDelivery(
      (shipmentCOD ?? packageCOD) as Map<String, dynamic>?,
    );
    Address? shipperAddress, receiverAddress;
    final shipmentAddressList = _parseShipmentAddress(
      shipment['ShipmentAddress'],
    );
    for (final address in shipmentAddressList) {
      address.when(
        shipper: (address) => shipperAddress = address,
        shipTo: (address) => receiverAddress = address,
      );
    }
    var alternateTrackNumbers = _parseAlternateTrackingNumbers(package);
    var signedForByName = _parseSignedForByName(shipment);
    var pickupDate = _parsePickupDate(shipment);
    _DateTime? deliveryDate;
    _DateTime? estimatedDeliveryDate;
    _DateTime? scheduledDeliveryDate;
    final deliveryDetailList = _parseDeliveryDetail(shipment['DeliveryDetail']);
    if (deliveryDetailList != null) {
      for (final detail in deliveryDetailList) {
        detail?.when(
          delivery: (d) => deliveryDate = d,
          estimatedDelivery: (d) => estimatedDeliveryDate = d,
          scheduledDelivery: (d) => scheduledDeliveryDate = d,
        );
      }
    }
    deliveryDate ??= _parseDeliveryDate(package);

    final shipmentActivityList = <ShipmentActivityInfo>[];
    for (final a in activityList) {
      final activity = a as Map<String, dynamic>;
      final activityLocation =
          activity['ActivityLocation'] as Map<String, dynamic>?;

      final dateTime = _parseActivityDateTime(activity);
      final status = _parseActivityStatus(activity);
      late final Address? addressObj;
      if (activityLocation == null) {
        addressObj = null;
      } else {
        final address = activityLocation['Address'] is String
            ? null
            : activityLocation['Address'] as Map<String, dynamic>?;
        addressObj = _parseAddress(address ?? activityLocation);
      }

      signedForByName ??= _parseSignedForByName(activityLocation);
      if (alternateTrackNumbers == null) {
        alternateTrackNumbers = _parseAlternateTrackingNumbers(activity);
      } else {
        final list = _parseAlternateTrackingNumbers(activity);
        if (list != null) {
          alternateTrackNumbers.addAll(list);
        }
      }
      if (pickupDate == null && status?.type == ShipmentStatusType.pickup) {
        pickupDate = dateTime;
      }
      if (deliveryDate == null &&
          status?.type == ShipmentStatusType.delivered) {
        deliveryDate = dateTime;
      }

      shipmentActivityList.add(
        ShipmentActivityInfo.from(
          trackNumber: trackNumber,
          serviceType: PostalServiceType.ups,
          statusType: status?.type ?? ShipmentStatusType.notAvailable,
          statusDescription: status?.description,
          activityLocation: addressObj,
          dateTime: dateTime?.toDateTime(),
        ),
      );
    }
    final shipmentInfo = ShipmentInfo.from(
      trackNumber: trackNumber,
      serviceType: PostalServiceType.ups,
      serviceDescription: serviceDescription,
      shipmentDescription: shippingDescription,
      signedForByName: signedForByName,
      weight: weight?.toUnitOfMeasurement(),
      volume: volume?.toUnitOfMeasurement(),
      pickupDate: pickupDate?.toDateTime(),
      deliveryDate: deliveryDate?.toDateTime(),
      estimatedDeliveryDate: estimatedDeliveryDate?.toDateTime(),
      scheduledDeliveryDate: scheduledDeliveryDate?.toDateTime(),
      cashOnDelivery: cashOnDelivery?.toCashOnDelivery(),
      shipperAddress: shipperAddress,
      receiverAddress: receiverAddress,
      serviceMessage: alerts?.join(';\n'),
    );

    return ParseResult(
      info: shipmentInfo,
      activity: shipmentActivityList,
      alternateTracks: alternateTrackNumbers,
    );
  }

  ParseResult? _parseResponseStatus(
    Map<String, dynamic> responseStatus,
  ) {
    final code = responseStatus['Code'] as String?;
    final description = responseStatus['Description'] as String?;

    if (code == _ResponseStatusCode.success) {
      return null;
    } else {
      return ParseResult.error(
        ParseError.serviceHard(
          code: code,
          message: description,
        ),
      );
    }
  }

  ParseResult? _checkTransactionId(
    TransactionId transactionId,
    Map<String, dynamic> transactionRef,
  ) {
    final context = transactionRef['CustomerContext'] as String?;
    final actualId = context == null ? null : TransactionId(context);

    if (transactionId == actualId) {
      return null;
    } else {
      return ParseResult.error(
        ParseError.badRequest(
          message: 'Invalid response transaction ID: '
              'expected $transactionId, actual $actualId',
        ),
      );
    }
  }
}

Map<String, dynamic>? _getPackageByTrackNumber(
  dynamic package,
  String trackNumber,
) {
  if (package is List) {
    return package.firstWhere(
      (p) {
        final map = p as Map<String, dynamic>;
        return trackNumber == map['TrackingNumber'] as String?;
      },
      orElse: () => null,
    ) as Map<String, dynamic>?;
  } else {
    return package as Map<String, dynamic>?;
  }
}

dynamic _getPackageActivity(Map<String, dynamic>? package) =>
    package == null ? null : package['Activity'];

List<_Alert>? _parseAlert(dynamic alert) {
  if (alert == null) {
    return null;
  } else if (alert is List) {
    return alert
        .map((a) => _parseAlertElement(a as Map<String, dynamic>))
        .toList();
  }

  return [_parseAlertElement(alert as Map<String, dynamic>)];
}

_Alert _parseAlertElement(Map<String, dynamic> alert) {
  return _Alert(
    code: alert['Code'] as String?,
    description: alert['Description'] as String,
  );
}

String _parseInquiryNumber(Map<String, dynamic> inquiryNumber) =>
    inquiryNumber['Value'] as String;

String? _parseServiceDescription(Map<String, dynamic>? service) =>
    service == null ? null : service['Description'] as String?;

String? _parseShipmentType(Map<String, dynamic>? shipmentType) =>
    shipmentType == null ? null : shipmentType['Description'] as String?;

/// [container] - "Shipment" or "ActivityLocation" container
String? _parseSignedForByName(Map<String, dynamic>? container) =>
    container == null ? null : container['SignedForByName'] as String?;

/// [container] - "ShipmentWeight" or "PackageWeight" container
_UnitOfMeasurement? _parseWeight(Map<String, dynamic>? container) {
  if (container == null) {
    return null;
  }

  final value = container['Weight'] as String;
  final unitOfMeasurement =
      container['UnitOfMeasurement'] as Map<String, dynamic>;
  final unit = unitOfMeasurement['Code'] as String;

  return _UnitOfMeasurement(value: value, measurement: unit);
}

_UnitOfMeasurement? _parseVolume(Map<String, dynamic>? volume) {
  if (volume == null) {
    return null;
  }

  final value = volume['Value'] as String;
  final unitOfMeasurement = volume['UnitOfMeasurement'] as Map<String, dynamic>;
  final unit = unitOfMeasurement['Code'] as String;

  return _UnitOfMeasurement(value: value, measurement: unit);
}

_DateTime? _parsePickupDate(Map<String, dynamic> shipment) {
  final pickupDate = shipment['PickupDate'];

  if (pickupDate == null) {
    return null;
  } else {
    return _DateTime(date: pickupDate as String);
  }
}

List<_DeliveryDetail?>? _parseDeliveryDetail(dynamic deliveryDetail) {
  if (deliveryDetail == null) {
    return null;
  } else if (deliveryDetail is List) {
    return deliveryDetail
        .map(
          (detail) => _parseDeliveryDetailElement(
            detail as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  return [
    _parseDeliveryDetailElement(
      deliveryDetail as Map<String, dynamic>,
    ),
  ];
}

_DeliveryDetail? _parseDeliveryDetailElement(
  Map<String, dynamic> deliveryDetail,
) {
  final dateTime = _DateTime(
    date: deliveryDetail['Date'] as String,
    time: deliveryDetail['Time'] as String?,
  );
  final type = deliveryDetail['Type'] as Map<String, dynamic>;
  final code = type['Code'] as String?;
  switch (code) {
    case _DeliveryDetailCode.delivery:
      return _DeliveryDetail.delivery(dateTime);
    case _DeliveryDetailCode.estimatedDelivery:
      return _DeliveryDetail.estimatedDelivery(dateTime);
    case _DeliveryDetailCode.scheduledDelivery:
      return _DeliveryDetail.scheduledDelivery(dateTime);
  }
  return null;
}

_Alert? _parseDeliveryDateUnavailable(
  Map<String, dynamic>? deliveryDateUnavailable,
) {
  if (deliveryDateUnavailable == null) {
    return null;
  } else {
    return _Alert(
      description: deliveryDateUnavailable['Description'] as String,
    );
  }
}

_CashOnDelivery? _parseCashOnDelivery(
  Map<String, dynamic>? cashOnDelivery,
) {
  if (cashOnDelivery == null) {
    return null;
  }

  final amount = cashOnDelivery['Amount'] as Map<String, dynamic>;
  final value = amount['MonetaryValue'] as String;
  final currencyCode = amount['CurrencyCode'] as String;

  return _CashOnDelivery(value: value, currencyCode: currencyCode);
}

/// [container] - "Activity" or "Package"
List<String>? _parseAlternateTrackingNumbers(
  Map<String, dynamic>? container,
) {
  if (container == null) {
    return null;
  }
  final alternateTrackingNumber = container['AlternateTrackingNumber'];
  if (alternateTrackingNumber != null) {
    return _parseAlternateTrackNumber(alternateTrackingNumber);
  }
  final alternateTrackInfo = container['AlternateTrackingInfo'];
  if (alternateTrackInfo != null) {
    return _parseAlternateTrackInfo(alternateTrackInfo);
  }

  return null;
}

List<String> _parseAlternateTrackNumber(
  dynamic alternateTrackNumber,
) {
  if (alternateTrackNumber is List) {
    return alternateTrackNumber.map((track) => track as String).toList();
  } else {
    return [alternateTrackNumber as String];
  }
}

List<String> _parseAlternateTrackInfo(
  dynamic alternateTrackInfo,
) {
  if (alternateTrackInfo is List) {
    return alternateTrackInfo
        .map(
          (track) {
            final map = track as Map<String, dynamic>;
            return map['Value'] as String?;
          },
        )
        .where((track) => track != null)
        .toList() as List<String>;
  } else {
    final map = alternateTrackInfo as Map<String, dynamic>;
    final value = map['Value'] as String?;
    return value == null ? [] : [value];
  }
}

List<_ShipmentAddress> _parseShipmentAddress(
  dynamic shipmentAddress,
) {
  final addressList = <_ShipmentAddress>[];
  if (shipmentAddress == null) {
    return addressList;
  }

  if (shipmentAddress is List) {
    for (final a in shipmentAddress) {
      final address = _parseShipmentAddressElement(
        a as Map<String, dynamic>,
      );
      if (address != null) {
        addressList.add(address);
      }
    }
  } else {
    final address = _parseShipmentAddressElement(
      shipmentAddress as Map<String, dynamic>,
    );
    if (address != null) {
      addressList.add(address);
    }
  }

  return addressList;
}

_ShipmentAddress? _parseShipmentAddressElement(
  Map<String, dynamic> shipmentAddress,
) {
  final type = shipmentAddress['Type'] as Map<String, dynamic>;
  final typeCode = type['Code'] as String?;
  final address = shipmentAddress['Address'] is String
      ? null
      : shipmentAddress['Address'] as Map<String, dynamic>?;
  if (address == null) {
    return null;
  }
  final addressObj = _parseAddress(address);

  switch (typeCode) {
    case _ShipmentAddressTypeCode.shipper:
      return _ShipmentAddress.shipper(addressObj);
    case _ShipmentAddressTypeCode.shipTo:
      return _ShipmentAddress.shipTo(addressObj);
  }
  return null;
}

/// [address] - ShipmentAddress/Address or ActivityLocation/Address or ActivityLocation
Address _parseAddress(Map<String, dynamic> address) {
  final addressLine = address['AddressLine'];
  final location = <String>[];
  final stateProvinceCode = address['StateProvinceCode'] as String?;
  if (stateProvinceCode != null) {
    location.add(stateProvinceCode);
  }
  final city = address['City'] as String?;
  if (city != null) {
    location.add(city);
  }
  if (addressLine is List) {
    addressLine
        .where((a) => a != null)
        .forEach((a) => location.add(a as String));
  } else if (addressLine != null) {
    location.add(addressLine as String);
  }
  final postalCode = address['PostalCode'] as String?;
  final countryCode = address['CountryCode'] as String?;

  return Address(
    location: location.isEmpty ? null : location.join(', '),
    postalCode: postalCode,
    countryCode: countryCode,
  );
}

_DateTime? _parseDeliveryDate(Map<String, dynamic>? package) {
  if (package == null) {
    return null;
  }
  final deliveryDate = package['DeliveryDate'] as String?;

  return deliveryDate == null ? null : _DateTime(date: deliveryDate);
}

_DateTime? _parseActivityDateTime(Map<String, dynamic> activity) {
  final date = activity['Date'] as String?;
  final time = activity['Time'] as String?;

  return date == null ? null : _DateTime(date: date, time: time);
}

_ActivityStatus? _parseActivityStatus(Map<String, dynamic> activity) {
  final status = activity['Status'] as Map<String, dynamic>?;
  if (status == null) {
    final description = activity['Description'] as String?;
    if (description != null) {
      return _ActivityStatus(
        description: description,
        type: ShipmentStatusType.other,
      );
    } else {
      return null;
    }
  }
  final code = status['Code'] as String?;
  final description = status['Description'] as String;
  final type = _parseStatusTypeCode(status['Type'] as String?);

  return _ActivityStatus(
    code: code,
    description: description,
    type: type,
  );
}

ShipmentStatusType _parseStatusTypeCode(String? type) {
  switch (type) {
    case _StatusTypeCode.notAvailable:
      return ShipmentStatusType.notAvailable;
    case _StatusTypeCode.manifestPickup:
      return ShipmentStatusType.infoReceived;
    case _StatusTypeCode.pickup:
      return ShipmentStatusType.pickup;
    case _StatusTypeCode.inTransit:
      return ShipmentStatusType.inTransit;
    case _StatusTypeCode.outForDelivery:
      return ShipmentStatusType.outForDelivery;
    case _StatusTypeCode.delivered:
    case _StatusTypeCode.deliveredOriginCFS:
    case _StatusTypeCode.deliveredDestinationCFS:
      return ShipmentStatusType.delivered;
    case _StatusTypeCode.returnedToShipper:
      return ShipmentStatusType.returnedToShipper;
  }
  return ShipmentStatusType.other;
}

abstract class _SimpleErrorCode {
  static const unrecognizedError = '1';
  static const unknownOperation = '2';
  static const networkError = '3';
  static const jsonError = '4';
}

abstract class _FaultSeverity {
  static const hard = 'Hard';
  static const transient = 'Transient';
  static const authentication = 'Authentication';
}

abstract class _FaultCode {
  static const noInfoList = [
    '151044',
    '151045',
    '151062',
    '152110',
    '151019',
    '154030',
  ];
  static const badRequestList = [
    '10001',
    '10002',
    '10003',
    '10006',
    '20002',
    '20007',
    '20008',
    '150030',
    '250000',
    '250019',
    '150040',
    '9151000',
  ];
  static const invalidTrackNumberList = [
    '150021',
    '150022',
    '151018',
    '154010',
    '9150002',
  ];
}

abstract class _ResponseStatusCode {
  static const success = '1';
}

@immutable
class _Alert {
  final String? code;
  final String description;

  const _Alert({
    this.code,
    required this.description,
  });

  @override
  String toString() {
    return (code == null ? '' : '[$code] ') + description;
  }
}

@immutable
class _UnitOfMeasurement {
  final String value;
  final String measurement;

  const _UnitOfMeasurement({
    required this.value,
    required this.measurement,
  });

  UnitOfMeasurement? toUnitOfMeasurement() {
    final numValue = double.parse(value);
    final measurementVal = strToMeasurement[measurement];
    if (measurementVal == null) {
      return null;
    }

    return UnitOfMeasurement(value: numValue, measurement: measurementVal);
  }

  static const Map<String, Measurement> strToMeasurement = {
    'KGS': Measurement.kilogram,
    'OZS': Measurement.ounce,
    'LBS': Measurement.pound,
    'L': Measurement.liter,
    'GAL': Measurement.gallon,
    'BA': Measurement.barrel,
    'SME': Measurement.squareMeter,
    'SFT': Measurement.squareFeet,
    'SYD': Measurement.squareYard,
  };
}

@immutable
class _DateTime {
  /// Date in format YYYYMMDD
  final String date;

  // Time in format HHMMSS or HHMM
  final String? time;

  const _DateTime({required this.date, this.time});

  DateTime? toDateTime() {
    try {
      return DateTime.parse(date + (time == null ? '' : ' $time'));
    } on FormatException {
      return DateTime.tryParse(date);
    }
  }
}

abstract class _DeliveryDetailCode {
  static const delivery = '01';
  static const estimatedDelivery = '02';
  static const scheduledDelivery = '03';
}

@freezed
class _DeliveryDetail with _$_DeliveryDetail {
  factory _DeliveryDetail.delivery(
    _DateTime dateTime,
  ) = _DeliveryDetailDelivery;

  factory _DeliveryDetail.estimatedDelivery(
    _DateTime dateTime,
  ) = _DetailEstimatedDelivery;

  factory _DeliveryDetail.scheduledDelivery(
    _DateTime dateTime,
  ) = _DetailScheduledDelivery;
}

@immutable
class _CashOnDelivery {
  final String value;
  final String currencyCode;

  const _CashOnDelivery({required this.value, required this.currencyCode});

  CashOnDelivery toCashOnDelivery() =>
      CashOnDelivery(int.parse(value), currencyCode);
}

abstract class _ShipmentAddressTypeCode {
  static const shipper = '01';
  static const shipTo = '02';
}

@freezed
class _ShipmentAddress with _$_ShipmentAddress {
  const factory _ShipmentAddress.shipper(
    Address address,
  ) = _ShipmentAddressShipper;

  const factory _ShipmentAddress.shipTo(
    Address address,
  ) = _ShipmentAddressShipTo;
}

abstract class _StatusTypeCode {
  static const notAvailable = 'NA';
  static const pickup = 'P';
  static const manifestPickup = 'M';
  static const inTransit = 'I';
  static const outForDelivery = 'O';
  static const delivered = 'D';
  static const deliveredOriginCFS = 'DO';
  static const deliveredDestinationCFS = 'DD';
  static const returnedToShipper = 'RS';
}

@immutable
class _ActivityStatus {
  final String? code;
  final String description;
  final ShipmentStatusType type;

  const _ActivityStatus({
    this.code,
    required this.description,
    required this.type,
  });
}
