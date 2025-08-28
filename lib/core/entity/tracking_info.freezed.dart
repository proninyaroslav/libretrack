// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracking_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrackingError _$TrackingErrorFromJson(Map<String, dynamic> json) {
  return _TrackingError.fromJson(json);
}

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
      _$TrackingErrorCopyWithImpl<$Res, TrackingError>;
  @useResult
  $Res call(
      {TrackingErrorType type,
      bool isRetryable,
      String? message,
      String? code,
      String? stackTrace});
}

/// @nodoc
class _$TrackingErrorCopyWithImpl<$Res, $Val extends TrackingError>
    implements $TrackingErrorCopyWith<$Res> {
  _$TrackingErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? isRetryable = null,
    Object? message = freezed,
    Object? code = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TrackingErrorType,
      isRetryable: null == isRetryable
          ? _value.isRetryable
          : isRetryable // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrackingErrorImplCopyWith<$Res>
    implements $TrackingErrorCopyWith<$Res> {
  factory _$$TrackingErrorImplCopyWith(
          _$TrackingErrorImpl value, $Res Function(_$TrackingErrorImpl) then) =
      __$$TrackingErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TrackingErrorType type,
      bool isRetryable,
      String? message,
      String? code,
      String? stackTrace});
}

/// @nodoc
class __$$TrackingErrorImplCopyWithImpl<$Res>
    extends _$TrackingErrorCopyWithImpl<$Res, _$TrackingErrorImpl>
    implements _$$TrackingErrorImplCopyWith<$Res> {
  __$$TrackingErrorImplCopyWithImpl(
      _$TrackingErrorImpl _value, $Res Function(_$TrackingErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? isRetryable = null,
    Object? message = freezed,
    Object? code = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$TrackingErrorImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TrackingErrorType,
      isRetryable: null == isRetryable
          ? _value.isRetryable
          : isRetryable // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrackingErrorImpl
    with DiagnosticableTreeMixin
    implements _TrackingError {
  const _$TrackingErrorImpl(
      {required this.type,
      required this.isRetryable,
      this.message,
      this.code,
      this.stackTrace});

  factory _$TrackingErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackingErrorImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingErrorImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isRetryable, isRetryable) ||
                other.isRetryable == isRetryable) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, isRetryable, message, code, stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackingErrorImplCopyWith<_$TrackingErrorImpl> get copyWith =>
      __$$TrackingErrorImplCopyWithImpl<_$TrackingErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackingErrorImplToJson(
      this,
    );
  }
}

abstract class _TrackingError implements TrackingError {
  const factory _TrackingError(
      {required final TrackingErrorType type,
      required final bool isRetryable,
      final String? message,
      final String? code,
      final String? stackTrace}) = _$TrackingErrorImpl;

  factory _TrackingError.fromJson(Map<String, dynamic> json) =
      _$TrackingErrorImpl.fromJson;

  @override
  TrackingErrorType get type;
  @override
  bool get isRetryable;
  @override
  String? get message;
  @override
  String? get code;
  @override
  String? get stackTrace;
  @override
  @JsonKey(ignore: true)
  _$$TrackingErrorImplCopyWith<_$TrackingErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
