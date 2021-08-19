// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CrashInfo _$$_CrashInfoFromJson(Map<String, dynamic> json) => _$_CrashInfo(
      error: const ErrorConverter().fromJson(json['error'] as String),
      stackTrace:
          const StackTraceConverter().fromJson(json['stackTrace'] as String?),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_CrashInfoToJson(_$_CrashInfo instance) =>
    <String, dynamic>{
      'error': const ErrorConverter().toJson(instance.error),
      'stackTrace': const StackTraceConverter().toJson(instance.stackTrace),
      'message': instance.message,
    };

_$_CrashReportData _$$_CrashReportDataFromJson(Map<String, dynamic> json) =>
    _$_CrashReportData(
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

Map<String, dynamic> _$$_CrashReportDataToJson(_$_CrashReportData instance) =>
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

_$UnknownReportableInfo _$$UnknownReportableInfoFromJson(
        Map<String, dynamic> json) =>
    _$UnknownReportableInfo();

Map<String, dynamic> _$$UnknownReportableInfoToJson(
        _$UnknownReportableInfo instance) =>
    <String, dynamic>{};

_$AndroidReportableInfo _$$AndroidReportableInfoFromJson(
        Map<String, dynamic> json) =>
    _$AndroidReportableInfo(
      systemVersion: json['systemVersion'] as String?,
      supportedAbis: (json['supportedAbis'] as List<dynamic>?)
              ?.map((e) => e as String?)
              .toList() ??
          [],
      brand: json['brand'] as String?,
      device: json['device'] as String?,
      model: json['model'] as String?,
      hardware: json['hardware'] as String?,
      product: json['product'] as String?,
    );

Map<String, dynamic> _$$AndroidReportableInfoToJson(
        _$AndroidReportableInfo instance) =>
    <String, dynamic>{
      'systemVersion': instance.systemVersion,
      'supportedAbis': instance.supportedAbis,
      'brand': instance.brand,
      'device': instance.device,
      'model': instance.model,
      'hardware': instance.hardware,
      'product': instance.product,
    };

_$IOSReportableInfo _$$IOSReportableInfoFromJson(Map<String, dynamic> json) =>
    _$IOSReportableInfo(
      deviceName: json['deviceName'] as String?,
      deviceModel: json['deviceModel'] as String?,
      systemName: json['systemName'] as String?,
      systemVersion: json['systemVersion'] as String?,
    );

Map<String, dynamic> _$$IOSReportableInfoToJson(_$IOSReportableInfo instance) =>
    <String, dynamic>{
      'deviceName': instance.deviceName,
      'deviceModel': instance.deviceModel,
      'systemName': instance.systemName,
      'systemVersion': instance.systemVersion,
    };

_$LinuxReportableInfo _$$LinuxReportableInfoFromJson(
        Map<String, dynamic> json) =>
    _$LinuxReportableInfo(
      osName: json['osName'] as String,
      kernelVersion: json['kernelVersion'] as String,
      osVersion: json['osVersion'] as String?,
    );

Map<String, dynamic> _$$LinuxReportableInfoToJson(
        _$LinuxReportableInfo instance) =>
    <String, dynamic>{
      'osName': instance.osName,
      'kernelVersion': instance.kernelVersion,
      'osVersion': instance.osVersion,
    };

_$WindowsReportableInfo _$$WindowsReportableInfoFromJson(
        Map<String, dynamic> json) =>
    _$WindowsReportableInfo(
      osVersion: json['osVersion'] as String,
    );

Map<String, dynamic> _$$WindowsReportableInfoToJson(
        _$WindowsReportableInfo instance) =>
    <String, dynamic>{
      'osVersion': instance.osVersion,
    };

_$MacOSReportableInfo _$$MacOSReportableInfoFromJson(
        Map<String, dynamic> json) =>
    _$MacOSReportableInfo(
      arch: json['arch'] as String,
      kernelVersion: json['kernelVersion'] as String,
      osVersion: json['osVersion'] as String,
      model: json['model'] as String,
    );

Map<String, dynamic> _$$MacOSReportableInfoToJson(
        _$MacOSReportableInfo instance) =>
    <String, dynamic>{
      'arch': instance.arch,
      'kernelVersion': instance.kernelVersion,
      'osVersion': instance.osVersion,
      'model': instance.model,
    };

_$WebReportableInfo _$$WebReportableInfoFromJson(Map<String, dynamic> json) =>
    _$WebReportableInfo(
      browserName: json['browserName'] as String,
      platform: json['platform'] as String?,
      vendor: json['vendor'] as String?,
    );

Map<String, dynamic> _$$WebReportableInfoToJson(_$WebReportableInfo instance) =>
    <String, dynamic>{
      'browserName': instance.browserName,
      'platform': instance.platform,
      'vendor': instance.vendor,
    };
