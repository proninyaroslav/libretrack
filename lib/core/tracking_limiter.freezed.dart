// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracking_limiter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TrackingLimiterState {
  String get trackNumber => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String trackNumber) allowed,
    required TResult Function(String trackNumber, Duration remainingTime)
        dissalowed,
    required TResult Function(String trackNumber, TrackingLimiterError error)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String trackNumber)? allowed,
    TResult? Function(String trackNumber, Duration remainingTime)? dissalowed,
    TResult? Function(String trackNumber, TrackingLimiterError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String trackNumber)? allowed,
    TResult Function(String trackNumber, Duration remainingTime)? dissalowed,
    TResult Function(String trackNumber, TrackingLimiterError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrackingLimiterStateAllowed value) allowed,
    required TResult Function(TrackingLimiterStateDissalowed value) dissalowed,
    required TResult Function(TrackingLimiterStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrackingLimiterStateAllowed value)? allowed,
    TResult? Function(TrackingLimiterStateDissalowed value)? dissalowed,
    TResult? Function(TrackingLimiterStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackingLimiterStateAllowed value)? allowed,
    TResult Function(TrackingLimiterStateDissalowed value)? dissalowed,
    TResult Function(TrackingLimiterStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrackingLimiterStateCopyWith<TrackingLimiterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingLimiterStateCopyWith<$Res> {
  factory $TrackingLimiterStateCopyWith(TrackingLimiterState value,
          $Res Function(TrackingLimiterState) then) =
      _$TrackingLimiterStateCopyWithImpl<$Res, TrackingLimiterState>;
  @useResult
  $Res call({String trackNumber});
}

/// @nodoc
class _$TrackingLimiterStateCopyWithImpl<$Res,
        $Val extends TrackingLimiterState>
    implements $TrackingLimiterStateCopyWith<$Res> {
  _$TrackingLimiterStateCopyWithImpl(this._value, this._then);

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
abstract class _$$TrackingLimiterStateAllowedImplCopyWith<$Res>
    implements $TrackingLimiterStateCopyWith<$Res> {
  factory _$$TrackingLimiterStateAllowedImplCopyWith(
          _$TrackingLimiterStateAllowedImpl value,
          $Res Function(_$TrackingLimiterStateAllowedImpl) then) =
      __$$TrackingLimiterStateAllowedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String trackNumber});
}

/// @nodoc
class __$$TrackingLimiterStateAllowedImplCopyWithImpl<$Res>
    extends _$TrackingLimiterStateCopyWithImpl<$Res,
        _$TrackingLimiterStateAllowedImpl>
    implements _$$TrackingLimiterStateAllowedImplCopyWith<$Res> {
  __$$TrackingLimiterStateAllowedImplCopyWithImpl(
      _$TrackingLimiterStateAllowedImpl _value,
      $Res Function(_$TrackingLimiterStateAllowedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackNumber = null,
  }) {
    return _then(_$TrackingLimiterStateAllowedImpl(
      trackNumber: null == trackNumber
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TrackingLimiterStateAllowedImpl implements TrackingLimiterStateAllowed {
  const _$TrackingLimiterStateAllowedImpl({required this.trackNumber});

  @override
  final String trackNumber;

  @override
  String toString() {
    return 'TrackingLimiterState.allowed(trackNumber: $trackNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingLimiterStateAllowedImpl &&
            (identical(other.trackNumber, trackNumber) ||
                other.trackNumber == trackNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trackNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackingLimiterStateAllowedImplCopyWith<_$TrackingLimiterStateAllowedImpl>
      get copyWith => __$$TrackingLimiterStateAllowedImplCopyWithImpl<
          _$TrackingLimiterStateAllowedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String trackNumber) allowed,
    required TResult Function(String trackNumber, Duration remainingTime)
        dissalowed,
    required TResult Function(String trackNumber, TrackingLimiterError error)
        error,
  }) {
    return allowed(trackNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String trackNumber)? allowed,
    TResult? Function(String trackNumber, Duration remainingTime)? dissalowed,
    TResult? Function(String trackNumber, TrackingLimiterError error)? error,
  }) {
    return allowed?.call(trackNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String trackNumber)? allowed,
    TResult Function(String trackNumber, Duration remainingTime)? dissalowed,
    TResult Function(String trackNumber, TrackingLimiterError error)? error,
    required TResult orElse(),
  }) {
    if (allowed != null) {
      return allowed(trackNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrackingLimiterStateAllowed value) allowed,
    required TResult Function(TrackingLimiterStateDissalowed value) dissalowed,
    required TResult Function(TrackingLimiterStateError value) error,
  }) {
    return allowed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrackingLimiterStateAllowed value)? allowed,
    TResult? Function(TrackingLimiterStateDissalowed value)? dissalowed,
    TResult? Function(TrackingLimiterStateError value)? error,
  }) {
    return allowed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackingLimiterStateAllowed value)? allowed,
    TResult Function(TrackingLimiterStateDissalowed value)? dissalowed,
    TResult Function(TrackingLimiterStateError value)? error,
    required TResult orElse(),
  }) {
    if (allowed != null) {
      return allowed(this);
    }
    return orElse();
  }
}

