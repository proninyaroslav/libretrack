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
import 'package:libretrack/core/model/parser.dart';
import 'package:libretrack/core/model/service_response.dart';
import 'package:libretrack/core/model/tracking_service/tracking_service.dart';
import 'package:xml/xml.dart';

void main() {
  group('USPS parser |', () {
    final parser = USPSParser();

    String _buildTrackResponseError(
      XmlBuilder builder, {
      required String number,
      required String description,
    }) {
      builder.element('TrackResponse', nest: () {
        builder.element('TrackInfo', nest: () {
          builder.element('Error', nest: () {
            builder.element('Number', nest: number);
            builder.element('Description', nest: description);
          });
        });
      });
      return builder.buildDocument().toXmlString();
    }

    group('Error |', () {
      test('HTTP error', () {
        const response = ServiceResponse(
          transactionId: TransactionId('1'),
          statusCode: 500,
          payload: '',
        );

        final result = parser.parse(response);
        result.maybeWhen(
          (info, activity, alternateTracks) => throw result,
          error: (e) => e.maybeWhen(
            serviceTemporary: (code, message) {
              expect(code, '${response.statusCode}');
              expect(message, 'HTTP ${response.statusCode}');
            },
            orElse: () => throw e,
          ),
          orElse: () => throw result,
        );
      });

      String _buildError(
        XmlBuilder builder, {
        required String number,
        required String description,
      }) {
        builder.element('Error', nest: () {
          builder.element('Number', nest: number);
          builder.element('Description', nest: description);
        });
        return builder.buildDocument().toXmlString();
      }

      test('Bad request', () {
        final builder = XmlBuilder();
        final payload = _buildError(
          builder,
          number: '1',
          description: 'Test',
        );
        final response = ServiceResponse(
          transactionId: const TransactionId('1'),
          statusCode: 200,
          payload: payload,
        );

        final result = parser.parse(response);
        result.maybeWhen(
          (info, activity, alternateTracks) => throw result,
          error: (e) => e.maybeWhen(
            badRequest: (code, message) {
              expect(code, '1');
              expect(message, 'Test');
            },
            orElse: () => throw e,
          ),
          orElse: () => throw result,
        );
      });

      test('Authorization error', () {
        final builder = XmlBuilder();
        final payload = _buildError(
          builder,
          number: '80040B1A',
          description:
              'Authorization failure.  Perhaps username and/or password is incorrect.',
        );
        final response = ServiceResponse(
          transactionId: const TransactionId('1'),
          statusCode: 200,
          payload: payload,
        );

        final result = parser.parse(response);
        result.maybeWhen(
          (info, activity, alternateTracks) => throw result,
          error: (e) => e.maybeWhen(
            auth: (code, message) {
              expect(code, '80040B1A');
              expect(
                message,
                'Authorization failure.  Perhaps username and/or password is incorrect.',
              );
            },
            orElse: () => throw e,
          ),
          orElse: () => throw result,
        );
      });

      test('Invalid format', () {
        const response = ServiceResponse(
          transactionId: TransactionId('1'),
          statusCode: 200,
          payload: '',
        );

        final result = parser.parse(response);
        result.maybeWhen(
          (info, activity, alternateTracks) => throw result,
          error: (e) => expect(e is ParseErrorFormat, isTrue),
          orElse: () => throw result,
        );
      });

      test('Invalid tracking number', () {
        final builder = XmlBuilder();
        final payload = _buildTrackResponseError(
          builder,
          number: '1',
          description:
              'The tracking number may be incorrect or the status update is not yet available. Please verify your tracking number and try again later.',
        );
        final response = ServiceResponse(
          transactionId: const TransactionId('1'),
          statusCode: 200,
          payload: payload,
        );

        final result = parser.parse(response);
        result.maybeWhen(
          (info, activity, alternateTracks) => throw result,
          error: (e) => expect(e is ParseErrorInvalidTrackNumber, isTrue),
          orElse: () => throw result,
        );
      });
    });

    group('Result |', () {
      String _buildTrackResponse(
        XmlBuilder builder, {
        String? trackNumber,
      }) {
        builder.element('TrackResponse', nest: () {
          builder.element(
            'TrackInfo',
            attributes: trackNumber == null ? {} : {'ID': trackNumber},
            nest: () {},
          );
        });
        return builder.buildDocument().toXmlString();
      }

      test('No info', () {
        final builder = XmlBuilder();
        final payload = _buildTrackResponseError(
          builder,
          number: '1',
          description:
              'A status update is not yet available on your Priority Mail&lt;SUP>&amp;reg;&lt;/SUP> package. It will be available when the shipper provides an update or the package is delivered to USPS. Check back soon. Sign up for Informed Delivery&lt;SUP>&amp;reg;&lt;/SUP> to receive notifications for packages addressed to you.',
        );
        final response = ServiceResponse(
          transactionId: const TransactionId('1'),
          statusCode: 200,
          payload: payload,
        );

        final result = parser.parse(response);
        expect(result is ParseResultNoInfo, isTrue);
      });

      test('No tracking number', () {
        final builder = XmlBuilder();
        final payload = _buildTrackResponse(builder);
        final response = ServiceResponse(
          transactionId: const TransactionId('1'),
          statusCode: 200,
          payload: payload,
        );

        final result = parser.parse(response);
        result.maybeWhen(
          (info, activity, alternateTracks) => throw result,
          error: (e) => expect(e is ParseErrorFormat, isTrue),
          orElse: () => throw result,
        );
      });
    });
  });
}
