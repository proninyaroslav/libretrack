// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'platform_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppInfo {
  String get packageName => throw _privateConstructorUsedError;
  String get appName => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get buildNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppInfoCopyWith<AppInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppInfoCopyWith<$Res> {
  factory $AppInfoCopyWith(AppInfo value, $Res Function(AppInfo) then) =
      _$AppInfoCopyWithImpl<$Res, AppInfo>;
  @useResult
  $Res call(
      {String packageName, String appName, String version, String buildNumber});
}

/// @nodoc
class _$AppInfoCopyWithImpl<$Res, $Val extends AppInfo>
    implements $AppInfoCopyWith<$Res> {
  _$AppInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageName = null,
    Object? appName = null,
    Object? version = null,
    Object? buildNumber = null,
  }) {
    return _then(_value.copyWith(
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildNumber: null == buildNumber
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppInfoImplCopyWith<$Res> implements $AppInfoCopyWith<$Res> {
  factory _$$AppInfoImplCopyWith(
          _$AppInfoImpl value, $Res Function(_$AppInfoImpl) then) =
      __$$AppInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String packageName, String appName, String version, String buildNumber});
}

/// @nodoc
class __$$AppInfoImplCopyWithImpl<$Res>
    extends _$AppInfoCopyWithImpl<$Res, _$AppInfoImpl>
    implements _$$AppInfoImplCopyWith<$Res> {
  __$$AppInfoImplCopyWithImpl(
      _$AppInfoImpl _value, $Res Function(_$AppInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageName = null,
    Object? appName = null,
    Object? version = null,
    Object? buildNumber = null,
  }) {
    return _then(_$AppInfoImpl(
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildNumber: null == buildNumber
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppInfoImpl with DiagnosticableTreeMixin implements _AppInfo {
  const _$AppInfoImpl(
      {required this.packageName,
      required this.appName,
      required this.version,
      required this.buildNumber});

  @override
  final String packageName;
  @override
  final String appName;
  @override
  final String version;
  @override
  final String buildNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppInfo(packageName: $packageName, appName: $appName, version: $version, buildNumber: $buildNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppInfo'))
      ..add(DiagnosticsProperty('packageName', packageName))
      ..add(DiagnosticsProperty('appName', appName))
      ..add(DiagnosticsProperty('version', version))
      ..add(DiagnosticsProperty('buildNumber', buildNumber));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppInfoImpl &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.buildNumber, buildNumber) ||
                other.buildNumber == buildNumber));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, packageName, appName, version, buildNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppInfoImplCopyWith<_$AppInfoImpl> get copyWith =>
      __$$AppInfoImplCopyWithImpl<_$AppInfoImpl>(this, _$identity);
}

abstract class _AppInfo implements AppInfo {
  const factory _AppInfo(
      {required final String packageName,
      required final String appName,
      required final String version,
      required final String buildNumber}) = _$AppInfoImpl;

  @override
  String get packageName;
  @override
  String get appName;
  @override
  String get version;
  @override
  String get buildNumber;
  @override
  @JsonKey(ignore: true)
  _$$AppInfoImplCopyWith<_$AppInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeviceInfo {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)
        android,
    required TResult Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)
        iOS,
    required TResult Function(
            String osName, String kernelVersion, String? osVersion)
        linux,
    required TResult Function(String osVersion) windows,
    required TResult Function(
            String arch, String kernelVersion, String osVersion, String model)
        macOS,
    required TResult Function(
            String browserName, String? platform, String? vendor)
        web,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)?
        android,
    TResult? Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)?
        iOS,
    TResult? Function(String osName, String kernelVersion, String? osVersion)?
        linux,
    TResult? Function(String osVersion)? windows,
    TResult? Function(
            String arch, String kernelVersion, String osVersion, String model)?
        macOS,
    TResult? Function(String browserName, String? platform, String? vendor)?
        web,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)?
        android,
    TResult Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)?
        iOS,
    TResult Function(String osName, String kernelVersion, String? osVersion)?
        linux,
    TResult Function(String osVersion)? windows,
    TResult Function(
            String arch, String kernelVersion, String osVersion, String model)?
        macOS,
    TResult Function(String browserName, String? platform, String? vendor)? web,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownDeviceInfo value) unknown,
    required TResult Function(AndroidDeviceInfo value) android,
    required TResult Function(IOSDeviceInfo value) iOS,
    required TResult Function(LinuxDeviceInfo value) linux,
    required TResult Function(WindowsDeviceInfo value) windows,
    required TResult Function(MacOSDeviceInfo value) macOS,
    required TResult Function(WebDeviceInfo value) web,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownDeviceInfo value)? unknown,
    TResult? Function(AndroidDeviceInfo value)? android,
    TResult? Function(IOSDeviceInfo value)? iOS,
    TResult? Function(LinuxDeviceInfo value)? linux,
    TResult? Function(WindowsDeviceInfo value)? windows,
    TResult? Function(MacOSDeviceInfo value)? macOS,
    TResult? Function(WebDeviceInfo value)? web,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownDeviceInfo value)? unknown,
    TResult Function(AndroidDeviceInfo value)? android,
    TResult Function(IOSDeviceInfo value)? iOS,
    TResult Function(LinuxDeviceInfo value)? linux,
    TResult Function(WindowsDeviceInfo value)? windows,
    TResult Function(MacOSDeviceInfo value)? macOS,
    TResult Function(WebDeviceInfo value)? web,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceInfoCopyWith<$Res> {
  factory $DeviceInfoCopyWith(
          DeviceInfo value, $Res Function(DeviceInfo) then) =
      _$DeviceInfoCopyWithImpl<$Res, DeviceInfo>;
}

