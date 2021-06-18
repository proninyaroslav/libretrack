// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'bug_report_manager.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ErrorInfoTearOff {
  const _$ErrorInfoTearOff();

  _ErorrInfo call(
      {required Object error, StackTrace? stackTrace, String? message}) {
    return _ErorrInfo(
      error: error,
      stackTrace: stackTrace,
      message: message,
    );
  }
}

/// @nodoc
const $ErrorInfo = _$ErrorInfoTearOff();

/// @nodoc
mixin _$ErrorInfo {
  Object get error => throw _privateConstructorUsedError;
  StackTrace? get stackTrace => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ErrorInfoCopyWith<ErrorInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorInfoCopyWith<$Res> {
  factory $ErrorInfoCopyWith(ErrorInfo value, $Res Function(ErrorInfo) then) =
      _$ErrorInfoCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace? stackTrace, String? message});
}

/// @nodoc
class _$ErrorInfoCopyWithImpl<$Res> implements $ErrorInfoCopyWith<$Res> {
  _$ErrorInfoCopyWithImpl(this._value, this._then);

  final ErrorInfo _value;
  // ignore: unused_field
  final $Res Function(ErrorInfo) _then;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ErorrInfoCopyWith<$Res> implements $ErrorInfoCopyWith<$Res> {
  factory _$ErorrInfoCopyWith(
          _ErorrInfo value, $Res Function(_ErorrInfo) then) =
      __$ErorrInfoCopyWithImpl<$Res>;
  @override
  $Res call({Object error, StackTrace? stackTrace, String? message});
}

/// @nodoc
class __$ErorrInfoCopyWithImpl<$Res> extends _$ErrorInfoCopyWithImpl<$Res>
    implements _$ErorrInfoCopyWith<$Res> {
  __$ErorrInfoCopyWithImpl(_ErorrInfo _value, $Res Function(_ErorrInfo) _then)
      : super(_value, (v) => _then(v as _ErorrInfo));

  @override
  _ErorrInfo get _value => super._value as _ErorrInfo;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? message = freezed,
  }) {
    return _then(_ErorrInfo(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ErorrInfo implements _ErorrInfo {
  const _$_ErorrInfo({required this.error, this.stackTrace, this.message});

  @override
  final Object error;
  @override
  final StackTrace? stackTrace;
  @override
  final String? message;

  @override
  String toString() {
    return 'ErrorInfo(error: $error, stackTrace: $stackTrace, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErorrInfo &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality()
                    .equals(other.stackTrace, stackTrace)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stackTrace) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ErorrInfoCopyWith<_ErorrInfo> get copyWith =>
      __$ErorrInfoCopyWithImpl<_ErorrInfo>(this, _$identity);
}

abstract class _ErorrInfo implements ErrorInfo {
  const factory _ErorrInfo(
      {required Object error,
      StackTrace? stackTrace,
      String? message}) = _$_ErorrInfo;

  @override
  Object get error => throw _privateConstructorUsedError;
  @override
  StackTrace? get stackTrace => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ErorrInfoCopyWith<_ErorrInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
