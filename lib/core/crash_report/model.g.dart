// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CrashReportData _$_$_CrashReportDataFromJson(Map<String, dynamic> json) {
  return _$_CrashReportData(
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
}

Map<String, dynamic> _$_$_CrashReportDataToJson(_$_CrashReportData instance) =>
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

_$UnknownReportableInfo _$_$UnknownReportableInfoFromJson(
    Map<String, dynamic> json) {
  return _$UnknownReportableInfo();
}

Map<String, dynamic> _$_$UnknownReportableInfoToJson(
        _$UnknownReportableInfo instance) =>
    <String, dynamic>{};

_$AndroidReportableInfo _$_$AndroidReportableInfoFromJson(
    Map<String, dynamic> json) {
  return _$AndroidReportableInfo(
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
}

Map<String, dynamic> _$_$AndroidReportableInfoToJson(
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

_$IOSReportableInfo _$_$IOSReportableInfoFromJson(Map<String, dynamic> json) {
  return _$IOSReportableInfo(
    deviceName: json['deviceName'] as String?,
    deviceModel: json['deviceModel'] as String?,
    systemName: json['systemName'] as String?,
    systemVersion: json['systemVersion'] as String?,
  );
}

Map<String, dynamic> _$_$IOSReportableInfoToJson(
        _$IOSReportableInfo instance) =>
    <String, dynamic>{
      'deviceName': instance.deviceName,
      'deviceModel': instance.deviceModel,
      'systemName': instance.systemName,
      'systemVersion': instance.systemVersion,
    };

_$LinuxReportableInfo _$_$LinuxReportableInfoFromJson(
    Map<String, dynamic> json) {
  return _$LinuxReportableInfo(
    osName: json['osName'] as String,
    kernelVersion: json['kernelVersion'] as String,
    osVersion: json['osVersion'] as String?,
  );
}

Map<String, dynamic> _$_$LinuxReportableInfoToJson(
        _$LinuxReportableInfo instance) =>
    <String, dynamic>{
      'osName': instance.osName,
      'kernelVersion': instance.kernelVersion,
      'osVersion': instance.osVersion,
    };

_$WindowsReportableInfo _$_$WindowsReportableInfoFromJson(
    Map<String, dynamic> json) {
  return _$WindowsReportableInfo(
    osVersion: json['osVersion'] as String,
  );
}

Map<String, dynamic> _$_$WindowsReportableInfoToJson(
        _$WindowsReportableInfo instance) =>
    <String, dynamic>{
      'osVersion': instance.osVersion,
    };

_$MacOSReportableInfo _$_$MacOSReportableInfoFromJson(
    Map<String, dynamic> json) {
  return _$MacOSReportableInfo(
    arch: json['arch'] as String,
    kernelVersion: json['kernelVersion'] as String,
    osVersion: json['osVersion'] as String,
    model: json['model'] as String,
  );
}

Map<String, dynamic> _$_$MacOSReportableInfoToJson(
        _$MacOSReportableInfo instance) =>
    <String, dynamic>{
      'arch': instance.arch,
      'kernelVersion': instance.kernelVersion,
      'osVersion': instance.osVersion,
      'model': instance.model,
    };

_$WebReportableInfo _$_$WebReportableInfoFromJson(Map<String, dynamic> json) {
  return _$WebReportableInfo(
    browserName: json['browserName'] as String,
    platform: json['platform'] as String?,
    vendor: json['vendor'] as String?,
  );
}

Map<String, dynamic> _$_$WebReportableInfoToJson(
        _$WebReportableInfo instance) =>
    <String, dynamic>{
      'browserName': instance.browserName,
      'platform': instance.platform,
      'vendor': instance.vendor,
    };