/// @nodoc
class _$DeviceInfoCopyWithImpl<$Res, $Val extends DeviceInfo>
    implements $DeviceInfoCopyWith<$Res> {
  _$DeviceInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnknownDeviceInfoImplCopyWith<$Res> {
  factory _$$UnknownDeviceInfoImplCopyWith(_$UnknownDeviceInfoImpl value,
          $Res Function(_$UnknownDeviceInfoImpl) then) =
      __$$UnknownDeviceInfoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownDeviceInfoImplCopyWithImpl<$Res>
    extends _$DeviceInfoCopyWithImpl<$Res, _$UnknownDeviceInfoImpl>
    implements _$$UnknownDeviceInfoImplCopyWith<$Res> {
  __$$UnknownDeviceInfoImplCopyWithImpl(_$UnknownDeviceInfoImpl _value,
      $Res Function(_$UnknownDeviceInfoImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnknownDeviceInfoImpl
    with DiagnosticableTreeMixin
    implements UnknownDeviceInfo {
  const _$UnknownDeviceInfoImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeviceInfo.unknown()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'DeviceInfo.unknown'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownDeviceInfoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)
        android,
    required TResult Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)
        iOS,
    required TResult Function(
            String osName, String kernelVersion, String? osVersion)
        linux,
    required TResult Function(String osVersion) windows,
    required TResult Function(
            String arch, String kernelVersion, String osVersion, String model)
        macOS,
    required TResult Function(
            String browserName, String? platform, String? vendor)
        web,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)?
        android,
    TResult? Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)?
        iOS,
    TResult? Function(String osName, String kernelVersion, String? osVersion)?
        linux,
    TResult? Function(String osVersion)? windows,
    TResult? Function(
            String arch, String kernelVersion, String osVersion, String model)?
        macOS,
    TResult? Function(String browserName, String? platform, String? vendor)?
        web,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)?
        android,
    TResult Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)?
        iOS,
    TResult Function(String osName, String kernelVersion, String? osVersion)?
        linux,
    TResult Function(String osVersion)? windows,
    TResult Function(
            String arch, String kernelVersion, String osVersion, String model)?
        macOS,
    TResult Function(String browserName, String? platform, String? vendor)? web,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownDeviceInfo value) unknown,
    required TResult Function(AndroidDeviceInfo value) android,
    required TResult Function(IOSDeviceInfo value) iOS,
    required TResult Function(LinuxDeviceInfo value) linux,
    required TResult Function(WindowsDeviceInfo value) windows,
    required TResult Function(MacOSDeviceInfo value) macOS,
    required TResult Function(WebDeviceInfo value) web,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownDeviceInfo value)? unknown,
    TResult? Function(AndroidDeviceInfo value)? android,
    TResult? Function(IOSDeviceInfo value)? iOS,
    TResult? Function(LinuxDeviceInfo value)? linux,
    TResult? Function(WindowsDeviceInfo value)? windows,
    TResult? Function(MacOSDeviceInfo value)? macOS,
    TResult? Function(WebDeviceInfo value)? web,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownDeviceInfo value)? unknown,
    TResult Function(AndroidDeviceInfo value)? android,
    TResult Function(IOSDeviceInfo value)? iOS,
    TResult Function(LinuxDeviceInfo value)? linux,
    TResult Function(WindowsDeviceInfo value)? windows,
    TResult Function(MacOSDeviceInfo value)? macOS,
    TResult Function(WebDeviceInfo value)? web,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownDeviceInfo implements DeviceInfo {
  const factory UnknownDeviceInfo() = _$UnknownDeviceInfoImpl;
}

/// @nodoc
abstract class _$$AndroidDeviceInfoImplCopyWith<$Res> {
  factory _$$AndroidDeviceInfoImplCopyWith(_$AndroidDeviceInfoImpl value,
          $Res Function(_$AndroidDeviceInfoImpl) then) =
      __$$AndroidDeviceInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? systemVersion,
      List<String?> supportedAbis,
      String? brand,
      String? device,
      String? model,
      String? hardware,
      String? product});
}

