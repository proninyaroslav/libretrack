// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParcelsSortAlphabetically _$$ParcelsSortAlphabeticallyFromJson(
        Map<String, dynamic> json) =>
    _$ParcelsSortAlphabetically(
      isDesc: json['isDesc'] as bool? ?? false,
    );

Map<String, dynamic> _$$ParcelsSortAlphabeticallyToJson(
        _$ParcelsSortAlphabetically instance) =>
    <String, dynamic>{
      'isDesc': instance.isDesc,
    };

_$ParcelsSortActivityDate _$$ParcelsSortActivityDateFromJson(
        Map<String, dynamic> json) =>
    _$ParcelsSortActivityDate(
      oldestFirst: json['oldestFirst'] as bool? ?? false,
    );

Map<String, dynamic> _$$ParcelsSortActivityDateToJson(
        _$ParcelsSortActivityDate instance) =>
    <String, dynamic>{
      'oldestFirst': instance.oldestFirst,
    };

_$ParcelsSortDateAdded _$$ParcelsSortDateAddedFromJson(
        Map<String, dynamic> json) =>
    _$ParcelsSortDateAdded(
      oldestFirst: json['oldestFirst'] as bool? ?? false,
    );

Map<String, dynamic> _$$ParcelsSortDateAddedToJson(
        _$ParcelsSortDateAdded instance) =>
    <String, dynamic>{
      'oldestFirst': instance.oldestFirst,
    };

_$ParcelsFilterSearch _$$ParcelsFilterSearchFromJson(
        Map<String, dynamic> json) =>
    _$ParcelsFilterSearch(
      query: json['query'] as String?,
    );

Map<String, dynamic> _$$ParcelsFilterSearchToJson(
        _$ParcelsFilterSearch instance) =>
    <String, dynamic>{
      'query': instance.query,
    };

_$ParcelsFilterActive _$$ParcelsFilterActiveFromJson(
        Map<String, dynamic> json) =>
    _$ParcelsFilterActive();

Map<String, dynamic> _$$ParcelsFilterActiveToJson(
        _$ParcelsFilterActive instance) =>
    <String, dynamic>{};

_$ParcelsFilterArchive _$$ParcelsFilterArchiveFromJson(
        Map<String, dynamic> json) =>
    _$ParcelsFilterArchive();

Map<String, dynamic> _$$ParcelsFilterArchiveToJson(
        _$ParcelsFilterArchive instance) =>
    <String, dynamic>{};

_$ParcelsFilterStatus _$$ParcelsFilterStatusFromJson(
        Map<String, dynamic> json) =>
    _$ParcelsFilterStatus(
      statusType:
          _$enumDecodeNullable(_$ShipmentStatusTypeEnumMap, json['statusType']),
    );

