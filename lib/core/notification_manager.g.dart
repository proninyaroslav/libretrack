// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_manager.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationActionOpenParcelDetailsImpl
    _$$NotificationActionOpenParcelDetailsImplFromJson(
            Map<String, dynamic> json) =>
        _$NotificationActionOpenParcelDetailsImpl(
          trackNumber: json['trackNumber'] as String,
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$NotificationActionOpenParcelDetailsImplToJson(
        _$NotificationActionOpenParcelDetailsImpl instance) =>
    <String, dynamic>{
      'trackNumber': instance.trackNumber,
      'runtimeType': instance.$type,
    };

_$NotificationActionReportCrashImpl
    _$$NotificationActionReportCrashImplFromJson(Map<String, dynamic> json) =>
        _$NotificationActionReportCrashImpl(
          info: CrashInfo.fromJson(json['info'] as Map<String, dynamic>),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$NotificationActionReportCrashImplToJson(
        _$NotificationActionReportCrashImpl instance) =>
    <String, dynamic>{
      'info': instance.info.toJson(),
      'runtimeType': instance.$type,
    };

_$NotificationActionOpenParcelsListImpl
    _$$NotificationActionOpenParcelsListImplFromJson(
            Map<String, dynamic> json) =>
        _$NotificationActionOpenParcelsListImpl(
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$NotificationActionOpenParcelsListImplToJson(
        _$NotificationActionOpenParcelsListImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