/// @nodoc
class __$$AndroidDeviceInfoImplCopyWithImpl<$Res>
    extends _$DeviceInfoCopyWithImpl<$Res, _$AndroidDeviceInfoImpl>
    implements _$$AndroidDeviceInfoImplCopyWith<$Res> {
  __$$AndroidDeviceInfoImplCopyWithImpl(_$AndroidDeviceInfoImpl _value,
      $Res Function(_$AndroidDeviceInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? systemVersion = freezed,
    Object? supportedAbis = null,
    Object? brand = freezed,
    Object? device = freezed,
    Object? model = freezed,
    Object? hardware = freezed,
    Object? product = freezed,
  }) {
    return _then(_$AndroidDeviceInfoImpl(
      systemVersion: freezed == systemVersion
          ? _value.systemVersion
          : systemVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      supportedAbis: null == supportedAbis
          ? _value._supportedAbis
          : supportedAbis // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      device: freezed == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      hardware: freezed == hardware
          ? _value.hardware
          : hardware // ignore: cast_nullable_to_non_nullable
              as String?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AndroidDeviceInfoImpl
    with DiagnosticableTreeMixin
    implements AndroidDeviceInfo {
  const _$AndroidDeviceInfoImpl(
      {this.systemVersion,
      final List<String?> supportedAbis = const [],
      this.brand,
      this.device,
      this.model,
      this.hardware,
      this.product})
      : _supportedAbis = supportedAbis;

  @override
  final String? systemVersion;

  /// An ordered list of ABIs supported by this device.
  final List<String?> _supportedAbis;

  /// An ordered list of ABIs supported by this device.
  @override
  @JsonKey()
  List<String?> get supportedAbis {
    if (_supportedAbis is EqualUnmodifiableListView) return _supportedAbis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supportedAbis);
  }

  /// The consumer-visible brand with which
  /// the product/hardware will be associated, if any.
  @override
  final String? brand;

  /// The name of the industrial design.
  @override
  final String? device;

  /// The end-user-visible name for the end product.
  @override
  final String? model;

  /// The name of the hardware (from the kernel command line or /proc).
  @override
  final String? hardware;

  /// The name of the overall product.
  @override
  final String? product;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeviceInfo.android(systemVersion: $systemVersion, supportedAbis: $supportedAbis, brand: $brand, device: $device, model: $model, hardware: $hardware, product: $product)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeviceInfo.android'))
      ..add(DiagnosticsProperty('systemVersion', systemVersion))
      ..add(DiagnosticsProperty('supportedAbis', supportedAbis))
      ..add(DiagnosticsProperty('brand', brand))
      ..add(DiagnosticsProperty('device', device))
      ..add(DiagnosticsProperty('model', model))
      ..add(DiagnosticsProperty('hardware', hardware))
      ..add(DiagnosticsProperty('product', product));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AndroidDeviceInfoImpl &&
            (identical(other.systemVersion, systemVersion) ||
                other.systemVersion == systemVersion) &&
            const DeepCollectionEquality()
                .equals(other._supportedAbis, _supportedAbis) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.device, device) || other.device == device) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.hardware, hardware) ||
                other.hardware == hardware) &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      systemVersion,
      const DeepCollectionEquality().hash(_supportedAbis),
      brand,
      device,
      model,
      hardware,
      product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AndroidDeviceInfoImplCopyWith<_$AndroidDeviceInfoImpl> get copyWith =>
      __$$AndroidDeviceInfoImplCopyWithImpl<_$AndroidDeviceInfoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)
        android,
    required TResult Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)
        iOS,
    required TResult Function(
            String osName, String kernelVersion, String? osVersion)
        linux,
    required TResult Function(String osVersion) windows,
    required TResult Function(
            String arch, String kernelVersion, String osVersion, String model)
        macOS,
    required TResult Function(
            String browserName, String? platform, String? vendor)
        web,
  }) {
    return android(
        systemVersion, supportedAbis, brand, device, model, hardware, product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)?
        android,
    TResult? Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)?
        iOS,
    TResult? Function(String osName, String kernelVersion, String? osVersion)?
        linux,
    TResult? Function(String osVersion)? windows,
    TResult? Function(
            String arch, String kernelVersion, String osVersion, String model)?
        macOS,
    TResult? Function(String browserName, String? platform, String? vendor)?
        web,
  }) {
    return android?.call(
        systemVersion, supportedAbis, brand, device, model, hardware, product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)?
        android,
    TResult Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)?
        iOS,
    TResult Function(String osName, String kernelVersion, String? osVersion)?
        linux,
    TResult Function(String osVersion)? windows,
    TResult Function(
            String arch, String kernelVersion, String osVersion, String model)?
        macOS,
    TResult Function(String browserName, String? platform, String? vendor)? web,
    required TResult orElse(),
  }) {
    if (android != null) {
      return android(systemVersion, supportedAbis, brand, device, model,
          hardware, product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownDeviceInfo value) unknown,
    required TResult Function(AndroidDeviceInfo value) android,
    required TResult Function(IOSDeviceInfo value) iOS,
    required TResult Function(LinuxDeviceInfo value) linux,
    required TResult Function(WindowsDeviceInfo value) windows,
    required TResult Function(MacOSDeviceInfo value) macOS,
    required TResult Function(WebDeviceInfo value) web,
  }) {
    return android(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownDeviceInfo value)? unknown,
    TResult? Function(AndroidDeviceInfo value)? android,
    TResult? Function(IOSDeviceInfo value)? iOS,
    TResult? Function(LinuxDeviceInfo value)? linux,
    TResult? Function(WindowsDeviceInfo value)? windows,
    TResult? Function(MacOSDeviceInfo value)? macOS,
    TResult? Function(WebDeviceInfo value)? web,
  }) {
    return android?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownDeviceInfo value)? unknown,
    TResult Function(AndroidDeviceInfo value)? android,
    TResult Function(IOSDeviceInfo value)? iOS,
    TResult Function(LinuxDeviceInfo value)? linux,
    TResult Function(WindowsDeviceInfo value)? windows,
    TResult Function(MacOSDeviceInfo value)? macOS,
    TResult Function(WebDeviceInfo value)? web,
    required TResult orElse(),
  }) {
    if (android != null) {
      return android(this);
    }
    return orElse();
  }
}

abstract class AndroidDeviceInfo implements DeviceInfo {
  const factory AndroidDeviceInfo(
      {final String? systemVersion,
      final List<String?> supportedAbis,
      final String? brand,
      final String? device,
      final String? model,
      final String? hardware,
      final String? product}) = _$AndroidDeviceInfoImpl;

  String? get systemVersion;

  /// An ordered list of ABIs supported by this device.
  List<String?> get supportedAbis;

  /// The consumer-visible brand with which
  /// the product/hardware will be associated, if any.
  String? get brand;