abstract class TrackingLimiterStateAllowed implements TrackingLimiterState {
  const factory TrackingLimiterStateAllowed(
      {required final String trackNumber}) = _$TrackingLimiterStateAllowedImpl;

  @override
  String get trackNumber;
  @override
  @JsonKey(ignore: true)
  _$$TrackingLimiterStateAllowedImplCopyWith<_$TrackingLimiterStateAllowedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TrackingLimiterStateDissalowedImplCopyWith<$Res>
    implements $TrackingLimiterStateCopyWith<$Res> {
  factory _$$TrackingLimiterStateDissalowedImplCopyWith(
          _$TrackingLimiterStateDissalowedImpl value,
          $Res Function(_$TrackingLimiterStateDissalowedImpl) then) =
      __$$TrackingLimiterStateDissalowedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String trackNumber, Duration remainingTime});
}

/// @nodoc
class __$$TrackingLimiterStateDissalowedImplCopyWithImpl<$Res>
    extends _$TrackingLimiterStateCopyWithImpl<$Res,
        _$TrackingLimiterStateDissalowedImpl>
    implements _$$TrackingLimiterStateDissalowedImplCopyWith<$Res> {
  __$$TrackingLimiterStateDissalowedImplCopyWithImpl(
      _$TrackingLimiterStateDissalowedImpl _value,
      $Res Function(_$TrackingLimiterStateDissalowedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackNumber = null,
    Object? remainingTime = null,
  }) {
    return _then(_$TrackingLimiterStateDissalowedImpl(
      trackNumber: null == trackNumber
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as String,
      remainingTime: null == remainingTime
          ? _value.remainingTime
          : remainingTime // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$TrackingLimiterStateDissalowedImpl
    implements TrackingLimiterStateDissalowed {
  const _$TrackingLimiterStateDissalowedImpl(
      {required this.trackNumber, required this.remainingTime});

  @override
  final String trackNumber;
  @override
  final Duration remainingTime;

  @override
  String toString() {
    return 'TrackingLimiterState.dissalowed(trackNumber: $trackNumber, remainingTime: $remainingTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingLimiterStateDissalowedImpl &&
            (identical(other.trackNumber, trackNumber) ||
                other.trackNumber == trackNumber) &&
            (identical(other.remainingTime, remainingTime) ||
                other.remainingTime == remainingTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trackNumber, remainingTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackingLimiterStateDissalowedImplCopyWith<
          _$TrackingLimiterStateDissalowedImpl>
      get copyWith => __$$TrackingLimiterStateDissalowedImplCopyWithImpl<
          _$TrackingLimiterStateDissalowedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String trackNumber) allowed,
    required TResult Function(String trackNumber, Duration remainingTime)
        dissalowed,
    required TResult Function(String trackNumber, TrackingLimiterError error)
        error,
  }) {
    return dissalowed(trackNumber, remainingTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String trackNumber)? allowed,
    TResult? Function(String trackNumber, Duration remainingTime)? dissalowed,
    TResult? Function(String trackNumber, TrackingLimiterError error)? error,
  }) {
    return dissalowed?.call(trackNumber, remainingTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String trackNumber)? allowed,
    TResult Function(String trackNumber, Duration remainingTime)? dissalowed,
    TResult Function(String trackNumber, TrackingLimiterError error)? error,
    required TResult orElse(),
  }) {
    if (dissalowed != null) {
      return dissalowed(trackNumber, remainingTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrackingLimiterStateAllowed value) allowed,
    required TResult Function(TrackingLimiterStateDissalowed value) dissalowed,
    required TResult Function(TrackingLimiterStateError value) error,
  }) {
    return dissalowed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrackingLimiterStateAllowed value)? allowed,
    TResult? Function(TrackingLimiterStateDissalowed value)? dissalowed,
    TResult? Function(TrackingLimiterStateError value)? error,
  }) {
    return dissalowed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackingLimiterStateAllowed value)? allowed,
    TResult Function(TrackingLimiterStateDissalowed value)? dissalowed,
    TResult Function(TrackingLimiterStateError value)? error,
    required TResult orElse(),
  }) {
    if (dissalowed != null) {
      return dissalowed(this);
    }
    return orElse();
  }
}

