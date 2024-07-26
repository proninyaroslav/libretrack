// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracking_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrackingErrorImpl _$$TrackingErrorImplFromJson(Map<String, dynamic> json) =>
    _$TrackingErrorImpl(
      type: $enumDecode(_$TrackingErrorTypeEnumMap, json['type']),
      isRetryable: json['isRetryable'] as bool,
      message: json['message'] as String?,
      code: json['code'] as String?,
      stackTrace: json['stackTrace'] as String?,
    );

Map<String, dynamic> _$$TrackingErrorImplToJson(_$TrackingErrorImpl instance) =>
    <String, dynamic>{
      'type': _$TrackingErrorTypeEnumMap[instance.type]!,
      'isRetryable': instance.isRetryable,
      'message': instance.message,
      'code': instance.code,
      'stackTrace': instance.stackTrace,
    };

const _$TrackingErrorTypeEnumMap = {
  TrackingErrorType.unknown: 'unknown',
  TrackingErrorType.network: 'network',
  TrackingErrorType.service: 'service',
  TrackingErrorType.auth: 'auth',
  TrackingErrorType.invalidTrackNumber: 'invalidTrackNumber',
  TrackingErrorType.missingAuthData: 'missingAuthData',
  TrackingErrorType.missingTrackingService: 'missingTrackingService',
};
