// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tracking_scheduler.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EnqueueOneshotResultTearOff {
  const _$EnqueueOneshotResultTearOff();

  EnqueueOneshotResultSuccess success({required String trackNumber}) {
    return EnqueueOneshotResultSuccess(
      trackNumber: trackNumber,
    );
  }

  EnqueueOneshotResultDissalowed dissalowed(
      {required String trackNumber, required Duration remainingLimitTime}) {
    return EnqueueOneshotResultDissalowed(
      trackNumber: trackNumber,
      remainingLimitTime: remainingLimitTime,
    );
  }

  EnqueueOneshotResultError error(
      {required String trackNumber, required EnqueueOneshotError error}) {
    return EnqueueOneshotResultError(
      trackNumber: trackNumber,
      error: error,
    );
  }
}

/// @nodoc
const $EnqueueOneshotResult = _$EnqueueOneshotResultTearOff();

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
      _$EnqueueOneshotResultCopyWithImpl<$Res>;
  $Res call({String trackNumber});
}

/// @nodoc
class _$EnqueueOneshotResultCopyWithImpl<$Res>
    implements $EnqueueOneshotResultCopyWith<$Res> {
  _$EnqueueOneshotResultCopyWithImpl(this._value, this._then);

  final EnqueueOneshotResult _value;
  // ignore: unused_field
  final $Res Function(EnqueueOneshotResult) _then;

  @override
  $Res call({
    Object? trackNumber = freezed,
  }) {
    return _then(_value.copyWith(
      trackNumber: trackNumber == freezed
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $EnqueueOneshotResultSuccessCopyWith<$Res>
    implements $EnqueueOneshotResultCopyWith<$Res> {
  factory $EnqueueOneshotResultSuccessCopyWith(
          EnqueueOneshotResultSuccess value,
          $Res Function(EnqueueOneshotResultSuccess) then) =
      _$EnqueueOneshotResultSuccessCopyWithImpl<$Res>;
  @override
  $Res call({String trackNumber});
}

/// @nodoc
class _$EnqueueOneshotResultSuccessCopyWithImpl<$Res>
    extends _$EnqueueOneshotResultCopyWithImpl<$Res>
    implements $EnqueueOneshotResultSuccessCopyWith<$Res> {
  _$EnqueueOneshotResultSuccessCopyWithImpl(EnqueueOneshotResultSuccess _value,
      $Res Function(EnqueueOneshotResultSuccess) _then)
      : super(_value, (v) => _then(v as EnqueueOneshotResultSuccess));

  @override
  EnqueueOneshotResultSuccess get _value =>
      super._value as EnqueueOneshotResultSuccess;

  @override
  $Res call({
    Object? trackNumber = freezed,
  }) {
    return _then(EnqueueOneshotResultSuccess(
      trackNumber: trackNumber == freezed
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EnqueueOneshotResultSuccess implements EnqueueOneshotResultSuccess {
  const _$EnqueueOneshotResultSuccess({required this.trackNumber});

  @override
  final String trackNumber;

  @override
  String toString() {
    return 'EnqueueOneshotResult.success(trackNumber: $trackNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EnqueueOneshotResultSuccess &&
            (identical(other.trackNumber, trackNumber) ||
                const DeepCollectionEquality()
                    .equals(other.trackNumber, trackNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(trackNumber);

  @JsonKey(ignore: true)
  @override
  $EnqueueOneshotResultSuccessCopyWith<EnqueueOneshotResultSuccess>
      get copyWith => _$EnqueueOneshotResultSuccessCopyWithImpl<
          EnqueueOneshotResultSuccess>(this, _$identity);

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
  const factory EnqueueOneshotResultSuccess({required String trackNumber}) =
      _$EnqueueOneshotResultSuccess;

  @override
  String get trackNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $EnqueueOneshotResultSuccessCopyWith<EnqueueOneshotResultSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnqueueOneshotResultDissalowedCopyWith<$Res>
    implements $EnqueueOneshotResultCopyWith<$Res> {
  factory $EnqueueOneshotResultDissalowedCopyWith(
          EnqueueOneshotResultDissalowed value,
          $Res Function(EnqueueOneshotResultDissalowed) then) =
      _$EnqueueOneshotResultDissalowedCopyWithImpl<$Res>;
  @override
  $Res call({String trackNumber, Duration remainingLimitTime});
}

/// @nodoc
class _$EnqueueOneshotResultDissalowedCopyWithImpl<$Res>
    extends _$EnqueueOneshotResultCopyWithImpl<$Res>
    implements $EnqueueOneshotResultDissalowedCopyWith<$Res> {
  _$EnqueueOneshotResultDissalowedCopyWithImpl(
      EnqueueOneshotResultDissalowed _value,
      $Res Function(EnqueueOneshotResultDissalowed) _then)
      : super(_value, (v) => _then(v as EnqueueOneshotResultDissalowed));

  @override
  EnqueueOneshotResultDissalowed get _value =>
      super._value as EnqueueOneshotResultDissalowed;

  @override
  $Res call({
    Object? trackNumber = freezed,
    Object? remainingLimitTime = freezed,
  }) {
    return _then(EnqueueOneshotResultDissalowed(
      trackNumber: trackNumber == freezed
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as String,
      remainingLimitTime: remainingLimitTime == freezed
          ? _value.remainingLimitTime
          : remainingLimitTime // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$EnqueueOneshotResultDissalowed
    implements EnqueueOneshotResultDissalowed {
  const _$EnqueueOneshotResultDissalowed(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EnqueueOneshotResultDissalowed &&
            (identical(other.trackNumber, trackNumber) ||
                const DeepCollectionEquality()
                    .equals(other.trackNumber, trackNumber)) &&
            (identical(other.remainingLimitTime, remainingLimitTime) ||
                const DeepCollectionEquality()
                    .equals(other.remainingLimitTime, remainingLimitTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(trackNumber) ^
      const DeepCollectionEquality().hash(remainingLimitTime);

  @JsonKey(ignore: true)
  @override
  $EnqueueOneshotResultDissalowedCopyWith<EnqueueOneshotResultDissalowed>
      get copyWith => _$EnqueueOneshotResultDissalowedCopyWithImpl<
          EnqueueOneshotResultDissalowed>(this, _$identity);

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
      {required String trackNumber,
      required Duration remainingLimitTime}) = _$EnqueueOneshotResultDissalowed;

  @override
  String get trackNumber => throw _privateConstructorUsedError;
  Duration get remainingLimitTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $EnqueueOneshotResultDissalowedCopyWith<EnqueueOneshotResultDissalowed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnqueueOneshotResultErrorCopyWith<$Res>
    implements $EnqueueOneshotResultCopyWith<$Res> {
  factory $EnqueueOneshotResultErrorCopyWith(EnqueueOneshotResultError value,
          $Res Function(EnqueueOneshotResultError) then) =
      _$EnqueueOneshotResultErrorCopyWithImpl<$Res>;
  @override
  $Res call({String trackNumber, EnqueueOneshotError error});

  $EnqueueOneshotErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$EnqueueOneshotResultErrorCopyWithImpl<$Res>
    extends _$EnqueueOneshotResultCopyWithImpl<$Res>
    implements $EnqueueOneshotResultErrorCopyWith<$Res> {
  _$EnqueueOneshotResultErrorCopyWithImpl(EnqueueOneshotResultError _value,
      $Res Function(EnqueueOneshotResultError) _then)
      : super(_value, (v) => _then(v as EnqueueOneshotResultError));

  @override
  EnqueueOneshotResultError get _value =>
      super._value as EnqueueOneshotResultError;

  @override
  $Res call({
    Object? trackNumber = freezed,
    Object? error = freezed,
  }) {
    return _then(EnqueueOneshotResultError(
      trackNumber: trackNumber == freezed
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as String,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as EnqueueOneshotError,
    ));
  }

  @override
  $EnqueueOneshotErrorCopyWith<$Res> get error {
    return $EnqueueOneshotErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$EnqueueOneshotResultError implements EnqueueOneshotResultError {
  const _$EnqueueOneshotResultError(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EnqueueOneshotResultError &&
            (identical(other.trackNumber, trackNumber) ||
                const DeepCollectionEquality()
                    .equals(other.trackNumber, trackNumber)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(trackNumber) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $EnqueueOneshotResultErrorCopyWith<EnqueueOneshotResultError> get copyWith =>
      _$EnqueueOneshotResultErrorCopyWithImpl<EnqueueOneshotResultError>(
          this, _$identity);

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
      {required String trackNumber,
      required EnqueueOneshotError error}) = _$EnqueueOneshotResultError;

  @override
  String get trackNumber => throw _privateConstructorUsedError;
  EnqueueOneshotError get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $EnqueueOneshotResultErrorCopyWith<EnqueueOneshotResultError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$EnqueueOneshotErrorTearOff {
  const _$EnqueueOneshotErrorTearOff();

  EnqueueOneshotErrorStorage storage(StorageError error) {
    return EnqueueOneshotErrorStorage(
      error,
    );
  }

  EnqueueOneshotErrorLimiter limiter(TrackingLimiterError error) {
    return EnqueueOneshotErrorLimiter(
      error,
    );
  }
}

/// @nodoc
const $EnqueueOneshotError = _$EnqueueOneshotErrorTearOff();

/// @nodoc
mixin _$EnqueueOneshotError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StorageError error) storage,
    required TResult Function(TrackingLimiterError error) limiter,
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
      _$EnqueueOneshotErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$EnqueueOneshotErrorCopyWithImpl<$Res>
    implements $EnqueueOneshotErrorCopyWith<$Res> {
  _$EnqueueOneshotErrorCopyWithImpl(this._value, this._then);

  final EnqueueOneshotError _value;
  // ignore: unused_field
  final $Res Function(EnqueueOneshotError) _then;
}

/// @nodoc
abstract class $EnqueueOneshotErrorStorageCopyWith<$Res> {
  factory $EnqueueOneshotErrorStorageCopyWith(EnqueueOneshotErrorStorage value,
          $Res Function(EnqueueOneshotErrorStorage) then) =
      _$EnqueueOneshotErrorStorageCopyWithImpl<$Res>;
  $Res call({StorageError error});

  $StorageErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$EnqueueOneshotErrorStorageCopyWithImpl<$Res>
    extends _$EnqueueOneshotErrorCopyWithImpl<$Res>
    implements $EnqueueOneshotErrorStorageCopyWith<$Res> {
  _$EnqueueOneshotErrorStorageCopyWithImpl(EnqueueOneshotErrorStorage _value,
      $Res Function(EnqueueOneshotErrorStorage) _then)
      : super(_value, (v) => _then(v as EnqueueOneshotErrorStorage));

  @override
  EnqueueOneshotErrorStorage get _value =>
      super._value as EnqueueOneshotErrorStorage;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(EnqueueOneshotErrorStorage(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as StorageError,
    ));
  }

  @override
  $StorageErrorCopyWith<$Res> get error {
    return $StorageErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$EnqueueOneshotErrorStorage implements EnqueueOneshotErrorStorage {
  const _$EnqueueOneshotErrorStorage(this.error);

  @override
  final StorageError error;

  @override
  String toString() {
    return 'EnqueueOneshotError.storage(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EnqueueOneshotErrorStorage &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $EnqueueOneshotErrorStorageCopyWith<EnqueueOneshotErrorStorage>
      get copyWith =>
          _$EnqueueOneshotErrorStorageCopyWithImpl<EnqueueOneshotErrorStorage>(
              this, _$identity);

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
  const factory EnqueueOneshotErrorStorage(StorageError error) =
      _$EnqueueOneshotErrorStorage;

  StorageError get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EnqueueOneshotErrorStorageCopyWith<EnqueueOneshotErrorStorage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnqueueOneshotErrorLimiterCopyWith<$Res> {
  factory $EnqueueOneshotErrorLimiterCopyWith(EnqueueOneshotErrorLimiter value,
          $Res Function(EnqueueOneshotErrorLimiter) then) =
      _$EnqueueOneshotErrorLimiterCopyWithImpl<$Res>;
  $Res call({TrackingLimiterError error});

  $TrackingLimiterErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$EnqueueOneshotErrorLimiterCopyWithImpl<$Res>
    extends _$EnqueueOneshotErrorCopyWithImpl<$Res>
    implements $EnqueueOneshotErrorLimiterCopyWith<$Res> {
  _$EnqueueOneshotErrorLimiterCopyWithImpl(EnqueueOneshotErrorLimiter _value,
      $Res Function(EnqueueOneshotErrorLimiter) _then)
      : super(_value, (v) => _then(v as EnqueueOneshotErrorLimiter));

  @override
  EnqueueOneshotErrorLimiter get _value =>
      super._value as EnqueueOneshotErrorLimiter;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(EnqueueOneshotErrorLimiter(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as TrackingLimiterError,
    ));
  }

  @override
  $TrackingLimiterErrorCopyWith<$Res> get error {
    return $TrackingLimiterErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$EnqueueOneshotErrorLimiter implements EnqueueOneshotErrorLimiter {
  const _$EnqueueOneshotErrorLimiter(this.error);

  @override
  final TrackingLimiterError error;

  @override
  String toString() {
    return 'EnqueueOneshotError.limiter(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EnqueueOneshotErrorLimiter &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $EnqueueOneshotErrorLimiterCopyWith<EnqueueOneshotErrorLimiter>
      get copyWith =>
          _$EnqueueOneshotErrorLimiterCopyWithImpl<EnqueueOneshotErrorLimiter>(
              this, _$identity);

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
  const factory EnqueueOneshotErrorLimiter(TrackingLimiterError error) =
      _$EnqueueOneshotErrorLimiter;

  TrackingLimiterError get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EnqueueOneshotErrorLimiterCopyWith<EnqueueOneshotErrorLimiter>
      get copyWith => throw _privateConstructorUsedError;
}
