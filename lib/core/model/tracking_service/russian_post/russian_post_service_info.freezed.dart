// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'russian_post_service_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
      _$RussianPostAuthDataCopyWithImpl<$Res, RussianPostAuthData>;
  @useResult
  $Res call({String login, String password});
}

/// @nodoc
class _$RussianPostAuthDataCopyWithImpl<$Res, $Val extends RussianPostAuthData>
    implements $RussianPostAuthDataCopyWith<$Res> {
  _$RussianPostAuthDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RussianPostAuthDataImplCopyWith<$Res>
    implements $RussianPostAuthDataCopyWith<$Res> {
  factory _$$RussianPostAuthDataImplCopyWith(_$RussianPostAuthDataImpl value,
          $Res Function(_$RussianPostAuthDataImpl) then) =
      __$$RussianPostAuthDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String login, String password});
}

/// @nodoc
class __$$RussianPostAuthDataImplCopyWithImpl<$Res>
    extends _$RussianPostAuthDataCopyWithImpl<$Res, _$RussianPostAuthDataImpl>
    implements _$$RussianPostAuthDataImplCopyWith<$Res> {
  __$$RussianPostAuthDataImplCopyWithImpl(_$RussianPostAuthDataImpl _value,
      $Res Function(_$RussianPostAuthDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
  }) {
    return _then(_$RussianPostAuthDataImpl(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RussianPostAuthDataImpl extends _RussianPostAuthData
    with DiagnosticableTreeMixin {
  const _$RussianPostAuthDataImpl({required this.login, required this.password})
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RussianPostAuthDataImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, login, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RussianPostAuthDataImplCopyWith<_$RussianPostAuthDataImpl> get copyWith =>
      __$$RussianPostAuthDataImplCopyWithImpl<_$RussianPostAuthDataImpl>(
          this, _$identity);
}

abstract class _RussianPostAuthData extends RussianPostAuthData {
  const factory _RussianPostAuthData(
      {required final String login,
      required final String password}) = _$RussianPostAuthDataImpl;
  const _RussianPostAuthData._() : super._();

  @override
  String get login;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$RussianPostAuthDataImplCopyWith<_$RussianPostAuthDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
