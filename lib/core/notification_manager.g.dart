// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_manager.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationActionOpenParcelDetails
    _$$NotificationActionOpenParcelDetailsFromJson(Map<String, dynamic> json) =>
        _$NotificationActionOpenParcelDetails(
          trackNumber: json['trackNumber'] as String,
        );

Map<String, dynamic> _$$NotificationActionOpenParcelDetailsToJson(
        _$NotificationActionOpenParcelDetails instance) =>
    <String, dynamic>{
      'trackNumber': instance.trackNumber,
    };

_$NotificationActionReportCrash _$$NotificationActionReportCrashFromJson(
        Map<String, dynamic> json) =>
    _$NotificationActionReportCrash(
      info: CrashInfo.fromJson(json['info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NotificationActionReportCrashToJson(
        _$NotificationActionReportCrash instance) =>
    <String, dynamic>{
      'info': instance.info.toJson(),
    };

_$NotificationActionOpenParcelsList
    _$$NotificationActionOpenParcelsListFromJson(Map<String, dynamic> json) =>
        _$NotificationActionOpenParcelsList();

Map<String, dynamic> _$$NotificationActionOpenParcelsListToJson(
        _$NotificationActionOpenParcelsList instance) =>
    <String, dynamic>{};
