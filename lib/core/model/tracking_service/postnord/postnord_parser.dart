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

import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:libretrack/core/entity/dimensions.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/model/parser.dart';
import 'package:libretrack/core/model/service_response.dart';
import 'package:libretrack/core/model/type/locale.dart';

class PostNordParser extends Parser {
  @override
  ParseResult parse(ServiceResponse response, {Locale? locale}) {
    if (response.statusCode != 200) {
      return _parseStatusCode(response);
    }
    late Map<String, dynamic> root;
    try {
      root = jsonDecode(response.payload);
    } on FormatException catch (e) {
      return ParseResult.error(ParseError.format(e.toString()));
    }

    if (root['TrackingInformationResponse'] != null) {
      root = root['TrackingInformationResponse'];

      if (root['compositeFault'] != null) {
        return _parseCompositeFault(root['compositeFault']);
      } else {
        return _parseShipments(root['shipments']);
      }
    }

    throw const ParseResult.error(ParseError.format('Unknown JSON structure'));
  }

  ParseResult _parseStatusCode(ServiceResponse response) {
    ParseError error;
    final statusCode = response.statusCode;
    switch (statusCode) {
      case 403:
        error = ParseError.auth(
          code: '${response.statusCode}',
          message: 'HTTP ${response.statusCode}',
        );
        break;
      case 400:
        error = ParseError.badRequest(
          code: '${response.statusCode}',
          message: _parseBadRequestDetail(response),
        );
        break;
      case 404:
        error = ParseError.badRequest(
          code: '${response.statusCode}',
          message: 'HTTP ${response.statusCode}',
        );
        break;
      default:
        error = ParseError.serviceTemporary(
          code: '${response.statusCode}',
          message: 'HTTP ${response.statusCode}',
        );
        break;
    }
    return ParseResult.error(error);
  }

  String? _parseBadRequestDetail(ServiceResponse response) {
    late Map<String, dynamic> root;
    try {
      root = jsonDecode(response.payload);
    } on FormatException {
      return null;
    }

    return root['detail'];
  }

  ParseResult _parseCompositeFault(Map<String, dynamic> compositeFault) {
    final faults = compositeFault['faults'];
    // Handle errors one by one, starting from the top
    final fault = faults.first;

    return ParseResult.error(_parseFault(fault));
  }

  ParseError _parseFault(Map<String, dynamic> fault) {
    final faultCode = fault['faultCode'];
    final explanationText = fault['explanationText'];
    final paramValues = fault['paramValues'] as List<dynamic>?;

    switch (faultCode) {
      case _FaultCode.invalidIdentifier:
        return const ParseError.invalidTrackNumber();
      case _FaultCode.invalidLocale:
        final param =
            paramValues?.firstWhereOrNull((p) => p['param'] == 'locale');
        final locale = param?['value'];
        return ParseError.badRequest(
          code: faultCode,
          message:
              locale == null ? explanationText : '$explanationText ($locale)',
        );
      default:
        return ParseError.badRequest(
          code: faultCode,
          message: paramValues == null
              ? explanationText
              : '$explanationText $paramValues',
        );
    }
  }

