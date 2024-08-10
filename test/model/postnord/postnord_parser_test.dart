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

import 'package:flutter_test/flutter_test.dart';
import 'package:libretrack/core/entity/dimensions.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/model/parser.dart';
import 'package:libretrack/core/model/service_response.dart';
import 'package:libretrack/core/model/tracking_service/postnord/postnord_parser.dart';

void main() {
  group('PostNord parser |', () {
    final parser = PostNordParser();

    group('HTTP error |', () {
      test('Forbidden/Invalid API key', () {
        const response = ServiceResponse(
          transactionId: TransactionId('1'),
          statusCode: 403,
          payload: '',
        );

        final result = parser.parse(response);
        result.maybeWhen(
          (info, activity, alternateTracks) => throw result,
          error: (e) => e.maybeWhen(
            auth: (code, message) {
              expect(code, '${response.statusCode}');
              expect(message, 'HTTP ${response.statusCode}');
            },
            orElse: () => throw e,
          ),
          orElse: () => throw result,
        );
      });

      test('Bad Request', () {
        const payload = {
          "type": "about:blank",
          "title": "Bad Request",
          "status": 400,
          "detail": "Required parameter 'id' is not present.",
          "instance": "/ntt/v5/shipment"
        };

        final response = ServiceResponse(
          transactionId: const TransactionId('1'),
          statusCode: 400,
          payload: jsonEncode(payload),
        );

        final result = parser.parse(response);
        result.maybeWhen(
          (info, activity, alternateTracks) => throw result,
          error: (e) => e.maybeWhen(
            badRequest: (code, message) {
              expect(code, '${response.statusCode}');
              expect(message, payload['detail']);
            },
            orElse: () => throw e,
          ),
          orElse: () => throw result,
        );
      });

      test('Not Found', () {
        const response = ServiceResponse(
          transactionId: TransactionId('1'),
          statusCode: 404,
          payload: '',
        );

        final result = parser.parse(response);
        result.maybeWhen(
          (info, activity, alternateTracks) => throw result,
          error: (e) => e.maybeWhen(
            badRequest: (code, message) {
              expect(code, '${response.statusCode}');
              expect(message, 'HTTP ${response.statusCode}');
            },
            orElse: () => throw e,
          ),
          orElse: () => throw result,
        );
      });

      test('Other', () {
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
    });

    group('Fault |', () {
      test('Invalid tracking number', () {
        final payload = {
          "TrackingInformationResponse": {
            "compositeFault": {
              "faults": [
                {
                  "faultCode": "invalidIdentifier",
                  "explanationText":
                      "Identifier must be a valid ItemId or ShipmentId",
                  "paramValues": [
                    {"param": "identifier", "value": "gfrgrg"}
                  ]
                }
              ]
            },
            "shipments": []
          }
        };

        final response = ServiceResponse(
          transactionId: const TransactionId('1'),
          statusCode: 200,
          payload: jsonEncode(payload),
        );

        final result = parser.parse(response);
        result.maybeWhen(
          (info, activity, alternateTracks) => throw result,
          error: (e) {
            if (e is! ParseErrorInvalidTrackNumber) {
              throw result;
            }
          },
          orElse: () => throw result,
        );
      });

      test('Invalid locale', () {
        final payload = {
          "TrackingInformationResponse": {
            "compositeFault": {
              "faults": [
                {
                  "faultCode": "invalidLocale",
                  "explanationText": "Locale not valid",
                  "paramValues": [
                    {"param": "locale", "value": "ru"}
                  ]
                }
              ]
            },
            "shipments": []
          }
        };

        final response = ServiceResponse(
          transactionId: const TransactionId('1'),
          statusCode: 200,
          payload: jsonEncode(payload),
        );

        final result = parser.parse(response);
        result.maybeWhen(
          (info, activity, alternateTracks) => throw result,
          error: (e) => e.maybeWhen(
            badRequest: (code, message) {
              expect(code, 'invalidLocale');
              expect(message, 'Locale not valid (ru)');
            },
            orElse: () => throw e,
          ),
          orElse: () => throw result,
        );
      });

      test('Other', () {
        final payload = {
          "TrackingInformationResponse": {
            "compositeFault": {
              "faults": [
                {"faultCode": "someCode", "explanationText": "Some text"}
              ]
            },
            "shipments": []
          }
        };

        final response = ServiceResponse(
          transactionId: const TransactionId('1'),
          statusCode: 200,
          payload: jsonEncode(payload),
        );

        final result = parser.parse(response);
        result.maybeWhen(
          (info, activity, alternateTracks) => throw result,
          error: (e) => e.maybeWhen(
            badRequest: (code, message) {
              expect(code, 'someCode');
              expect(message, 'Some text');
            },
            orElse: () => throw e,
          ),
          orElse: () => throw result,
        );
      });
    });

    group('Result |', () {
      const defaultId = TransactionId('1');
      const defaultTrack = '123';

      String makePayload({
        required String trackNumber,
        List<dynamic>? events,
        Map<String, dynamic>? shipment,
        Map<String, dynamic>? item,
      }) {
        return jsonEncode({
          "TrackingInformationResponse": {
            "shipments": [
              {
                ...?shipment,
                "shipmentId": trackNumber,
                "items": [
                  <String, dynamic>{
                    "itemId": trackNumber,
                    "events": events ?? [],
                    ...?item,
                  },
                ],
              },
            ],
          }
        });
      }

      group('ShipmentActivityInfo |', () {
        test('No activity', () {
          final response = ServiceResponse(
            transactionId: defaultId,
            statusCode: 200,
            payload: makePayload(trackNumber: defaultTrack),
          );

          final result = parser.parse(response);
          result.maybeWhen(
            (info, activity, alternateTracks) =>
                expect(activity.isEmpty, isTrue),
            orElse: () => throw result,
          );
        });

        test('Multiple activity', () {
          final response = ServiceResponse(
            transactionId: defaultId,
            statusCode: 200,
            payload: makePayload(
              trackNumber: defaultTrack,
              events: [
                {
                  "eventTime": "2024-07-31T00:41:00",
                  "eventCode": "68",
                  "status": "INFORMED",
                  "eventDescription":
                      "We have received a notification from your shipper that they are preparing an item for you. The tracking information will be updated when the parcel is handed over to PostNord.",
                  "location": {"displayName": "PostNord", "name": "PostNord"}
                },
                {
                  "eventTime": "2024-07-31T02:20:00",
                  "eventCode": "31",
                  "status": "EN_ROUTE",
                  "eventDescription":
                      "The shipment item is under transportation.",
                  "location": {
                    "locationId": "126",
                    "blomId": 1023745,
                    "displayName": "SEGELTORP PAKETTERMINAL",
                    "name": "SEGELTORP PAKETTERMINAL",
                    "countryCode": "SWE",
                    "country": "Sweden",
                    "postcode": "14172",
                    "city": "Segeltorp",
                    "locationType": "HUB"
                  }
                },
                {
                  "eventTime": "2024-07-31T11:24:00",
                  "eventCode": "1",
                  "status": "AVAILABLE_FOR_DELIVERY",
                  "eventDescription":
                      "The shipment item has been delivered to a service point.",
                  "location": {
                    "locationId": "500285",
                    "blomId": 1050898,
                    "displayName": "DIREKTEN HAMMARBY",
                    "name": "DIREKTEN HAMMARBY",
                    "countryCode": "SWE",
                    "country": "Sweden",
                    "postcode": "12067",
                    "city": "Stockholm",
                    "locationType": "SERVICE_POINT"
                  }
                },
                {
                  "eventTime": "2024-07-31T12:18:00",
                  "eventCode": "z08",
                  "status": "OTHER",
                  "eventDescription":
                      "E-mail notification has been sent to the recipient.",
                  "location": {
                    "locationId": "3",
                    "displayName": "PostNord",
                    "name": "PostNord",
                    "countryCode": "SWE",
                    "country": "Sweden",
                    "locationType": "HUB"
                  }
                },
                {
                  "eventTime": "2024-08-02T15:07:00",
                  "eventCode": "21",
                  "status": "DELIVERED",
                  "eventDescription": "The shipment item has been delivered.",
                  "location": {
                    "locationId": "500285",
                    "blomId": 1050898,
                    "displayName": "DIREKTEN HAMMARBY",
                    "name": "DIREKTEN HAMMARBY",
                    "countryCode": "SWE",
                    "country": "Sweden",
                    "postcode": "12067",
                    "city": "Stockholm",
                    "locationType": "SERVICE_POINT"
                  }
                }
              ],
            ),
          );

          final expectedActivity = [
            ShipmentActivityInfo.from(
              trackNumber: defaultTrack,
              serviceType: PostalServiceType.postNord,
              statusType: ShipmentStatusType.delivered,
              statusDescription: 'The shipment item has been delivered.',
              dateTime: DateTime.parse('2024-08-02T15:07:00'),
              activityLocation: const Address(
                location: 'DIREKTEN HAMMARBY, Stockholm, Sweden',
                postalCode: '12067',
                countryCode: 'SWE',
              ),
            ),
            ShipmentActivityInfo.from(
              trackNumber: defaultTrack,
              serviceType: PostalServiceType.postNord,
              statusType: ShipmentStatusType.other,
              statusDescription:
                  'E-mail notification has been sent to the recipient.',
              dateTime: DateTime.parse('2024-07-31T12:18:00'),
              activityLocation: const Address(
                location: 'PostNord, Sweden',
                countryCode: 'SWE',
              ),
            ),
            ShipmentActivityInfo.from(
              trackNumber: defaultTrack,
              serviceType: PostalServiceType.postNord,
              statusType: ShipmentStatusType.outForDelivery,
              statusDescription:
                  'The shipment item has been delivered to a service point.',
              dateTime: DateTime.parse('2024-07-31T11:24:00'),
              activityLocation: const Address(
                location: 'DIREKTEN HAMMARBY, Stockholm, Sweden',
                postalCode: '12067',
                countryCode: 'SWE',
              ),
            ),
            ShipmentActivityInfo.from(
              trackNumber: defaultTrack,
              serviceType: PostalServiceType.postNord,
              statusType: ShipmentStatusType.inTransit,
              statusDescription: 'The shipment item is under transportation.',
              dateTime: DateTime.parse('2024-07-31T02:20:00'),
              activityLocation: const Address(
                location: 'SEGELTORP PAKETTERMINAL, Segeltorp, Sweden',
                postalCode: '14172',
                countryCode: 'SWE',
              ),
            ),
            ShipmentActivityInfo.from(
              trackNumber: defaultTrack,
              serviceType: PostalServiceType.postNord,
              statusType: ShipmentStatusType.infoReceived,
              statusDescription:
                  'We have received a notification from your shipper that they are preparing an item for you. The tracking information will be updated when the parcel is handed over to PostNord.',
              dateTime: DateTime.parse('2024-07-31T00:41:00'),
              activityLocation: const Address(location: 'PostNord'),
            ),
          ];

          final result = parser.parse(response);
          result.maybeWhen(
            (info, activity, alternateTracks) =>
                expect(activity, expectedActivity),
            orElse: () => throw result,
          );
        });
      });

      group('ShipmentInfo |', () {
        test('All available data', () {
          final response = ServiceResponse(
            transactionId: defaultId,
            statusCode: 200,
            payload: makePayload(
              trackNumber: defaultTrack,
              shipment: {
                "service": {
                  "code": "19",
                  "name": "PostNord MyPack Collect/Box"
                },
                "consignor": {
                  "name": "Amazon",
                  "address": {
                    "countryCode": "DNK",
                    "country": "Denmark",
                    "postCode": "7017"
                  }
                },
                "consignee": {
                  "name": "Ivan",
                  "address": {
                    "city": "STOCKHOLM",
                    "countryCode": "SWE",
                    "country": "Sweden",
                    "postCode": "12067"
                  }
                },
                "status": "DELIVERED",
                "estimatedTimeOfArrival": "2024-08-02T15:07:00",
                "publicTimeOfArrival": "2024-08-02T15:07:00",
              },
              item: {
                "dropOffDate": "2024-07-31T02:20:00",
                "deliveryDate": "2024-08-02T15:07:00",
                "estimatedTimeOfArrival": "2024-08-02T15:07:00",
                "publicTimeOfArrival": "2024-08-02T15:07:00",
                "typeOfItemActualName": "Parcel",
                "status": "DELIVERED",
                "statedMeasurement": {
                  "weight": {"value": "0.6", "unit": "kg"},
                  "length": {"value": "0.3", "unit": "m"},
                  "height": {"value": "0.06", "unit": "m"},
                  "width": {"value": "0.22", "unit": "m"},
                  "volume": {"value": "0.004", "unit": "m3"}
                },
                "assessedMeasurement": {
                  "weight": {"value": "0.56", "unit": "kg"},
                  "length": {"value": "0.255", "unit": "m"},
                  "height": {"value": "0.064", "unit": "m"},
                  "width": {"value": "0.17", "unit": "m"}
                },
                "additionalInformation": "Additional info",
              },
              events: [
                {
                  "eventTime": "2024-08-02T15:07:00",
                  "eventCode": "21",
                  "status": "DELIVERED",
                  "eventDescription": "The shipment item has been delivered.",
                  "location": {
                    "locationId": "500285",
                    "blomId": 1050898,
                    "displayName": "DIREKTEN HAMMARBY",
                    "name": "DIREKTEN HAMMARBY",
                    "countryCode": "SWE",
                    "country": "Sweden",
                    "postcode": "12067",
                    "city": "Stockholm",
                    "locationType": "SERVICE_POINT"
                  }
                },
              ],
            ),
          );

          final expectedActivity = [
            ShipmentActivityInfo.from(
              trackNumber: defaultTrack,
              serviceType: PostalServiceType.postNord,
              statusType: ShipmentStatusType.delivered,
              statusDescription: 'The shipment item has been delivered.',
              dateTime: DateTime.parse('2024-08-02T15:07:00'),
              activityLocation: const Address(
                location: 'DIREKTEN HAMMARBY, Stockholm, Sweden',
                postalCode: '12067',
                countryCode: 'SWE',
              ),
            ),
          ];
          final expectedInfo = ShipmentInfo.from(
            trackNumber: defaultTrack,
            serviceType: PostalServiceType.postNord,
            serviceDescription: 'PostNord MyPack Collect/Box',
            shipmentDescription: 'Parcel',
            weight: const UnitOfMeasurement(
              value: 0.6,
              measurement: Measurement.kilogram,
            ),
            volume: const UnitOfMeasurement(
              value: 0.004,
              measurement: Measurement.cubicMeter,
            ),
            pickupDate: DateTime.parse('2024-07-31T02:20:00'),
            deliveryDate: DateTime.parse('2024-08-02T15:07:00'),
            estimatedDeliveryDate: DateTime.parse('2024-08-02T15:07:00'),
            scheduledDeliveryDate: DateTime.parse('2024-08-02T15:07:00'),
            shipperAddress: const Address(
              location: 'Denmark',
              countryCode: 'DNK',
              postalCode: '7017',
            ),
            receiverAddress: const Address(
              location: 'STOCKHOLM, Sweden',
              countryCode: 'SWE',
              postalCode: '12067',
            ),
            serviceMessage: 'Additional info',
            shipperName: 'Amazon',
            receiverName: 'Ivan',
            dimensions: const Dimensions(
              width: UnitOfMeasurement(
                value: 0.22,
                measurement: Measurement.meter,
              ),
              height: UnitOfMeasurement(
                value: 0.06,
                measurement: Measurement.meter,
              ),
              length: UnitOfMeasurement(
                value: 0.3,
                measurement: Measurement.meter,
              ),
            ),
            currentStatus: ShipmentStatusType.delivered,
          );

          final result = parser.parse(response);
          result.maybeWhen(
            (info, activity, alternateTracks) {
              expect(info, expectedInfo);
              expect(activity, expectedActivity);
            },
            orElse: () => throw result,
          );
        });

        test('Out for delivery', () {
          final response = ServiceResponse(
            transactionId: defaultId,
            statusCode: 200,
            payload: makePayload(
              trackNumber: defaultTrack,
              shipment: {
                "service": {
                  "code": "19",
                  "name": "PostNord MyPack Collect/Box"
                },
                "consignor": {
                  "name": "Amazon",
                  "address": {
                    "countryCode": "DNK",
                    "country": "Denmark",
                    "postCode": "7017"
                  }
                },
                "consignee": {
                  "name": "Ivan",
                  "address": {
                    "city": "STOCKHOLM",
                    "countryCode": "SWE",
                    "country": "Sweden",
                    "postCode": "12067"
                  }
                },
                "status": "AVAILABLE_FOR_DELIVERY",
                "estimatedTimeOfArrival": "2024-08-02T15:07:00",
                "publicTimeOfArrival": "2024-08-02T15:07:00",
                "deliveryPoint": {
                  "locationId": "570173",
                  "blomId": 1017610,
                  "displayName": "HEMKÖP SOLNA C",
                  "name": "HEMKÖP SOLNA C",
                  "servicePointType": "POSTOMBUD",
                  "address": {
                    "street1": "Postgången 40",
                    "city": "SOLNA",
                    "countryCode": "SWE",
                    "country": "Sweden",
                    "postCode": "17145"
                  },
                },
              },
              item: {
                "dropOffDate": "2024-07-31T02:20:00",
                "deliveryDate": "2024-08-02T15:07:00",
                "estimatedTimeOfArrival": "2024-08-02T15:07:00",
                "publicTimeOfArrival": "2024-08-02T15:07:00",
                "typeOfItemActualName": "Parcel",
                "status": "DELIVERED",
                "statedMeasurement": {
                  "weight": {"value": "0.6", "unit": "kg"},
                  "length": {"value": "0.3", "unit": "m"},
                  "height": {"value": "0.06", "unit": "m"},
                  "width": {"value": "0.22", "unit": "m"},
                  "volume": {"value": "0.004", "unit": "m3"}
                },
                "assessedMeasurement": {
                  "weight": {"value": "0.56", "unit": "kg"},
                  "length": {"value": "0.255", "unit": "m"},
                  "height": {"value": "0.064", "unit": "m"},
                  "width": {"value": "0.17", "unit": "m"}
                },
                "additionalInformation": "Additional info",
              },
              events: [
                {
                  "eventTime": "2024-08-07T10:16:00",
                  "eventCode": "1",
                  "status": "AVAILABLE_FOR_DELIVERY",
                  "eventDescription":
                      "The shipment item has been delivered to a service point.",
                  "location": {
                    "locationId": "570173",
                    "blomId": 1017610,
                    "displayName": "HEMKÖP SOLNA C",
                    "name": "HEMKÖP SOLNA C",
                    "countryCode": "SWE",
                    "country": "Sweden",
                    "postcode": "17145",
                    "city": "Solna",
                    "locationType": "SERVICE_POINT"
                  }
                },
                {
                  "eventTime": "2024-08-07T11:00:00",
                  "eventCode": "z08",
                  "status": "OTHER",
                  "eventDescription":
                      "E-mail notification has been sent to the recipient.",
                  "location": {
                    "locationId": "3",
                    "displayName": "PostNord",
                    "name": "PostNord",
                    "countryCode": "SWE",
                    "country": "Sweden",
                    "locationType": "HUB"
                  }
                },
              ],
            ),
          );

          final expectedActivity = [
            ShipmentActivityInfo.from(
              trackNumber: defaultTrack,
              serviceType: PostalServiceType.postNord,
              statusType: ShipmentStatusType.other,
              statusDescription:
                  'E-mail notification has been sent to the recipient.',
              dateTime: DateTime.parse('2024-08-07T11:00:00'),
              activityLocation: const Address(
                location: 'PostNord, Sweden',
                countryCode: 'SWE',
              ),
            ),
            ShipmentActivityInfo.from(
              trackNumber: defaultTrack,
              serviceType: PostalServiceType.postNord,
              statusType: ShipmentStatusType.outForDelivery,
              statusDescription:
                  'The shipment item has been delivered to a service point.',
              dateTime: DateTime.parse('2024-08-07T10:16:00'),
              activityLocation: const Address(
                location: 'HEMKÖP SOLNA C, Postgången 40, SOLNA, Sweden',
                postalCode: '17145',
                countryCode: 'SWE',
              ),
            ),
          ];
          final expectedInfo = ShipmentInfo.from(
            trackNumber: defaultTrack,
            serviceType: PostalServiceType.postNord,
            serviceDescription: 'PostNord MyPack Collect/Box',
            shipmentDescription: 'Parcel',
            weight: const UnitOfMeasurement(
              value: 0.6,
              measurement: Measurement.kilogram,
            ),
            volume: const UnitOfMeasurement(
              value: 0.004,
              measurement: Measurement.cubicMeter,
            ),
            pickupDate: DateTime.parse('2024-07-31T02:20:00'),
            deliveryDate: DateTime.parse('2024-08-02T15:07:00'),
            estimatedDeliveryDate: DateTime.parse('2024-08-02T15:07:00'),
            scheduledDeliveryDate: DateTime.parse('2024-08-02T15:07:00'),
            shipperAddress: const Address(
              location: 'Denmark',
              countryCode: 'DNK',
              postalCode: '7017',
            ),
            receiverAddress: const Address(
              location: 'HEMKÖP SOLNA C, Postgången 40, SOLNA, Sweden',
              postalCode: '17145',
              countryCode: 'SWE',
            ),
            serviceMessage: 'Additional info',
            shipperName: 'Amazon',
            receiverName: 'Ivan',
            dimensions: const Dimensions(
              width: UnitOfMeasurement(
                value: 0.22,
                measurement: Measurement.meter,
              ),
              height: UnitOfMeasurement(
                value: 0.06,
                measurement: Measurement.meter,
              ),
              length: UnitOfMeasurement(
                value: 0.3,
                measurement: Measurement.meter,
              ),
            ),
            currentStatus: ShipmentStatusType.outForDelivery,
          );

          final result = parser.parse(response);
          result.maybeWhen(
            (info, activity, alternateTracks) {
              expect(info, expectedInfo);
              expect(activity, expectedActivity);
            },
            orElse: () => throw result,
          );
        });
      });
    });
  });
}
