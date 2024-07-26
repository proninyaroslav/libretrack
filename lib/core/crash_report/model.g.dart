// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CrashInfoImpl _$$CrashInfoImplFromJson(Map<String, dynamic> json) =>
    _$CrashInfoImpl(
      error: const ErrorConverter().fromJson(json['error'] as String),
      stackTrace:
          const StackTraceConverter().fromJson(json['stackTrace'] as String?),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$CrashInfoImplToJson(_$CrashInfoImpl instance) =>
    <String, dynamic>{
      'error': const ErrorConverter().toJson(instance.error),
      'stackTrace': const StackTraceConverter().toJson(instance.stackTrace),
      'message': instance.message,
    };

_$CrashReportDataImpl _$$CrashReportDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CrashReportDataImpl(
      reportId:
          const CrashReportIdConverter().fromJson(json['reportId'] as String),
      packageName: json['packageName'] as String,
      appName: json['appName'] as String,
      version: json['version'] as String,
      buildNumber: json['buildNumber'] as String,
      error: json['error'] as String,
      comment: json['comment'] as String?,
      stackTrace: json['stackTrace'] as String?,
      deviceInfo:
          ReportableInfo.fromJson(json['deviceInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CrashReportDataImplToJson(
        _$CrashReportDataImpl instance) =>
    <String, dynamic>{
      'reportId': const CrashReportIdConverter().toJson(instance.reportId),
      'packageName': instance.packageName,
      'appName': instance.appName,
      'version': instance.version,
      'buildNumber': instance.buildNumber,
      'error': instance.error,
      'comment': instance.comment,
      'stackTrace': instance.stackTrace,
      'deviceInfo': instance.deviceInfo.toJson(),
    };

_$UnknownReportableInfoImpl _$$UnknownReportableInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$UnknownReportableInfoImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UnknownReportableInfoImplToJson(
        _$UnknownReportableInfoImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AndroidReportableInfoImpl _$$AndroidReportableInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$AndroidReportableInfoImpl(
      systemVersion: json['systemVersion'] as String?,
      supportedAbis: (json['supportedAbis'] as List<dynamic>?)
              ?.map((e) => e as String?)
              .toList() ??
          const [],
      brand: json['brand'] as String?,
      device: json['device'] as String?,
      model: json['model'] as String?,
      hardware: json['hardware'] as String?,
      product: json['product'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AndroidReportableInfoImplToJson(
        _$AndroidReportableInfoImpl instance) =>
    <String, dynamic>{
      'systemVersion': instance.systemVersion,
      'supportedAbis': instance.supportedAbis,
      'brand': instance.brand,
      'device': instance.device,
      'model': instance.model,
      'hardware': instance.hardware,
      'product': instance.product,
      'runtimeType': instance.$type,
    };

_$IOSReportableInfoImpl _$$IOSReportableInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$IOSReportableInfoImpl(
      deviceName: json['deviceName'] as String?,
      deviceModel: json['deviceModel'] as String?,
      systemName: json['systemName'] as String?,
      systemVersion: json['systemVersion'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$IOSReportableInfoImplToJson(
        _$IOSReportableInfoImpl instance) =>
    <String, dynamic>{
      'deviceName': instance.deviceName,
      'deviceModel': instance.deviceModel,
      'systemName': instance.systemName,
      'systemVersion': instance.systemVersion,
      'runtimeType': instance.$type,
    };

_$LinuxReportableInfoImpl _$$LinuxReportableInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$LinuxReportableInfoImpl(
      osName: json['osName'] as String,
      kernelVersion: json['kernelVersion'] as String,
      osVersion: json['osVersion'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LinuxReportableInfoImplToJson(
        _$LinuxReportableInfoImpl instance) =>
    <String, dynamic>{
      'osName': instance.osName,
      'kernelVersion': instance.kernelVersion,
      'osVersion': instance.osVersion,
      'runtimeType': instance.$type,
    };

_$WindowsReportableInfoImpl _$$WindowsReportableInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$WindowsReportableInfoImpl(
      osVersion: json['osVersion'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WindowsReportableInfoImplToJson(
        _$WindowsReportableInfoImpl instance) =>
    <String, dynamic>{
      'osVersion': instance.osVersion,
      'runtimeType': instance.$type,
    };

_$MacOSReportableInfoImpl _$$MacOSReportableInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$MacOSReportableInfoImpl(
      arch: json['arch'] as String,
      kernelVersion: json['kernelVersion'] as String,
      osVersion: json['osVersion'] as String,
      model: json['model'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MacOSReportableInfoImplToJson(
        _$MacOSReportableInfoImpl instance) =>
    <String, dynamic>{
      'arch': instance.arch,
      'kernelVersion': instance.kernelVersion,
      'osVersion': instance.osVersion,
      'model': instance.model,
      'runtimeType': instance.$type,
    };

_$WebReportableInfoImpl _$$WebReportableInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$WebReportableInfoImpl(
      browserName: json['browserName'] as String,
      platform: json['platform'] as String?,
      vendor: json['vendor'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WebReportableInfoImplToJson(
        _$WebReportableInfoImpl instance) =>
    <String, dynamic>{
      'browserName': instance.browserName,
      'platform': instance.platform,
      'vendor': instance.vendor,
      'runtimeType': instance.$type,
    };