  ParseResult _parseShipments(List<dynamic> shipments) {
    final shipment = shipments.firstOrNull;
    if (shipment == null) {
      return const ParseResult.noInfo();
    }
    final trackNumber = shipment['shipmentId'];
    final items = shipment['items'] as List<dynamic>;
    final item = items.firstWhereOrNull((i) => i['itemId'] == trackNumber);
    if (item == null) {
      return const ParseResult.error(
        ParseError.format('Items not found by shipmentId'),
      );
    }

    final activity = _parseEvents(
      trackNumber: trackNumber,
      shipment: shipment,
      item: item,
    );
    final serviceName = shipment['service']?['name'];
    final typeOfItemActualName = item['typeOfItemActualName'];
    final dropOffDate = _parseDropOffDate(item);
    final deliveryDate = _parseDeliveryDate(shipment: shipment, item: item);
    final estimatedTimeOfArrival =
        _parseEstimatedTimeOfArrival(shipment: shipment, item: item);
    final publicTimeOfArrival =
        _parsePublicTimeOfArrival(shipment: shipment, item: item);
    final status = _statusCodeMap[shipment['status']];
    final consignor = _parseConsignor(shipment);
    final consignee = _parseConsignee(shipment);
    final additionalInformation = item['additionalInformation'];
    late final UnitOfMeasurement? weight;
    late final UnitOfMeasurement? volume;
    late final Dimensions? dimensions;
    try {
      weight = _parseUnitValue(_getWeight(item));
      volume = _parseUnitValue(_getVolume(item));
      dimensions = _parseDimensions(item);
    } on _UnknownUnitException catch (e) {
      return ParseResult.error(
        ParseError.format('Unknown measurement unit: ${e.unit}'),
      );
    } on _UnknownUnitValueException catch (e) {
      return ParseResult.error(
        ParseError.format('Unknown measurement value: ${e.value} ${e.unit}'),
      );
    }

    final info = ShipmentInfo.from(
      trackNumber: trackNumber,
      serviceType: PostalServiceType.postNord,
      serviceDescription: serviceName,
      shipmentDescription: typeOfItemActualName,
      weight: weight,
      volume: volume,
      dimensions: dimensions,
      pickupDate: dropOffDate,
      deliveryDate: deliveryDate,
      estimatedDeliveryDate: estimatedTimeOfArrival,
      scheduledDeliveryDate: publicTimeOfArrival,
      currentStatus: status,
      shipperAddress: consignor.address,
      receiverAddress: consignee.address,
      shipperName: consignor.name,
      receiverName: consignee.name,
      serviceMessage: additionalInformation,
    );

    return ParseResult(info: info, activity: activity);
  }

  Address? _parseDeliveryPointAddress(Map<String, dynamic> shipment) {
    final deliveryPoint = shipment['deliveryPoint'];
    final addressDto = deliveryPoint?['address'];
    final displayName = deliveryPoint?['displayName'];

    if (addressDto == null) {
      return displayName == null ? null : Address(location: displayName);
    } else {
      final address = _parseAddress(addressDto);
      if (displayName != null) {
        return address.copyWith(location: '$displayName, ${address.location}');
      } else {
        return address;
      }
    }
  }

  _ConsignorAddress _parseConsignor(Map<String, dynamic> shipment) {
    final consignor = shipment['consignor'];
    final name = consignor?['name'];
    final address = consignor?['address'];
    return _ConsignorAddress(
      name: name,
      address: address == null ? null : _parseAddress(address),
    );
  }

  _ConsigneeAddress _parseConsignee(Map<String, dynamic> shipment) {
    final consignee = shipment['consignee'];
    final name = consignee?['name'];
    final address = consignee?['address'];
    return _ConsigneeAddress(
      name: name,
      address: address == null
          ? null
          : _parseDeliveryPointAddress(shipment) ?? _parseAddress(address),
    );
  }

  Address _parseAddress(Map<String, dynamic> address) {
    final addressDto = _Address(
      street1: address['street1'],
      street2: address['street2'],
      country: address['country'],
      city: address['city'],
    );
    final countryCode = address['countryCode'];
    final postCode = address['postCode'];

    return Address(
      location: addressDto.toString(),
      postalCode: postCode,
      countryCode: countryCode,
    );
  }

  Map<String, dynamic>? _getWeight(Map<String, dynamic> item) {
    return item['statedMeasurement']?['weight'] ??
        item['assessedMeasurement']?['weight'];
  }

  Map<String, dynamic>? _getVolume(Map<String, dynamic> item) {
    return item['statedMeasurement']?['volume'] ??
        item['assessedMeasurement']?['volume'];
  }

  Map<String, dynamic>? _getWidth(Map<String, dynamic> item) {
    return item['statedMeasurement']?['width'] ??
        item['assessedMeasurement']?['width'];
  }

  Map<String, dynamic>? _getHeight(Map<String, dynamic> item) {
    return item['statedMeasurement']?['height'] ??
        item['assessedMeasurement']?['height'];
  }

  Map<String, dynamic>? _getLength(Map<String, dynamic> item) {
    return item['statedMeasurement']?['length'] ??
        item['assessedMeasurement']?['length'];
  }

  Dimensions? _parseDimensions(Map<String, dynamic> item) {
    final width = _parseUnitValue(_getWidth(item));
    final height = _parseUnitValue(_getHeight(item));
    final length = _parseUnitValue(_getLength(item));

    if (width == null || height == null || length == null) {
      return null;
    }

    return Dimensions(
      width: width,
      height: height,
      length: length,
    );
  }

