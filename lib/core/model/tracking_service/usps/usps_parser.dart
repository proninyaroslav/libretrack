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

import 'package:libretrack/core/date_time_provider.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/model/service_response.dart';
import 'package:libretrack/core/model/type/locale.dart';
import 'package:xml/xml.dart';

import '../../parser.dart';

class USPSParser extends Parser {
  final DateTimeProvider _provider;

  USPSParser(this._provider);

  @override
  ParseResult parse(ServiceResponse response, {Locale? locale}) {
    if (response.statusCode != 200) {
      return ParseResult.error(
        ParseError.serviceTemporary(
          code: '${response.statusCode}',
          message: 'HTTP ${response.statusCode}',
        ),
      );
    }

    late final XmlDocument root;
    try {
      root = XmlDocument.parse(response.payload);
    } on XmlParserException catch (e) {
      return ParseResult.error(ParseError.format(e.toString()));
    }
    final error = root.getElement('Error');
    final trackResponse = root.getElement('TrackResponse');
    if (error != null) {
      return _parseError(error);
    } else if (trackResponse != null) {
      return _parseTrackResponse(trackResponse);
    }

    throw const ParseResult.error(ParseError.format('Unknown XML structure'));
  }

  ParseResult _parseError(XmlElement error) {
    final number = error.getElement('Number')?.innerText;
    final description = error.getElement('Description')?.innerText ?? '';

    final descrLowerCase = description.toLowerCase();
    if (descrLowerCase.isEmpty) {
      return ParseResult.error(ParseError.badRequest(code: number));
    } else if (descrLowerCase.startsWith(_Error.noInfo)) {
      return const ParseResult.noInfo();
    } else if (descrLowerCase.startsWith(_Error.invalidTrackNumber)) {
      return const ParseResult.error(ParseError.invalidTrackNumber());
    } else if (descrLowerCase.startsWith(_Error.auth)) {
      return ParseResult.error(
        ParseError.auth(
          code: number,
          message: description,
        ),
      );
    } else {
      return ParseResult.error(
        ParseError.badRequest(
          code: number,
          message: description,
        ),
      );
    }
  }

  ParseResult _parseTrackResponse(XmlElement trackResponse) {
    final trackInfo = trackResponse.getElement('TrackInfo');
    final error = trackInfo!.getElement('Error');
    if (error != null) {
      return _parseError(error);
    }

    final trackNumber = trackInfo.getAttribute('ID') ?? '';
    if (trackNumber.isEmpty) {
      return const ParseResult.error(
        ParseError.format(
          'Tracking number not found',
        ),
      );
    }

    final trackSummary = trackInfo.getElement('TrackSummary');
    final trackDetailsList = [
      if (trackSummary != null) trackSummary,
      ...trackInfo.findElements('TrackDetail')
    ];

    final guaranteedDeliveryDate = _parseGuaranteedDeliveryDate(trackInfo);
    final expectedDeliveryDate = _parseExpectedDeliveryDate(trackInfo);
    final predictedDeliveryDate = _parsePredictedDeliveryDate(trackInfo);
    final shipmentDescription = _parseShipmentDescription(trackInfo);
    final serviceDescription = _parseServiceDescription(trackInfo);
    final destantionAddress = _parseAddress(
      trackInfo,
      _AddressType.destination,
    );
    final originAddress = _parseAddress(
      trackInfo,
      _AddressType.origin,
    );

    _DateTime? deliveryDate, pickupDate;
    String? signedForByName;

    final activityList = <ShipmentActivityInfo>[];
    for (final detail in trackDetailsList) {
      final eventDate = _parseEventDateTime(detail);
      final event = detail.getElement('Event')?.innerText;
      final statusType = _parseStatusType(event);
      final activityLocation = _parseAddress(
        detail,
        _AddressType.event,
      );
      switch (statusType) {
        case ShipmentStatusType.pickup:
          pickupDate ??= eventDate;
          break;
        case ShipmentStatusType.delivered:
          deliveryDate ??= eventDate;
          signedForByName ??= detail.getElement('Name')?.innerText;
          break;
        default:
          break;
      }

      activityList.add(
        ShipmentActivityInfo.from(
          trackNumber: trackNumber,
          serviceType: PostalServiceType.usps,
          statusType: statusType ?? ShipmentStatusType.notAvailable,
          statusDescription: event,
          activityLocation: activityLocation,
          dateTime: eventDate.toDateTime(_provider),
        ),
      );
    }

    return ParseResult(
      info: ShipmentInfo.from(
        trackNumber: trackNumber,
        serviceType: PostalServiceType.usps,
        scheduledDeliveryDate: guaranteedDeliveryDate.toDateTime(
          _provider,
        ),
        estimatedDeliveryDate: expectedDeliveryDate.toDateTime(_provider) ??
            predictedDeliveryDate.toDateTime(_provider),
        deliveryDate: deliveryDate?.toDateTime(_provider),
        pickupDate: pickupDate?.toDateTime(_provider),
        signedForByName: signedForByName,
        shipmentDescription: shipmentDescription,
        serviceDescription: serviceDescription,
        receiverAddress: destantionAddress,
        shipperAddress: originAddress,
      ),
      activity: activityList,
    );
  }

