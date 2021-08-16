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
class _$UspsAuthDataTearOff {
  const _$UspsAuthDataTearOff();

  _UspsAuthData call({required String username, required String companyName}) {
    return _UspsAuthData(
      username: username,
      companyName: companyName,
    );
  }
}

/// @nodoc
const $UspsAuthData = _$UspsAuthDataTearOff();

/// @nodoc
mixin _$UspsAuthData {
  String get username => throw _privateConstructorUsedError;
  String get companyName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UspsAuthDataCopyWith<UspsAuthData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UspsAuthDataCopyWith<$Res> {
  factory $UspsAuthDataCopyWith(
          UspsAuthData value, $Res Function(UspsAuthData) then) =
      _$UspsAuthDataCopyWithImpl<$Res>;
  $Res call({String username, String companyName});
}

/// @nodoc
class _$UspsAuthDataCopyWithImpl<$Res> implements $UspsAuthDataCopyWith<$Res> {
  _$UspsAuthDataCopyWithImpl(this._value, this._then);

  final UspsAuthData _value;
  // ignore: unused_field
  final $Res Function(UspsAuthData) _then;

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
abstract class _$UspsAuthDataCopyWith<$Res>
    implements $UspsAuthDataCopyWith<$Res> {
  factory _$UspsAuthDataCopyWith(
          _UspsAuthData value, $Res Function(_UspsAuthData) then) =
      __$UspsAuthDataCopyWithImpl<$Res>;
  @override
  $Res call({String username, String companyName});
}

/// @nodoc
class __$UspsAuthDataCopyWithImpl<$Res> extends _$UspsAuthDataCopyWithImpl<$Res>
    implements _$UspsAuthDataCopyWith<$Res> {
  __$UspsAuthDataCopyWithImpl(
      _UspsAuthData _value, $Res Function(_UspsAuthData) _then)
      : super(_value, (v) => _then(v as _UspsAuthData));

  @override
  _UspsAuthData get _value => super._value as _UspsAuthData;

  @override
  $Res call({
    Object? username = freezed,
    Object? companyName = freezed,
  }) {
    return _then(_UspsAuthData(
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

class _$_UspsAuthData extends _UspsAuthData with DiagnosticableTreeMixin {
  const _$_UspsAuthData({required this.username, required this.companyName})
      : super._();

  @override
  final String username;
  @override
  final String companyName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UspsAuthData(username: $username, companyName: $companyName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UspsAuthData'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('companyName', companyName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UspsAuthData &&
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
  _$UspsAuthDataCopyWith<_UspsAuthData> get copyWith =>
      __$UspsAuthDataCopyWithImpl<_UspsAuthData>(this, _$identity);
}

abstract class _UspsAuthData extends UspsAuthData {
  const factory _UspsAuthData(
      {required String username,
      required String companyName}) = _$_UspsAuthData;
  const _UspsAuthData._() : super._();

  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get companyName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UspsAuthDataCopyWith<_UspsAuthData> get copyWith =>
      throw _privateConstructorUsedError;
}
