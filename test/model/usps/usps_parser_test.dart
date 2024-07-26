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

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:libretrack/core/date_time_provider.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/model/parser.dart';
import 'package:libretrack/core/model/service_response.dart';
import 'package:libretrack/core/model/tracking_service/tracking_service.dart';
import 'package:mocktail/mocktail.dart';
import 'package:xml/xml.dart';

import '../../mock/mock.dart';

void main() {
  group('USPS parser |', () {
    late DateTimeProvider mockDateTimeProvider;
    late USPSParser parser;

    setUp(() {
      mockDateTimeProvider = MockDateTimeProvider();
      parser = USPSParser(mockDateTimeProvider);

      when(() => mockDateTimeProvider.now()).thenReturn(DateTime(2021, 1, 1));
    });

    String buildTrackResponseError(
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

      String buildError(
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
        final payload = buildError(
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
        final payload = buildError(
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
        final payload = buildTrackResponseError(
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
      String buildTrackResponse(
        XmlBuilder builder, {
        String? trackNumber,
        VoidCallback? trackInfoContent,
      }) {
        builder.element('TrackResponse', nest: () {
          builder.element(
            'TrackInfo',
            attributes: trackNumber == null ? {} : {'ID': trackNumber},
            nest: () {
              trackInfoContent?.call();
            },
          );
        });
        return builder.buildDocument().toXmlString();
      }

      test('No info', () {
        final builder = XmlBuilder();
        final payload = buildTrackResponseError(
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
        final payload = buildTrackResponse(builder);
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

      group('Parse date and time |', () {
        test('[January 1, 2021] [10:00 am]', () {
          final builder = XmlBuilder();
          final payload = buildTrackResponse(builder, trackNumber: '1',
              trackInfoContent: () {
            builder.element('GuaranteedDeliveryDate', nest: 'January 1, 2021');
            builder.element('GuaranteedDeliveryTime', nest: '10:00 am');
          });
          final response = ServiceResponse(
            transactionId: const TransactionId('1'),
            statusCode: 200,
            payload: payload,
          );

          final result = parser.parse(response);
          result.when(
            (info, activity, alternateTracks) {
              expect(info.scheduledDeliveryDate, DateTime(2021, 1, 1, 10));
            },
            noInfo: () => throw result,
            error: (e) => throw e,
          );
        });

        test('[January 1, 2021]', () {
          final builder = XmlBuilder();
          final payload = buildTrackResponse(builder, trackNumber: '1',
              trackInfoContent: () {
            builder.element('GuaranteedDeliveryDate', nest: 'January 1, 2021');
          });
          final response = ServiceResponse(
            transactionId: const TransactionId('1'),
            statusCode: 200,
            payload: payload,
          );

          final result = parser.parse(response);
          result.when(
            (info, activity, alternateTracks) {
              expect(info.scheduledDeliveryDate, DateTime(2021, 1, 1));
            },
            noInfo: () => throw result,
            error: (e) => throw e,
          );
        });

        test('[January 1, 2021] [10:00 PM]', () {
          final builder = XmlBuilder();
          final payload = buildTrackResponse(builder, trackNumber: '1',
              trackInfoContent: () {
            builder.element('GuaranteedDeliveryDate', nest: 'January 1, 2021');
            builder.element('GuaranteedDeliveryTime', nest: '10:00 PM');
          });
          final response = ServiceResponse(
            transactionId: const TransactionId('1'),
            statusCode: 200,
            payload: payload,
          );

          final result = parser.parse(response);
          result.when(
            (info, activity, alternateTracks) {
              expect(info.scheduledDeliveryDate, DateTime(2021, 1, 1, 22));
            },
            noInfo: () => throw result,
            error: (e) => throw e,
          );
        });

        test('[10:00 AM]', () {
          final builder = XmlBuilder();
          final payload = buildTrackResponse(builder, trackNumber: '1',
              trackInfoContent: () {
            builder.element('GuaranteedDeliveryTime', nest: '10:00 AM');
          });
          final response = ServiceResponse(
            transactionId: const TransactionId('1'),
            statusCode: 200,
            payload: payload,
          );

          final now = DateTime(2021, 1, 1);
          when(() => mockDateTimeProvider.now()).thenReturn(now);
          final result = parser.parse(response);
          result.when(
            (info, activity, alternateTracks) {
              expect(
                info.scheduledDeliveryDate,
                DateTime(now.year, now.month, now.day, 10),
              );
            },
            noInfo: () => throw result,
            error: (e) => throw e,
          );
        });

        test('[10:00]', () {
          final builder = XmlBuilder();
          final payload = buildTrackResponse(builder, trackNumber: '1',
              trackInfoContent: () {
            builder.element('GuaranteedDeliveryTime', nest: '10:00');
          });
          final response = ServiceResponse(
            transactionId: const TransactionId('1'),
            statusCode: 200,
            payload: payload,
          );

          final now = DateTime(2021, 1, 1);
          when(() => mockDateTimeProvider.now()).thenReturn(now);
          final result = parser.parse(response);
          result.when(
            (info, activity, alternateTracks) {
              expect(
                info.scheduledDeliveryDate,
                DateTime(now.year, now.month, now.day, 10),
              );
            },
            noInfo: () => throw result,
            error: (e) => throw e,
          );
        });

        test('[January 1]', () {
          final builder = XmlBuilder();
          final payload = buildTrackResponse(builder, trackNumber: '1',
              trackInfoContent: () {
            builder.element('GuaranteedDeliveryDate', nest: 'January 1');
          });
          final response = ServiceResponse(
            transactionId: const TransactionId('1'),
            statusCode: 200,
            payload: payload,
          );

          final now = DateTime(2021);
          when(() => mockDateTimeProvider.now()).thenReturn(now);
          final result = parser.parse(response);
          result.when(
            (info, activity, alternateTracks) {
              expect(
                info.scheduledDeliveryDate,
                DateTime(now.year, 1, 1),
              );
            },
            noInfo: () => throw result,
            error: (e) => throw e,
          );
        });

        test('[January]', () {
          final builder = XmlBuilder();
          final payload = buildTrackResponse(builder, trackNumber: '1',
              trackInfoContent: () {
            builder.element('GuaranteedDeliveryDate', nest: 'January');
          });
          final response = ServiceResponse(
            transactionId: const TransactionId('1'),
            statusCode: 200,
            payload: payload,
          );

          final result = parser.parse(response);
          result.when(
            (info, activity, alternateTracks) {
              expect(
                info.scheduledDeliveryDate,
                isNull,
              );
            },
            noInfo: () => throw result,
            error: (e) => throw e,
          );
        });
      });

      test('Guaranteed delivery date', () {
        final builder = XmlBuilder();
        final payload = buildTrackResponse(
          builder,
          trackNumber: '1',
          trackInfoContent: () {
            builder.element('GuaranteedDeliveryDate', nest: 'January 1, 2021');
            builder.element('GuaranteedDeliveryTime', nest: '10:00 am');
          },
        );
        final response = ServiceResponse(
          transactionId: const TransactionId('1'),
          statusCode: 200,
          payload: payload,
        );
        final expectedInfo = ShipmentInfo.from(
          trackNumber: '1',
          serviceType: PostalServiceType.usps,
          scheduledDeliveryDate: DateTime(2021, 1, 1, 10),
        );

        final result = parser.parse(response);
        result.when(
          (info, activity, alternateTracks) {
            expect(info, expectedInfo);
          },
          noInfo: () => throw result,
          error: (e) => throw e,
        );
      });

      test('Expected delivery date', () {
        final builder = XmlBuilder();
        final payload = buildTrackResponse(
          builder,
          trackNumber: '1',
          trackInfoContent: () {
            builder.element('ExpectedDeliveryDate', nest: 'January 1, 2021');
            builder.element('ExpectedDeliveryTime', nest: '10:00 am');
          },
        );
        final response = ServiceResponse(
          transactionId: const TransactionId('1'),
          statusCode: 200,
          payload: payload,
        );
        final expectedInfo = ShipmentInfo.from(
          trackNumber: '1',
          serviceType: PostalServiceType.usps,
          estimatedDeliveryDate: DateTime(2021, 1, 1, 10),
        );

        final result = parser.parse(response);
        result.when(
          (info, activity, alternateTracks) {
            expect(info, expectedInfo);
          },
          noInfo: () => throw result,
          error: (e) => throw e,
        );
      });

      test('Predicted delivery date', () {
        final builder = XmlBuilder();
        final payload = buildTrackResponse(
          builder,
          trackNumber: '1',
          trackInfoContent: () {
            builder.element('PredictedDeliveryDate', nest: 'January 1, 2021');
            builder.element('PredictedDeliveryTime', nest: '10:00 am');
          },
        );
        final response = ServiceResponse(
          transactionId: const TransactionId('1'),
          statusCode: 200,
          payload: payload,
        );
        final expectedInfo = ShipmentInfo.from(
          trackNumber: '1',
          serviceType: PostalServiceType.usps,
          estimatedDeliveryDate: DateTime(2021, 1, 1, 10),
        );

        final result = parser.parse(response);
        result.when(
          (info, activity, alternateTracks) {
            expect(info, expectedInfo);
          },
          noInfo: () => throw result,
          error: (e) => throw e,
        );
      });

      test('Activity', () {
        final builder = XmlBuilder();
        final payload = buildTrackResponse(
          builder,
          trackNumber: '1',
          trackInfoContent: () {
            builder.element('TrackSummary', nest: () {
              builder.element('Event', nest: 'Delivered');
              builder.element('EventDate', nest: 'January 5, 2021');
              builder.element('EventTime', nest: '10:00 am');
              builder.element('EventCity', nest: 'Foo');
              builder.element('EventState', nest: 'FO');
              builder.element('EventZIPCode', nest: '123');
              builder.element('EventCountry', nest: 'Bar');
              builder.element('Name', nest: 'FOO BAR');
            });
            builder.element('TrackDetail', nest: () {
              builder.element('Event', nest: 'Out For Delivery');
              builder.element('EventDate', nest: 'January 5, 2021');
              builder.element('EventTime', nest: '9:00 am');
              builder.element('EventCity', nest: 'Foo');
              builder.element('EventState', nest: 'FO');
              builder.element('EventZIPCode', nest: '123');
              builder.element('EventCountry', nest: 'Bar');
            });
            builder.element('TrackDetail', nest: () {
              builder.element('Event', nest: 'In transit, arriving late');
              builder.element('EventDate', nest: 'January 4, 2021');
              builder.element('EventTime', nest: '10:00 pm');
              builder.element('EventCity', nest: 'Foo');
              builder.element('EventState', nest: 'FO');
              builder.element('EventCountry', nest: 'Bar');
            });
            builder.element('TrackDetail', nest: () {
              builder.element('Event', nest: 'Accepted at USPS facility');
              builder.element('EventDate', nest: 'January 3, 2021');
              builder.element('EventCity', nest: 'Baz');
              builder.element('EventCountry', nest: 'Bar');
            });
            builder.element('TrackDetail', nest: () {
              builder.element('Event', nest: 'USPS picked up item');
              builder.element('EventDate', nest: 'January 2, 2021');
              builder.element('EventTime', nest: '10:00 am');
              builder.element('EventCity', nest: 'Baz');
              builder.element('EventCountry', nest: 'Bar');
            });
            builder.element('TrackDetail', nest: () {
              builder.element(
                'Event',
                nest: 'Shipping label created, USPS awaiting item',
              );
              builder.element('EventDate', nest: 'January 1, 2021');
              builder.element('EventCity', nest: 'Baz');
              builder.element('EventCountry', nest: 'Bar');
            });
          },
        );
        final response = ServiceResponse(
          transactionId: const TransactionId('1'),
          statusCode: 200,
          payload: payload,
        );

        final deliveryActivity = ShipmentActivityInfo.from(
          trackNumber: '1',
          serviceType: PostalServiceType.usps,
          statusType: ShipmentStatusType.delivered,
          statusDescription: 'Delivered',
          activityLocation: const Address(
            location: 'FO, Foo, Bar',
            postalCode: '123',
          ),
          dateTime: DateTime(2021, 1, 5, 10),
        );
        final pickupActivity = ShipmentActivityInfo.from(
          trackNumber: '1',
          serviceType: PostalServiceType.usps,
          statusType: ShipmentStatusType.pickup,
          statusDescription: 'USPS picked up item',
          activityLocation: const Address(location: 'Baz, Bar'),
          dateTime: DateTime(2021, 1, 2, 10),
        );

        final expectedInfo = ShipmentInfo.from(
          trackNumber: '1',
          serviceType: PostalServiceType.usps,
          signedForByName: 'FOO BAR',
          deliveryDate: deliveryActivity.dateTime,
          pickupDate: pickupActivity.dateTime,
        );

        final expectedActivity = [
          deliveryActivity,
          ShipmentActivityInfo.from(
            trackNumber: '1',
            serviceType: PostalServiceType.usps,
            statusType: ShipmentStatusType.outForDelivery,
            statusDescription: 'Out For Delivery',
            activityLocation: const Address(
              location: 'FO, Foo, Bar',
              postalCode: '123',
            ),
            dateTime: DateTime(2021, 1, 5, 9),
          ),
          ShipmentActivityInfo.from(
            trackNumber: '1',
            serviceType: PostalServiceType.usps,
            statusType: ShipmentStatusType.inTransit,
            statusDescription: 'In transit, arriving late',
            activityLocation: const Address(location: 'FO, Foo, Bar'),
            dateTime: DateTime(2021, 1, 4, 22),
          ),
          ShipmentActivityInfo.from(
            trackNumber: '1',
            serviceType: PostalServiceType.usps,
            statusType: ShipmentStatusType.inTransitArrivedWaypoint,
            statusDescription: 'Accepted at USPS facility',
            activityLocation: const Address(location: 'Baz, Bar'),
            dateTime: DateTime(2021, 1, 3),
          ),
          pickupActivity,
          ShipmentActivityInfo.from(
            trackNumber: '1',
            serviceType: PostalServiceType.usps,
            statusType: ShipmentStatusType.infoReceived,
            statusDescription: 'Shipping label created, USPS awaiting item',
            activityLocation: const Address(location: 'Baz, Bar'),
            dateTime: DateTime(2021, 1, 1),
          ),
        ];

        final result = parser.parse(response);
        result.when(
          (info, activity, alternateTracks) {
            expect(info, expectedInfo);
            expect(activity, expectedActivity);
          },
          noInfo: () => throw result,
          error: (e) => throw e,
        );
      });

      test('Shipment description', () {
        final builder = XmlBuilder();
        final payload = buildTrackResponse(
          builder,
          trackNumber: '1',
          trackInfoContent: () {
            builder.element(
              'Class',
              nest: 'Priority Mail<SUP>&reg;</SUP>',
            );
            builder.element(
              'ItemShape',
              nest: 'Parcel',
            );
          },
        );
        final response = ServiceResponse(
          transactionId: const TransactionId('1'),
          statusCode: 200,
          payload: payload,
        );
        final expectedInfo = ShipmentInfo.from(
            trackNumber: '1',
            serviceType: PostalServiceType.usps,
            shipmentDescription: 'Priority Mail®, Parcel');

        final result = parser.parse(response);
        result.when(
          (info, activity, alternateTracks) {
            expect(info, expectedInfo);
          },
          noInfo: () => throw result,
          error: (e) => throw e,
        );
      });

      test('Service description', () {
        final builder = XmlBuilder();
        final payload = buildTrackResponse(
          builder,
          trackNumber: '1',
          trackInfoContent: () {
            builder.element(
              'Service',
              nest: 'USPS Tracking<SUP>&#174;</SUP>',
            );
            builder.element(
              'Service',
              nest: 'Up to \$100 insurance included',
            );
          },
        );
        final response = ServiceResponse(
          transactionId: const TransactionId('1'),
          statusCode: 200,
          payload: payload,
        );
        final expectedInfo = ShipmentInfo.from(
          trackNumber: '1',
          serviceType: PostalServiceType.usps,
          serviceDescription: 'USPS Tracking®, Up to \$100 insurance included',
        );

        final result = parser.parse(response);
        result.when(
          (info, activity, alternateTracks) {
            expect(info, expectedInfo);
          },
          noInfo: () => throw result,
          error: (e) => throw e,
        );
      });

      test('Shipper and receiver address', () {
        final builder = XmlBuilder();
        final payload = buildTrackResponse(
          builder,
          trackNumber: '1',
          trackInfoContent: () {
            builder.element('DestinationCity', nest: 'Foo');
            builder.element('DestinationState', nest: 'FO');
            builder.element('DestinationZip', nest: '123');
            builder.element('DestinationCountryCode', nest: 'RU');
            builder.element('OriginCity', nest: 'Bar');
            builder.element('OriginState', nest: 'BA');
            builder.element('OriginZip', nest: '456');
            builder.element('OriginCountryCode', nest: 'US');
          },
        );
        final response = ServiceResponse(
          transactionId: const TransactionId('1'),
          statusCode: 200,
          payload: payload,
        );
        final expectedInfo = ShipmentInfo.from(
          trackNumber: '1',
          serviceType: PostalServiceType.usps,
          shipperAddress: const Address(
            location: 'BA, Bar',
            postalCode: '456',
            countryCode: 'US',
          ),
          receiverAddress: const Address(
            location: 'FO, Foo',
            postalCode: '123',
            countryCode: 'RU',
          ),
        );

        final result = parser.parse(response);
        result.when(
          (info, activity, alternateTracks) {
            expect(info, expectedInfo);
          },
          noInfo: () => throw result,
          error: (e) => throw e,
        );
      });
    });
  });
}