  _DateTime _parseGuaranteedDeliveryDate(XmlElement trackInfo) {
    final date = trackInfo.getElement('GuaranteedDeliveryDate')?.innerText;
    final time = trackInfo.getElement('GuaranteedDeliveryTime')?.innerText;

    return _DateTime(
      date: date == null || date.isEmpty ? null : date,
      time: time == null || time.isEmpty ? null : time,
    );
  }

  _DateTime _parseExpectedDeliveryDate(XmlElement trackInfo) {
    final date = trackInfo.getElement('ExpectedDeliveryDate')?.innerText;
    final time = trackInfo.getElement('ExpectedDeliveryTime')?.innerText;

    return _DateTime(
      date: date == null || date.isEmpty ? null : date,
      time: time == null || time.isEmpty ? null : time,
    );
  }

  _DateTime _parsePredictedDeliveryDate(XmlElement trackInfo) {
    final date = trackInfo.getElement('PredictedDeliveryDate')?.innerText;
    final time = trackInfo.getElement('PredictedDeliveryTime')?.innerText;

    return _DateTime(
      date: date == null || date.isEmpty ? null : date,
      time: time == null || time.isEmpty ? null : time,
    );
  }

  _DateTime _parseEventDateTime(XmlElement detail) {
    final date = detail.getElement('EventDate')?.innerText;
    final time = detail.getElement('EventTime')?.innerText;

    return _DateTime(
      date: date == null || date.isEmpty ? null : date,
      time: time == null || time.isEmpty ? null : time,
    );
  }

  ShipmentStatusType? _parseStatusType(String? event) {
    return _eventStateMap[event?.toLowerCase()];
  }

  /// [container] may be `TrackInfo`, `TrackDetail` or `TrackSummary`
  Address? _parseAddress(XmlElement container, _AddressType type) {
    late final String? city, state, zip, countryName, countryCode;
    switch (type) {
      case _AddressType.event:
        city = container.getElement('EventCity')?.innerText;
        state = container.getElement('EventState')?.innerText;
        zip = container.getElement('EventZIPCode')?.innerText;
        countryName = container.getElement('EventCountry')?.innerText;
        countryCode = null;
        break;
      case _AddressType.destination:
        city = container.getElement('DestinationCity')?.innerText;
        state = container.getElement('DestinationState')?.innerText;
        zip = container.getElement('DestinationZip')?.innerText;
        countryName = null;
        countryCode = container.getElement('DestinationCountryCode')?.innerText;
        break;
      case _AddressType.origin:
        city = container.getElement('OriginCity')?.innerText;
        state = container.getElement('OriginState')?.innerText;
        zip = container.getElement('OriginZip')?.innerText;
        countryName = null;
        countryCode = container.getElement('OriginCountryCode')?.innerText;
        break;
    }

    final location = [
      if (state != null && state.isNotEmpty) state,
      if (city != null && city.isNotEmpty) city,
      if (countryName != null && countryName.isNotEmpty) countryName,
    ];

    if (location.isEmpty && countryCode == null && zip == null) {
      return null;
    } else {
      return Address(
        location: location.isEmpty ? null : location.join(', '),
        postalCode: zip == null || zip.isEmpty ? null : zip,
        countryCode:
            countryCode == null || countryCode.isEmpty ? null : countryCode,
      );
    }
  }

