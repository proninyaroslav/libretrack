// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracking_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrackingError _$$_TrackingErrorFromJson(Map<String, dynamic> json) =>
    _$_TrackingError(
      type: _$enumDecode(_$TrackingErrorTypeEnumMap, json['type']),
      isRetryable: json['isRetryable'] as bool,
      message: json['message'] as String?,
      code: json['code'] as String?,
      stackTrace: json['stackTrace'] as String?,
    );

Map<String, dynamic> _$$_TrackingErrorToJson(_$_TrackingError instance) =>
    <String, dynamic>{
      'type': _$TrackingErrorTypeEnumMap[instance.type],
      'isRetryable': instance.isRetryable,
      'message': instance.message,
      'code': instance.code,
      'stackTrace': instance.stackTrace,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$TrackingErrorTypeEnumMap = {
  TrackingErrorType.unknown: 'unknown',
  TrackingErrorType.network: 'network',
  TrackingErrorType.service: 'service',
  TrackingErrorType.auth: 'auth',
  TrackingErrorType.invalidTrackNumber: 'invalidTrackNumber',
  TrackingErrorType.missingAuthData: 'missingAuthData',
  TrackingErrorType.missingTrackingService: 'missingTrackingService',
};