abstract class TrackingLimiterStateDissalowed implements TrackingLimiterState {
  const factory TrackingLimiterStateDissalowed(
          {required final String trackNumber,
          required final Duration remainingTime}) =
      _$TrackingLimiterStateDissalowedImpl;

  @override
  String get trackNumber;
  Duration get remainingTime;
  @override
  @JsonKey(ignore: true)
  _$$TrackingLimiterStateDissalowedImplCopyWith<
          _$TrackingLimiterStateDissalowedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TrackingLimiterStateErrorImplCopyWith<$Res>
    implements $TrackingLimiterStateCopyWith<$Res> {
  factory _$$TrackingLimiterStateErrorImplCopyWith(
          _$TrackingLimiterStateErrorImpl value,
          $Res Function(_$TrackingLimiterStateErrorImpl) then) =
      __$$TrackingLimiterStateErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String trackNumber, TrackingLimiterError error});

  $TrackingLimiterErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$TrackingLimiterStateErrorImplCopyWithImpl<$Res>
    extends _$TrackingLimiterStateCopyWithImpl<$Res,
        _$TrackingLimiterStateErrorImpl>
    implements _$$TrackingLimiterStateErrorImplCopyWith<$Res> {
  __$$TrackingLimiterStateErrorImplCopyWithImpl(
      _$TrackingLimiterStateErrorImpl _value,
      $Res Function(_$TrackingLimiterStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackNumber = null,
    Object? error = null,
  }) {
    return _then(_$TrackingLimiterStateErrorImpl(
      trackNumber: null == trackNumber
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
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

class _$TrackingLimiterStateErrorImpl implements TrackingLimiterStateError {
  const _$TrackingLimiterStateErrorImpl(
      {required this.trackNumber, required this.error});

  @override
  final String trackNumber;
  @override
  final TrackingLimiterError error;

  @override
  String toString() {
    return 'TrackingLimiterState.error(trackNumber: $trackNumber, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingLimiterStateErrorImpl &&
            (identical(other.trackNumber, trackNumber) ||
                other.trackNumber == trackNumber) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trackNumber, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackingLimiterStateErrorImplCopyWith<_$TrackingLimiterStateErrorImpl>
      get copyWith => __$$TrackingLimiterStateErrorImplCopyWithImpl<
          _$TrackingLimiterStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String trackNumber) allowed,
    required TResult Function(String trackNumber, Duration remainingTime)
        dissalowed,
    required TResult Function(String trackNumber, TrackingLimiterError error)
        error,
  }) {
    return error(trackNumber, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String trackNumber)? allowed,
    TResult? Function(String trackNumber, Duration remainingTime)? dissalowed,
    TResult? Function(String trackNumber, TrackingLimiterError error)? error,
  }) {
    return error?.call(trackNumber, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String trackNumber)? allowed,
    TResult Function(String trackNumber, Duration remainingTime)? dissalowed,
    TResult Function(String trackNumber, TrackingLimiterError error)? error,
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
    required TResult Function(TrackingLimiterStateAllowed value) allowed,
    required TResult Function(TrackingLimiterStateDissalowed value) dissalowed,
    required TResult Function(TrackingLimiterStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrackingLimiterStateAllowed value)? allowed,
    TResult? Function(TrackingLimiterStateDissalowed value)? dissalowed,
    TResult? Function(TrackingLimiterStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackingLimiterStateAllowed value)? allowed,
    TResult Function(TrackingLimiterStateDissalowed value)? dissalowed,
    TResult Function(TrackingLimiterStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TrackingLimiterStateError implements TrackingLimiterState {
  const factory TrackingLimiterStateError(
          {required final String trackNumber,
          required final TrackingLimiterError error}) =
      _$TrackingLimiterStateErrorImpl;

  @override
  String get trackNumber;
  TrackingLimiterError get error;
  @override
  @JsonKey(ignore: true)
  _$$TrackingLimiterStateErrorImplCopyWith<_$TrackingLimiterStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TrackingLimiterError {
  StorageError get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StorageError error) storage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StorageError error)? storage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StorageError error)? storage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrackingLimiterErrorStorage value) storage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrackingLimiterErrorStorage value)? storage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackingLimiterErrorStorage value)? storage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrackingLimiterErrorCopyWith<TrackingLimiterError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingLimiterErrorCopyWith<$Res> {
  factory $TrackingLimiterErrorCopyWith(TrackingLimiterError value,
          $Res Function(TrackingLimiterError) then) =
      _$TrackingLimiterErrorCopyWithImpl<$Res, TrackingLimiterError>;
  @useResult
  $Res call({StorageError error});

  $StorageErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$TrackingLimiterErrorCopyWithImpl<$Res,
        $Val extends TrackingLimiterError>
    implements $TrackingLimiterErrorCopyWith<$Res> {
  _$TrackingLimiterErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as StorageError,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StorageErrorCopyWith<$Res> get error {
    return $StorageErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrackingLimiterErrorStorageImplCopyWith<$Res>
    implements $TrackingLimiterErrorCopyWith<$Res> {
  factory _$$TrackingLimiterErrorStorageImplCopyWith(
          _$TrackingLimiterErrorStorageImpl value,
          $Res Function(_$TrackingLimiterErrorStorageImpl) then) =
      __$$TrackingLimiterErrorStorageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StorageError error});

  @override
  $StorageErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$TrackingLimiterErrorStorageImplCopyWithImpl<$Res>
    extends _$TrackingLimiterErrorCopyWithImpl<$Res,
        _$TrackingLimiterErrorStorageImpl>
    implements _$$TrackingLimiterErrorStorageImplCopyWith<$Res> {
  __$$TrackingLimiterErrorStorageImplCopyWithImpl(
      _$TrackingLimiterErrorStorageImpl _value,
      $Res Function(_$TrackingLimiterErrorStorageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$TrackingLimiterErrorStorageImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as StorageError,
    ));
  }
}

/// @nodoc

class _$TrackingLimiterErrorStorageImpl implements TrackingLimiterErrorStorage {
  const _$TrackingLimiterErrorStorageImpl(this.error);

  @override
  final StorageError error;

  @override
  String toString() {
    return 'TrackingLimiterError.storage(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingLimiterErrorStorageImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackingLimiterErrorStorageImplCopyWith<_$TrackingLimiterErrorStorageImpl>
      get copyWith => __$$TrackingLimiterErrorStorageImplCopyWithImpl<
          _$TrackingLimiterErrorStorageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StorageError error) storage,
  }) {
    return storage(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StorageError error)? storage,
  }) {
    return storage?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StorageError error)? storage,
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
    required TResult Function(TrackingLimiterErrorStorage value) storage,
  }) {
    return storage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrackingLimiterErrorStorage value)? storage,
  }) {
    return storage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackingLimiterErrorStorage value)? storage,
    required TResult orElse(),
  }) {
    if (storage != null) {
      return storage(this);
    }
    return orElse();
  }
}

abstract class TrackingLimiterErrorStorage implements TrackingLimiterError {
  const factory TrackingLimiterErrorStorage(final StorageError error) =
      _$TrackingLimiterErrorStorageImpl;

  @override
  StorageError get error;
  @override
  @JsonKey(ignore: true)
  _$$TrackingLimiterErrorStorageImplCopyWith<_$TrackingLimiterErrorStorageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