  String? _parseShipmentDescription(XmlElement trackInfo) {
    final descr = trackInfo.getElement('Class')?.innerText ?? '';
    final type = trackInfo.getElement('ItemShape')?.innerText ?? '';
    final description = [
      if (descr.isNotEmpty && descr != 'False' && descr != 'Default')
        _replaceHtmlRegMark(descr),
      if (type.isNotEmpty && type != 'Unknown') type,
    ];
    return description.isEmpty ? null : description.join(', ');
  }

  String? _parseServiceDescription(XmlElement trackInfo) {
    final descriptions = trackInfo
        .findElements('Service')
        .map((service) => _replaceHtmlRegMark(service.innerText)!)
        .where((service) => service.isNotEmpty);
    return descriptions.isEmpty ? null : descriptions.join(', ');
  }

  String? _replaceHtmlRegMark(String? str) =>
      str?.replaceAll(RegExp(_regMarkHtml), _regMark);
}

const _regMarkHtml = r'<(?:SUP|sup)>&(?:reg|REG|#174|circledR);<\/(?:SUP|sup)>';

const _regMark = '®';

enum _AddressType {
  event,
  destination,
  origin,
}

class _Error {
  static const noInfo = 'a status update is not yet available';
  static const invalidTrackNumber = 'the tracking number may be incorrect';
  static const auth = 'authorization failure';
}

class _DateTime {
  /// Date i format "MMMM d, yyyy"
  final String? _date;

  /// Time in format "hh:mm am|pm"
  final String? _time;

  static const _monthMap = {
    'January': DateTime.january,
    'February': DateTime.february,
    'March': DateTime.march,
    'April': DateTime.april,
    'May': DateTime.may,
    'June': DateTime.june,
    'July': DateTime.july,
    'August': DateTime.august,
    'September': DateTime.september,
    'October': DateTime.october,
    'November': DateTime.november,
    'December': DateTime.december,
  };
  static const _monthDaySplit = ' ';
  static const _dayYearSplit = ', ';
  static const _hourMinutesSplit = ':';
  static const _minuteMiddaySplit = ' ';

  _DateTime({
    String? date,
    String? time,
  })  : _date = date,
        _time = time;

  DateTime? toDateTime(DateTimeProvider dateTimeProvider) {
    if (_date == null && _time == null) {
      return null;
    }
    final monthDaySplitPos = _date?.indexOf(_monthDaySplit) ?? -1;
    final dayYearSplitPos = _date?.indexOf(_dayYearSplit) ?? -1;
    final hoursMinutesSplitPos = _time?.indexOf(_hourMinutesSplit) ?? -1;
    final minuteMiddaySplitPos = _time?.indexOf(_minuteMiddaySplit) ?? -1;

    final monthStr = monthDaySplitPos < 0
        ? null
        : _date?.substring(
            0,
            monthDaySplitPos,
          );
    final dayStr = monthStr == null
        ? null
        : _date?.substring(
            monthDaySplitPos + _monthDaySplit.length,
            dayYearSplitPos < 0 ? null : dayYearSplitPos,
          );
    final yearStr = dayStr == null || dayYearSplitPos < 0
        ? null
        : _date?.substring(
            dayYearSplitPos + _dayYearSplit.length,
          );
    final hourStr = hoursMinutesSplitPos < 0
        ? null
        : _time?.substring(
            0,
            hoursMinutesSplitPos,
          );
    final minuteStr = hourStr == null
        ? null
        : _time?.substring(
            hoursMinutesSplitPos + _hourMinutesSplit.length,
            minuteMiddaySplitPos < 0 ? null : minuteMiddaySplitPos,
          );
    final midday = minuteStr == null || minuteMiddaySplitPos < 0
        ? null
        : _time?.substring(
            minuteMiddaySplitPos + _minuteMiddaySplit.length,
          );

    return _parse(
      dateTimeProvider,
      yearStr: yearStr,
      monthStr: monthStr,
      dayStr: dayStr,
      hourStr: hourStr,
      minuteStr: minuteStr,
      midday: midday,
    );
  }