  /// The name of the industrial design.
  String? get device;

  /// The end-user-visible name for the end product.
  String? get model;

  /// The name of the hardware (from the kernel command line or /proc).
  String? get hardware;

  /// The name of the overall product.
  String? get product;
  @JsonKey(ignore: true)
  _$$AndroidDeviceInfoImplCopyWith<_$AndroidDeviceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IOSDeviceInfoImplCopyWith<$Res> {
  factory _$$IOSDeviceInfoImplCopyWith(
          _$IOSDeviceInfoImpl value, $Res Function(_$IOSDeviceInfoImpl) then) =
      __$$IOSDeviceInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? deviceName,
      String? deviceModel,
      String? systemName,
      String? systemVersion});
}

/// @nodoc
class __$$IOSDeviceInfoImplCopyWithImpl<$Res>
    extends _$DeviceInfoCopyWithImpl<$Res, _$IOSDeviceInfoImpl>
    implements _$$IOSDeviceInfoImplCopyWith<$Res> {
  __$$IOSDeviceInfoImplCopyWithImpl(
      _$IOSDeviceInfoImpl _value, $Res Function(_$IOSDeviceInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceName = freezed,
    Object? deviceModel = freezed,
    Object? systemName = freezed,
    Object? systemVersion = freezed,
  }) {
    return _then(_$IOSDeviceInfoImpl(
      deviceName: freezed == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceModel: freezed == deviceModel
          ? _value.deviceModel
          : deviceModel // ignore: cast_nullable_to_non_nullable
              as String?,
      systemName: freezed == systemName
          ? _value.systemName
          : systemName // ignore: cast_nullable_to_non_nullable
              as String?,
      systemVersion: freezed == systemVersion
          ? _value.systemVersion
          : systemVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$IOSDeviceInfoImpl
    with DiagnosticableTreeMixin
    implements IOSDeviceInfo {
  const _$IOSDeviceInfoImpl(
      {this.deviceName, this.deviceModel, this.systemName, this.systemVersion});

  @override
  final String? deviceName;
  @override
  final String? deviceModel;
  @override
  final String? systemName;
  @override
  final String? systemVersion;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeviceInfo.iOS(deviceName: $deviceName, deviceModel: $deviceModel, systemName: $systemName, systemVersion: $systemVersion)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeviceInfo.iOS'))
      ..add(DiagnosticsProperty('deviceName', deviceName))
      ..add(DiagnosticsProperty('deviceModel', deviceModel))
      ..add(DiagnosticsProperty('systemName', systemName))
      ..add(DiagnosticsProperty('systemVersion', systemVersion));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IOSDeviceInfoImpl &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            (identical(other.deviceModel, deviceModel) ||
                other.deviceModel == deviceModel) &&
            (identical(other.systemName, systemName) ||
                other.systemName == systemName) &&
            (identical(other.systemVersion, systemVersion) ||
                other.systemVersion == systemVersion));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, deviceName, deviceModel, systemName, systemVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IOSDeviceInfoImplCopyWith<_$IOSDeviceInfoImpl> get copyWith =>
      __$$IOSDeviceInfoImplCopyWithImpl<_$IOSDeviceInfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)
        android,
    required TResult Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)
        iOS,
    required TResult Function(
            String osName, String kernelVersion, String? osVersion)
        linux,
    required TResult Function(String osVersion) windows,
    required TResult Function(
            String arch, String kernelVersion, String osVersion, String model)
        macOS,
    required TResult Function(
            String browserName, String? platform, String? vendor)
        web,
  }) {
    return iOS(deviceName, deviceModel, systemName, systemVersion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)?
        android,
    TResult? Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)?
        iOS,
    TResult? Function(String osName, String kernelVersion, String? osVersion)?
        linux,
    TResult? Function(String osVersion)? windows,
    TResult? Function(
            String arch, String kernelVersion, String osVersion, String model)?
        macOS,
    TResult? Function(String browserName, String? platform, String? vendor)?
        web,
  }) {
    return iOS?.call(deviceName, deviceModel, systemName, systemVersion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)?
        android,
    TResult Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)?
        iOS,
    TResult Function(String osName, String kernelVersion, String? osVersion)?
        linux,
    TResult Function(String osVersion)? windows,
    TResult Function(
            String arch, String kernelVersion, String osVersion, String model)?
        macOS,
    TResult Function(String browserName, String? platform, String? vendor)? web,
    required TResult orElse(),
  }) {
    if (iOS != null) {
      return iOS(deviceName, deviceModel, systemName, systemVersion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownDeviceInfo value) unknown,
    required TResult Function(AndroidDeviceInfo value) android,
    required TResult Function(IOSDeviceInfo value) iOS,
    required TResult Function(LinuxDeviceInfo value) linux,
    required TResult Function(WindowsDeviceInfo value) windows,
    required TResult Function(MacOSDeviceInfo value) macOS,
    required TResult Function(WebDeviceInfo value) web,
  }) {
    return iOS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownDeviceInfo value)? unknown,
    TResult? Function(AndroidDeviceInfo value)? android,
    TResult? Function(IOSDeviceInfo value)? iOS,
    TResult? Function(LinuxDeviceInfo value)? linux,
    TResult? Function(WindowsDeviceInfo value)? windows,
    TResult? Function(MacOSDeviceInfo value)? macOS,
    TResult? Function(WebDeviceInfo value)? web,
  }) {
    return iOS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownDeviceInfo value)? unknown,
    TResult Function(AndroidDeviceInfo value)? android,
    TResult Function(IOSDeviceInfo value)? iOS,
    TResult Function(LinuxDeviceInfo value)? linux,
    TResult Function(WindowsDeviceInfo value)? windows,
    TResult Function(MacOSDeviceInfo value)? macOS,
    TResult Function(WebDeviceInfo value)? web,
    required TResult orElse(),
  }) {
    if (iOS != null) {
      return iOS(this);
    }
    return orElse();
  }
}

