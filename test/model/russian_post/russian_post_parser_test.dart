import 'package:flutter_test/flutter_test.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/model/parser.dart';
import 'package:libretrack/core/model/service_response.dart';
import 'package:libretrack/core/model/tracking_service/tracking_service.dart';
import 'package:xml/xml.dart';

void main() {
  group('Russian Post parser |', () {
    final parser = RussianPostParser();

    group('Fault |', () {
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
    });
  });
}
