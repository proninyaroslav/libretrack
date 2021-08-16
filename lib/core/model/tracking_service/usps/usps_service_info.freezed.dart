// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'usps_service_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$USPSAuthDataTearOff {
  const _$USPSAuthDataTearOff();

  _USPSAuthData call({required String username, required String companyName}) {
    return _USPSAuthData(
      username: username,
      companyName: companyName,
    );
  }
}

/// @nodoc
const $USPSAuthData = _$USPSAuthDataTearOff();

/// @nodoc
mixin _$USPSAuthData {
  String get username => throw _privateConstructorUsedError;
  String get companyName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $USPSAuthDataCopyWith<USPSAuthData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $USPSAuthDataCopyWith<$Res> {
  factory $USPSAuthDataCopyWith(
          USPSAuthData value, $Res Function(USPSAuthData) then) =
      _$USPSAuthDataCopyWithImpl<$Res>;
  $Res call({String username, String companyName});
}

/// @nodoc
class _$USPSAuthDataCopyWithImpl<$Res> implements $USPSAuthDataCopyWith<$Res> {
  _$USPSAuthDataCopyWithImpl(this._value, this._then);

  final USPSAuthData _value;
  // ignore: unused_field
  final $Res Function(USPSAuthData) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? companyName = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$USPSAuthDataCopyWith<$Res>
    implements $USPSAuthDataCopyWith<$Res> {
  factory _$USPSAuthDataCopyWith(
          _USPSAuthData value, $Res Function(_USPSAuthData) then) =
      __$USPSAuthDataCopyWithImpl<$Res>;
  @override
  $Res call({String username, String companyName});
}

/// @nodoc
class __$USPSAuthDataCopyWithImpl<$Res> extends _$USPSAuthDataCopyWithImpl<$Res>
    implements _$USPSAuthDataCopyWith<$Res> {
  __$USPSAuthDataCopyWithImpl(
      _USPSAuthData _value, $Res Function(_USPSAuthData) _then)
      : super(_value, (v) => _then(v as _USPSAuthData));

  @override
  _USPSAuthData get _value => super._value as _USPSAuthData;

  @override
  $Res call({
    Object? username = freezed,
    Object? companyName = freezed,
  }) {
    return _then(_USPSAuthData(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_USPSAuthData extends _USPSAuthData with DiagnosticableTreeMixin {
  const _$_USPSAuthData({required this.username, required this.companyName})
      : super._();

  @override
  final String username;
  @override
  final String companyName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'USPSAuthData(username: $username, companyName: $companyName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'USPSAuthData'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('companyName', companyName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _USPSAuthData &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.companyName, companyName) ||
                const DeepCollectionEquality()
                    .equals(other.companyName, companyName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(companyName);

  @JsonKey(ignore: true)
  @override
  _$USPSAuthDataCopyWith<_USPSAuthData> get copyWith =>
      __$USPSAuthDataCopyWithImpl<_USPSAuthData>(this, _$identity);
}

abstract class _USPSAuthData extends USPSAuthData {
  const factory _USPSAuthData(
      {required String username,
      required String companyName}) = _$_USPSAuthData;
  const _USPSAuthData._() : super._();

  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get companyName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$USPSAuthDataCopyWith<_USPSAuthData> get copyWith =>
      throw _privateConstructorUsedError;
}