abstract class IOSDeviceInfo implements DeviceInfo {
  const factory IOSDeviceInfo(
      {final String? deviceName,
      final String? deviceModel,
      final String? systemName,
      final String? systemVersion}) = _$IOSDeviceInfoImpl;

  String? get deviceName;
  String? get deviceModel;
  String? get systemName;
  String? get systemVersion;
  @JsonKey(ignore: true)
  _$$IOSDeviceInfoImplCopyWith<_$IOSDeviceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LinuxDeviceInfoImplCopyWith<$Res> {
  factory _$$LinuxDeviceInfoImplCopyWith(_$LinuxDeviceInfoImpl value,
          $Res Function(_$LinuxDeviceInfoImpl) then) =
      __$$LinuxDeviceInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String osName, String kernelVersion, String? osVersion});
}

/// @nodoc
class __$$LinuxDeviceInfoImplCopyWithImpl<$Res>
    extends _$DeviceInfoCopyWithImpl<$Res, _$LinuxDeviceInfoImpl>
    implements _$$LinuxDeviceInfoImplCopyWith<$Res> {
  __$$LinuxDeviceInfoImplCopyWithImpl(
      _$LinuxDeviceInfoImpl _value, $Res Function(_$LinuxDeviceInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? osName = null,
    Object? kernelVersion = null,
    Object? osVersion = freezed,
  }) {
    return _then(_$LinuxDeviceInfoImpl(
      osName: null == osName
          ? _value.osName
          : osName // ignore: cast_nullable_to_non_nullable
              as String,
      kernelVersion: null == kernelVersion
          ? _value.kernelVersion
          : kernelVersion // ignore: cast_nullable_to_non_nullable
              as String,
      osVersion: freezed == osVersion
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LinuxDeviceInfoImpl
    with DiagnosticableTreeMixin
    implements LinuxDeviceInfo {
  const _$LinuxDeviceInfoImpl(
      {required this.osName, required this.kernelVersion, this.osVersion});

  @override
  final String osName;
  @override
  final String kernelVersion;
  @override
  final String? osVersion;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeviceInfo.linux(osName: $osName, kernelVersion: $kernelVersion, osVersion: $osVersion)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeviceInfo.linux'))
      ..add(DiagnosticsProperty('osName', osName))
      ..add(DiagnosticsProperty('kernelVersion', kernelVersion))
      ..add(DiagnosticsProperty('osVersion', osVersion));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinuxDeviceInfoImpl &&
            (identical(other.osName, osName) || other.osName == osName) &&
            (identical(other.kernelVersion, kernelVersion) ||
                other.kernelVersion == kernelVersion) &&
            (identical(other.osVersion, osVersion) ||
                other.osVersion == osVersion));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, osName, kernelVersion, osVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LinuxDeviceInfoImplCopyWith<_$LinuxDeviceInfoImpl> get copyWith =>
      __$$LinuxDeviceInfoImplCopyWithImpl<_$LinuxDeviceInfoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)
        android,
    required TResult Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)
        iOS,
    required TResult Function(
            String osName, String kernelVersion, String? osVersion)
        linux,
    required TResult Function(String osVersion) windows,
    required TResult Function(
            String arch, String kernelVersion, String osVersion, String model)
        macOS,
    required TResult Function(
            String browserName, String? platform, String? vendor)
        web,
  }) {
    return linux(osName, kernelVersion, osVersion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)?
        android,
    TResult? Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)?
        iOS,
    TResult? Function(String osName, String kernelVersion, String? osVersion)?
        linux,
    TResult? Function(String osVersion)? windows,
    TResult? Function(
            String arch, String kernelVersion, String osVersion, String model)?
        macOS,
    TResult? Function(String browserName, String? platform, String? vendor)?
        web,
  }) {
    return linux?.call(osName, kernelVersion, osVersion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)?
        android,
    TResult Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)?
        iOS,
    TResult Function(String osName, String kernelVersion, String? osVersion)?
        linux,
    TResult Function(String osVersion)? windows,
    TResult Function(
            String arch, String kernelVersion, String osVersion, String model)?
        macOS,
    TResult Function(String browserName, String? platform, String? vendor)? web,
    required TResult orElse(),
  }) {
    if (linux != null) {
      return linux(osName, kernelVersion, osVersion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownDeviceInfo value) unknown,
    required TResult Function(AndroidDeviceInfo value) android,
    required TResult Function(IOSDeviceInfo value) iOS,
    required TResult Function(LinuxDeviceInfo value) linux,
    required TResult Function(WindowsDeviceInfo value) windows,
    required TResult Function(MacOSDeviceInfo value) macOS,
    required TResult Function(WebDeviceInfo value) web,
  }) {
    return linux(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownDeviceInfo value)? unknown,
    TResult? Function(AndroidDeviceInfo value)? android,
    TResult? Function(IOSDeviceInfo value)? iOS,
    TResult? Function(LinuxDeviceInfo value)? linux,
    TResult? Function(WindowsDeviceInfo value)? windows,
    TResult? Function(MacOSDeviceInfo value)? macOS,
    TResult? Function(WebDeviceInfo value)? web,
  }) {
    return linux?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownDeviceInfo value)? unknown,
    TResult Function(AndroidDeviceInfo value)? android,
    TResult Function(IOSDeviceInfo value)? iOS,
    TResult Function(LinuxDeviceInfo value)? linux,
    TResult Function(WindowsDeviceInfo value)? windows,
    TResult Function(MacOSDeviceInfo value)? macOS,
    TResult Function(WebDeviceInfo value)? web,
    required TResult orElse(),
  }) {
    if (linux != null) {
      return linux(this);
    }
    return orElse();
  }
}

