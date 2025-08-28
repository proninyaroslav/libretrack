// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ups_service_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
      _$UPSAuthDataCopyWithImpl<$Res, UPSAuthData>;
  @useResult
  $Res call({String username, String password, String accessLicenseNumber});
}

/// @nodoc
class _$UPSAuthDataCopyWithImpl<$Res, $Val extends UPSAuthData>
    implements $UPSAuthDataCopyWith<$Res> {
  _$UPSAuthDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? accessLicenseNumber = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      accessLicenseNumber: null == accessLicenseNumber
          ? _value.accessLicenseNumber
          : accessLicenseNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UPSAuthDataImplCopyWith<$Res>
    implements $UPSAuthDataCopyWith<$Res> {
  factory _$$UPSAuthDataImplCopyWith(
          _$UPSAuthDataImpl value, $Res Function(_$UPSAuthDataImpl) then) =
      __$$UPSAuthDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password, String accessLicenseNumber});
}

/// @nodoc
class __$$UPSAuthDataImplCopyWithImpl<$Res>
    extends _$UPSAuthDataCopyWithImpl<$Res, _$UPSAuthDataImpl>
    implements _$$UPSAuthDataImplCopyWith<$Res> {
  __$$UPSAuthDataImplCopyWithImpl(
      _$UPSAuthDataImpl _value, $Res Function(_$UPSAuthDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? accessLicenseNumber = null,
  }) {
    return _then(_$UPSAuthDataImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      accessLicenseNumber: null == accessLicenseNumber
          ? _value.accessLicenseNumber
          : accessLicenseNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UPSAuthDataImpl extends _UPSAuthData with DiagnosticableTreeMixin {
  const _$UPSAuthDataImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UPSAuthDataImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.accessLicenseNumber, accessLicenseNumber) ||
                other.accessLicenseNumber == accessLicenseNumber));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, username, password, accessLicenseNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UPSAuthDataImplCopyWith<_$UPSAuthDataImpl> get copyWith =>
      __$$UPSAuthDataImplCopyWithImpl<_$UPSAuthDataImpl>(this, _$identity);
}

abstract class _UPSAuthData extends UPSAuthData {
  const factory _UPSAuthData(
      {required final String username,
      required final String password,
      required final String accessLicenseNumber}) = _$UPSAuthDataImpl;
  const _UPSAuthData._() : super._();

  @override
  String get username;
  @override
  String get password;
  @override
  String get accessLicenseNumber;
  @override
  @JsonKey(ignore: true)
  _$$UPSAuthDataImplCopyWith<_$UPSAuthDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