  UnitOfMeasurement? _parseUnitValue(Map<String, dynamic>? unitValue) {
    if (unitValue == null) {
      return null;
    }
    final value = unitValue['value'];
    final unit = unitValue['unit'];

    switch (unit) {
      case _Unit.centimeter:
        return UnitOfMeasurement(
          value: _parseValue(unit: unit, value: value),
          measurement: Measurement.centimeter,
        );
      case _Unit.cubicCentimeter:
        return UnitOfMeasurement(
          value: _parseValue(unit: unit, value: value),
          measurement: Measurement.cubicCentimeter,
        );
      case _Unit.cubicDecimeter:
        return UnitOfMeasurement(
          value: _parseValue(unit: unit, value: value) / 1000,
          measurement: Measurement.cubicMeter,
        );
      case _Unit.cubicMeter:
        return UnitOfMeasurement(
          value: _parseValue(unit: unit, value: value),
          measurement: Measurement.cubicMeter,
        );
      case _Unit.decimeter:
        return UnitOfMeasurement(
          value: _parseValue(unit: unit, value: value) / 10,
          measurement: Measurement.meter,
        );
      case _Unit.gram:
        return UnitOfMeasurement(
          value: _parseValue(unit: unit, value: value) / 1000,
          measurement: Measurement.kilogram,
        );
      case _Unit.kilogram:
        return UnitOfMeasurement(
          value: _parseValue(unit: unit, value: value),
          measurement: Measurement.kilogram,
        );
      case _Unit.meter:
        return UnitOfMeasurement(
          value: _parseValue(unit: unit, value: value),
          measurement: Measurement.meter,
        );
      case _Unit.millimeter:
        return UnitOfMeasurement(
          value: _parseValue(unit: unit, value: value) / 10,
          measurement: Measurement.centimeter,
        );
      default:
        throw _UnknownUnitException(unit);
    }
  }

  double _parseValue({required String unit, required String value}) {
    try {
      return double.parse(value);
    } on FormatException {
      throw _UnknownUnitValueException(unit: unit, value: value);
    }
  }

  DateTime? _parseDropOffDate(Map<String, dynamic> item) {
    final dropOffDate = item['dropOffDate'];
    return dropOffDate == null ? null : DateTime.parse(dropOffDate);
  }

  DateTime? _parseDeliveryDate({
    required Map<String, dynamic> shipment,
    required Map<String, dynamic> item,
  }) {
    final deliveryDate = item['deliveryDate'] ?? shipment['deliveryDate'];
    return deliveryDate == null ? null : DateTime.parse(deliveryDate);
  }

  DateTime? _parseEstimatedTimeOfArrival({
    required Map<String, dynamic> shipment,
    required Map<String, dynamic> item,
  }) {
    final estimatedTimeOfArrival =
        item['estimatedTimeOfArrival'] ?? shipment['estimatedTimeOfArrival'];
    return estimatedTimeOfArrival == null
        ? null
        : DateTime.parse(estimatedTimeOfArrival);
  }

  DateTime? _parsePublicTimeOfArrival({
    required Map<String, dynamic> shipment,
    required Map<String, dynamic> item,
  }) {
    final publicTimeOfArrival =
        item['publicTimeOfArrival'] ?? shipment['publicTimeOfArrival'];
    return publicTimeOfArrival == null
        ? null
        : DateTime.parse(publicTimeOfArrival);
  }

  List<ShipmentActivityInfo> _parseEvents({
    required String trackNumber,
    required Map<String, dynamic> shipment,
    required Map<String, dynamic> item,
  }) {
    final activitiesList = <ShipmentActivityInfo>[];

    final events = item['events'] as List<dynamic>?;
    if (events != null && events.isNotEmpty) {
      for (final event in events.reversed) {
        activitiesList.add(
          _parseEvent(
            trackNumber: trackNumber,
            shipment: shipment,
            event: event,
          ),
        );
      }
    }

    return activitiesList;
  }

  ShipmentActivityInfo _parseEvent({
    required String trackNumber,
    required Map<String, dynamic> shipment,
    required Map<String, dynamic> event,
  }) {
    final statusType =
        _statusCodeMap[event['status']] ?? ShipmentStatusType.notAvailable;
    final eventDescription = event['eventDescription'];
    final location = statusType == ShipmentStatusType.outForDelivery
        ? _parseDeliveryPointAddress(shipment) ??
            _parseLocation(event['location'])
        : _parseLocation(event['location']);
    final eventTime = _parseEventTime(event['eventTime']);

    return ShipmentActivityInfo.from(
      trackNumber: trackNumber,
      serviceType: PostalServiceType.postNord,
      statusType: statusType,
      statusDescription: eventDescription,
      activityLocation: location,
      dateTime: eventTime,
    );
  }