abstract class LinuxDeviceInfo implements DeviceInfo {
  const factory LinuxDeviceInfo(
      {required final String osName,
      required final String kernelVersion,
      final String? osVersion}) = _$LinuxDeviceInfoImpl;

  String get osName;
  String get kernelVersion;
  String? get osVersion;
  @JsonKey(ignore: true)
  _$$LinuxDeviceInfoImplCopyWith<_$LinuxDeviceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WindowsDeviceInfoImplCopyWith<$Res> {
  factory _$$WindowsDeviceInfoImplCopyWith(_$WindowsDeviceInfoImpl value,
          $Res Function(_$WindowsDeviceInfoImpl) then) =
      __$$WindowsDeviceInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String osVersion});
}

/// @nodoc
class __$$WindowsDeviceInfoImplCopyWithImpl<$Res>
    extends _$DeviceInfoCopyWithImpl<$Res, _$WindowsDeviceInfoImpl>
    implements _$$WindowsDeviceInfoImplCopyWith<$Res> {
  __$$WindowsDeviceInfoImplCopyWithImpl(_$WindowsDeviceInfoImpl _value,
      $Res Function(_$WindowsDeviceInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? osVersion = null,
  }) {
    return _then(_$WindowsDeviceInfoImpl(
      osVersion: null == osVersion
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WindowsDeviceInfoImpl
    with DiagnosticableTreeMixin
    implements WindowsDeviceInfo {
  const _$WindowsDeviceInfoImpl({required this.osVersion});

  @override
  final String osVersion;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeviceInfo.windows(osVersion: $osVersion)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeviceInfo.windows'))
      ..add(DiagnosticsProperty('osVersion', osVersion));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WindowsDeviceInfoImpl &&
            (identical(other.osVersion, osVersion) ||
                other.osVersion == osVersion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, osVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WindowsDeviceInfoImplCopyWith<_$WindowsDeviceInfoImpl> get copyWith =>
      __$$WindowsDeviceInfoImplCopyWithImpl<_$WindowsDeviceInfoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)
        android,
    required TResult Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)
        iOS,
    required TResult Function(
            String osName, String kernelVersion, String? osVersion)
        linux,
    required TResult Function(String osVersion) windows,
    required TResult Function(
            String arch, String kernelVersion, String osVersion, String model)
        macOS,
    required TResult Function(
            String browserName, String? platform, String? vendor)
        web,
  }) {
    return windows(osVersion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)?
        android,
    TResult? Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)?
        iOS,
    TResult? Function(String osName, String kernelVersion, String? osVersion)?
        linux,
    TResult? Function(String osVersion)? windows,
    TResult? Function(
            String arch, String kernelVersion, String osVersion, String model)?
        macOS,
    TResult? Function(String browserName, String? platform, String? vendor)?
        web,
  }) {
    return windows?.call(osVersion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)?
        android,
    TResult Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)?
        iOS,
    TResult Function(String osName, String kernelVersion, String? osVersion)?
        linux,
    TResult Function(String osVersion)? windows,
    TResult Function(
            String arch, String kernelVersion, String osVersion, String model)?
        macOS,
    TResult Function(String browserName, String? platform, String? vendor)? web,
    required TResult orElse(),
  }) {
    if (windows != null) {
      return windows(osVersion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownDeviceInfo value) unknown,
    required TResult Function(AndroidDeviceInfo value) android,
    required TResult Function(IOSDeviceInfo value) iOS,
    required TResult Function(LinuxDeviceInfo value) linux,
    required TResult Function(WindowsDeviceInfo value) windows,
    required TResult Function(MacOSDeviceInfo value) macOS,
    required TResult Function(WebDeviceInfo value) web,
  }) {
    return windows(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownDeviceInfo value)? unknown,
    TResult? Function(AndroidDeviceInfo value)? android,
    TResult? Function(IOSDeviceInfo value)? iOS,
    TResult? Function(LinuxDeviceInfo value)? linux,
    TResult? Function(WindowsDeviceInfo value)? windows,
    TResult? Function(MacOSDeviceInfo value)? macOS,
    TResult? Function(WebDeviceInfo value)? web,
  }) {
    return windows?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownDeviceInfo value)? unknown,
    TResult Function(AndroidDeviceInfo value)? android,
    TResult Function(IOSDeviceInfo value)? iOS,
    TResult Function(LinuxDeviceInfo value)? linux,
    TResult Function(WindowsDeviceInfo value)? windows,
    TResult Function(MacOSDeviceInfo value)? macOS,
    TResult Function(WebDeviceInfo value)? web,
    required TResult orElse(),
  }) {
    if (windows != null) {
      return windows(this);
    }
    return orElse();
  }
}

abstract class WindowsDeviceInfo implements DeviceInfo {
  const factory WindowsDeviceInfo({required final String osVersion}) =
      _$WindowsDeviceInfoImpl;

