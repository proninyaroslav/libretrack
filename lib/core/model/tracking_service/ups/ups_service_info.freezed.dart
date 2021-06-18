// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ups_service_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UPSAuthDataTearOff {
  const _$UPSAuthDataTearOff();

  _UPSAuthData call(
      {required String username,
      required String password,
      required String accessLicenseNumber}) {
    return _UPSAuthData(
      username: username,
      password: password,
      accessLicenseNumber: accessLicenseNumber,
    );
  }
}

/// @nodoc
const $UPSAuthData = _$UPSAuthDataTearOff();

/// @nodoc
mixin _$UPSAuthData {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get accessLicenseNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UPSAuthDataCopyWith<UPSAuthData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UPSAuthDataCopyWith<$Res> {
  factory $UPSAuthDataCopyWith(
          UPSAuthData value, $Res Function(UPSAuthData) then) =
      _$UPSAuthDataCopyWithImpl<$Res>;
  $Res call({String username, String password, String accessLicenseNumber});
}

/// @nodoc
class _$UPSAuthDataCopyWithImpl<$Res> implements $UPSAuthDataCopyWith<$Res> {
  _$UPSAuthDataCopyWithImpl(this._value, this._then);

  final UPSAuthData _value;
  // ignore: unused_field
  final $Res Function(UPSAuthData) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? accessLicenseNumber = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      accessLicenseNumber: accessLicenseNumber == freezed
          ? _value.accessLicenseNumber
          : accessLicenseNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UPSAuthDataCopyWith<$Res>
    implements $UPSAuthDataCopyWith<$Res> {
  factory _$UPSAuthDataCopyWith(
          _UPSAuthData value, $Res Function(_UPSAuthData) then) =
      __$UPSAuthDataCopyWithImpl<$Res>;
  @override
  $Res call({String username, String password, String accessLicenseNumber});
}

/// @nodoc
class __$UPSAuthDataCopyWithImpl<$Res> extends _$UPSAuthDataCopyWithImpl<$Res>
    implements _$UPSAuthDataCopyWith<$Res> {
  __$UPSAuthDataCopyWithImpl(
      _UPSAuthData _value, $Res Function(_UPSAuthData) _then)
      : super(_value, (v) => _then(v as _UPSAuthData));

  @override
  _UPSAuthData get _value => super._value as _UPSAuthData;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? accessLicenseNumber = freezed,
  }) {
    return _then(_UPSAuthData(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      accessLicenseNumber: accessLicenseNumber == freezed
          ? _value.accessLicenseNumber
          : accessLicenseNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UPSAuthData extends _UPSAuthData with DiagnosticableTreeMixin {
  const _$_UPSAuthData(
      {required this.username,
      required this.password,
      required this.accessLicenseNumber})
      : super._();

  @override
  final String username;
  @override
  final String password;
  @override
  final String accessLicenseNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UPSAuthData(username: $username, password: $password, accessLicenseNumber: $accessLicenseNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UPSAuthData'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('accessLicenseNumber', accessLicenseNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UPSAuthData &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.accessLicenseNumber, accessLicenseNumber) ||
                const DeepCollectionEquality()
                    .equals(other.accessLicenseNumber, accessLicenseNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(accessLicenseNumber);

  @JsonKey(ignore: true)
  @override
  _$UPSAuthDataCopyWith<_UPSAuthData> get copyWith =>
      __$UPSAuthDataCopyWithImpl<_UPSAuthData>(this, _$identity);
}

abstract class _UPSAuthData extends UPSAuthData {
  const factory _UPSAuthData(
      {required String username,
      required String password,
      required String accessLicenseNumber}) = _$_UPSAuthData;
  const _UPSAuthData._() : super._();

  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  String get accessLicenseNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UPSAuthDataCopyWith<_UPSAuthData> get copyWith =>
      throw _privateConstructorUsedError;
}