  DateTime? _parse(
    DateTimeProvider dateTimeProvider, {
    required String? yearStr,
    required String? monthStr,
    required String? dayStr,
    required String? hourStr,
    required String? minuteStr,
    required String? midday,
  }) {
    if (yearStr == null &&
        monthStr == null &&
        dayStr == null &&
        hourStr == null &&
        minuteStr == null) {
      return null;
    }
    var hour = hourStr == null ? 0 : int.parse(hourStr);
    if ('pm' == midday?.toLowerCase()) {
      hour += 12;
      if (hour >= 24) {
        hour = 0;
      }
    }
    final minute = minuteStr == null ? 0 : int.parse(minuteStr);

    final now = dateTimeProvider.now();
    final year = yearStr == null ? now.year : int.parse(yearStr);
    final month = _monthMap[monthStr] ?? now.month;
    final day = dayStr == null ? now.day : int.parse(dayStr);

    return DateTime(year, month, day, hour, minute);
  }
}

const _eventStateMap = <String, ShipmentStatusType>{
  'label cancelled': ShipmentStatusType.infoReceived,
  'merchant order receipt notification, usps awaiting item':
      ShipmentStatusType.infoReceived,
  'picked up by shipping partner, usps awaiting item':
      ShipmentStatusType.infoReceived,
  'pre-shipment info sent to usps': ShipmentStatusType.infoReceived,
  'pre-shipment info sent to usps, usps awaiting item':
      ShipmentStatusType.infoReceived,
  'shipping label created, usps awaiting item': ShipmentStatusType.infoReceived,
  'usps expects item for mailing (ssk)': ShipmentStatusType.infoReceived,
  'acceptance': ShipmentStatusType.pickup,
  'accepted at usps destination facility': ShipmentStatusType.pickup,
  'accepted at usps origin facility': ShipmentStatusType.pickup,
  'accepted at usps regional destination facility': ShipmentStatusType.pickup,
  'accepted at usps regional facility': ShipmentStatusType.pickup,
  'accepted at usps regional origin facility': ShipmentStatusType.pickup,
  'picked up by shipping agent': ShipmentStatusType.pickup,
  'shipment received, package acceptance pending': ShipmentStatusType.pickup,
  'usps in possession of item': ShipmentStatusType.pickup,
  'usps picked up item': ShipmentStatusType.pickup,
  'forwarded': ShipmentStatusType.inTransit,
  'in transit, arriving late': ShipmentStatusType.inTransit,
  'accepted at usps facility': ShipmentStatusType.inTransitArrivedWaypoint,
  'arrival at post office': ShipmentStatusType.inTransitArrivedWaypoint,
  'arrived': ShipmentStatusType.inTransitArrivedWaypoint,
  'arrived at facility': ShipmentStatusType.inTransitArrivedWaypoint,
  'arrived at hub': ShipmentStatusType.inTransitArrivedWaypoint,
  'arrived at regional facility': ShipmentStatusType.inTransitArrivedWaypoint,
  'arrived at usps destination facility':
      ShipmentStatusType.inTransitArrivedWaypoint,
  'arrived at usps facility': ShipmentStatusType.inTransitArrivedWaypoint,
  'arrived at usps origin facility':
      ShipmentStatusType.inTransitArrivedWaypoint,
  'arrived at usps regional destination facility':
      ShipmentStatusType.inTransitArrivedWaypoint,
  'arrived at usps regional facility':
      ShipmentStatusType.inTransitArrivedWaypoint,
  'arrived at usps regional origin facility':
      ShipmentStatusType.inTransitArrivedWaypoint,
  'arrived shipping partner facility, usps awaiting item':
      ShipmentStatusType.inTransitArrivedWaypoint,
  'arrived usps facility': ShipmentStatusType.inTransitArrivedWaypoint,
  'arrived usps regional facility': ShipmentStatusType.inTransitArrivedWaypoint,
  'departed': ShipmentStatusType.inTransitDepartedWaypoint,
  'departed facility': ShipmentStatusType.inTransitDepartedWaypoint,
  'departed post office': ShipmentStatusType.inTransitDepartedWaypoint,
  'departed shipping partner facility, usps awaiting item':
      ShipmentStatusType.inTransitDepartedWaypoint,
  'departed usps destination facility':
      ShipmentStatusType.inTransitDepartedWaypoint,
  'departed usps facility': ShipmentStatusType.inTransitDepartedWaypoint,
  'departed usps origin facility': ShipmentStatusType.inTransitDepartedWaypoint,
  'departed usps regional destination facility':
      ShipmentStatusType.inTransitDepartedWaypoint,
  'departed usps regional facility':
      ShipmentStatusType.inTransitDepartedWaypoint,
  'departed usps regional origin facility':
      ShipmentStatusType.inTransitDepartedWaypoint,
  'depart from transit office of exchange':
      ShipmentStatusType.inTransitDepartedWaypoint,
  'dispatched from usps international service center':
      ShipmentStatusType.inTransitDepartedWaypoint,
  'in transit to next facility': ShipmentStatusType.inTransitDepartedWaypoint,
  'processed at usps regional destination facility':
      ShipmentStatusType.inTransitDepartedWaypoint,
  'processed through facility': ShipmentStatusType.inTransitDepartedWaypoint,
  'processed through regional facility':
      ShipmentStatusType.inTransitDepartedWaypoint,
  'inbound into customs': ShipmentStatusType.importedToDestinationCountry,
  'customs clearance': ShipmentStatusType.arrivedAtCustoms,
  'held in customs': ShipmentStatusType.arrivedAtCustoms,
  'customs clearance processing complete':
      ShipmentStatusType.customsClearanceComplete,
  'inbound out of customs': ShipmentStatusType.customsClearanceComplete,
  'released from us customs': ShipmentStatusType.customsClearanceComplete,
  'arrived at post office': ShipmentStatusType.outForDelivery,
  'attempted delivery abroad': ShipmentStatusType.outForDelivery,
  'available for pickup': ShipmentStatusType.outForDelivery,
  'available for redelivery or pickup': ShipmentStatusType.outForDelivery,
  'collect for pick up': ShipmentStatusType.outForDelivery,
  'out for delivery': ShipmentStatusType.outForDelivery,
  'out for delivery, expected delivery by 9:00pm':
      ShipmentStatusType.outForDelivery,
  'delivered': ShipmentStatusType.delivered,
  'delivered, front desk/reception/mail room': ShipmentStatusType.delivered,
  'delivered, front door/porch': ShipmentStatusType.delivered,
  'delivered, garage or other location at address':
      ShipmentStatusType.delivered,
  'delivered, in/at mailbox': ShipmentStatusType.delivered,
  'delivered, individual picked up at postal facility':
      ShipmentStatusType.delivered,
  'delivered, individual picked up at post office':
      ShipmentStatusType.delivered,
  'delivered, left with individual': ShipmentStatusType.delivered,
  'delivered, neighbor as requested': ShipmentStatusType.delivered,
  'delivered, parcel locker': ShipmentStatusType.delivered,
  'delivered, po box': ShipmentStatusType.delivered,
  'delivered to agent for final delivery': ShipmentStatusType.delivered,
  'delivered, to original sender': ShipmentStatusType.returnedToShipper,
  'tendered to returns agent': ShipmentStatusType.returnedToShipper,
  'delivery attempted - no access to delivery location':
      ShipmentStatusType.notDelivered,
  'return to sender': ShipmentStatusType.returnedToShipper,
  'return to sender processed': ShipmentStatusType.returnedToShipper,
  'unclaimed/being returned to sender': ShipmentStatusType.returnedToShipper,
  'arrived at military post office': ShipmentStatusType.inTransit,
  'held at post office, at customer request': ShipmentStatusType.inStorage,
  'in transit, arriving on time': ShipmentStatusType.inTransit,
  'notice left (no authorized recipient available)':
      ShipmentStatusType.notDelivered,
  'notice left (no secure location available)': ShipmentStatusType.notDelivered,
  'notice left (receptacle full/item oversized)':
      ShipmentStatusType.notDelivered,
  'redelivery scheduled': ShipmentStatusType.inTransit,
  'rescheduled to next delivery day': ShipmentStatusType.inTransit,
};