  String get osVersion;
  @JsonKey(ignore: true)
  _$$WindowsDeviceInfoImplCopyWith<_$WindowsDeviceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MacOSDeviceInfoImplCopyWith<$Res> {
  factory _$$MacOSDeviceInfoImplCopyWith(_$MacOSDeviceInfoImpl value,
          $Res Function(_$MacOSDeviceInfoImpl) then) =
      __$$MacOSDeviceInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String arch, String kernelVersion, String osVersion, String model});
}

/// @nodoc
class __$$MacOSDeviceInfoImplCopyWithImpl<$Res>
    extends _$DeviceInfoCopyWithImpl<$Res, _$MacOSDeviceInfoImpl>
    implements _$$MacOSDeviceInfoImplCopyWith<$Res> {
  __$$MacOSDeviceInfoImplCopyWithImpl(
      _$MacOSDeviceInfoImpl _value, $Res Function(_$MacOSDeviceInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arch = null,
    Object? kernelVersion = null,
    Object? osVersion = null,
    Object? model = null,
  }) {
    return _then(_$MacOSDeviceInfoImpl(
      arch: null == arch
          ? _value.arch
          : arch // ignore: cast_nullable_to_non_nullable
              as String,
      kernelVersion: null == kernelVersion
          ? _value.kernelVersion
          : kernelVersion // ignore: cast_nullable_to_non_nullable
              as String,
      osVersion: null == osVersion
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MacOSDeviceInfoImpl
    with DiagnosticableTreeMixin
    implements MacOSDeviceInfo {
  const _$MacOSDeviceInfoImpl(
      {required this.arch,
      required this.kernelVersion,
      required this.osVersion,
      required this.model});

  @override
  final String arch;
  @override
  final String kernelVersion;
  @override
  final String osVersion;
  @override
  final String model;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeviceInfo.macOS(arch: $arch, kernelVersion: $kernelVersion, osVersion: $osVersion, model: $model)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeviceInfo.macOS'))
      ..add(DiagnosticsProperty('arch', arch))
      ..add(DiagnosticsProperty('kernelVersion', kernelVersion))
      ..add(DiagnosticsProperty('osVersion', osVersion))
      ..add(DiagnosticsProperty('model', model));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MacOSDeviceInfoImpl &&
            (identical(other.arch, arch) || other.arch == arch) &&
            (identical(other.kernelVersion, kernelVersion) ||
                other.kernelVersion == kernelVersion) &&
            (identical(other.osVersion, osVersion) ||
                other.osVersion == osVersion) &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, arch, kernelVersion, osVersion, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MacOSDeviceInfoImplCopyWith<_$MacOSDeviceInfoImpl> get copyWith =>
      __$$MacOSDeviceInfoImplCopyWithImpl<_$MacOSDeviceInfoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)
        android,
    required TResult Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)
        iOS,
    required TResult Function(
            String osName, String kernelVersion, String? osVersion)
        linux,
    required TResult Function(String osVersion) windows,
    required TResult Function(
            String arch, String kernelVersion, String osVersion, String model)
        macOS,
    required TResult Function(
            String browserName, String? platform, String? vendor)
        web,
  }) {
    return macOS(arch, kernelVersion, osVersion, model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)?
        android,
    TResult? Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)?
        iOS,
    TResult? Function(String osName, String kernelVersion, String? osVersion)?
        linux,
    TResult? Function(String osVersion)? windows,
    TResult? Function(
            String arch, String kernelVersion, String osVersion, String model)?
        macOS,
    TResult? Function(String browserName, String? platform, String? vendor)?
        web,
  }) {
    return macOS?.call(arch, kernelVersion, osVersion, model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)?
        android,
    TResult Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)?
        iOS,
    TResult Function(String osName, String kernelVersion, String? osVersion)?
        linux,
    TResult Function(String osVersion)? windows,
    TResult Function(
            String arch, String kernelVersion, String osVersion, String model)?
        macOS,
    TResult Function(String browserName, String? platform, String? vendor)? web,
    required TResult orElse(),
  }) {
    if (macOS != null) {
      return macOS(arch, kernelVersion, osVersion, model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownDeviceInfo value) unknown,
    required TResult Function(AndroidDeviceInfo value) android,
    required TResult Function(IOSDeviceInfo value) iOS,
    required TResult Function(LinuxDeviceInfo value) linux,
    required TResult Function(WindowsDeviceInfo value) windows,
    required TResult Function(MacOSDeviceInfo value) macOS,
    required TResult Function(WebDeviceInfo value) web,
  }) {
    return macOS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownDeviceInfo value)? unknown,
    TResult? Function(AndroidDeviceInfo value)? android,
    TResult? Function(IOSDeviceInfo value)? iOS,
    TResult? Function(LinuxDeviceInfo value)? linux,
    TResult? Function(WindowsDeviceInfo value)? windows,
    TResult? Function(MacOSDeviceInfo value)? macOS,
    TResult? Function(WebDeviceInfo value)? web,
  }) {
    return macOS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownDeviceInfo value)? unknown,
    TResult Function(AndroidDeviceInfo value)? android,
    TResult Function(IOSDeviceInfo value)? iOS,
    TResult Function(LinuxDeviceInfo value)? linux,
    TResult Function(WindowsDeviceInfo value)? windows,
    TResult Function(MacOSDeviceInfo value)? macOS,
    TResult Function(WebDeviceInfo value)? web,
    required TResult orElse(),
  }) {
    if (macOS != null) {
      return macOS(this);
    }
    return orElse();
  }
}

abstract class MacOSDeviceInfo implements DeviceInfo {
  const factory MacOSDeviceInfo(
      {required final String arch,
      required final String kernelVersion,
      required final String osVersion,
      required final String model}) = _$MacOSDeviceInfoImpl;

