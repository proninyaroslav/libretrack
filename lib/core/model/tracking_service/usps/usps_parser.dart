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
    return const ParseResult.noInfo();
  }
}

class _Error {
  static const noInfo = 'A status update is not yet available';
  static const invalidTrackNumber = 'The tracking number may be incorrect';
  static const auth = 'Authorization failure';
}
