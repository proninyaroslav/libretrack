import 'package:libretrack/core/model/parser.dart';
import 'package:libretrack/core/model/service_response.dart';
import 'package:xml/xml.dart';

class RussianPostParser implements Parser {
  @override
  ParseResult parse(ServiceResponse response) {
    late final XmlDocument root;
    try {
      root = XmlDocument.parse(response.payload);
    } on XmlParserException catch (e) {
      if (response.statusCode != 200) {
        return _handleHttpError(response);
      } else {
        return ParseResult.error(ParseError.format(e.toString()));
      }
    }
    final body = root.getElement('S:Envelope')?.getElement('S:Body');
    final fault = body?.getElement('S:Fault');
    final getOperationHistoryResponse = body?.getElement(
      'ns7:getOperationHistoryResponse',
    );
    if (fault != null) {
      return _parseFault(fault);
    } else if (getOperationHistoryResponse != null) {
      return _parseGetOperationHistoryResponse(getOperationHistoryResponse);
    } else if (response.statusCode != 200) {
      return _handleHttpError(response);
    }

    throw const ParseResult.error(ParseError.format('Unknown XML structure'));
  }

  ParseResult _handleHttpError(ServiceResponse response) {
    return ParseResult.error(
      ParseError.serviceTemporary(
        code: '${response.statusCode}',
        message: 'HTTP ${response.statusCode}',
      ),
    );
  }

  ParseResult _parseFault(XmlElement fault) {
    final reason = fault.getElement('S:Reason')!.getElement('S:Text');
    final reasonStr = reason!.innerText;
    final code = fault.getElement('S:Code')!.getElement('S:Value');
    final codeStr = code!.innerText;
    final details = fault.getElement('S:Detail');

    return _parseOperationHistoryFaultReason(reasonStr, details) ??
        _parseAuthFaultReason(reasonStr, details) ??
        _parseLangFaultReason(reasonStr, details) ??
        _defaultFaultParser(code: codeStr, reason: reasonStr);
  }

  ParseResult _defaultFaultParser({
    required String code,
    required String reason,
  }) {
    return ParseResult.error(
      code == _SoapErrorCode.sender ||
              code == _SoapErrorCode.dataEncodingUnknown ||
              code == _SoapErrorCode.versionMismatch
          ? ParseError.format(reason)
          : ParseError.badRequest(message: reason),
    );
  }

  ParseResult? _parseOperationHistoryFaultReason(
    String reasonStr,
    XmlElement? details,
  ) {
    final operationHistoryFaultReason = details?.getElement(
      'ns3:OperationHistoryFaultReason',
    );
    return operationHistoryFaultReason == null
        ? null
        : _parseInvalidTrackingNumber(operationHistoryFaultReason) ??
            ParseResult.error(
              ParseError.serviceHard(
                message:
                    '[$reasonStr] ${operationHistoryFaultReason.innerText}',
              ),
            );
  }

  ParseResult? _parseInvalidTrackingNumber(
    XmlElement operationHistoryFaultReason,
  ) {
    final message = operationHistoryFaultReason.innerText;
    if (message == _ErrorMessage.invalidTrackNumberEng ||
        message == _ErrorMessage.invalidTrackNumberRus) {
      return const ParseResult.error(ParseError.invalidTrackNumber());
    } else {
      return null;
    }
  }

  ParseResult? _parseAuthFaultReason(
    String reasonStr,
    XmlElement? details,
  ) {
    final authFaultReason = details?.getElement(
      'ns3:AuthorizationFaultReason',
    );
    return authFaultReason == null
        ? null
        : ParseResult.error(
            ParseError.auth(
              message: '[$reasonStr] ${authFaultReason.innerText}',
            ),
          );
  }

  ParseResult? _parseLangFaultReason(
    String reasonStr,
    XmlElement? details,
  ) {
    final langFaultReason = details?.getElement(
      'ns3:LanguageFaultReason',
    );
    return langFaultReason == null
        ? null
        : ParseResult.error(
            ParseError.badRequest(
              message: '[$reasonStr] ${langFaultReason.innerText}',
            ),
          );
  }

  ParseResult _parseGetOperationHistoryResponse(
    XmlElement getOperationHistoryResponse,
  ) {
    final operationHistoryData = getOperationHistoryResponse.getElement(
      'ns3:OperationHistoryData',
    );
    final historyRecord = operationHistoryData!.getElement('ns3:historyRecord');
    if (historyRecord == null) {
      return const ParseResult.noInfo();
    }

    // TODO: change
    return const ParseResult.noInfo();
  }
}

class _SoapErrorCode {
  // ignore: unused_field
  static const sender = 'S:Sender';

  // ignore: unused_field
  static const receiver = 'S:Receiver';

  // ignore: unused_field
  static const dataEncodingUnknown = 'S:DataEncodingUnknown';

  // ignore: unused_field
  static const versionMismatch = 'S:VersionMismatch';
}

class _ErrorMessage {
  // ignore: unused_field
  static const invalidTrackNumberEng =
      'The format of the request data is invalid';
  // ignore: unused_field
  static const invalidTrackNumberRus =
      'Формат данных запроса не соответствует установленному в регламенте обмена';
}
