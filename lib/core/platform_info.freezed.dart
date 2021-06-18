// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'platform_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppInfoTearOff {
  const _$AppInfoTearOff();

  _AppInfo call(
      {required String packageName,
      required String appName,
      required String version,
      required String buildNumber}) {
    return _AppInfo(
      packageName: packageName,
      appName: appName,
      version: version,
      buildNumber: buildNumber,
    );
  }
}

/// @nodoc
const $AppInfo = _$AppInfoTearOff();

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
      _$AppInfoCopyWithImpl<$Res>;
  $Res call(
      {String packageName, String appName, String version, String buildNumber});
}

/// @nodoc
class _$AppInfoCopyWithImpl<$Res> implements $AppInfoCopyWith<$Res> {
  _$AppInfoCopyWithImpl(this._value, this._then);

  final AppInfo _value;
  // ignore: unused_field
  final $Res Function(AppInfo) _then;

  @override
  $Res call({
    Object? packageName = freezed,
    Object? appName = freezed,
    Object? version = freezed,
    Object? buildNumber = freezed,
  }) {
    return _then(_value.copyWith(
      packageName: packageName == freezed
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      appName: appName == freezed
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildNumber: buildNumber == freezed
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AppInfoCopyWith<$Res> implements $AppInfoCopyWith<$Res> {
  factory _$AppInfoCopyWith(_AppInfo value, $Res Function(_AppInfo) then) =
      __$AppInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String packageName, String appName, String version, String buildNumber});
}

/// @nodoc
class __$AppInfoCopyWithImpl<$Res> extends _$AppInfoCopyWithImpl<$Res>
    implements _$AppInfoCopyWith<$Res> {
  __$AppInfoCopyWithImpl(_AppInfo _value, $Res Function(_AppInfo) _then)
      : super(_value, (v) => _then(v as _AppInfo));

  @override
  _AppInfo get _value => super._value as _AppInfo;

  @override
  $Res call({
    Object? packageName = freezed,
    Object? appName = freezed,
    Object? version = freezed,
    Object? buildNumber = freezed,
  }) {
    return _then(_AppInfo(
      packageName: packageName == freezed
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      appName: appName == freezed
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildNumber: buildNumber == freezed
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AppInfo with DiagnosticableTreeMixin implements _AppInfo {
  const _$_AppInfo(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppInfo &&
            (identical(other.packageName, packageName) ||
                const DeepCollectionEquality()
                    .equals(other.packageName, packageName)) &&
            (identical(other.appName, appName) ||
                const DeepCollectionEquality()
                    .equals(other.appName, appName)) &&
            (identical(other.version, version) ||
                const DeepCollectionEquality()
                    .equals(other.version, version)) &&
            (identical(other.buildNumber, buildNumber) ||
                const DeepCollectionEquality()
                    .equals(other.buildNumber, buildNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(packageName) ^
      const DeepCollectionEquality().hash(appName) ^
      const DeepCollectionEquality().hash(version) ^
      const DeepCollectionEquality().hash(buildNumber);

  @JsonKey(ignore: true)
  @override
  _$AppInfoCopyWith<_AppInfo> get copyWith =>
      __$AppInfoCopyWithImpl<_AppInfo>(this, _$identity);
}

abstract class _AppInfo implements AppInfo {
  const factory _AppInfo(
      {required String packageName,
      required String appName,
      required String version,
      required String buildNumber}) = _$_AppInfo;

  @override
  String get packageName => throw _privateConstructorUsedError;
  @override
  String get appName => throw _privateConstructorUsedError;
  @override
  String get version => throw _privateConstructorUsedError;
  @override
  String get buildNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppInfoCopyWith<_AppInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DeviceInfoTearOff {
  const _$DeviceInfoTearOff();

  UnknownDeviceInfo unknown() {
    return const UnknownDeviceInfo();
  }

  AndroidDeviceInfo android(
      {String? systemVersion,
      List<String?> supportedAbis = const [],
      String? brand,
      String? device,
      String? model,
      String? hardware,
      String? product}) {
    return AndroidDeviceInfo(
      systemVersion: systemVersion,
      supportedAbis: supportedAbis,
      brand: brand,
      device: device,
      model: model,
      hardware: hardware,
      product: product,
    );
  }

  IOSDeviceInfo iOS(
      {String? deviceName,
      String? deviceModel,
      String? systemName,
      String? systemVersion}) {
    return IOSDeviceInfo(
      deviceName: deviceName,
      deviceModel: deviceModel,
      systemName: systemName,
      systemVersion: systemVersion,
    );
  }

  LinuxDeviceInfo linux(
      {required String osName,
      required String kernelVersion,
      String? osVersion}) {
    return LinuxDeviceInfo(
      osName: osName,
      kernelVersion: kernelVersion,
      osVersion: osVersion,
    );
  }

  WindowsDeviceInfo windows({required String osVersion}) {
    return WindowsDeviceInfo(
      osVersion: osVersion,
    );
  }

  MacOSDeviceInfo macOS(
      {required String arch,
      required String kernelVersion,
      required String osVersion,
      required String model}) {
    return MacOSDeviceInfo(
      arch: arch,
      kernelVersion: kernelVersion,
      osVersion: osVersion,
      model: model,
    );
  }

  WebDeviceInfo web(
      {required String browserName,
      required String platform,
      required String vendor}) {
    return WebDeviceInfo(
      browserName: browserName,
      platform: platform,
      vendor: vendor,
    );
  }
}

/// @nodoc
const $DeviceInfo = _$DeviceInfoTearOff();

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
            String browserName, String platform, String vendor)
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
    TResult Function(String browserName, String platform, String vendor)? web,
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
      _$DeviceInfoCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeviceInfoCopyWithImpl<$Res> implements $DeviceInfoCopyWith<$Res> {
  _$DeviceInfoCopyWithImpl(this._value, this._then);

  final DeviceInfo _value;
  // ignore: unused_field
  final $Res Function(DeviceInfo) _then;
}

/// @nodoc
abstract class $UnknownDeviceInfoCopyWith<$Res> {
  factory $UnknownDeviceInfoCopyWith(
          UnknownDeviceInfo value, $Res Function(UnknownDeviceInfo) then) =
      _$UnknownDeviceInfoCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnknownDeviceInfoCopyWithImpl<$Res>
    extends _$DeviceInfoCopyWithImpl<$Res>
    implements $UnknownDeviceInfoCopyWith<$Res> {
  _$UnknownDeviceInfoCopyWithImpl(
      UnknownDeviceInfo _value, $Res Function(UnknownDeviceInfo) _then)
      : super(_value, (v) => _then(v as UnknownDeviceInfo));

  @override
  UnknownDeviceInfo get _value => super._value as UnknownDeviceInfo;
}

/// @nodoc

class _$UnknownDeviceInfo
    with DiagnosticableTreeMixin
    implements UnknownDeviceInfo {
  const _$UnknownDeviceInfo();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeviceInfo.unknown()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'DeviceInfo.unknown'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnknownDeviceInfo);
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
            String browserName, String platform, String vendor)
        web,
  }) {
    return unknown();
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
    TResult Function(String browserName, String platform, String vendor)? web,
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
  const factory UnknownDeviceInfo() = _$UnknownDeviceInfo;
}

/// @nodoc
abstract class $AndroidDeviceInfoCopyWith<$Res> {
  factory $AndroidDeviceInfoCopyWith(
          AndroidDeviceInfo value, $Res Function(AndroidDeviceInfo) then) =
      _$AndroidDeviceInfoCopyWithImpl<$Res>;
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
class _$AndroidDeviceInfoCopyWithImpl<$Res>
    extends _$DeviceInfoCopyWithImpl<$Res>
    implements $AndroidDeviceInfoCopyWith<$Res> {
  _$AndroidDeviceInfoCopyWithImpl(
      AndroidDeviceInfo _value, $Res Function(AndroidDeviceInfo) _then)
      : super(_value, (v) => _then(v as AndroidDeviceInfo));

  @override
  AndroidDeviceInfo get _value => super._value as AndroidDeviceInfo;

  @override
  $Res call({
    Object? systemVersion = freezed,
    Object? supportedAbis = freezed,
    Object? brand = freezed,
    Object? device = freezed,
    Object? model = freezed,
    Object? hardware = freezed,
    Object? product = freezed,
  }) {
    return _then(AndroidDeviceInfo(
      systemVersion: systemVersion == freezed
          ? _value.systemVersion
          : systemVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      supportedAbis: supportedAbis == freezed
          ? _value.supportedAbis
          : supportedAbis // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String?,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      hardware: hardware == freezed
          ? _value.hardware
          : hardware // ignore: cast_nullable_to_non_nullable
              as String?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AndroidDeviceInfo
    with DiagnosticableTreeMixin
    implements AndroidDeviceInfo {
  const _$AndroidDeviceInfo(
      {this.systemVersion,
      this.supportedAbis = const [],
      this.brand,
      this.device,
      this.model,
      this.hardware,
      this.product});

  @override
  final String? systemVersion;
  @JsonKey(defaultValue: const [])
  @override

  /// An ordered list of ABIs supported by this device.
  final List<String?> supportedAbis;
  @override

  /// The consumer-visible brand with which
  /// the product/hardware will be associated, if any.
  final String? brand;
  @override

  /// The name of the industrial design.
  final String? device;
  @override

  /// The end-user-visible name for the end product.
  final String? model;
  @override

  /// The name of the hardware (from the kernel command line or /proc).
  final String? hardware;
  @override

  /// The name of the overall product.
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AndroidDeviceInfo &&
            (identical(other.systemVersion, systemVersion) ||
                const DeepCollectionEquality()
                    .equals(other.systemVersion, systemVersion)) &&
            (identical(other.supportedAbis, supportedAbis) ||
                const DeepCollectionEquality()
                    .equals(other.supportedAbis, supportedAbis)) &&
            (identical(other.brand, brand) ||
                const DeepCollectionEquality().equals(other.brand, brand)) &&
            (identical(other.device, device) ||
                const DeepCollectionEquality().equals(other.device, device)) &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)) &&
            (identical(other.hardware, hardware) ||
                const DeepCollectionEquality()
                    .equals(other.hardware, hardware)) &&
            (identical(other.product, product) ||
                const DeepCollectionEquality().equals(other.product, product)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(systemVersion) ^
      const DeepCollectionEquality().hash(supportedAbis) ^
      const DeepCollectionEquality().hash(brand) ^
      const DeepCollectionEquality().hash(device) ^
      const DeepCollectionEquality().hash(model) ^
      const DeepCollectionEquality().hash(hardware) ^
      const DeepCollectionEquality().hash(product);

  @JsonKey(ignore: true)
  @override
  $AndroidDeviceInfoCopyWith<AndroidDeviceInfo> get copyWith =>
      _$AndroidDeviceInfoCopyWithImpl<AndroidDeviceInfo>(this, _$identity);

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
            String browserName, String platform, String vendor)
        web,
  }) {
    return android(
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
    TResult Function(String browserName, String platform, String vendor)? web,
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
      {String? systemVersion,
      List<String?> supportedAbis,
      String? brand,
      String? device,
      String? model,
      String? hardware,
      String? product}) = _$AndroidDeviceInfo;

  String? get systemVersion => throw _privateConstructorUsedError;

  /// An ordered list of ABIs supported by this device.
  List<String?> get supportedAbis => throw _privateConstructorUsedError;

  /// The consumer-visible brand with which
  /// the product/hardware will be associated, if any.
  String? get brand => throw _privateConstructorUsedError;

  /// The name of the industrial design.
  String? get device => throw _privateConstructorUsedError;

  /// The end-user-visible name for the end product.
  String? get model => throw _privateConstructorUsedError;

  /// The name of the hardware (from the kernel command line or /proc).
  String? get hardware => throw _privateConstructorUsedError;

  /// The name of the overall product.
  String? get product => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AndroidDeviceInfoCopyWith<AndroidDeviceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IOSDeviceInfoCopyWith<$Res> {
  factory $IOSDeviceInfoCopyWith(
          IOSDeviceInfo value, $Res Function(IOSDeviceInfo) then) =
      _$IOSDeviceInfoCopyWithImpl<$Res>;
  $Res call(
      {String? deviceName,
      String? deviceModel,
      String? systemName,
      String? systemVersion});
}

/// @nodoc
class _$IOSDeviceInfoCopyWithImpl<$Res> extends _$DeviceInfoCopyWithImpl<$Res>
    implements $IOSDeviceInfoCopyWith<$Res> {
  _$IOSDeviceInfoCopyWithImpl(
      IOSDeviceInfo _value, $Res Function(IOSDeviceInfo) _then)
      : super(_value, (v) => _then(v as IOSDeviceInfo));

  @override
  IOSDeviceInfo get _value => super._value as IOSDeviceInfo;

  @override
  $Res call({
    Object? deviceName = freezed,
    Object? deviceModel = freezed,
    Object? systemName = freezed,
    Object? systemVersion = freezed,
  }) {
    return _then(IOSDeviceInfo(
      deviceName: deviceName == freezed
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceModel: deviceModel == freezed
          ? _value.deviceModel
          : deviceModel // ignore: cast_nullable_to_non_nullable
              as String?,
      systemName: systemName == freezed
          ? _value.systemName
          : systemName // ignore: cast_nullable_to_non_nullable
              as String?,
      systemVersion: systemVersion == freezed
          ? _value.systemVersion
          : systemVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$IOSDeviceInfo with DiagnosticableTreeMixin implements IOSDeviceInfo {
  const _$IOSDeviceInfo(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IOSDeviceInfo &&
            (identical(other.deviceName, deviceName) ||
                const DeepCollectionEquality()
                    .equals(other.deviceName, deviceName)) &&
            (identical(other.deviceModel, deviceModel) ||
                const DeepCollectionEquality()
                    .equals(other.deviceModel, deviceModel)) &&
            (identical(other.systemName, systemName) ||
                const DeepCollectionEquality()
                    .equals(other.systemName, systemName)) &&
            (identical(other.systemVersion, systemVersion) ||
                const DeepCollectionEquality()
                    .equals(other.systemVersion, systemVersion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(deviceName) ^
      const DeepCollectionEquality().hash(deviceModel) ^
      const DeepCollectionEquality().hash(systemName) ^
      const DeepCollectionEquality().hash(systemVersion);

  @JsonKey(ignore: true)
  @override
  $IOSDeviceInfoCopyWith<IOSDeviceInfo> get copyWith =>
      _$IOSDeviceInfoCopyWithImpl<IOSDeviceInfo>(this, _$identity);

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
            String browserName, String platform, String vendor)
        web,
  }) {
    return iOS(deviceName, deviceModel, systemName, systemVersion);
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
    TResult Function(String browserName, String platform, String vendor)? web,
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
      {String? deviceName,
      String? deviceModel,
      String? systemName,
      String? systemVersion}) = _$IOSDeviceInfo;

  String? get deviceName => throw _privateConstructorUsedError;
  String? get deviceModel => throw _privateConstructorUsedError;
  String? get systemName => throw _privateConstructorUsedError;
  String? get systemVersion => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IOSDeviceInfoCopyWith<IOSDeviceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinuxDeviceInfoCopyWith<$Res> {
  factory $LinuxDeviceInfoCopyWith(
          LinuxDeviceInfo value, $Res Function(LinuxDeviceInfo) then) =
      _$LinuxDeviceInfoCopyWithImpl<$Res>;
  $Res call({String osName, String kernelVersion, String? osVersion});
}

/// @nodoc
class _$LinuxDeviceInfoCopyWithImpl<$Res> extends _$DeviceInfoCopyWithImpl<$Res>
    implements $LinuxDeviceInfoCopyWith<$Res> {
  _$LinuxDeviceInfoCopyWithImpl(
      LinuxDeviceInfo _value, $Res Function(LinuxDeviceInfo) _then)
      : super(_value, (v) => _then(v as LinuxDeviceInfo));

  @override
  LinuxDeviceInfo get _value => super._value as LinuxDeviceInfo;

  @override
  $Res call({
    Object? osName = freezed,
    Object? kernelVersion = freezed,
    Object? osVersion = freezed,
  }) {
    return _then(LinuxDeviceInfo(
      osName: osName == freezed
          ? _value.osName
          : osName // ignore: cast_nullable_to_non_nullable
              as String,
      kernelVersion: kernelVersion == freezed
          ? _value.kernelVersion
          : kernelVersion // ignore: cast_nullable_to_non_nullable
              as String,
      osVersion: osVersion == freezed
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LinuxDeviceInfo
    with DiagnosticableTreeMixin
    implements LinuxDeviceInfo {
  const _$LinuxDeviceInfo(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LinuxDeviceInfo &&
            (identical(other.osName, osName) ||
                const DeepCollectionEquality().equals(other.osName, osName)) &&
            (identical(other.kernelVersion, kernelVersion) ||
                const DeepCollectionEquality()
                    .equals(other.kernelVersion, kernelVersion)) &&
            (identical(other.osVersion, osVersion) ||
                const DeepCollectionEquality()
                    .equals(other.osVersion, osVersion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(osName) ^
      const DeepCollectionEquality().hash(kernelVersion) ^
      const DeepCollectionEquality().hash(osVersion);

  @JsonKey(ignore: true)
  @override
  $LinuxDeviceInfoCopyWith<LinuxDeviceInfo> get copyWith =>
      _$LinuxDeviceInfoCopyWithImpl<LinuxDeviceInfo>(this, _$identity);

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
            String browserName, String platform, String vendor)
        web,
  }) {
    return linux(osName, kernelVersion, osVersion);
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
    TResult Function(String browserName, String platform, String vendor)? web,
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
      {required String osName,
      required String kernelVersion,
      String? osVersion}) = _$LinuxDeviceInfo;

  String get osName => throw _privateConstructorUsedError;
  String get kernelVersion => throw _privateConstructorUsedError;
  String? get osVersion => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinuxDeviceInfoCopyWith<LinuxDeviceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WindowsDeviceInfoCopyWith<$Res> {
  factory $WindowsDeviceInfoCopyWith(
          WindowsDeviceInfo value, $Res Function(WindowsDeviceInfo) then) =
      _$WindowsDeviceInfoCopyWithImpl<$Res>;
  $Res call({String osVersion});
}

/// @nodoc
class _$WindowsDeviceInfoCopyWithImpl<$Res>
    extends _$DeviceInfoCopyWithImpl<$Res>
    implements $WindowsDeviceInfoCopyWith<$Res> {
  _$WindowsDeviceInfoCopyWithImpl(
      WindowsDeviceInfo _value, $Res Function(WindowsDeviceInfo) _then)
      : super(_value, (v) => _then(v as WindowsDeviceInfo));

  @override
  WindowsDeviceInfo get _value => super._value as WindowsDeviceInfo;

  @override
  $Res call({
    Object? osVersion = freezed,
  }) {
    return _then(WindowsDeviceInfo(
      osVersion: osVersion == freezed
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WindowsDeviceInfo
    with DiagnosticableTreeMixin
    implements WindowsDeviceInfo {
  const _$WindowsDeviceInfo({required this.osVersion});

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WindowsDeviceInfo &&
            (identical(other.osVersion, osVersion) ||
                const DeepCollectionEquality()
                    .equals(other.osVersion, osVersion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(osVersion);

  @JsonKey(ignore: true)
  @override
  $WindowsDeviceInfoCopyWith<WindowsDeviceInfo> get copyWith =>
      _$WindowsDeviceInfoCopyWithImpl<WindowsDeviceInfo>(this, _$identity);

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
            String browserName, String platform, String vendor)
        web,
  }) {
    return windows(osVersion);
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
    TResult Function(String browserName, String platform, String vendor)? web,
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
  const factory WindowsDeviceInfo({required String osVersion}) =
      _$WindowsDeviceInfo;

  String get osVersion => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WindowsDeviceInfoCopyWith<WindowsDeviceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MacOSDeviceInfoCopyWith<$Res> {
  factory $MacOSDeviceInfoCopyWith(
          MacOSDeviceInfo value, $Res Function(MacOSDeviceInfo) then) =
      _$MacOSDeviceInfoCopyWithImpl<$Res>;
  $Res call(
      {String arch, String kernelVersion, String osVersion, String model});
}

/// @nodoc
class _$MacOSDeviceInfoCopyWithImpl<$Res> extends _$DeviceInfoCopyWithImpl<$Res>
    implements $MacOSDeviceInfoCopyWith<$Res> {
  _$MacOSDeviceInfoCopyWithImpl(
      MacOSDeviceInfo _value, $Res Function(MacOSDeviceInfo) _then)
      : super(_value, (v) => _then(v as MacOSDeviceInfo));

  @override
  MacOSDeviceInfo get _value => super._value as MacOSDeviceInfo;

  @override
  $Res call({
    Object? arch = freezed,
    Object? kernelVersion = freezed,
    Object? osVersion = freezed,
    Object? model = freezed,
  }) {
    return _then(MacOSDeviceInfo(
      arch: arch == freezed
          ? _value.arch
          : arch // ignore: cast_nullable_to_non_nullable
              as String,
      kernelVersion: kernelVersion == freezed
          ? _value.kernelVersion
          : kernelVersion // ignore: cast_nullable_to_non_nullable
              as String,
      osVersion: osVersion == freezed
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MacOSDeviceInfo
    with DiagnosticableTreeMixin
    implements MacOSDeviceInfo {
  const _$MacOSDeviceInfo(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MacOSDeviceInfo &&
            (identical(other.arch, arch) ||
                const DeepCollectionEquality().equals(other.arch, arch)) &&
            (identical(other.kernelVersion, kernelVersion) ||
                const DeepCollectionEquality()
                    .equals(other.kernelVersion, kernelVersion)) &&
            (identical(other.osVersion, osVersion) ||
                const DeepCollectionEquality()
                    .equals(other.osVersion, osVersion)) &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(arch) ^
      const DeepCollectionEquality().hash(kernelVersion) ^
      const DeepCollectionEquality().hash(osVersion) ^
      const DeepCollectionEquality().hash(model);

  @JsonKey(ignore: true)
  @override
  $MacOSDeviceInfoCopyWith<MacOSDeviceInfo> get copyWith =>
      _$MacOSDeviceInfoCopyWithImpl<MacOSDeviceInfo>(this, _$identity);

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
            String browserName, String platform, String vendor)
        web,
  }) {
    return macOS(arch, kernelVersion, osVersion, model);
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
    TResult Function(String browserName, String platform, String vendor)? web,
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
      {required String arch,
      required String kernelVersion,
      required String osVersion,
      required String model}) = _$MacOSDeviceInfo;

  String get arch => throw _privateConstructorUsedError;
  String get kernelVersion => throw _privateConstructorUsedError;
  String get osVersion => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MacOSDeviceInfoCopyWith<MacOSDeviceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebDeviceInfoCopyWith<$Res> {
  factory $WebDeviceInfoCopyWith(
          WebDeviceInfo value, $Res Function(WebDeviceInfo) then) =
      _$WebDeviceInfoCopyWithImpl<$Res>;
  $Res call({String browserName, String platform, String vendor});
}

/// @nodoc
class _$WebDeviceInfoCopyWithImpl<$Res> extends _$DeviceInfoCopyWithImpl<$Res>
    implements $WebDeviceInfoCopyWith<$Res> {
  _$WebDeviceInfoCopyWithImpl(
      WebDeviceInfo _value, $Res Function(WebDeviceInfo) _then)
      : super(_value, (v) => _then(v as WebDeviceInfo));

  @override
  WebDeviceInfo get _value => super._value as WebDeviceInfo;

  @override
  $Res call({
    Object? browserName = freezed,
    Object? platform = freezed,
    Object? vendor = freezed,
  }) {
    return _then(WebDeviceInfo(
      browserName: browserName == freezed
          ? _value.browserName
          : browserName // ignore: cast_nullable_to_non_nullable
              as String,
      platform: platform == freezed
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      vendor: vendor == freezed
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WebDeviceInfo with DiagnosticableTreeMixin implements WebDeviceInfo {
  const _$WebDeviceInfo(
      {required this.browserName,
      required this.platform,
      required this.vendor});

  @override
  final String browserName;
  @override

  /// A DOMString identifying the platform on which the browser is running
  final String platform;
  @override

  /// The vendor name of the current browser
  final String vendor;

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WebDeviceInfo &&
            (identical(other.browserName, browserName) ||
                const DeepCollectionEquality()
                    .equals(other.browserName, browserName)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.vendor, vendor) ||
                const DeepCollectionEquality().equals(other.vendor, vendor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(browserName) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(vendor);

  @JsonKey(ignore: true)
  @override
  $WebDeviceInfoCopyWith<WebDeviceInfo> get copyWith =>
      _$WebDeviceInfoCopyWithImpl<WebDeviceInfo>(this, _$identity);

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
            String browserName, String platform, String vendor)
        web,
  }) {
    return web(browserName, platform, vendor);
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
    TResult Function(String browserName, String platform, String vendor)? web,
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
      {required String browserName,
      required String platform,
      required String vendor}) = _$WebDeviceInfo;

  String get browserName => throw _privateConstructorUsedError;

  /// A DOMString identifying the platform on which the browser is running
  String get platform => throw _privateConstructorUsedError;

  /// The vendor name of the current browser
  String get vendor => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebDeviceInfoCopyWith<WebDeviceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
