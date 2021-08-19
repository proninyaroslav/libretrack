// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tracking_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrackingError _$TrackingErrorFromJson(Map<String, dynamic> json) {
  return _TrackingError.fromJson(json);
}

/// @nodoc
class _$TrackingErrorTearOff {
  const _$TrackingErrorTearOff();

  _TrackingError call(
      {required TrackingErrorType type,
      required bool isRetryable,
      String? message,
      String? code,
      String? stackTrace}) {
    return _TrackingError(
      type: type,
      isRetryable: isRetryable,
      message: message,
      code: code,
      stackTrace: stackTrace,
    );
  }

  TrackingError fromJson(Map<String, Object> json) {
    return TrackingError.fromJson(json);
  }
}

/// @nodoc
const $TrackingError = _$TrackingErrorTearOff();

/// @nodoc
mixin _$TrackingError {
  TrackingErrorType get type => throw _privateConstructorUsedError;
  bool get isRetryable => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get stackTrace => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackingErrorCopyWith<TrackingError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingErrorCopyWith<$Res> {
  factory $TrackingErrorCopyWith(
          TrackingError value, $Res Function(TrackingError) then) =
      _$TrackingErrorCopyWithImpl<$Res>;
  $Res call(
      {TrackingErrorType type,
      bool isRetryable,
      String? message,
      String? code,
      String? stackTrace});
}

/// @nodoc
class _$TrackingErrorCopyWithImpl<$Res>
    implements $TrackingErrorCopyWith<$Res> {
  _$TrackingErrorCopyWithImpl(this._value, this._then);

  final TrackingError _value;
  // ignore: unused_field
  final $Res Function(TrackingError) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? isRetryable = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TrackingErrorType,
      isRetryable: isRetryable == freezed
          ? _value.isRetryable
          : isRetryable // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TrackingErrorCopyWith<$Res>
    implements $TrackingErrorCopyWith<$Res> {
  factory _$TrackingErrorCopyWith(
          _TrackingError value, $Res Function(_TrackingError) then) =
      __$TrackingErrorCopyWithImpl<$Res>;
  @override
  $Res call(
      {TrackingErrorType type,
      bool isRetryable,
      String? message,
      String? code,
      String? stackTrace});
}

/// @nodoc
class __$TrackingErrorCopyWithImpl<$Res>
    extends _$TrackingErrorCopyWithImpl<$Res>
    implements _$TrackingErrorCopyWith<$Res> {
  __$TrackingErrorCopyWithImpl(
      _TrackingError _value, $Res Function(_TrackingError) _then)
      : super(_value, (v) => _then(v as _TrackingError));

  @override
  _TrackingError get _value => super._value as _TrackingError;

  @override
  $Res call({
    Object? type = freezed,
    Object? isRetryable = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_TrackingError(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TrackingErrorType,
      isRetryable: isRetryable == freezed
          ? _value.isRetryable
          : isRetryable // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TrackingError with DiagnosticableTreeMixin implements _TrackingError {
  const _$_TrackingError(
      {required this.type,
      required this.isRetryable,
      this.message,
      this.code,
      this.stackTrace});

  factory _$_TrackingError.fromJson(Map<String, dynamic> json) =>
      _$$_TrackingErrorFromJson(json);

  @override
  final TrackingErrorType type;
  @override
  final bool isRetryable;
  @override
  final String? message;
  @override
  final String? code;
  @override
  final String? stackTrace;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackingError(type: $type, isRetryable: $isRetryable, message: $message, code: $code, stackTrace: $stackTrace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrackingError'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('isRetryable', isRetryable))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('stackTrace', stackTrace));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TrackingError &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.isRetryable, isRetryable) ||
                const DeepCollectionEquality()
                    .equals(other.isRetryable, isRetryable)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality()
                    .equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(isRetryable) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(stackTrace);

  @JsonKey(ignore: true)
  @override
  _$TrackingErrorCopyWith<_TrackingError> get copyWith =>
      __$TrackingErrorCopyWithImpl<_TrackingError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrackingErrorToJson(this);
  }
}

abstract class _TrackingError implements TrackingError {
  const factory _TrackingError(
      {required TrackingErrorType type,
      required bool isRetryable,
      String? message,
      String? code,
      String? stackTrace}) = _$_TrackingError;

  factory _TrackingError.fromJson(Map<String, dynamic> json) =
      _$_TrackingError.fromJson;

  @override
  TrackingErrorType get type => throw _privateConstructorUsedError;
  @override
  bool get isRetryable => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  String? get stackTrace => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TrackingErrorCopyWith<_TrackingError> get copyWith =>
      throw _privateConstructorUsedError;
}