  String get arch;
  String get kernelVersion;
  String get osVersion;
  String get model;
  @JsonKey(ignore: true)
  _$$MacOSDeviceInfoImplCopyWith<_$MacOSDeviceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WebDeviceInfoImplCopyWith<$Res> {
  factory _$$WebDeviceInfoImplCopyWith(
          _$WebDeviceInfoImpl value, $Res Function(_$WebDeviceInfoImpl) then) =
      __$$WebDeviceInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String browserName, String? platform, String? vendor});
}

/// @nodoc
class __$$WebDeviceInfoImplCopyWithImpl<$Res>
    extends _$DeviceInfoCopyWithImpl<$Res, _$WebDeviceInfoImpl>
    implements _$$WebDeviceInfoImplCopyWith<$Res> {
  __$$WebDeviceInfoImplCopyWithImpl(
      _$WebDeviceInfoImpl _value, $Res Function(_$WebDeviceInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? browserName = null,
    Object? platform = freezed,
    Object? vendor = freezed,
  }) {
    return _then(_$WebDeviceInfoImpl(
      browserName: null == browserName
          ? _value.browserName
          : browserName // ignore: cast_nullable_to_non_nullable
              as String,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      vendor: freezed == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$WebDeviceInfoImpl
    with DiagnosticableTreeMixin
    implements WebDeviceInfo {
  const _$WebDeviceInfoImpl(
      {required this.browserName, this.platform, this.vendor});

  @override
  final String browserName;

  /// A DOMString identifying the platform on which the browser is running
  @override
  final String? platform;

  /// The vendor name of the current browser
  @override
  final String? vendor;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeviceInfo.web(browserName: $browserName, platform: $platform, vendor: $vendor)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeviceInfo.web'))
      ..add(DiagnosticsProperty('browserName', browserName))
      ..add(DiagnosticsProperty('platform', platform))
      ..add(DiagnosticsProperty('vendor', vendor));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebDeviceInfoImpl &&
            (identical(other.browserName, browserName) ||
                other.browserName == browserName) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.vendor, vendor) || other.vendor == vendor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, browserName, platform, vendor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WebDeviceInfoImplCopyWith<_$WebDeviceInfoImpl> get copyWith =>
      __$$WebDeviceInfoImplCopyWithImpl<_$WebDeviceInfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)
        android,
    required TResult Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)
        iOS,
    required TResult Function(
            String osName, String kernelVersion, String? osVersion)
        linux,
    required TResult Function(String osVersion) windows,
    required TResult Function(
            String arch, String kernelVersion, String osVersion, String model)
        macOS,
    required TResult Function(
            String browserName, String? platform, String? vendor)
        web,
  }) {
    return web(browserName, platform, vendor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)?
        android,
    TResult? Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)?
        iOS,
    TResult? Function(String osName, String kernelVersion, String? osVersion)?
        linux,
    TResult? Function(String osVersion)? windows,
    TResult? Function(
            String arch, String kernelVersion, String osVersion, String model)?
        macOS,
    TResult? Function(String browserName, String? platform, String? vendor)?
        web,
  }) {
    return web?.call(browserName, platform, vendor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)?
        android,
    TResult Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)?
        iOS,
    TResult Function(String osName, String kernelVersion, String? osVersion)?
        linux,
    TResult Function(String osVersion)? windows,
    TResult Function(
            String arch, String kernelVersion, String osVersion, String model)?
        macOS,
    TResult Function(String browserName, String? platform, String? vendor)? web,
    required TResult orElse(),
  }) {
    if (web != null) {
      return web(browserName, platform, vendor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownDeviceInfo value) unknown,
    required TResult Function(AndroidDeviceInfo value) android,
    required TResult Function(IOSDeviceInfo value) iOS,
    required TResult Function(LinuxDeviceInfo value) linux,
    required TResult Function(WindowsDeviceInfo value) windows,
    required TResult Function(MacOSDeviceInfo value) macOS,
    required TResult Function(WebDeviceInfo value) web,
  }) {
    return web(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownDeviceInfo value)? unknown,
    TResult? Function(AndroidDeviceInfo value)? android,
    TResult? Function(IOSDeviceInfo value)? iOS,
    TResult? Function(LinuxDeviceInfo value)? linux,
    TResult? Function(WindowsDeviceInfo value)? windows,
    TResult? Function(MacOSDeviceInfo value)? macOS,
    TResult? Function(WebDeviceInfo value)? web,
  }) {
    return web?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownDeviceInfo value)? unknown,
    TResult Function(AndroidDeviceInfo value)? android,
    TResult Function(IOSDeviceInfo value)? iOS,
    TResult Function(LinuxDeviceInfo value)? linux,
    TResult Function(WindowsDeviceInfo value)? windows,
    TResult Function(MacOSDeviceInfo value)? macOS,
    TResult Function(WebDeviceInfo value)? web,
    required TResult orElse(),
  }) {
    if (web != null) {
      return web(this);
    }
    return orElse();
  }
}

abstract class WebDeviceInfo implements DeviceInfo {
  const factory WebDeviceInfo(
      {required final String browserName,
      final String? platform,
      final String? vendor}) = _$WebDeviceInfoImpl;

  String get browserName;

  /// A DOMString identifying the platform on which the browser is running
  String? get platform;

  /// The vendor name of the current browser
  String? get vendor;
  @JsonKey(ignore: true)
  _$$WebDeviceInfoImplCopyWith<_$WebDeviceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