  Address _parseLocation(Map<String, dynamic> location) {
    final eventLocation = _EventLocation(
      displayName: location['displayName'],
      country: location['country'],
      city: location['city'],
    );
    final countryCode = location['countryCode'];
    final postCode = location['postcode'];

    return Address(
      location: eventLocation.toString(),
      postalCode: postCode,
      countryCode: countryCode,
    );
  }

  DateTime? _parseEventTime(String? eventTime) {
    return eventTime == null ? null : DateTime.parse(eventTime);
  }
}

final _statusCodeMap = <String?, ShipmentStatusType>{
  _EventStatusCode.created: ShipmentStatusType.infoReceived,
  _EventStatusCode.informed: ShipmentStatusType.infoReceived,
  _EventStatusCode.enRoute: ShipmentStatusType.inTransit,
  _EventStatusCode.delayed: ShipmentStatusType.inTransit,
  _EventStatusCode.expectedDelay: ShipmentStatusType.inTransit,
  _EventStatusCode.availableForDelivery: ShipmentStatusType.outForDelivery,
  _EventStatusCode.availableForDeliveryParLoc:
      ShipmentStatusType.outForDelivery,
  _EventStatusCode.deliveryImpossible: ShipmentStatusType.notDelivered,
  _EventStatusCode.deliveryRefused: ShipmentStatusType.notDelivered,
  _EventStatusCode.delivered: ShipmentStatusType.delivered,
  _EventStatusCode.other: ShipmentStatusType.other,
  _EventStatusCode.returned: ShipmentStatusType.returnedToShipper,
  _EventStatusCode.stopped: ShipmentStatusType.notAvailable,
  _EventStatusCode.split: ShipmentStatusType.other,
};

class _FaultCode {
  static const invalidLocale = 'invalidLocale';
  static const invalidIdentifier = 'invalidIdentifier';
}

class _EventStatusCode {
  static const created = 'CREATED';
  static const informed = 'INFORMED';
  static const enRoute = 'EN_ROUTE';
  static const delayed = 'DELAYED';
  static const expectedDelay = 'EXPECTED_DELAY';
  static const availableForDelivery = 'AVAILABLE_FOR_DELIVERY';
  static const availableForDeliveryParLoc = 'AVAILABLE_FOR_DELIVERY_PAR_LOC';
  static const deliveryImpossible = 'DELIVERY_IMPOSSIBLE';
  static const deliveryRefused = 'DELIVERY_REFUSED';
  static const delivered = 'DELIVERED';
  static const other = 'OTHER';
  static const returned = 'RETURNED';
  static const stopped = 'STOPPED';
  static const split = 'SPLIT';
}

@immutable
class _EventLocation {
  final String? displayName;
  final String? city;
  final String? country;

  const _EventLocation({this.displayName, this.city, this.country});

  @override
  String toString() {
    return [displayName, city, country].whereNot((i) => i == null).join(', ');
  }
}

@immutable
class _Address {
  final String? street1;
  final String? street2;
  final String? city;
  final String? country;

  const _Address({this.street1, this.street2, this.city, this.country});

  @override
  String toString() {
    return [street1, street2, city, country]
        .whereNot((i) => i == null)
        .join(', ');
  }
}

@immutable
class _ConsignorAddress {
  final String? name;
  final Address? address;

  const _ConsignorAddress({this.name, this.address});
}

@immutable
class _ConsigneeAddress {
  final String? name;
  final Address? address;

  const _ConsigneeAddress({this.name, this.address});
}

class _Unit {
  static const kilogram = 'kg';
  static const gram = 'g';
  static const millimeter = 'mm';
  static const centimeter = 'cm';
  static const decimeter = 'dm';
  static const meter = 'm';
  static const cubicCentimeter = 'cm3';
  static const cubicDecimeter = 'dm3';
  static const cubicMeter = 'm3';
}

class _UnknownUnitException {
  final String unit;

  _UnknownUnitException(this.unit);
}

class _UnknownUnitValueException {
  final String unit;
  final String value;

  _UnknownUnitValueException({required this.unit, required this.value});
}