Map<String, dynamic> _$$ParcelsFilterStatusToJson(
        _$ParcelsFilterStatus instance) =>
    <String, dynamic>{
      'statusType': _$ShipmentStatusTypeEnumMap[instance.statusType],
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

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

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

_$ParcelsFilterNewInfo _$$ParcelsFilterNewInfoFromJson(
        Map<String, dynamic> json) =>
    _$ParcelsFilterNewInfo();

Map<String, dynamic> _$$ParcelsFilterNewInfoToJson(
        _$ParcelsFilterNewInfo instance) =>
    <String, dynamic>{};

_$ParcelsFilterError _$$ParcelsFilterErrorFromJson(Map<String, dynamic> json) =>
    _$ParcelsFilterError();

Map<String, dynamic> _$$ParcelsFilterErrorToJson(
        _$ParcelsFilterError instance) =>
    <String, dynamic>{};

_$ParcelsFilterPostalService _$$ParcelsFilterPostalServiceFromJson(
        Map<String, dynamic> json) =>
    _$ParcelsFilterPostalService(
      serviceType:
          _$enumDecodeNullable(_$PostalServiceTypeEnumMap, json['serviceType']),
    );

Map<String, dynamic> _$$ParcelsFilterPostalServiceToJson(
        _$ParcelsFilterPostalService instance) =>
    <String, dynamic>{
      'serviceType': _$PostalServiceTypeEnumMap[instance.serviceType],
    };

const _$PostalServiceTypeEnumMap = {
  PostalServiceType.ups: 'ups',
  PostalServiceType.russianPost: 'russianPost',
};

_$AppThemeTypeLight _$$AppThemeTypeLightFromJson(Map<String, dynamic> json) =>
    _$AppThemeTypeLight();

Map<String, dynamic> _$$AppThemeTypeLightToJson(_$AppThemeTypeLight instance) =>
    <String, dynamic>{};

_$AppThemeTypeDark _$$AppThemeTypeDarkFromJson(Map<String, dynamic> json) =>
    _$AppThemeTypeDark();

Map<String, dynamic> _$$AppThemeTypeDarkToJson(_$AppThemeTypeDark instance) =>
    <String, dynamic>{};

_$AppThemeTypeSystem _$$AppThemeTypeSystemFromJson(Map<String, dynamic> json) =>
    _$AppThemeTypeSystem();

Map<String, dynamic> _$$AppThemeTypeSystemToJson(
        _$AppThemeTypeSystem instance) =>
    <String, dynamic>{};

_$AppLocaleTypeSystem _$$AppLocaleTypeSystemFromJson(
        Map<String, dynamic> json) =>
    _$AppLocaleTypeSystem();

Map<String, dynamic> _$$AppLocaleTypeSystemToJson(
        _$AppLocaleTypeSystem instance) =>
    <String, dynamic>{};

_$AppLocaleTypeInner _$$AppLocaleTypeInnerFromJson(Map<String, dynamic> json) =>
    _$AppLocaleTypeInner(
      locale: Locale.fromJson(json['locale'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppLocaleTypeInnerToJson(
        _$AppLocaleTypeInner instance) =>
    <String, dynamic>{
      'locale': instance.locale.toJson(),
    };

_$TrackingFreqLimitFifteenMin _$$TrackingFreqLimitFifteenMinFromJson(
        Map<String, dynamic> json) =>
    _$TrackingFreqLimitFifteenMin();

Map<String, dynamic> _$$TrackingFreqLimitFifteenMinToJson(
        _$TrackingFreqLimitFifteenMin instance) =>
    <String, dynamic>{};

_$TrackingFreqLimitThirtyMin _$$TrackingFreqLimitThirtyMinFromJson(
        Map<String, dynamic> json) =>
    _$TrackingFreqLimitThirtyMin();

Map<String, dynamic> _$$TrackingFreqLimitThirtyMinToJson(
        _$TrackingFreqLimitThirtyMin instance) =>
    <String, dynamic>{};

_$TrackingFreqLimitFortyFiveMin _$$TrackingFreqLimitFortyFiveMinFromJson(
        Map<String, dynamic> json) =>
    _$TrackingFreqLimitFortyFiveMin();

Map<String, dynamic> _$$TrackingFreqLimitFortyFiveMinToJson(
        _$TrackingFreqLimitFortyFiveMin instance) =>
    <String, dynamic>{};

_$TrackingFreqLimitOneHour _$$TrackingFreqLimitOneHourFromJson(
        Map<String, dynamic> json) =>
    _$TrackingFreqLimitOneHour();

Map<String, dynamic> _$$TrackingFreqLimitOneHourToJson(
        _$TrackingFreqLimitOneHour instance) =>
    <String, dynamic>{};

_$AutoTrackingFreqSixHours _$$AutoTrackingFreqSixHoursFromJson(
        Map<String, dynamic> json) =>
    _$AutoTrackingFreqSixHours();

Map<String, dynamic> _$$AutoTrackingFreqSixHoursToJson(
        _$AutoTrackingFreqSixHours instance) =>
    <String, dynamic>{};

_$AutoTrackingFreqTwelveHours _$$AutoTrackingFreqTwelveHoursFromJson(
        Map<String, dynamic> json) =>
    _$AutoTrackingFreqTwelveHours();

Map<String, dynamic> _$$AutoTrackingFreqTwelveHoursToJson(
        _$AutoTrackingFreqTwelveHours instance) =>
    <String, dynamic>{};

_$AutoTrackingFreqOneDay _$$AutoTrackingFreqOneDayFromJson(
        Map<String, dynamic> json) =>
    _$AutoTrackingFreqOneDay();

Map<String, dynamic> _$$AutoTrackingFreqOneDayToJson(
        _$AutoTrackingFreqOneDay instance) =>
    <String, dynamic>{};

_$AutoTrackingFreqThreeDays _$$AutoTrackingFreqThreeDaysFromJson(
        Map<String, dynamic> json) =>
    _$AutoTrackingFreqThreeDays();

Map<String, dynamic> _$$AutoTrackingFreqThreeDaysToJson(
        _$AutoTrackingFreqThreeDays instance) =>
    <String, dynamic>{};

_$AutoTrackingFreqOneWeek _$$AutoTrackingFreqOneWeekFromJson(
        Map<String, dynamic> json) =>
    _$AutoTrackingFreqOneWeek();

Map<String, dynamic> _$$AutoTrackingFreqOneWeekToJson(
        _$AutoTrackingFreqOneWeek instance) =>
    <String, dynamic>{};
