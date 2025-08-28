// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracking_scheduler.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EnqueueOneshotResult {
  String get trackNumber => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String trackNumber) success,
    required TResult Function(String trackNumber, Duration remainingLimitTime)
        dissalowed,
    required TResult Function(String trackNumber, EnqueueOneshotError error)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String trackNumber)? success,
    TResult? Function(String trackNumber, Duration remainingLimitTime)?
        dissalowed,
    TResult? Function(String trackNumber, EnqueueOneshotError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String trackNumber)? success,
    TResult Function(String trackNumber, Duration remainingLimitTime)?
        dissalowed,
    TResult Function(String trackNumber, EnqueueOneshotError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnqueueOneshotResultSuccess value) success,
    required TResult Function(EnqueueOneshotResultDissalowed value) dissalowed,
    required TResult Function(EnqueueOneshotResultError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnqueueOneshotResultSuccess value)? success,
    TResult? Function(EnqueueOneshotResultDissalowed value)? dissalowed,
    TResult? Function(EnqueueOneshotResultError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnqueueOneshotResultSuccess value)? success,
    TResult Function(EnqueueOneshotResultDissalowed value)? dissalowed,
    TResult Function(EnqueueOneshotResultError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EnqueueOneshotResultCopyWith<EnqueueOneshotResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnqueueOneshotResultCopyWith<$Res> {
  factory $EnqueueOneshotResultCopyWith(EnqueueOneshotResult value,
          $Res Function(EnqueueOneshotResult) then) =
      _$EnqueueOneshotResultCopyWithImpl<$Res, EnqueueOneshotResult>;
  @useResult
  $Res call({String trackNumber});
}

/// @nodoc
class _$EnqueueOneshotResultCopyWithImpl<$Res,
        $Val extends EnqueueOneshotResult>
    implements $EnqueueOneshotResultCopyWith<$Res> {
  _$EnqueueOneshotResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackNumber = null,
  }) {
    return _then(_value.copyWith(
      trackNumber: null == trackNumber
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EnqueueOneshotResultSuccessImplCopyWith<$Res>
    implements $EnqueueOneshotResultCopyWith<$Res> {
  factory _$$EnqueueOneshotResultSuccessImplCopyWith(
          _$EnqueueOneshotResultSuccessImpl value,
          $Res Function(_$EnqueueOneshotResultSuccessImpl) then) =
      __$$EnqueueOneshotResultSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String trackNumber});
}

/// @nodoc
class __$$EnqueueOneshotResultSuccessImplCopyWithImpl<$Res>
    extends _$EnqueueOneshotResultCopyWithImpl<$Res,
        _$EnqueueOneshotResultSuccessImpl>
    implements _$$EnqueueOneshotResultSuccessImplCopyWith<$Res> {
  __$$EnqueueOneshotResultSuccessImplCopyWithImpl(
      _$EnqueueOneshotResultSuccessImpl _value,
      $Res Function(_$EnqueueOneshotResultSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackNumber = null,
  }) {
    return _then(_$EnqueueOneshotResultSuccessImpl(
      trackNumber: null == trackNumber
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EnqueueOneshotResultSuccessImpl implements EnqueueOneshotResultSuccess {
  const _$EnqueueOneshotResultSuccessImpl({required this.trackNumber});

  @override
  final String trackNumber;

  @override
  String toString() {
    return 'EnqueueOneshotResult.success(trackNumber: $trackNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnqueueOneshotResultSuccessImpl &&
            (identical(other.trackNumber, trackNumber) ||
                other.trackNumber == trackNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trackNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnqueueOneshotResultSuccessImplCopyWith<_$EnqueueOneshotResultSuccessImpl>
      get copyWith => __$$EnqueueOneshotResultSuccessImplCopyWithImpl<
          _$EnqueueOneshotResultSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String trackNumber) success,
    required TResult Function(String trackNumber, Duration remainingLimitTime)
        dissalowed,
    required TResult Function(String trackNumber, EnqueueOneshotError error)
        error,
  }) {
    return success(trackNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String trackNumber)? success,
    TResult? Function(String trackNumber, Duration remainingLimitTime)?
        dissalowed,
    TResult? Function(String trackNumber, EnqueueOneshotError error)? error,
  }) {
    return success?.call(trackNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String trackNumber)? success,
    TResult Function(String trackNumber, Duration remainingLimitTime)?
        dissalowed,
    TResult Function(String trackNumber, EnqueueOneshotError error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(trackNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnqueueOneshotResultSuccess value) success,
    required TResult Function(EnqueueOneshotResultDissalowed value) dissalowed,
    required TResult Function(EnqueueOneshotResultError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnqueueOneshotResultSuccess value)? success,
    TResult? Function(EnqueueOneshotResultDissalowed value)? dissalowed,
    TResult? Function(EnqueueOneshotResultError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnqueueOneshotResultSuccess value)? success,
    TResult Function(EnqueueOneshotResultDissalowed value)? dissalowed,
    TResult Function(EnqueueOneshotResultError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class EnqueueOneshotResultSuccess implements EnqueueOneshotResult {
  const factory EnqueueOneshotResultSuccess(
      {required final String trackNumber}) = _$EnqueueOneshotResultSuccessImpl;

  @override
  String get trackNumber;
  @override
  @JsonKey(ignore: true)
  _$$EnqueueOneshotResultSuccessImplCopyWith<_$EnqueueOneshotResultSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EnqueueOneshotResultDissalowedImplCopyWith<$Res>
    implements $EnqueueOneshotResultCopyWith<$Res> {
  factory _$$EnqueueOneshotResultDissalowedImplCopyWith(
          _$EnqueueOneshotResultDissalowedImpl value,
          $Res Function(_$EnqueueOneshotResultDissalowedImpl) then) =
      __$$EnqueueOneshotResultDissalowedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String trackNumber, Duration remainingLimitTime});
}

/// @nodoc
class __$$EnqueueOneshotResultDissalowedImplCopyWithImpl<$Res>
    extends _$EnqueueOneshotResultCopyWithImpl<$Res,
        _$EnqueueOneshotResultDissalowedImpl>
    implements _$$EnqueueOneshotResultDissalowedImplCopyWith<$Res> {
  __$$EnqueueOneshotResultDissalowedImplCopyWithImpl(
      _$EnqueueOneshotResultDissalowedImpl _value,
      $Res Function(_$EnqueueOneshotResultDissalowedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackNumber = null,
    Object? remainingLimitTime = null,
  }) {
    return _then(_$EnqueueOneshotResultDissalowedImpl(
      trackNumber: null == trackNumber
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as String,
      remainingLimitTime: null == remainingLimitTime
          ? _value.remainingLimitTime
          : remainingLimitTime // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$EnqueueOneshotResultDissalowedImpl
    implements EnqueueOneshotResultDissalowed {
  const _$EnqueueOneshotResultDissalowedImpl(
      {required this.trackNumber, required this.remainingLimitTime});

  @override
  final String trackNumber;
  @override
  final Duration remainingLimitTime;

  @override
  String toString() {
    return 'EnqueueOneshotResult.dissalowed(trackNumber: $trackNumber, remainingLimitTime: $remainingLimitTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnqueueOneshotResultDissalowedImpl &&
            (identical(other.trackNumber, trackNumber) ||
                other.trackNumber == trackNumber) &&
            (identical(other.remainingLimitTime, remainingLimitTime) ||
                other.remainingLimitTime == remainingLimitTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trackNumber, remainingLimitTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnqueueOneshotResultDissalowedImplCopyWith<
          _$EnqueueOneshotResultDissalowedImpl>
      get copyWith => __$$EnqueueOneshotResultDissalowedImplCopyWithImpl<
          _$EnqueueOneshotResultDissalowedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String trackNumber) success,
    required TResult Function(String trackNumber, Duration remainingLimitTime)
        dissalowed,
    required TResult Function(String trackNumber, EnqueueOneshotError error)
        error,
  }) {
    return dissalowed(trackNumber, remainingLimitTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String trackNumber)? success,
    TResult? Function(String trackNumber, Duration remainingLimitTime)?
        dissalowed,
    TResult? Function(String trackNumber, EnqueueOneshotError error)? error,
  }) {
    return dissalowed?.call(trackNumber, remainingLimitTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String trackNumber)? success,
    TResult Function(String trackNumber, Duration remainingLimitTime)?
        dissalowed,
    TResult Function(String trackNumber, EnqueueOneshotError error)? error,
    required TResult orElse(),
  }) {
    if (dissalowed != null) {
      return dissalowed(trackNumber, remainingLimitTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnqueueOneshotResultSuccess value) success,
    required TResult Function(EnqueueOneshotResultDissalowed value) dissalowed,
    required TResult Function(EnqueueOneshotResultError value) error,
  }) {
    return dissalowed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnqueueOneshotResultSuccess value)? success,
    TResult? Function(EnqueueOneshotResultDissalowed value)? dissalowed,
    TResult? Function(EnqueueOneshotResultError value)? error,
  }) {
    return dissalowed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnqueueOneshotResultSuccess value)? success,
    TResult Function(EnqueueOneshotResultDissalowed value)? dissalowed,
    TResult Function(EnqueueOneshotResultError value)? error,
    required TResult orElse(),
  }) {
    if (dissalowed != null) {
      return dissalowed(this);
    }
    return orElse();
  }
}

abstract class EnqueueOneshotResultDissalowed implements EnqueueOneshotResult {
  const factory EnqueueOneshotResultDissalowed(
          {required final String trackNumber,
          required final Duration remainingLimitTime}) =
      _$EnqueueOneshotResultDissalowedImpl;

  @override
  String get trackNumber;
  Duration get remainingLimitTime;
  @override
  @JsonKey(ignore: true)
  _$$EnqueueOneshotResultDissalowedImplCopyWith<
          _$EnqueueOneshotResultDissalowedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EnqueueOneshotResultErrorImplCopyWith<$Res>
    implements $EnqueueOneshotResultCopyWith<$Res> {
  factory _$$EnqueueOneshotResultErrorImplCopyWith(
          _$EnqueueOneshotResultErrorImpl value,
          $Res Function(_$EnqueueOneshotResultErrorImpl) then) =
      __$$EnqueueOneshotResultErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String trackNumber, EnqueueOneshotError error});

  $EnqueueOneshotErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$EnqueueOneshotResultErrorImplCopyWithImpl<$Res>
    extends _$EnqueueOneshotResultCopyWithImpl<$Res,
        _$EnqueueOneshotResultErrorImpl>
    implements _$$EnqueueOneshotResultErrorImplCopyWith<$Res> {
  __$$EnqueueOneshotResultErrorImplCopyWithImpl(
      _$EnqueueOneshotResultErrorImpl _value,
      $Res Function(_$EnqueueOneshotResultErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackNumber = null,
    Object? error = null,
  }) {
    return _then(_$EnqueueOneshotResultErrorImpl(
      trackNumber: null == trackNumber
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as EnqueueOneshotError,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EnqueueOneshotErrorCopyWith<$Res> get error {
    return $EnqueueOneshotErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$EnqueueOneshotResultErrorImpl implements EnqueueOneshotResultError {
  const _$EnqueueOneshotResultErrorImpl(
      {required this.trackNumber, required this.error});

  @override
  final String trackNumber;
  @override
  final EnqueueOneshotError error;

  @override
  String toString() {
    return 'EnqueueOneshotResult.error(trackNumber: $trackNumber, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnqueueOneshotResultErrorImpl &&
            (identical(other.trackNumber, trackNumber) ||
                other.trackNumber == trackNumber) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trackNumber, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnqueueOneshotResultErrorImplCopyWith<_$EnqueueOneshotResultErrorImpl>
      get copyWith => __$$EnqueueOneshotResultErrorImplCopyWithImpl<
          _$EnqueueOneshotResultErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String trackNumber) success,
    required TResult Function(String trackNumber, Duration remainingLimitTime)
        dissalowed,
    required TResult Function(String trackNumber, EnqueueOneshotError error)
        error,
  }) {
    return error(trackNumber, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String trackNumber)? success,
    TResult? Function(String trackNumber, Duration remainingLimitTime)?
        dissalowed,
    TResult? Function(String trackNumber, EnqueueOneshotError error)? error,
  }) {
    return error?.call(trackNumber, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String trackNumber)? success,
    TResult Function(String trackNumber, Duration remainingLimitTime)?
        dissalowed,
    TResult Function(String trackNumber, EnqueueOneshotError error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(trackNumber, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnqueueOneshotResultSuccess value) success,
    required TResult Function(EnqueueOneshotResultDissalowed value) dissalowed,
    required TResult Function(EnqueueOneshotResultError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnqueueOneshotResultSuccess value)? success,
    TResult? Function(EnqueueOneshotResultDissalowed value)? dissalowed,
    TResult? Function(EnqueueOneshotResultError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnqueueOneshotResultSuccess value)? success,
    TResult Function(EnqueueOneshotResultDissalowed value)? dissalowed,
    TResult Function(EnqueueOneshotResultError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class EnqueueOneshotResultError implements EnqueueOneshotResult {
  const factory EnqueueOneshotResultError(
          {required final String trackNumber,
          required final EnqueueOneshotError error}) =
      _$EnqueueOneshotResultErrorImpl;

  @override
  String get trackNumber;
  EnqueueOneshotError get error;
  @override
  @JsonKey(ignore: true)
  _$$EnqueueOneshotResultErrorImplCopyWith<_$EnqueueOneshotResultErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EnqueueOneshotError {
  Object get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StorageError error) storage,
    required TResult Function(TrackingLimiterError error) limiter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StorageError error)? storage,
    TResult? Function(TrackingLimiterError error)? limiter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StorageError error)? storage,
    TResult Function(TrackingLimiterError error)? limiter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnqueueOneshotErrorStorage value) storage,
    required TResult Function(EnqueueOneshotErrorLimiter value) limiter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnqueueOneshotErrorStorage value)? storage,
    TResult? Function(EnqueueOneshotErrorLimiter value)? limiter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnqueueOneshotErrorStorage value)? storage,
    TResult Function(EnqueueOneshotErrorLimiter value)? limiter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnqueueOneshotErrorCopyWith<$Res> {
  factory $EnqueueOneshotErrorCopyWith(
          EnqueueOneshotError value, $Res Function(EnqueueOneshotError) then) =
      _$EnqueueOneshotErrorCopyWithImpl<$Res, EnqueueOneshotError>;
}

/// @nodoc
class _$EnqueueOneshotErrorCopyWithImpl<$Res, $Val extends EnqueueOneshotError>
    implements $EnqueueOneshotErrorCopyWith<$Res> {
  _$EnqueueOneshotErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EnqueueOneshotErrorStorageImplCopyWith<$Res> {
  factory _$$EnqueueOneshotErrorStorageImplCopyWith(
          _$EnqueueOneshotErrorStorageImpl value,
          $Res Function(_$EnqueueOneshotErrorStorageImpl) then) =
      __$$EnqueueOneshotErrorStorageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StorageError error});

  $StorageErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$EnqueueOneshotErrorStorageImplCopyWithImpl<$Res>
    extends _$EnqueueOneshotErrorCopyWithImpl<$Res,
        _$EnqueueOneshotErrorStorageImpl>
    implements _$$EnqueueOneshotErrorStorageImplCopyWith<$Res> {
  __$$EnqueueOneshotErrorStorageImplCopyWithImpl(
      _$EnqueueOneshotErrorStorageImpl _value,
      $Res Function(_$EnqueueOneshotErrorStorageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$EnqueueOneshotErrorStorageImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as StorageError,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StorageErrorCopyWith<$Res> get error {
    return $StorageErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$EnqueueOneshotErrorStorageImpl implements EnqueueOneshotErrorStorage {
  const _$EnqueueOneshotErrorStorageImpl(this.error);

  @override
  final StorageError error;

  @override
  String toString() {
    return 'EnqueueOneshotError.storage(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnqueueOneshotErrorStorageImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnqueueOneshotErrorStorageImplCopyWith<_$EnqueueOneshotErrorStorageImpl>
      get copyWith => __$$EnqueueOneshotErrorStorageImplCopyWithImpl<
          _$EnqueueOneshotErrorStorageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StorageError error) storage,
    required TResult Function(TrackingLimiterError error) limiter,
  }) {
    return storage(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StorageError error)? storage,
    TResult? Function(TrackingLimiterError error)? limiter,
  }) {
    return storage?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StorageError error)? storage,
    TResult Function(TrackingLimiterError error)? limiter,
    required TResult orElse(),
  }) {
    if (storage != null) {
      return storage(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnqueueOneshotErrorStorage value) storage,
    required TResult Function(EnqueueOneshotErrorLimiter value) limiter,
  }) {
    return storage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnqueueOneshotErrorStorage value)? storage,
    TResult? Function(EnqueueOneshotErrorLimiter value)? limiter,
  }) {
    return storage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnqueueOneshotErrorStorage value)? storage,
    TResult Function(EnqueueOneshotErrorLimiter value)? limiter,
    required TResult orElse(),
  }) {
    if (storage != null) {
      return storage(this);
    }
    return orElse();
  }
}

