// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParcelsSortAlphabeticallyImpl _$$ParcelsSortAlphabeticallyImplFromJson(
        Map<String, dynamic> json) =>
    _$ParcelsSortAlphabeticallyImpl(
      isDesc: json['isDesc'] as bool? ?? false,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ParcelsSortAlphabeticallyImplToJson(
        _$ParcelsSortAlphabeticallyImpl instance) =>
    <String, dynamic>{
      'isDesc': instance.isDesc,
      'runtimeType': instance.$type,
    };

_$ParcelsSortActivityDateImpl _$$ParcelsSortActivityDateImplFromJson(
        Map<String, dynamic> json) =>
    _$ParcelsSortActivityDateImpl(
      oldestFirst: json['oldestFirst'] as bool? ?? false,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ParcelsSortActivityDateImplToJson(
        _$ParcelsSortActivityDateImpl instance) =>
    <String, dynamic>{
      'oldestFirst': instance.oldestFirst,
      'runtimeType': instance.$type,
    };

_$ParcelsSortDateAddedImpl _$$ParcelsSortDateAddedImplFromJson(
        Map<String, dynamic> json) =>
    _$ParcelsSortDateAddedImpl(
      oldestFirst: json['oldestFirst'] as bool? ?? false,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ParcelsSortDateAddedImplToJson(
        _$ParcelsSortDateAddedImpl instance) =>
    <String, dynamic>{
      'oldestFirst': instance.oldestFirst,
      'runtimeType': instance.$type,
    };

_$ParcelsFilterSearchImpl _$$ParcelsFilterSearchImplFromJson(
        Map<String, dynamic> json) =>
    _$ParcelsFilterSearchImpl(
      query: json['query'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ParcelsFilterSearchImplToJson(
        _$ParcelsFilterSearchImpl instance) =>
    <String, dynamic>{
      'query': instance.query,
      'runtimeType': instance.$type,
    };

_$ParcelsFilterActiveImpl _$$ParcelsFilterActiveImplFromJson(
        Map<String, dynamic> json) =>
    _$ParcelsFilterActiveImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ParcelsFilterActiveImplToJson(
        _$ParcelsFilterActiveImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ParcelsFilterArchiveImpl _$$ParcelsFilterArchiveImplFromJson(
        Map<String, dynamic> json) =>
    _$ParcelsFilterArchiveImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ParcelsFilterArchiveImplToJson(
        _$ParcelsFilterArchiveImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ParcelsFilterStatusImpl _$$ParcelsFilterStatusImplFromJson(
        Map<String, dynamic> json) =>
    _$ParcelsFilterStatusImpl(
      statusType:
          $enumDecodeNullable(_$ShipmentStatusTypeEnumMap, json['statusType']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ParcelsFilterStatusImplToJson(
        _$ParcelsFilterStatusImpl instance) =>
    <String, dynamic>{
      'statusType': _$ShipmentStatusTypeEnumMap[instance.statusType],
      'runtimeType': instance.$type,
    };

const _$ShipmentStatusTypeEnumMap = {
  ShipmentStatusType.notAvailable: 'notAvailable',
  ShipmentStatusType.infoReceived: 'infoReceived',
  ShipmentStatusType.pickup: 'pickup',
  ShipmentStatusType.inTransit: 'inTransit',
  ShipmentStatusType.outForDelivery: 'outForDelivery',
  ShipmentStatusType.delivered: 'delivered',
  ShipmentStatusType.returnedToShipper: 'returnedToShipper',
  ShipmentStatusType.other: 'other',
  ShipmentStatusType.notDelivered: 'notDelivered',
  ShipmentStatusType.inStorage: 'inStorage',
  ShipmentStatusType.inTransitArrivedWaypoint: 'inTransitArrivedWaypoint',
  ShipmentStatusType.inTransitDepartedWaypoint: 'inTransitDepartedWaypoint',
  ShipmentStatusType.exportedFromDepartureCountry:
      'exportedFromDepartureCountry',
  ShipmentStatusType.importedToDestinationCountry:
      'importedToDestinationCountry',
  ShipmentStatusType.arrivedAtCustoms: 'arrivedAtCustoms',
  ShipmentStatusType.customsClearanceComplete: 'customsClearanceComplete',
};

_$ParcelsFilterNewInfoImpl _$$ParcelsFilterNewInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$ParcelsFilterNewInfoImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ParcelsFilterNewInfoImplToJson(
        _$ParcelsFilterNewInfoImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ParcelsFilterErrorImpl _$$ParcelsFilterErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$ParcelsFilterErrorImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ParcelsFilterErrorImplToJson(
        _$ParcelsFilterErrorImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ParcelsFilterPostalServiceImpl _$$ParcelsFilterPostalServiceImplFromJson(
        Map<String, dynamic> json) =>
    _$ParcelsFilterPostalServiceImpl(
      serviceType:
          $enumDecodeNullable(_$PostalServiceTypeEnumMap, json['serviceType']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ParcelsFilterPostalServiceImplToJson(
        _$ParcelsFilterPostalServiceImpl instance) =>
    <String, dynamic>{
      'serviceType': _$PostalServiceTypeEnumMap[instance.serviceType],
      'runtimeType': instance.$type,
    };

const _$PostalServiceTypeEnumMap = {
  PostalServiceType.ups: 'ups',
  PostalServiceType.russianPost: 'russianPost',
  PostalServiceType.usps: 'usps',
};

_$AppThemeTypeLightImpl _$$AppThemeTypeLightImplFromJson(
        Map<String, dynamic> json) =>
    _$AppThemeTypeLightImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AppThemeTypeLightImplToJson(
        _$AppThemeTypeLightImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AppThemeTypeDarkImpl _$$AppThemeTypeDarkImplFromJson(
        Map<String, dynamic> json) =>
    _$AppThemeTypeDarkImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AppThemeTypeDarkImplToJson(
        _$AppThemeTypeDarkImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AppThemeTypeSystemImpl _$$AppThemeTypeSystemImplFromJson(
        Map<String, dynamic> json) =>
    _$AppThemeTypeSystemImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AppThemeTypeSystemImplToJson(
        _$AppThemeTypeSystemImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AppLocaleTypeSystemImpl _$$AppLocaleTypeSystemImplFromJson(
        Map<String, dynamic> json) =>
    _$AppLocaleTypeSystemImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AppLocaleTypeSystemImplToJson(
        _$AppLocaleTypeSystemImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AppLocaleTypeInnerImpl _$$AppLocaleTypeInnerImplFromJson(
        Map<String, dynamic> json) =>
    _$AppLocaleTypeInnerImpl(
      locale: Locale.fromJson(json['locale'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AppLocaleTypeInnerImplToJson(
        _$AppLocaleTypeInnerImpl instance) =>
    <String, dynamic>{
      'locale': instance.locale.toJson(),
      'runtimeType': instance.$type,
    };

_$TrackingFreqLimitFifteenMinImpl _$$TrackingFreqLimitFifteenMinImplFromJson(
        Map<String, dynamic> json) =>
    _$TrackingFreqLimitFifteenMinImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TrackingFreqLimitFifteenMinImplToJson(
        _$TrackingFreqLimitFifteenMinImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$TrackingFreqLimitThirtyMinImpl _$$TrackingFreqLimitThirtyMinImplFromJson(
        Map<String, dynamic> json) =>
    _$TrackingFreqLimitThirtyMinImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TrackingFreqLimitThirtyMinImplToJson(
        _$TrackingFreqLimitThirtyMinImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$TrackingFreqLimitFortyFiveMinImpl
    _$$TrackingFreqLimitFortyFiveMinImplFromJson(Map<String, dynamic> json) =>
        _$TrackingFreqLimitFortyFiveMinImpl(
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$TrackingFreqLimitFortyFiveMinImplToJson(
        _$TrackingFreqLimitFortyFiveMinImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$TrackingFreqLimitOneHourImpl _$$TrackingFreqLimitOneHourImplFromJson(
        Map<String, dynamic> json) =>
    _$TrackingFreqLimitOneHourImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TrackingFreqLimitOneHourImplToJson(
        _$TrackingFreqLimitOneHourImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AutoTrackingFreqSixHoursImpl _$$AutoTrackingFreqSixHoursImplFromJson(
        Map<String, dynamic> json) =>
    _$AutoTrackingFreqSixHoursImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AutoTrackingFreqSixHoursImplToJson(
        _$AutoTrackingFreqSixHoursImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AutoTrackingFreqTwelveHoursImpl _$$AutoTrackingFreqTwelveHoursImplFromJson(
        Map<String, dynamic> json) =>
    _$AutoTrackingFreqTwelveHoursImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AutoTrackingFreqTwelveHoursImplToJson(
        _$AutoTrackingFreqTwelveHoursImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AutoTrackingFreqOneDayImpl _$$AutoTrackingFreqOneDayImplFromJson(
        Map<String, dynamic> json) =>
    _$AutoTrackingFreqOneDayImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AutoTrackingFreqOneDayImplToJson(
        _$AutoTrackingFreqOneDayImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AutoTrackingFreqThreeDaysImpl _$$AutoTrackingFreqThreeDaysImplFromJson(
        Map<String, dynamic> json) =>
    _$AutoTrackingFreqThreeDaysImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AutoTrackingFreqThreeDaysImplToJson(
        _$AutoTrackingFreqThreeDaysImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AutoTrackingFreqOneWeekImpl _$$AutoTrackingFreqOneWeekImplFromJson(
        Map<String, dynamic> json) =>
    _$AutoTrackingFreqOneWeekImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AutoTrackingFreqOneWeekImplToJson(
        _$AutoTrackingFreqOneWeekImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
