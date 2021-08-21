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

import 'package:flutter_test/flutter_test.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/model/parser.dart';
import 'package:libretrack/core/model/service_response.dart';
import 'package:libretrack/core/model/tracking_service/tracking_service.dart';

void main() {
  group('UPS parser |', () {
    final parser = UPSParser();

    group('Simple error |', () {
      test('Network error', () {
        final payload = {
          'Error': {
            'Code': '3',
            'Description': 'Network error',
          },
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
            serviceTemporary: (code, message) {
              expect(code, '3');
              expect(message, 'Network error');
            },
            orElse: () => throw e,
          ),
          orElse: () => throw result,
        );
      });

      test('Unknown operation', () {
        final payload = {
          'Error': {
            'Code': '2',
            'Description': 'Unknown operation',
          },
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
              expect(code, '2');
              expect(message, 'Unknown operation');
            },
            orElse: () => throw e,
          ),
          orElse: () => throw result,
        );
      });

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
    });

    group('Fault |', () {
      Map<String, dynamic> _makePayload({
        String? code,
        String? description,
        String? severity,
      }) {
        return {
          'Fault': {
            'faultcode': 'Client',
            'faultstring':
                'An exception has been raised as a result of client data.',
            'detail': {
              'Errors': {
                'ErrorDetail': {
                  'Severity': severity,
                  'PrimaryErrorCode': {
                    'Code': code,
                    'Description': description,
                  }
                }
              }
            }
          }
        };
      }

      test('No tracking info', () {
        final payload = _makePayload(
          code: '151044',
          description: 'No tracking information available',
          severity: 'Hard',
        );

        final response = ServiceResponse(
          transactionId: const TransactionId('1'),
          statusCode: 200,
          payload: jsonEncode(payload),
        );
        final result = parser.parse(response);
        if (result is! ParseResultNoInfo) {
          throw result;
        }
      });

      test('Auth error', () {
        final payload = _makePayload(
          code: '250002',
          description: 'Invalid Authentication Information.',
          severity: 'Authentication',
        );
        final response = ServiceResponse(
          transactionId: const TransactionId('1'),
          statusCode: 200,
          payload: jsonEncode(payload),
        );

        final result = parser.parse(response);
        result.maybeWhen(
          (info, activity, alternateTracks) => throw result,
          error: (e) => e.maybeWhen(
            auth: (code, message) {
              expect(code, '250002');
              expect(message, 'Invalid Authentication Information.');
            },
            orElse: () => throw e,
          ),
          orElse: () => throw result,
        );
      });

      test('Hard error', () {
        final payload = _makePayload(
          code: '151050',
          description: 'Too many records to display',
          severity: 'Hard',
        );
        final response = ServiceResponse(
          transactionId: const TransactionId('1'),
          statusCode: 200,
          payload: jsonEncode(payload),
        );

        final result = parser.parse(response);
        result.maybeWhen(
          (info, activity, alternateTracks) => throw result,
          error: (e) => e.maybeWhen(
            serviceHard: (code, message) {
              expect(code, '151050');
              expect(message, 'Too many records to display');
            },
            orElse: () => throw e,
          ),
          orElse: () => throw result,
        );
      });

      test('Bad request', () {
        final payload = _makePayload(
          code: '10001',
          description: 'JSON syntax error',
          severity: 'Hard',
        );
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
              expect(code, '10001');
              expect(message, 'JSON syntax error');
            },
            orElse: () => throw e,
          ),
          orElse: () => throw result,
        );
      });

      test('Temporary error', () {
        final payload = _makePayload(
          code: '150000',
          description: 'Tracking service unavailable',
          severity: 'Transient',
        );
        final response = ServiceResponse(
          transactionId: const TransactionId('1'),
          statusCode: 200,
          payload: jsonEncode(payload),
        );

        final result = parser.parse(response);
        result.maybeWhen(
          (info, activity, alternateTracks) => throw result,
          error: (e) => e.maybeWhen(
            serviceTemporary: (code, message) {
              expect(code, '150000');
              expect(message, 'Tracking service unavailable');
            },
            orElse: () => throw e,
          ),
          orElse: () => throw result,
        );
      });

      test('Invalid tracking number', () {
        final payload = _makePayload(
          code: '151018',
          description: 'Invalid tracking number',
          severity: 'Hard',
        );

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
    });

    group('Result |', () {
      const _defaultId = TransactionId('1');
      const _defaultTrack = '123';

      String _makePayload({
        required TransactionId id,
        required String trackNumber,
        Map<String, dynamic>? shipment,
        dynamic shipmentAddress,
        Map<String, dynamic>? package,
        dynamic alert,
      }) {
        return jsonEncode(
          {
            'TrackResponse': {
              'Response': {
                'ResponseStatus': {
                  'Code': '1',
                  'Description': 'Success',
                },
                'TransactionReference': {
                  'CustomerContext': id,
                },
                if (alert != null) ...{
                  'Alert': alert,
                },
              },
              'Shipment': {
                'InquiryNumber': {
                  'Code': '01',
                  'Description': 'ShipmentIdentificationNumber',
                  'Value': trackNumber,
                },
                if (shipmentAddress != null) ...{
                  'ShipmentAddress': shipmentAddress,
                },
                ...?shipment,
                if (package != null) ...{
                  'Package': {
                    'TrackingNumber': trackNumber,
                    ...package,
                  },
                },
              },
            },
          },
        );
      }

      test('Different transaction ID in response', () {
        const expectedId = TransactionId('1');
        const actualId = TransactionId('2');
        final response = ServiceResponse(
          transactionId: expectedId,
          statusCode: 200,
          payload: _makePayload(id: actualId, trackNumber: _defaultTrack),
        );

        final result = parser.parse(response);
        result.maybeWhen(
          (info, activity, alternateTracks) => throw result,
          error: (e) => e.maybeWhen(
            badRequest: (_, message) {
              expect(
                  message,
                  'Invalid response transaction ID: '
                  'expected $expectedId, actual $actualId');
            },
            orElse: () => throw e,
          ),
          orElse: () => throw result,
        );
      });

      test('No tracking number in response', () {
        final response = ServiceResponse(
          transactionId: _defaultId,
          statusCode: 200,
          payload: _makePayload(id: _defaultId, trackNumber: ''),
        );

        final result = parser.parse(response);
        result.maybeWhen(
          (info, activity, alternateTracks) => throw result,
          error: (e) => e.maybeWhen(
            format: (message) => expect(message, 'InquiryNumber not found'),
            orElse: () => throw e,
          ),
          orElse: () => throw result,
        );
      });

      test('Multi-package', () {
        final response = ServiceResponse(
          transactionId: _defaultId,
          statusCode: 200,
          payload: _makePayload(
            id: _defaultId,
            trackNumber: _defaultTrack,
            shipment: {
              'Package': [
                {'TrackingNumber': _defaultTrack, 'DeliveryDate': '20200101'},
                {'TrackingNumber': '2', 'DeliveryDate': '20200102'},
              ],
            },
          ),
        );

        final result = parser.parse(response);
        result.maybeWhen(
          (info, activity, alternateTracks) {
            expect(info.trackNumber, _defaultTrack);
            expect(info.deliveryDate, DateTime(2020));
          },
          orElse: () => throw result,
        );
      });

      group('ShipmentInfo |', () {
        test('Base fields', () {
          final response = ServiceResponse(
            transactionId: _defaultId,
            statusCode: 200,
            payload: _makePayload(id: _defaultId, trackNumber: _defaultTrack),
          );

          final result = parser.parse(response);
          result.maybeWhen(
            (info, activity, alternateTracks) {
              expect(info.trackNumber, _defaultTrack);
              expect(info.serviceType, PostalServiceType.ups);
            },
            orElse: () => throw result,
          );
        });

        test('Service description', () {
          final response = ServiceResponse(
            transactionId: _defaultId,
            statusCode: 200,
            payload: _makePayload(
              id: _defaultId,
              trackNumber: _defaultTrack,
              shipment: {
                'Service': {'Description': 'UPS Standard'}
              },
            ),
          );

          final result = parser.parse(response);
          result.maybeWhen(
            (info, activity, alternateTracks) {
              expect(info.serviceDescription, 'UPS Standard');
            },
            orElse: () => throw result,
          );
        });

        test('Shipment description', () {
          final response = ServiceResponse(
            transactionId: _defaultId,
            statusCode: 200,
            payload: _makePayload(
              id: _defaultId,
              trackNumber: _defaultTrack,
              shipment: {
                'ShipmentType': {'Description': 'Small Package'}
              },
            ),
          );

          final result = parser.parse(response);
          result.maybeWhen(
            (info, activity, alternateTracks) {
              expect(info.shipmentDescription, 'Small Package');
            },
            orElse: () => throw result,
          );
        });

        test('Signed for by name', () {
          final responseList = [
            ServiceResponse(
              transactionId: const TransactionId('1'),
              statusCode: 200,
              payload: _makePayload(
                id: const TransactionId('1'),
                trackNumber: '1',
                shipment: {'SignedForByName': 'Foo Bar'},
              ),
            ),
            ServiceResponse(
              transactionId: const TransactionId('2'),
              statusCode: 200,
              payload: _makePayload(
                id: const TransactionId('2'),
                trackNumber: '2',
                package: {
                  'Activity': {
                    'ActivityLocation': {
                      'SignedForByName': 'Foo Bar',
                      'Address': {}
                    },
                  },
                },
              ),
            ),
          ];

          final resultList = responseList.map(
            (response) => parser.parse(response),
          );
          for (final result in resultList) {
            result.maybeWhen(
              (info, activity, alternateTracks) {
                expect(info.signedForByName, 'Foo Bar');
              },
              orElse: () => throw result,
            );
          }
        });

        test('Weight', () {
          final responseList = [
            ServiceResponse(
              transactionId: const TransactionId('1'),
              statusCode: 200,
              payload: _makePayload(
                id: const TransactionId('1'),
                trackNumber: '1',
                shipment: {
                  'ShipmentWeight': {
                    'Weight': '10',
                    'UnitOfMeasurement': {'Code': 'KGS'},
                  },
                },
              ),
            ),
            ServiceResponse(
              transactionId: const TransactionId('2'),
              statusCode: 200,
              payload: _makePayload(
                id: const TransactionId('2'),
                trackNumber: '2',
                package: {
                  'PackageWeight': {
                    'Weight': '10',
                    'UnitOfMeasurement': {'Code': 'KGS'},
                  },
                },
              ),
            ),
          ];

          final resultList = responseList.map(
            (response) => parser.parse(response),
          );
          for (final result in resultList) {
            result.maybeWhen(
              (info, activity, alternateTracks) {
                expect(
                  info.weight,
                  const UnitOfMeasurement(
                    value: 10,
                    measurement: Measurement.kilogram,
                  ),
                );
              },
              orElse: () => throw result,
            );
          }
        });

        test('Volume', () {
          final response = ServiceResponse(
            transactionId: _defaultId,
            statusCode: 200,
            payload: _makePayload(
              id: _defaultId,
              trackNumber: _defaultTrack,
              shipment: {
                'Volume': {
                  'Value': '10',
                  'UnitOfMeasurement': {'Code': 'L'},
                },
              },
            ),
          );

          final result = parser.parse(response);
          result.maybeWhen(
            (info, activity, alternateTracks) {
              expect(
                info.volume,
                const UnitOfMeasurement(
                  value: 10,
                  measurement: Measurement.liter,
                ),
              );
            },
            orElse: () => throw result,
          );
        });

        test('Pickup date', () {
          final responseList = [
            ServiceResponse(
              transactionId: const TransactionId('1'),
              statusCode: 200,
              payload: _makePayload(
                id: const TransactionId('1'),
                trackNumber: '1',
                shipment: {'PickupDate': '20200101'},
              ),
            ),
            ServiceResponse(
              transactionId: const TransactionId('2'),
              statusCode: 200,
              payload: _makePayload(
                id: const TransactionId('2'),
                trackNumber: '2',
                package: {
                  'Activity': {
                    'Status': {
                      'Type': 'P',
                      'Description': 'Pickup',
                      'Code': ''
                    },
                    'Date': '20200101',
                    'Time': '000000',
                  }
                },
              ),
            ),
          ];

          final resultList = responseList.map(
            (response) => parser.parse(response),
          );
          for (final result in resultList) {
            result.maybeWhen(
              (info, activity, alternateTracks) =>
                  expect(info.pickupDate, DateTime(2020)),
              orElse: () => throw result,
            );
          }
        });

        test('Delivery date', () {
          final responseList = [
            ServiceResponse(
              transactionId: const TransactionId('1'),
              statusCode: 200,
              payload: _makePayload(
                id: const TransactionId('1'),
                trackNumber: '1',
                shipment: {
                  'DeliveryDetail': {
                    'Date': '20200101',
                    'Time': '000000',
                    'Type': {
                      'Code': '01',
                      'Description': 'Delivery',
                    }
                  },
                },
              ),
            ),
            ServiceResponse(
              transactionId: const TransactionId('2'),
              statusCode: 200,
              payload: _makePayload(
                id: const TransactionId('2'),
                trackNumber: '2',
                package: {'DeliveryDate': '20200101'},
              ),
            ),
            ServiceResponse(
              transactionId: const TransactionId('3'),
              statusCode: 200,
              payload: _makePayload(
                id: const TransactionId('3'),
                trackNumber: '3',
                package: {
                  'Activity': {
                    'Status': {
                      'Type': 'D',
                      'Description': 'Delivered',
                      'Code': ''
                    },
                    'Date': '20200101',
                    'Time': '000000',
                  }
                },
              ),
            ),
          ];

          final resultList = responseList.map(
            (response) => parser.parse(response),
          );
          for (final result in resultList) {
            result.maybeWhen(
              (info, activity, alternateTracks) =>
                  expect(info.deliveryDate, DateTime(2020)),
              orElse: () => throw result,
            );
          }
        });

        test('Estimated and scheduled delivery date', () {
          final response = ServiceResponse(
            transactionId: _defaultId,
            statusCode: 200,
            payload: _makePayload(
              id: _defaultId,
              trackNumber: _defaultTrack,
              shipment: {
                'DeliveryDetail': [
                  {
                    'Date': '20200111',
                    'Time': '111111',
                    'Type': {
                      'Code': '02',
                      'Description': 'Estimated delivery',
                    }
                  },
                  {
                    'Date': '20200101',
                    'Time': '101010',
                    'Type': {
                      'Code': '03',
                      'Description': 'Scheduled delivery',
                    }
                  },
                ],
              },
            ),
          );

          final result = parser.parse(response);
          result.maybeWhen(
            (info, activity, alternateTracks) {
              expect(
                info.estimatedDeliveryDate,
                DateTime(2020, 1, 11, 11, 11, 11),
              );
              expect(
                info.scheduledDeliveryDate,
                DateTime(2020, 1, 1, 10, 10, 10),
              );
            },
            orElse: () => throw result,
          );
        });

        test('Cash on delivery', () {
          final responseList = [
            ServiceResponse(
              transactionId: const TransactionId('1'),
              statusCode: 200,
              payload: _makePayload(
                id: const TransactionId('1'),
                trackNumber: '1',
                shipment: {
                  'COD': {
                    'Amount': {
                      'MonetaryValue': '10',
                      'CurrencyCode': 'USD',
                    },
                  },
                },
              ),
            ),
            ServiceResponse(
              transactionId: const TransactionId('2'),
              statusCode: 200,
              payload: _makePayload(
                id: const TransactionId('2'),
                trackNumber: '2',
                package: {
                  'COD': {
                    'Amount': {
                      'MonetaryValue': '10',
                      'CurrencyCode': 'USD',
                    },
                  },
                },
              ),
            ),
          ];

          final resultList = responseList.map(
            (response) => parser.parse(response),
          );
          for (final result in resultList) {
            result.maybeWhen(
              (info, activity, alternateTracks) =>
                  expect(info.cashOnDelivery, const Currency(10, 'USD')),
              orElse: () => throw result,
            );
          }
        });

        test('Shipper and receiver address', () {
          final response = ServiceResponse(
            transactionId: _defaultId,
            statusCode: 200,
            payload: _makePayload(
              id: _defaultId,
              trackNumber: _defaultTrack,
              shipmentAddress: [
                {
                  'Type': {
                    'Code': '01',
                    'Description': 'Shipper address',
                  },
                  'Address': {
                    'AddressLine': 'Foo Bar',
                    'City': 'Foo',
                    'StateProvinceCode': 'FO',
                    'PostalCode': '123',
                    'CountryCode': 'US',
                  },
                },
                {
                  'Type': {
                    'Code': '02',
                    'Description': 'Receiver address',
                  },
                  'Address': {
                    'AddressLine': ['Foo Bar', 'Baz'],
                    'City': 'Bar',
                    'StateProvinceCode': 'BA',
                    'PostalCode': '12345',
                    'CountryCode': 'US',
                  },
                },
              ],
            ),
          );

          final result = parser.parse(response);
          result.maybeWhen(
            (info, activity, alternateTracks) {
              expect(
                info.shipperAddress,
                const Address(
                  location: 'FO, Foo, Foo Bar',
                  postalCode: '123',
                  countryCode: 'US',
                ),
              );
              expect(
                info.receiverAddress,
                const Address(
                  location: 'BA, Bar, Foo Bar, Baz',
                  postalCode: '12345',
                  countryCode: 'US',
                ),
              );
            },
            orElse: () => throw result,
          );
        });

        test('Service message', () {
          final response = ServiceResponse(
            transactionId: _defaultId,
            statusCode: 200,
            payload: _makePayload(
                id: _defaultId,
                trackNumber: _defaultTrack,
                shipment: {
                  'DeliveryDateUnavailable': {
                    'Type': 'Scheduled Delivery',
                    'Description':
                        'Scheduled Delivery Date is not currently available, '
                            'please try back later',
                  },
                },
                alert: [
                  {'Code': '1', 'Description': 'Warning 1'},
                  {'Code': '2', 'Description': 'Warning 2'},
                  {'Code': '3', 'Description': 'Warning 3'},
                ]),
          );

          final result = parser.parse(response);
          result.maybeWhen(
            (info, activity, alternateTracks) {
              expect(
                  info.serviceMessage,
                  '[1] Warning 1;\n'
                  '[2] Warning 2;\n'
                  '[3] Warning 3;\n'
                  'Scheduled Delivery Date is not currently available, please try back later');
            },
            orElse: () => throw result,
          );
        });
      });

      group('ShipmentActivityInfo |', () {
        test('No activity', () {
          final response = ServiceResponse(
            transactionId: _defaultId,
            statusCode: 200,
            payload: _makePayload(
              id: _defaultId,
              trackNumber: _defaultTrack,
            ),
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
            transactionId: _defaultId,
            statusCode: 200,
            payload: _makePayload(
              id: _defaultId,
              trackNumber: _defaultTrack,
              package: {
                'Activity': [
                  {
                    'ActivityLocation': {
                      'Address': {
                        'City': 'Baz',
                        'StateProvinceCode': 'BZ',
                        'PostalCode': '123',
                        'CountryCode': 'US'
                      },
                      'Description': 'Met Customer Man'
                    },
                    'Status': {
                      'Type': 'D',
                      'Description': 'Delivered',
                      'Code': 'FS'
                    },
                    'Date': '20200103',
                    'Time': '120000',
                  },
                  {
                    'ActivityLocation': {
                      'Address': {
                        'City': 'Bar',
                        'StateProvinceCode': 'BA',
                        'CountryCode': 'US'
                      },
                      'Description': 'Met Customer Man'
                    },
                    'Status': {
                      'Type': 'I',
                      'Description': 'Arrived at Facility',
                      'Code': 'AR'
                    },
                    'Date': '20200102',
                    'Time': '120000',
                  },
                  {
                    'ActivityLocation': {
                      'Address': '',
                    },
                    'Status': {
                      'Type': 'I',
                      'Description': 'Origin Scan',
                      'Code': 'OR'
                    },
                    'Date': '20200102',
                    'Time': '110000',
                  },
                  {
                    'ActivityLocation': {
                      'Address': {
                        'City': 'Foo',
                        'StateProvinceCode': 'FO',
                        'CountryCode': 'US'
                      },
                      'Description': 'Met Customer Man'
                    },
                    'Status': {
                      'Type': 'M',
                      'Description': 'Order Processed: Ready for UPS',
                      'Code': 'MP'
                    },
                    'Date': '20200101',
                    'Time': '100000',
                  },
                ],
              },
            ),
          );
          final expectedActivity = [
            ShipmentActivityInfo.from(
              trackNumber: _defaultTrack,
              serviceType: PostalServiceType.ups,
              statusType: ShipmentStatusType.delivered,
              statusDescription: 'Delivered',
              activityLocation: const Address(
                location: 'BZ, Baz',
                countryCode: 'US',
                postalCode: '123',
              ),
              dateTime: DateTime(2020, 01, 03, 12),
            ),
            ShipmentActivityInfo.from(
              trackNumber: _defaultTrack,
              statusType: ShipmentStatusType.inTransitArrivedWaypoint,
              serviceType: PostalServiceType.ups,
              statusDescription: 'Arrived at Facility',
              activityLocation: const Address(
                location: 'BA, Bar',
                countryCode: 'US',
              ),
              dateTime: DateTime(2020, 01, 02, 12),
            ),
            ShipmentActivityInfo.from(
              trackNumber: _defaultTrack,
              statusType: ShipmentStatusType.pickup,
              serviceType: PostalServiceType.ups,
              statusDescription: 'Origin Scan',
              activityLocation: const Address(),
              dateTime: DateTime(2020, 01, 02, 11),
            ),
            ShipmentActivityInfo.from(
              trackNumber: _defaultTrack,
              serviceType: PostalServiceType.ups,
              statusType: ShipmentStatusType.infoReceived,
              statusDescription: 'Order Processed: Ready for UPS',
              activityLocation: const Address(
                location: 'FO, Foo',
                countryCode: 'US',
              ),
              dateTime: DateTime(2020, 01, 01, 10),
            ),
          ];

          final result = parser.parse(response);
          result.maybeWhen(
            (info, activity, alternateTracks) =>
                expect(activity, expectedActivity),
            orElse: () => throw result,
          );
        });

        test('Activity in Shipment block', () {
          final response = ServiceResponse(
            transactionId: _defaultId,
            statusCode: 200,
            payload: _makePayload(
              id: _defaultId,
              trackNumber: _defaultTrack,
              shipment: {
                'Activity': [
                  {
                    'ActivityLocation': {
                      'City': 'Baz',
                      'StateProvinceCode': 'BZ',
                      'PostalCode': '123',
                      'CountryCode': 'US',
                      'Description': 'Met Customer Man'
                    },
                    'Description': 'Delivered',
                    'Date': '20200103',
                    'Time': '120000',
                  },
                ],
              },
            ),
          );
          final expectedActivity = [
            ShipmentActivityInfo.from(
              trackNumber: _defaultTrack,
              serviceType: PostalServiceType.ups,
              statusType: ShipmentStatusType.other,
              statusDescription: 'Delivered',
              activityLocation: const Address(
                location: 'BZ, Baz',
                countryCode: 'US',
                postalCode: '123',
              ),
              dateTime: DateTime(2020, 01, 03, 12),
            ),
          ];

          final result = parser.parse(response);
          result.maybeWhen(
            (info, activity, alternateTracks) =>
                expect(activity, expectedActivity),
            orElse: () => throw result,
          );
        });

        test('Activity in Shipment and Package block', () {
          final response = ServiceResponse(
            transactionId: _defaultId,
            statusCode: 200,
            payload: _makePayload(
              id: _defaultId,
              trackNumber: _defaultTrack,
              shipment: {
                'Activity': [
                  {
                    'ActivityLocation': {
                      'City': 'Baz',
                      'StateProvinceCode': 'BZ',
                      'PostalCode': '123',
                      'CountryCode': 'US',
                      'Description': 'Met Customer Man'
                    },
                    'Description': 'Delivered',
                    'Date': '20200103',
                    'Time': '120000',
                  },
                ],
              },
              package: {
                'Activity': [
                  {
                    'ActivityLocation': {
                      'Address': {
                        'City': 'Bar',
                        'StateProvinceCode': 'BA',
                        'CountryCode': 'US'
                      },
                      'Description': 'Met Customer Man'
                    },
                    'Status': {
                      'Type': 'I',
                      'Description': 'Arrived at Facility',
                      'Code': 'AR'
                    },
                    'Date': '20200102',
                    'Time': '110000',
                  },
                ],
              },
            ),
          );
          final expectedActivity = [
            ShipmentActivityInfo.from(
              trackNumber: _defaultTrack,
              statusType: ShipmentStatusType.inTransitArrivedWaypoint,
              serviceType: PostalServiceType.ups,
              statusDescription: 'Arrived at Facility',
              activityLocation: const Address(
                location: 'BA, Bar',
                countryCode: 'US',
              ),
              dateTime: DateTime(2020, 01, 02, 11),
            ),
            ShipmentActivityInfo.from(
              trackNumber: _defaultTrack,
              serviceType: PostalServiceType.ups,
              statusType: ShipmentStatusType.other,
              statusDescription: 'Delivered',
              activityLocation: const Address(
                location: 'BZ, Baz',
                countryCode: 'US',
                postalCode: '123',
              ),
              dateTime: DateTime(2020, 01, 03, 12),
            ),
          ];

          final result = parser.parse(response);
          result.maybeWhen(
            (info, activity, alternateTracks) =>
                expect(activity, expectedActivity),
            orElse: () => throw result,
          );
        });

        test('Invalid date and time', () {
          final response = ServiceResponse(
            transactionId: _defaultId,
            statusCode: 200,
            payload: _makePayload(
              id: _defaultId,
              trackNumber: _defaultTrack,
              package: {
                'Activity': [
                  {
                    'ActivityLocation': {
                      'Address': {
                        'City': 'Baz',
                        'StateProvinceCode': 'BZ',
                        'PostalCode': '123',
                        'CountryCode': 'US'
                      },
                      'Description': 'Met Customer Man'
                    },
                    'Status': {
                      'Type': 'D',
                      'Description': 'Delivered',
                      'Code': 'FS'
                    },
                    'Date': '20200103',
                    'Time': '20200103',
                  },
                  {
                    'ActivityLocation': {
                      'Address': {
                        'City': 'Bar',
                        'StateProvinceCode': 'BA',
                        'CountryCode': 'US'
                      },
                      'Description': 'Met Customer Man'
                    },
                    'Status': {
                      'Type': 'I',
                      'Description': 'Arrived at Facility',
                      'Code': 'AR'
                    },
                    'Date': '110000',
                    'Time': '110000',
                  },
                  {
                    'ActivityLocation': {
                      'Address': {
                        'City': 'Foo',
                        'StateProvinceCode': 'FO',
                        'CountryCode': 'US'
                      },
                      'Description': 'Met Customer Man'
                    },
                    'Status': {
                      'Type': 'M',
                      'Description': 'Order Processed: Ready for UPS',
                      'Code': 'MP'
                    },
                    'Date': 'foo',
                    'Time': 'bar',
                  },
                ],
              },
            ),
          );
          final expectedActivity = [
            ShipmentActivityInfo.from(
              trackNumber: _defaultTrack,
              serviceType: PostalServiceType.ups,
              statusType: ShipmentStatusType.delivered,
              statusDescription: 'Delivered',
              activityLocation: const Address(
                location: 'BZ, Baz',
                countryCode: 'US',
                postalCode: '123',
              ),
              dateTime: DateTime(2020, 01, 03),
            ),
            ShipmentActivityInfo.from(
              trackNumber: _defaultTrack,
              statusType: ShipmentStatusType.inTransitArrivedWaypoint,
              serviceType: PostalServiceType.ups,
              statusDescription: 'Arrived at Facility',
              activityLocation: const Address(
                location: 'BA, Bar',
                countryCode: 'US',
              ),
              dateTime: DateTime.fromMillisecondsSinceEpoch(0),
            ),
            ShipmentActivityInfo.from(
              trackNumber: _defaultTrack,
              serviceType: PostalServiceType.ups,
              statusType: ShipmentStatusType.infoReceived,
              statusDescription: 'Order Processed: Ready for UPS',
              activityLocation: const Address(
                location: 'FO, Foo',
                countryCode: 'US',
              ),
              dateTime: DateTime.fromMillisecondsSinceEpoch(0),
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
    });
  });
}