abstract class EnqueueOneshotErrorStorage implements EnqueueOneshotError {
  const factory EnqueueOneshotErrorStorage(final StorageError error) =
      _$EnqueueOneshotErrorStorageImpl;

  @override
  StorageError get error;
  @JsonKey(ignore: true)
  _$$EnqueueOneshotErrorStorageImplCopyWith<_$EnqueueOneshotErrorStorageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EnqueueOneshotErrorLimiterImplCopyWith<$Res> {
  factory _$$EnqueueOneshotErrorLimiterImplCopyWith(
          _$EnqueueOneshotErrorLimiterImpl value,
          $Res Function(_$EnqueueOneshotErrorLimiterImpl) then) =
      __$$EnqueueOneshotErrorLimiterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TrackingLimiterError error});

  $TrackingLimiterErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$EnqueueOneshotErrorLimiterImplCopyWithImpl<$Res>
    extends _$EnqueueOneshotErrorCopyWithImpl<$Res,
        _$EnqueueOneshotErrorLimiterImpl>
    implements _$$EnqueueOneshotErrorLimiterImplCopyWith<$Res> {
  __$$EnqueueOneshotErrorLimiterImplCopyWithImpl(
      _$EnqueueOneshotErrorLimiterImpl _value,
      $Res Function(_$EnqueueOneshotErrorLimiterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$EnqueueOneshotErrorLimiterImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as TrackingLimiterError,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TrackingLimiterErrorCopyWith<$Res> get error {
    return $TrackingLimiterErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$EnqueueOneshotErrorLimiterImpl implements EnqueueOneshotErrorLimiter {
  const _$EnqueueOneshotErrorLimiterImpl(this.error);

  @override
  final TrackingLimiterError error;

  @override
  String toString() {
    return 'EnqueueOneshotError.limiter(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnqueueOneshotErrorLimiterImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnqueueOneshotErrorLimiterImplCopyWith<_$EnqueueOneshotErrorLimiterImpl>
      get copyWith => __$$EnqueueOneshotErrorLimiterImplCopyWithImpl<
          _$EnqueueOneshotErrorLimiterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StorageError error) storage,
    required TResult Function(TrackingLimiterError error) limiter,
  }) {
    return limiter(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StorageError error)? storage,
    TResult? Function(TrackingLimiterError error)? limiter,
  }) {
    return limiter?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StorageError error)? storage,
    TResult Function(TrackingLimiterError error)? limiter,
    required TResult orElse(),
  }) {
    if (limiter != null) {
      return limiter(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnqueueOneshotErrorStorage value) storage,
    required TResult Function(EnqueueOneshotErrorLimiter value) limiter,
  }) {
    return limiter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnqueueOneshotErrorStorage value)? storage,
    TResult? Function(EnqueueOneshotErrorLimiter value)? limiter,
  }) {
    return limiter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnqueueOneshotErrorStorage value)? storage,
    TResult Function(EnqueueOneshotErrorLimiter value)? limiter,
    required TResult orElse(),
  }) {
    if (limiter != null) {
      return limiter(this);
    }
    return orElse();
  }
}

abstract class EnqueueOneshotErrorLimiter implements EnqueueOneshotError {
  const factory EnqueueOneshotErrorLimiter(final TrackingLimiterError error) =
      _$EnqueueOneshotErrorLimiterImpl;

  @override
  TrackingLimiterError get error;
  @JsonKey(ignore: true)
  _$$EnqueueOneshotErrorLimiterImplCopyWith<_$EnqueueOneshotErrorLimiterImpl>
      get copyWith => throw _privateConstructorUsedError;
}
