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
import 'package:libretrack/core/model/service_response.dart';
import 'package:libretrack/core/model/type/locale.dart';
import 'package:xml/xml.dart';

import '../../parser.dart';

class USPSParser extends Parser {
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

    if (description.isEmpty) {
      return ParseResult.error(ParseError.badRequest(code: number));
    } else if (description.startsWith(_Error.noInfo)) {
      return const ParseResult.noInfo();
    } else if (description.startsWith(_Error.invalidTrackNumber)) {
      return const ParseResult.error(ParseError.invalidTrackNumber());
    } else if (description.startsWith(_Error.auth)) {
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

    final guaranteedDelivery = _parseGuaranteedDelivery(trackInfo);

    return ParseResult(
      info: ShipmentInfo.from(
        trackNumber: trackNumber,
        serviceType: PostalServiceType.usps,
        scheduledDeliveryDate: guaranteedDelivery?.toDateTime(),
      ),
      activity: [],
    );
  }

  _DateTime? _parseGuaranteedDelivery(XmlElement trackInfo) {
    final date = trackInfo.getElement('GuaranteedDeliveryDate');
    final time = trackInfo.getElement('GuaranteedDeliveryTime');

    return _DateTime(date: date?.innerText, time: time?.innerText);
  }
}

class _Error {
  static const noInfo = 'A status update is not yet available';
  static const invalidTrackNumber = 'The tracking number may be incorrect';
  static const auth = 'Authorization failure';
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

  DateTime? toDateTime() {
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
    final dayStr = monthStr == null || dayYearSplitPos < 0
        ? null
        : _date?.substring(
            monthDaySplitPos + _monthDaySplit.length,
            dayYearSplitPos,
          );
    final yearStr = dayStr == null
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
    final minuteStr = hourStr == null || minuteMiddaySplitPos < 0
        ? null
        : _time?.substring(
            hoursMinutesSplitPos + _hourMinutesSplit.length,
            minuteMiddaySplitPos,
          );
    final midday = minuteStr == null
        ? null
        : _time?.substring(
            minuteMiddaySplitPos + _minuteMiddaySplit.length,
          );

    return _parse(
      yearStr: yearStr,
      monthStr: monthStr,
      dayStr: dayStr,
      hourStr: hourStr,
      minuteStr: minuteStr,
      midday: midday,
    );
  }

  DateTime? _parse({
    required String? yearStr,
    required String? monthStr,
    required String? dayStr,
    required String? hourStr,
    required String? minuteStr,
    required String? midday,
  }) {
    var hour = hourStr == null ? 0 : int.parse(hourStr);
    if ('pm' == midday?.toLowerCase()) {
      hour += 12;
      if (hour >= 24) {
        hour = 0;
      }
    }
    final minute = minuteStr == null ? 0 : int.parse(minuteStr);

    final now = DateTime.now();
    final year = yearStr == null ? now.year : int.parse(yearStr);
    final month = _monthMap[monthStr] ?? now.month;
    final day = dayStr == null ? now.day : int.parse(dayStr);

    return DateTime(year, month, day, hour, minute);
  }
}
