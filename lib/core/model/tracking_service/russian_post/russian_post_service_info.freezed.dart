// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'russian_post_service_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RussianPostAuthDataTearOff {
  const _$RussianPostAuthDataTearOff();

  _RussianPostAuthData call({required String login, required String password}) {
    return _RussianPostAuthData(
      login: login,
      password: password,
    );
  }
}

/// @nodoc
const $RussianPostAuthData = _$RussianPostAuthDataTearOff();

/// @nodoc
mixin _$RussianPostAuthData {
  String get login => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RussianPostAuthDataCopyWith<RussianPostAuthData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RussianPostAuthDataCopyWith<$Res> {
  factory $RussianPostAuthDataCopyWith(
          RussianPostAuthData value, $Res Function(RussianPostAuthData) then) =
      _$RussianPostAuthDataCopyWithImpl<$Res>;
  $Res call({String login, String password});
}

/// @nodoc
class _$RussianPostAuthDataCopyWithImpl<$Res>
    implements $RussianPostAuthDataCopyWith<$Res> {
  _$RussianPostAuthDataCopyWithImpl(this._value, this._then);

  final RussianPostAuthData _value;
  // ignore: unused_field
  final $Res Function(RussianPostAuthData) _then;

  @override
  $Res call({
    Object? login = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RussianPostAuthDataCopyWith<$Res>
    implements $RussianPostAuthDataCopyWith<$Res> {
  factory _$RussianPostAuthDataCopyWith(_RussianPostAuthData value,
          $Res Function(_RussianPostAuthData) then) =
      __$RussianPostAuthDataCopyWithImpl<$Res>;
  @override
  $Res call({String login, String password});
}

/// @nodoc
class __$RussianPostAuthDataCopyWithImpl<$Res>
    extends _$RussianPostAuthDataCopyWithImpl<$Res>
    implements _$RussianPostAuthDataCopyWith<$Res> {
  __$RussianPostAuthDataCopyWithImpl(
      _RussianPostAuthData _value, $Res Function(_RussianPostAuthData) _then)
      : super(_value, (v) => _then(v as _RussianPostAuthData));

  @override
  _RussianPostAuthData get _value => super._value as _RussianPostAuthData;

  @override
  $Res call({
    Object? login = freezed,
    Object? password = freezed,
  }) {
    return _then(_RussianPostAuthData(
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RussianPostAuthData extends _RussianPostAuthData
    with DiagnosticableTreeMixin {
  const _$_RussianPostAuthData({required this.login, required this.password})
      : super._();

  @override
  final String login;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RussianPostAuthData(login: $login, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RussianPostAuthData'))
      ..add(DiagnosticsProperty('login', login))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RussianPostAuthData &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(login) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$RussianPostAuthDataCopyWith<_RussianPostAuthData> get copyWith =>
      __$RussianPostAuthDataCopyWithImpl<_RussianPostAuthData>(
          this, _$identity);
}

abstract class _RussianPostAuthData extends RussianPostAuthData {
  const factory _RussianPostAuthData(
      {required String login,
      required String password}) = _$_RussianPostAuthData;
  const _RussianPostAuthData._() : super._();

  @override
  String get login => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RussianPostAuthDataCopyWith<_RussianPostAuthData> get copyWith =>
      throw _privateConstructorUsedError;
}
