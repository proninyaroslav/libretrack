// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_number_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackNumberService _$TrackNumberServiceFromJson(Map<String, dynamic> json) =>
    TrackNumberService(
      trackNumber: json['trackNumber'] as String,
      serviceType:
          _$enumDecode(_$PostalServiceTypeEnumMap, json['serviceType']),
      isActive: json['isActive'] as bool? ?? true,
    );

Map<String, dynamic> _$TrackNumberServiceToJson(TrackNumberService instance) =>
    <String, dynamic>{
      'trackNumber': instance.trackNumber,
      'serviceType': _$PostalServiceTypeEnumMap[instance.serviceType],
      'isActive': instance.isActive,
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

const _$PostalServiceTypeEnumMap = {
  PostalServiceType.ups: 'ups',
  PostalServiceType.russianPost: 'russianPost',
};
