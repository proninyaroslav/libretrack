// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_number_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackNumberService _$TrackNumberServiceFromJson(Map<String, dynamic> json) =>
    TrackNumberService(
      trackNumber: json['trackNumber'] as String,
      serviceType: $enumDecode(_$PostalServiceTypeEnumMap, json['serviceType']),
      isActive: json['isActive'] as bool? ?? true,
    );

Map<String, dynamic> _$TrackNumberServiceToJson(TrackNumberService instance) =>
    <String, dynamic>{
      'trackNumber': instance.trackNumber,
      'serviceType': _$PostalServiceTypeEnumMap[instance.serviceType]!,
      'isActive': instance.isActive,
    };

const _$PostalServiceTypeEnumMap = {
  PostalServiceType.ups: 'ups',
  PostalServiceType.russianPost: 'russianPost',
  PostalServiceType.usps: 'usps',
  PostalServiceType.postNord: 'postNord',
};
