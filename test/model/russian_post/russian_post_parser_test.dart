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

import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/model/parser.dart';
import 'package:libretrack/core/model/service_response.dart';
import 'package:libretrack/core/model/tracking_service/tracking_service.dart';
import 'package:libretrack/core/model/type/locale.dart';
import 'package:xml/xml.dart';

void main() {
  group('Russian Post parser |', () {
    final parser = RussianPostParser();

    group('Fault |', () {
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

      String _buildFault(
        XmlBuilder builder, {
        required Object? reason,
        String? codeValue,
      }) {
        builder.element(
          'S:Envelope',
          nest: () {
            builder.element('S:Body', nest: () {
              builder.element('S:Fault', nest: () {
                builder.element('S:Code', nest: () {
                  builder.element('S:Value', nest: codeValue ?? 'S:Receiver');
                });
                builder.element('S:Reason', nest: () {
                  builder.element('S:Text', nest: 'Error');
                });
                if (reason != null) {
                  builder.element('S:Detail', nest: reason);
                }
              });
            });
          },
        );
        return builder.buildDocument().toXmlString();
      }

      test('Operation history fault', () {
        final builder = XmlBuilder();
        final payload = _buildFault(builder, reason: () {
          builder.element(
            'ns3:OperationHistoryFaultReason',
            nest: 'Test',
          );
        });
        final response = ServiceResponse(
          transactionId: const TransactionId('1'),
          statusCode: 500,
          payload: payload,
        );

        final result = parser.parse(response);
        result.maybeWhen(
          (info, activity, alternateTracks) => throw result,
          error: (e) => e.maybeWhen(
            serviceHard: (code, message) {
              expect(code, isNull);
              expect(message, '[Error] Test');
            },
            orElse: () => throw e,
          ),
          orElse: () => throw result,
        );
      });

      test('Authorization fault', () {
        final builder = XmlBuilder();
        final payload = _buildFault(builder, reason: () {
          builder.element(
            'ns3:AuthorizationFaultReason',
            nest: 'Test',
          );
        });
        final response = ServiceResponse(
          transactionId: const TransactionId('1'),
          statusCode: 500,
          payload: payload,
        );

        final result = parser.parse(response);
        result.maybeWhen(
          (info, activity, alternateTracks) => throw result,
          error: (e) => e.maybeWhen(
            auth: (code, message) {
              expect(code, isNull);
              expect(message, '[Error] Test');
            },
            orElse: () => throw e,
          ),
          orElse: () => throw result,
        );
      });

      test('Language fault', () {
        final builder = XmlBuilder();
        final payload = _buildFault(builder, reason: () {
          builder.element(
            'ns3:LanguageFaultReason',
            nest: 'Test',
          );
        });
        final response = ServiceResponse(
          transactionId: const TransactionId('1'),
          statusCode: 500,
          payload: payload,
        );

        final result = parser.parse(response);
        result.maybeWhen(
          (info, activity, alternateTracks) => throw result,
          error: (e) => e.maybeWhen(
            badRequest: (code, message) {
              expect(code, isNull);
              expect(message, '[Error] Test');
            },
            orElse: () => throw e,
          ),
          orElse: () => throw result,
        );
      });

      test('Default fault (receiver)', () {
        final builder = XmlBuilder();
        final payload = _buildFault(builder, reason: null);
        final response = ServiceResponse(
          transactionId: const TransactionId('1'),
          statusCode: 500,
          payload: payload,
        );

        final result = parser.parse(response);
        result.maybeWhen(
          (info, activity, alternateTracks) => throw result,
          error: (e) => e.maybeWhen(
            badRequest: (code, message) {
              expect(code, isNull);
              expect(message, 'Error');
            },
            orElse: () => throw e,
          ),
          orElse: () => throw result,
        );
      });

      test('Default fault (sender)', () {
        final builder = XmlBuilder();
        final payload = _buildFault(
          builder,
          reason: null,
          codeValue: 'S:Sender',
        );
        final response = ServiceResponse(
          transactionId: const TransactionId('1'),
          statusCode: 500,
          payload: payload,
        );

        final result = parser.parse(response);
        result.maybeWhen(
          (info, activity, alternateTracks) => throw result,
          error: (e) => e.maybeWhen(
            format: (message) {
              expect(message, 'Error');
            },
            orElse: () => throw e,
          ),
          orElse: () => throw result,
        );
      });

      group('Invalid tracking number |', () {
        Future<void> _testInvalidTrackNumber(String message) async {
          final builder = XmlBuilder();
          final payload = _buildFault(builder, reason: () {
            builder.element(
              'ns3:OperationHistoryFaultReason',
              nest: message,
            );
          });
          final response = ServiceResponse(
            transactionId: const TransactionId('1'),
            statusCode: 500,
            payload: payload,
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
        }

        test('English message', () async {
          await _testInvalidTrackNumber(
            'The format of the request data is invalid',
          );
        });

        test('Russian message', () async {
          await _testInvalidTrackNumber(
            'Формат данных запроса не соответствует установленному в регламенте обмена',
          );
        });
      });

      group('Result |', () {
        String _buildResult(
          XmlBuilder builder, {
          List<VoidCallback>? historyRecord,
        }) {
          builder.element(
            'S:Envelope',
            nest: () {
              builder.element('S:Body', nest: () {
                builder.element('ns7:getOperationHistoryResponse', nest: () {
                  builder.element(
                    'ns3:OperationHistoryData',
                    nest: historyRecord?.map(
                      (record) => builder.element(
                        'ns3:historyRecord',
                        nest: record,
                      ),
                    ),
                  );
                });
              });
            },
          );
          return builder.buildDocument().toXmlString();
        }

        test('Empty history record', () async {
          final builder = XmlBuilder();
          final payload = _buildResult(builder);
          final response = ServiceResponse(
            transactionId: const TransactionId('1'),
            statusCode: 200,
            payload: payload,
          );

          final result = parser.parse(response);
          expect(result is ParseResultNoInfo, isTrue);
        });

        test('No barcode', () async {
          final builder = XmlBuilder();
          final payload = _buildResult(
            builder,
            historyRecord: [() {}],
          );
          final response = ServiceResponse(
            transactionId: const TransactionId('1'),
            statusCode: 200,
            payload: payload,
          );

          final result = parser.parse(response);
          result.maybeWhen(
            (info, activity, alternateTracks) => throw result,
            error: (e) => e is ParseErrorFormat,
            orElse: () => throw result,
          );
        });

        test('Shipper and receiver address', () async {
          final builder = XmlBuilder();
          final payload = _buildResult(
            builder,
            historyRecord: [
              () => builder.element('ns3:AddressParameters', nest: () {
                    builder.element('ns3:MailDirect', nest: () {
                      builder.element('ns3:Code2A', nest: 'unreachable');
                      builder.element('ns3:NameRU', nest: 'unreachable');
                      builder.element('ns3:NameEN', nest: 'unreachable');
                    });
                    builder.element('ns3:DestinationAddress', nest: () {
                      builder.element('ns3:Index', nest: 'unreachable');
                      builder.element('ns3:Description', nest: 'unreachable');
                    });
                    builder.element('ns3:CountryFrom', nest: () {
                      builder.element('ns3:Code2A', nest: 'unreachable');
                      builder.element('ns3:NameRU', nest: 'unreachable');
                      builder.element('ns3:NameEN', nest: 'unreachable');
                    });
                  }),
              () {
                builder.element('ns3:ItemParameters', nest: () {
                  builder.element('ns3:Barcode', nest: '123');
                });
                builder.element('ns3:AddressParameters', nest: () {
                  builder.element('ns3:MailDirect', nest: () {
                    builder.element('ns3:Code2A', nest: 'RU');
                    builder.element(
                      'ns3:NameRU',
                      nest: 'Российская Федерация',
                    );
                    builder.element('ns3:NameEN', nest: 'Russian Federation');
                  });
                  builder.element('ns3:DestinationAddress', nest: () {
                    builder.element('ns3:Index', nest: '101000');
                    builder.element('ns3:Description', nest: 'Moscow');
                  });
                  builder.element('ns3:CountryFrom', nest: () {
                    builder.element('ns3:Code2A', nest: 'US');
                    builder.element('ns3:NameRU', nest: 'Соединенные Штаты');
                    builder.element('ns3:NameEN', nest: 'United States');
                  });
                });
              }
            ],
          );
          final expectedShipmentInfo = ShipmentInfo.from(
            trackNumber: '123',
            serviceType: PostalServiceType.russianPost,
            shipperAddress: const Address(
              location: 'United States',
              countryCode: 'US',
            ),
            receiverAddress: const Address(
              location: 'Moscow, Russian Federation',
              postalCode: '101000',
              countryCode: 'RU',
            ),
          );
          final expectedRuShipmentInfo = ShipmentInfo.from(
            trackNumber: '123',
            serviceType: PostalServiceType.russianPost,
            shipperAddress: const Address(
              location: 'Соединенные Штаты',
              countryCode: 'US',
            ),
            receiverAddress: const Address(
              location: 'Moscow, Российская Федерация',
              postalCode: '101000',
              countryCode: 'RU',
            ),
          );
          final response = ServiceResponse(
            transactionId: const TransactionId('1'),
            statusCode: 200,
            payload: payload,
          );

          var result = parser.parse(response);
          result.maybeWhen(
            (info, activity, alternateTracks) {
              expect(info, expectedShipmentInfo);
            },
            orElse: () => throw result,
          );

          result = parser.parse(response, locale: const Locale('ru'));
          result.maybeWhen(
            (info, activity, alternateTracks) {
              expect(activity, []);
              expect(info, expectedRuShipmentInfo);
            },
            orElse: () => throw result,
          );
        });

        test('Cash on delivery', () async {
          final builder = XmlBuilder();
          final payload = _buildResult(
            builder,
            historyRecord: [
              () => builder.element('ns3:FinanceParameters', nest: () {
                    builder.element('ns3:Payment', nest: 'unreachable');
                  }),
              () {
                builder.element('ns3:ItemParameters', nest: () {
                  builder.element('ns3:Barcode', nest: '123');
                });
                builder.element('ns3:FinanceParameters', nest: () {
                  builder.element('ns3:Payment', nest: '10010');
                });
              }
            ],
          );
          final expectedShipmentInfo = ShipmentInfo.from(
            trackNumber: '123',
            serviceType: PostalServiceType.russianPost,
            cashOnDelivery: const Currency(100.1, 'RUB'),
          );
          final response = ServiceResponse(
            transactionId: const TransactionId('1'),
            statusCode: 200,
            payload: payload,
          );

          final result = parser.parse(response);
          result.maybeWhen(
            (info, activity, alternateTracks) {
              expect(activity, []);
              expect(info, expectedShipmentInfo);
            },
            orElse: () => throw result,
          );
        });

        test('Declared value', () async {
          final builder = XmlBuilder();
          final payload = _buildResult(
            builder,
            historyRecord: [
              () => builder.element('ns3:FinanceParameters', nest: () {
                    builder.element('ns3:Value', nest: 'unreachable');
                  }),
              () {
                builder.element('ns3:ItemParameters', nest: () {
                  builder.element('ns3:Barcode', nest: '123');
                });
                builder.element('ns3:FinanceParameters', nest: () {
                  builder.element('ns3:Value', nest: '10010');
                });
              }
            ],
          );
          final expectedShipmentInfo = ShipmentInfo.from(
            trackNumber: '123',
            serviceType: PostalServiceType.russianPost,
            declaredValue: const Currency(100.1, 'RUB'),
          );
          final response = ServiceResponse(
            transactionId: const TransactionId('1'),
            statusCode: 200,
            payload: payload,
          );

          final result = parser.parse(response);
          result.maybeWhen(
            (info, activity, alternateTracks) {
              expect(activity, []);
              expect(info, expectedShipmentInfo);
            },
            orElse: () => throw result,
          );
        });

        test('Custom duty', () async {
          final builder = XmlBuilder();
          final payload = _buildResult(
            builder,
            historyRecord: [
              () => builder.element('ns3:FinanceParameters', nest: () {
                    builder.element('ns3:CustomDuty', nest: 'unreachable');
                  }),
              () {
                builder.element('ns3:ItemParameters', nest: () {
                  builder.element('ns3:Barcode', nest: '123');
                });
                builder.element('ns3:FinanceParameters', nest: () {
                  builder.element('ns3:CustomDuty', nest: '10010');
                });
              }
            ],
          );
          final expectedShipmentInfo = ShipmentInfo.from(
            trackNumber: '123',
            serviceType: PostalServiceType.russianPost,
            customDuty: const Currency(100.1, 'RUB'),
          );
          final response = ServiceResponse(
            transactionId: const TransactionId('1'),
            statusCode: 200,
            payload: payload,
          );

          final result = parser.parse(response);
          result.maybeWhen(
            (info, activity, alternateTracks) {
              expect(activity, []);
              expect(info, expectedShipmentInfo);
            },
            orElse: () => throw result,
          );
        });

        test('Additional rate fee', () async {
          final builder = XmlBuilder();
          final payload = _buildResult(
            builder,
            historyRecord: [
              () => builder.element('ns3:FinanceParameters', nest: () {
                    builder.element('ns3:Rate', nest: 'unreachable');
                  }),
              () {
                builder.element('ns3:ItemParameters', nest: () {
                  builder.element('ns3:Barcode', nest: '123');
                });
                builder.element('ns3:FinanceParameters', nest: () {
                  builder.element('ns3:Rate', nest: '10010');
                });
              }
            ],
          );
          final expectedShipmentInfo = ShipmentInfo.from(
            trackNumber: '123',
            serviceType: PostalServiceType.russianPost,
            additionalRateFee: const Currency(100.1, 'RUB'),
          );
          final response = ServiceResponse(
            transactionId: const TransactionId('1'),
            statusCode: 200,
            payload: payload,
          );

          final result = parser.parse(response);
          result.maybeWhen(
            (info, activity, alternateTracks) {
              expect(activity, []);
              expect(info, expectedShipmentInfo);
            },
            orElse: () => throw result,
          );
        });

        test('Shipping rate fee', () async {
          final builder = XmlBuilder();
          final payload = _buildResult(
            builder,
            historyRecord: [
              () => builder.element('ns3:FinanceParameters', nest: () {
                    builder.element('ns3:MassRate', nest: 'unreachable');
                  }),
              () {
                builder.element('ns3:ItemParameters', nest: () {
                  builder.element('ns3:Barcode', nest: '123');
                });
                builder.element('ns3:FinanceParameters', nest: () {
                  builder.element('ns3:MassRate', nest: '10010');
                });
              }
            ],
          );
          final expectedShipmentInfo = ShipmentInfo.from(
            trackNumber: '123',
            serviceType: PostalServiceType.russianPost,
            shippingRateFee: const Currency(100.1, 'RUB'),
          );
          final response = ServiceResponse(
            transactionId: const TransactionId('1'),
            statusCode: 200,
            payload: payload,
          );

          final result = parser.parse(response);
          result.maybeWhen(
            (info, activity, alternateTracks) {
              expect(activity, []);
              expect(info, expectedShipmentInfo);
            },
            orElse: () => throw result,
          );
        });

        test('Insurance rate fee', () async {
          final builder = XmlBuilder();
          final payload = _buildResult(
            builder,
            historyRecord: [
              () => builder.element('ns3:FinanceParameters', nest: () {
                    builder.element('ns3:InsrRate', nest: 'unreachable');
                  }),
              () {
                builder.element('ns3:ItemParameters', nest: () {
                  builder.element('ns3:Barcode', nest: '123');
                });
                builder.element('ns3:FinanceParameters', nest: () {
                  builder.element('ns3:InsrRate', nest: '10010');
                });
              }
            ],
          );
          final expectedShipmentInfo = ShipmentInfo.from(
            trackNumber: '123',
            serviceType: PostalServiceType.russianPost,
            insuranceRateFee: const Currency(100.1, 'RUB'),
          );
          final response = ServiceResponse(
            transactionId: const TransactionId('1'),
            statusCode: 200,
            payload: payload,
          );

          final result = parser.parse(response);
          result.maybeWhen(
            (info, activity, alternateTracks) {
              expect(activity, []);
              expect(info, expectedShipmentInfo);
            },
            orElse: () => throw result,
          );
        });

        test('Service description', () async {
          final builder = XmlBuilder();
          final payload = _buildResult(
            builder,
            historyRecord: [
              () => builder.element('ns3:ItemParameters', nest: () {
                    builder.element('ns3:MailType', nest: () {
                      builder.element('ns3:Id', nest: 'unreachable');
                      builder.element('ns3:Name', nest: 'unreachable');
                    });
                  }),
              () => builder.element('ns3:ItemParameters', nest: () {
                    builder.element('ns3:Barcode', nest: '123');
                    builder.element('ns3:MailType', nest: () {
                      builder.element('ns3:Id', nest: '7');
                      builder.element('ns3:Name', nest: 'EMS');
                    });
                  }),
            ],
          );
          final expectedShipmentInfo = ShipmentInfo.from(
            trackNumber: '123',
            serviceType: PostalServiceType.russianPost,
            serviceDescription: 'EMS',
            shipmentDescription: 'EMS',
          );
          final response = ServiceResponse(
            transactionId: const TransactionId('1'),
            statusCode: 200,
            payload: payload,
          );

          final result = parser.parse(response);
          result.maybeWhen(
            (info, activity, alternateTracks) {
              expect(activity, []);
              expect(info, expectedShipmentInfo);
            },
            orElse: () => throw result,
          );
        });

        test('Shipment description', () async {
          final builder = XmlBuilder();
          final payload = _buildResult(
            builder,
            historyRecord: [
              () => builder.element('ns3:ItemParameters', nest: () {
                    builder.element('ns3:MailType', nest: () {
                      builder.element('ns3:Id', nest: '4');
                      builder.element('ns3:Name', nest: 'Package');
                    });
                    builder.element('ns3:MailCtg', nest: () {
                      builder.element('ns3:Id', nest: 'unreachable');
                      builder.element('ns3:Name', nest: 'unreachable');
                    });
                    builder.element('ns3:MailRank', nest: () {
                      builder.element('ns3:Id', nest: 'unreachable');
                      builder.element('ns3:Name', nest: 'unreachable');
                    });
                    builder.element('ns3:PostMark', nest: () {
                      builder.element('ns3:Id', nest: 'unreachable');
                      builder.element('ns3:Name', nest: 'unreachable');
                    });
                  }),
              () => builder.element('ns3:ItemParameters', nest: () {
                    builder.element('ns3:Barcode', nest: '123');
                    builder.element('ns3:MailType', nest: () {
                      builder.element('ns3:Id', nest: '4');
                      builder.element('ns3:Name', nest: 'Package');
                    });
                    builder.element('ns3:MailCtg', nest: () {
                      builder.element('ns3:Id', nest: '1');
                      builder.element('ns3:Name', nest: 'With declared value');
                    });
                    builder.element('ns3:MailRank', nest: () {
                      builder.element('ns3:Id', nest: '5');
                      builder.element('ns3:Name', nest: 'Presidential');
                    });
                    builder.element('ns3:PostMark', nest: () {
                      builder.element('ns3:Id', nest: '1');
                      builder.element(
                        'ns3:Name',
                        nest: 'With a simple notification',
                      );
                    });
                  }),
            ],
          );
          final expectedShipmentInfo = ShipmentInfo.from(
            trackNumber: '123',
            serviceType: PostalServiceType.russianPost,
            shipmentDescription: 'Package With declared value '
                'Presidential With a simple notification',
          );
          final response = ServiceResponse(
            transactionId: const TransactionId('1'),
            statusCode: 200,
            payload: payload,
          );

          final result = parser.parse(response);
          result.maybeWhen(
            (info, activity, alternateTracks) {
              expect(activity, []);
              expect(info, expectedShipmentInfo);
            },
            orElse: () => throw result,
          );
        });

        test('Weight', () async {
          final builder = XmlBuilder();
          final payload = _buildResult(
            builder,
            historyRecord: [
              () => builder.element('ns3:ItemParameters', nest: () {
                    builder.element('ns3:Mass', nest: 'unreachable');
                  }),
              () => builder.element('ns3:ItemParameters', nest: () {
                    builder.element('ns3:Barcode', nest: '123');
                    builder.element('ns3:Mass', nest: '1100');
                  }),
            ],
          );
          final expectedShipmentInfo = ShipmentInfo.from(
            trackNumber: '123',
            serviceType: PostalServiceType.russianPost,
            weight: const UnitOfMeasurement(
              value: 1.1,
              measurement: Measurement.kilogram,
            ),
          );
          final response = ServiceResponse(
            transactionId: const TransactionId('1'),
            statusCode: 200,
            payload: payload,
          );

          final result = parser.parse(response);
          result.maybeWhen(
            (info, activity, alternateTracks) {
              expect(activity, []);
              expect(info, expectedShipmentInfo);
            },
            orElse: () => throw result,
          );
        });

        test('Activity', () async {
          final builder = XmlBuilder();
          final payload = _buildResult(
            builder,
            historyRecord: [
              () {
                builder.element('ns3:AddressParameters', nest: () {
                  builder.element('ns3:OperationAddress', nest: () {
                    builder.element('ns3:Index', nest: '101000');
                    builder.element('ns3:Description', nest: 'Moscow');
                  });
                  builder.element('ns3:CountryOper', nest: () {
                    builder.element('ns3:Code2A', nest: 'RU');
                    builder.element(
                      'ns3:NameEN',
                      nest: 'Russian Federation',
                    );
                  });
                });
                builder.element('ns3:OperationParameters', nest: () {
                  builder.element('ns3:OperType', nest: () {
                    builder.element('ns3:Id', nest: '1');
                    builder.element('ns3:Name', nest: 'Pickup');
                  });
                  builder.element('ns3:OperAttr', nest: () {
                    builder.element('ns3:Id', nest: '3');
                    builder.element('ns3:Name', nest: 'Info Received');
                  });
                  builder.element(
                    'ns3:OperDate',
                    nest: '2021-01-01T10:01:00.000+03:00',
                  );
                });
              },
              () => builder.element('ns3:OperationParameters', nest: () {
                    builder.element('ns3:OperType', nest: () {
                      builder.element('ns3:Id', nest: '1');
                      builder.element('ns3:Name', nest: 'Pickup');
                    });
                    builder.element('ns3:OperAttr', nest: () {
                      builder.element('ns3:Id', nest: '1');
                      builder.element('ns3:Name', nest: 'Single');
                    });
                    builder.element('ns3:OperDate',
                        nest: '2021-01-02T10:01:00.000+03:00');
                  }),
              () {
                builder.element('ns3:ItemParameters', nest: () {
                  builder.element('ns3:Barcode', nest: '123');
                });
                builder.element('ns3:OperationParameters', nest: () {
                  builder.element('ns3:OperType', nest: () {
                    builder.element('ns3:Id', nest: '2');
                    builder.element('ns3:Name', nest: 'Delivered');
                  });
                  builder.element('ns3:OperDate',
                      nest: '2021-01-03T10:01:00.000+03:00');
                });
              },
            ],
          );
          const trackNumber = '123';
          final expectedShipmentInfo = ShipmentInfo.from(
            trackNumber: trackNumber,
            serviceType: PostalServiceType.russianPost,
            pickupDate: DateTime.utc(2021, 1, 2, 7, 01),
            deliveryDate: DateTime.utc(2021, 1, 3, 7, 01),
          );
          final expectedActivity = [
            ShipmentActivityInfo.from(
              trackNumber: trackNumber,
              serviceType: PostalServiceType.russianPost,
              statusType: ShipmentStatusType.delivered,
              statusDescription: 'Delivered',
              dateTime: expectedShipmentInfo.deliveryDate,
            ),
            ShipmentActivityInfo.from(
              trackNumber: trackNumber,
              serviceType: PostalServiceType.russianPost,
              statusType: ShipmentStatusType.pickup,
              statusDescription: 'Pickup - Single',
              dateTime: expectedShipmentInfo.pickupDate,
            ),
            ShipmentActivityInfo.from(
              trackNumber: trackNumber,
              serviceType: PostalServiceType.russianPost,
              statusType: ShipmentStatusType.infoReceived,
              statusDescription: 'Pickup - Info Received',
              activityLocation: const Address(
                location: 'Moscow, Russian Federation',
                postalCode: '101000',
                countryCode: 'RU',
              ),
              dateTime: DateTime.utc(2021, 1, 1, 7, 01),
            ),
          ];
          final response = ServiceResponse(
            transactionId: const TransactionId('1'),
            statusCode: 200,
            payload: payload,
          );

          final result = parser.parse(response);
          result.maybeWhen(
            (info, activity, alternateTracks) {
              expect(info, expectedShipmentInfo);
              expect(activity, expectedActivity);
            },
            orElse: () => throw result,
          );
        });

        test('Shipper and receiver name', () async {
          final builder = XmlBuilder();
          final payload = _buildResult(
            builder,
            historyRecord: [
              () => builder.element('ns3:UserParameters', nest: () {
                    builder.element('ns3:Sndr', nest: 'unreachable');
                    builder.element('ns3:Rcpn', nest: 'unreachable');
                  }),
              () {
                builder.element('ns3:ItemParameters', nest: () {
                  builder.element('ns3:Barcode', nest: '123');
                });
                builder.element('ns3:UserParameters', nest: () {
                  builder.element('ns3:Sndr', nest: 'Shipper');
                  builder.element('ns3:Rcpn', nest: 'Receiver');
                });
              }
            ],
          );
          final expectedShipmentInfo = ShipmentInfo.from(
            trackNumber: '123',
            serviceType: PostalServiceType.russianPost,
            shipperName: 'Shipper',
            receiverName: 'Receiver',
          );
          final response = ServiceResponse(
            transactionId: const TransactionId('1'),
            statusCode: 200,
            payload: payload,
          );

          final result = parser.parse(response);
          result.maybeWhen(
            (info, activity, alternateTracks) {
              expect(activity, []);
              expect(info, expectedShipmentInfo);
            },
            orElse: () => throw result,
          );
        });
      });
    });
  });
}
