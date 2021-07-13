// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_manager.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationActionOpenParcelDetails
    _$_$NotificationActionOpenParcelDetailsFromJson(Map<String, dynamic> json) {
  return _$NotificationActionOpenParcelDetails(
    trackNumber: json['trackNumber'] as String,
  );
}

Map<String, dynamic> _$_$NotificationActionOpenParcelDetailsToJson(
        _$NotificationActionOpenParcelDetails instance) =>
    <String, dynamic>{
      'trackNumber': instance.trackNumber,
    };

_$NotificationActionReportCrash _$_$NotificationActionReportCrashFromJson(
    Map<String, dynamic> json) {
  return _$NotificationActionReportCrash(
    info: CrashInfo.fromJson(json['info'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$NotificationActionReportCrashToJson(
        _$NotificationActionReportCrash instance) =>
    <String, dynamic>{
      'info': instance.info.toJson(),
    };

_$NotificationActionOpenParcelsList
    _$_$NotificationActionOpenParcelsListFromJson(Map<String, dynamic> json) {
  return _$NotificationActionOpenParcelsList();
}

Map<String, dynamic> _$_$NotificationActionOpenParcelsListToJson(
        _$NotificationActionOpenParcelsList instance) =>
    <String, dynamic>{};
