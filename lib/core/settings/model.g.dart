// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParcelsSortAlphabetically _$_$ParcelsSortAlphabeticallyFromJson(
    Map<String, dynamic> json) {
  return _$ParcelsSortAlphabetically(
    isDesc: json['isDesc'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$ParcelsSortAlphabeticallyToJson(
        _$ParcelsSortAlphabetically instance) =>
    <String, dynamic>{
      'isDesc': instance.isDesc,
    };

_$ParcelsSortActivityDate _$_$ParcelsSortActivityDateFromJson(
    Map<String, dynamic> json) {
  return _$ParcelsSortActivityDate(
    oldestFirst: json['oldestFirst'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$ParcelsSortActivityDateToJson(
        _$ParcelsSortActivityDate instance) =>
    <String, dynamic>{
      'oldestFirst': instance.oldestFirst,
    };

_$ParcelsSortDateAdded _$_$ParcelsSortDateAddedFromJson(
    Map<String, dynamic> json) {
  return _$ParcelsSortDateAdded(
    oldestFirst: json['oldestFirst'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$ParcelsSortDateAddedToJson(
        _$ParcelsSortDateAdded instance) =>
    <String, dynamic>{
      'oldestFirst': instance.oldestFirst,
    };

_$ParcelsFilterSearch _$_$ParcelsFilterSearchFromJson(
    Map<String, dynamic> json) {
  return _$ParcelsFilterSearch(
    query: json['query'] as String?,
  );
}

Map<String, dynamic> _$_$ParcelsFilterSearchToJson(
        _$ParcelsFilterSearch instance) =>
    <String, dynamic>{
      'query': instance.query,
    };

_$ParcelsFilterActive _$_$ParcelsFilterActiveFromJson(
    Map<String, dynamic> json) {
  return _$ParcelsFilterActive();
}

Map<String, dynamic> _$_$ParcelsFilterActiveToJson(
        _$ParcelsFilterActive instance) =>
    <String, dynamic>{};

_$ParcelsFilterArchive _$_$ParcelsFilterArchiveFromJson(
    Map<String, dynamic> json) {
  return _$ParcelsFilterArchive();
}

Map<String, dynamic> _$_$ParcelsFilterArchiveToJson(
        _$ParcelsFilterArchive instance) =>
    <String, dynamic>{};

_$ParcelsFilterStatus _$_$ParcelsFilterStatusFromJson(
    Map<String, dynamic> json) {
  return _$ParcelsFilterStatus(
    statusType:
        _$enumDecodeNullable(_$ShipmentStatusTypeEnumMap, json['statusType']),
  );
}

Map<String, dynamic> _$_$ParcelsFilterStatusToJson(
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
};

_$ParcelsFilterNewInfo _$_$ParcelsFilterNewInfoFromJson(
    Map<String, dynamic> json) {
  return _$ParcelsFilterNewInfo();
}

Map<String, dynamic> _$_$ParcelsFilterNewInfoToJson(
        _$ParcelsFilterNewInfo instance) =>
    <String, dynamic>{};

_$ParcelsFilterError _$_$ParcelsFilterErrorFromJson(Map<String, dynamic> json) {
  return _$ParcelsFilterError();
}

Map<String, dynamic> _$_$ParcelsFilterErrorToJson(
        _$ParcelsFilterError instance) =>
    <String, dynamic>{};

_$ParcelsFilterPostalService _$_$ParcelsFilterPostalServiceFromJson(
    Map<String, dynamic> json) {
  return _$ParcelsFilterPostalService(
    serviceType:
        _$enumDecodeNullable(_$PostalServiceTypeEnumMap, json['serviceType']),
  );
}

Map<String, dynamic> _$_$ParcelsFilterPostalServiceToJson(
        _$ParcelsFilterPostalService instance) =>
    <String, dynamic>{
      'serviceType': _$PostalServiceTypeEnumMap[instance.serviceType],
    };

const _$PostalServiceTypeEnumMap = {
  PostalServiceType.ups: 'ups',
};

_$AppThemeTypeLight _$_$AppThemeTypeLightFromJson(Map<String, dynamic> json) {
  return _$AppThemeTypeLight();
}

Map<String, dynamic> _$_$AppThemeTypeLightToJson(
        _$AppThemeTypeLight instance) =>
    <String, dynamic>{};

_$AppThemeTypeDark _$_$AppThemeTypeDarkFromJson(Map<String, dynamic> json) {
  return _$AppThemeTypeDark();
}

Map<String, dynamic> _$_$AppThemeTypeDarkToJson(_$AppThemeTypeDark instance) =>
    <String, dynamic>{};

_$AppThemeTypeSystem _$_$AppThemeTypeSystemFromJson(Map<String, dynamic> json) {
  return _$AppThemeTypeSystem();
}

Map<String, dynamic> _$_$AppThemeTypeSystemToJson(
        _$AppThemeTypeSystem instance) =>
    <String, dynamic>{};

_$AppLocaleTypeSystem _$_$AppLocaleTypeSystemFromJson(
    Map<String, dynamic> json) {
  return _$AppLocaleTypeSystem();
}

Map<String, dynamic> _$_$AppLocaleTypeSystemToJson(
        _$AppLocaleTypeSystem instance) =>
    <String, dynamic>{};

_$AppLocaleTypeInner _$_$AppLocaleTypeInnerFromJson(Map<String, dynamic> json) {
  return _$AppLocaleTypeInner(
    locale: Locale.fromJson(json['locale'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$AppLocaleTypeInnerToJson(
        _$AppLocaleTypeInner instance) =>
    <String, dynamic>{
      'locale': instance.locale.toJson(),
    };

_$TrackingFreqLimitFifteenMin _$_$TrackingFreqLimitFifteenMinFromJson(
    Map<String, dynamic> json) {
  return _$TrackingFreqLimitFifteenMin();
}

Map<String, dynamic> _$_$TrackingFreqLimitFifteenMinToJson(
        _$TrackingFreqLimitFifteenMin instance) =>
    <String, dynamic>{};

_$TrackingFreqLimitThirtyMin _$_$TrackingFreqLimitThirtyMinFromJson(
    Map<String, dynamic> json) {
  return _$TrackingFreqLimitThirtyMin();
}

Map<String, dynamic> _$_$TrackingFreqLimitThirtyMinToJson(
        _$TrackingFreqLimitThirtyMin instance) =>
    <String, dynamic>{};

_$TrackingFreqLimitFortyFiveMin _$_$TrackingFreqLimitFortyFiveMinFromJson(
    Map<String, dynamic> json) {
  return _$TrackingFreqLimitFortyFiveMin();
}

Map<String, dynamic> _$_$TrackingFreqLimitFortyFiveMinToJson(
        _$TrackingFreqLimitFortyFiveMin instance) =>
    <String, dynamic>{};

_$TrackingFreqLimitOneHour _$_$TrackingFreqLimitOneHourFromJson(
    Map<String, dynamic> json) {
  return _$TrackingFreqLimitOneHour();
}

Map<String, dynamic> _$_$TrackingFreqLimitOneHourToJson(
        _$TrackingFreqLimitOneHour instance) =>
    <String, dynamic>{};

_$AutoTrackingFreqSixHours _$_$AutoTrackingFreqSixHoursFromJson(
    Map<String, dynamic> json) {
  return _$AutoTrackingFreqSixHours();
}

Map<String, dynamic> _$_$AutoTrackingFreqSixHoursToJson(
        _$AutoTrackingFreqSixHours instance) =>
    <String, dynamic>{};

_$AutoTrackingFreqTwelveHours _$_$AutoTrackingFreqTwelveHoursFromJson(
    Map<String, dynamic> json) {
  return _$AutoTrackingFreqTwelveHours();
}

Map<String, dynamic> _$_$AutoTrackingFreqTwelveHoursToJson(
        _$AutoTrackingFreqTwelveHours instance) =>
    <String, dynamic>{};

_$AutoTrackingFreqOneDay _$_$AutoTrackingFreqOneDayFromJson(
    Map<String, dynamic> json) {
  return _$AutoTrackingFreqOneDay();
}

Map<String, dynamic> _$_$AutoTrackingFreqOneDayToJson(
        _$AutoTrackingFreqOneDay instance) =>
    <String, dynamic>{};

_$AutoTrackingFreqThreeDays _$_$AutoTrackingFreqThreeDaysFromJson(
    Map<String, dynamic> json) {
  return _$AutoTrackingFreqThreeDays();
}

Map<String, dynamic> _$_$AutoTrackingFreqThreeDaysToJson(
        _$AutoTrackingFreqThreeDays instance) =>
    <String, dynamic>{};

_$AutoTrackingFreqOneWeek _$_$AutoTrackingFreqOneWeekFromJson(
    Map<String, dynamic> json) {
  return _$AutoTrackingFreqOneWeek();
}

Map<String, dynamic> _$_$AutoTrackingFreqOneWeekToJson(
        _$AutoTrackingFreqOneWeek instance) =>
    <String, dynamic>{};
