// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tracking_limiter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TrackingLimiterStateTearOff {
  const _$TrackingLimiterStateTearOff();

  TrackingLimiterStateAllowed allowed({required String trackNumber}) {
    return TrackingLimiterStateAllowed(
      trackNumber: trackNumber,
    );
  }

  TrackingLimiterStateDissalowed dissalowed(
      {required String trackNumber, required Duration remainingTime}) {
    return TrackingLimiterStateDissalowed(
      trackNumber: trackNumber,
      remainingTime: remainingTime,
    );
  }

  TrackingLimiterStateError error(
      {required String trackNumber, required TrackingLimiterError error}) {
    return TrackingLimiterStateError(
      trackNumber: trackNumber,
      error: error,
    );
  }
}

/// @nodoc
const $TrackingLimiterState = _$TrackingLimiterStateTearOff();

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
      _$TrackingLimiterStateCopyWithImpl<$Res>;
  $Res call({String trackNumber});
}

/// @nodoc
class _$TrackingLimiterStateCopyWithImpl<$Res>
    implements $TrackingLimiterStateCopyWith<$Res> {
  _$TrackingLimiterStateCopyWithImpl(this._value, this._then);

  final TrackingLimiterState _value;
  // ignore: unused_field
  final $Res Function(TrackingLimiterState) _then;

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
abstract class $TrackingLimiterStateAllowedCopyWith<$Res>
    implements $TrackingLimiterStateCopyWith<$Res> {
  factory $TrackingLimiterStateAllowedCopyWith(
          TrackingLimiterStateAllowed value,
          $Res Function(TrackingLimiterStateAllowed) then) =
      _$TrackingLimiterStateAllowedCopyWithImpl<$Res>;
  @override
  $Res call({String trackNumber});
}

/// @nodoc
class _$TrackingLimiterStateAllowedCopyWithImpl<$Res>
    extends _$TrackingLimiterStateCopyWithImpl<$Res>
    implements $TrackingLimiterStateAllowedCopyWith<$Res> {
  _$TrackingLimiterStateAllowedCopyWithImpl(TrackingLimiterStateAllowed _value,
      $Res Function(TrackingLimiterStateAllowed) _then)
      : super(_value, (v) => _then(v as TrackingLimiterStateAllowed));

  @override
  TrackingLimiterStateAllowed get _value =>
      super._value as TrackingLimiterStateAllowed;

  @override
  $Res call({
    Object? trackNumber = freezed,
  }) {
    return _then(TrackingLimiterStateAllowed(
      trackNumber: trackNumber == freezed
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TrackingLimiterStateAllowed implements TrackingLimiterStateAllowed {
  const _$TrackingLimiterStateAllowed({required this.trackNumber});

  @override
  final String trackNumber;

  @override
  String toString() {
    return 'TrackingLimiterState.allowed(trackNumber: $trackNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TrackingLimiterStateAllowed &&
            (identical(other.trackNumber, trackNumber) ||
                const DeepCollectionEquality()
                    .equals(other.trackNumber, trackNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(trackNumber);

  @JsonKey(ignore: true)
  @override
  $TrackingLimiterStateAllowedCopyWith<TrackingLimiterStateAllowed>
      get copyWith => _$TrackingLimiterStateAllowedCopyWithImpl<
          TrackingLimiterStateAllowed>(this, _$identity);

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
  const factory TrackingLimiterStateAllowed({required String trackNumber}) =
      _$TrackingLimiterStateAllowed;

  @override
  String get trackNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TrackingLimiterStateAllowedCopyWith<TrackingLimiterStateAllowed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingLimiterStateDissalowedCopyWith<$Res>
    implements $TrackingLimiterStateCopyWith<$Res> {
  factory $TrackingLimiterStateDissalowedCopyWith(
          TrackingLimiterStateDissalowed value,
          $Res Function(TrackingLimiterStateDissalowed) then) =
      _$TrackingLimiterStateDissalowedCopyWithImpl<$Res>;
  @override
  $Res call({String trackNumber, Duration remainingTime});
}

/// @nodoc
class _$TrackingLimiterStateDissalowedCopyWithImpl<$Res>
    extends _$TrackingLimiterStateCopyWithImpl<$Res>
    implements $TrackingLimiterStateDissalowedCopyWith<$Res> {
  _$TrackingLimiterStateDissalowedCopyWithImpl(
      TrackingLimiterStateDissalowed _value,
      $Res Function(TrackingLimiterStateDissalowed) _then)
      : super(_value, (v) => _then(v as TrackingLimiterStateDissalowed));

  @override
  TrackingLimiterStateDissalowed get _value =>
      super._value as TrackingLimiterStateDissalowed;

  @override
  $Res call({
    Object? trackNumber = freezed,
    Object? remainingTime = freezed,
  }) {
    return _then(TrackingLimiterStateDissalowed(
      trackNumber: trackNumber == freezed
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as String,
      remainingTime: remainingTime == freezed
          ? _value.remainingTime
          : remainingTime // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$TrackingLimiterStateDissalowed
    implements TrackingLimiterStateDissalowed {
  const _$TrackingLimiterStateDissalowed(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TrackingLimiterStateDissalowed &&
            (identical(other.trackNumber, trackNumber) ||
                const DeepCollectionEquality()
                    .equals(other.trackNumber, trackNumber)) &&
            (identical(other.remainingTime, remainingTime) ||
                const DeepCollectionEquality()
                    .equals(other.remainingTime, remainingTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(trackNumber) ^
      const DeepCollectionEquality().hash(remainingTime);

  @JsonKey(ignore: true)
  @override
  $TrackingLimiterStateDissalowedCopyWith<TrackingLimiterStateDissalowed>
      get copyWith => _$TrackingLimiterStateDissalowedCopyWithImpl<
          TrackingLimiterStateDissalowed>(this, _$identity);

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
      {required String trackNumber,
      required Duration remainingTime}) = _$TrackingLimiterStateDissalowed;

  @override
  String get trackNumber => throw _privateConstructorUsedError;
  Duration get remainingTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TrackingLimiterStateDissalowedCopyWith<TrackingLimiterStateDissalowed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingLimiterStateErrorCopyWith<$Res>
    implements $TrackingLimiterStateCopyWith<$Res> {
  factory $TrackingLimiterStateErrorCopyWith(TrackingLimiterStateError value,
          $Res Function(TrackingLimiterStateError) then) =
      _$TrackingLimiterStateErrorCopyWithImpl<$Res>;
  @override
  $Res call({String trackNumber, TrackingLimiterError error});

  $TrackingLimiterErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$TrackingLimiterStateErrorCopyWithImpl<$Res>
    extends _$TrackingLimiterStateCopyWithImpl<$Res>
    implements $TrackingLimiterStateErrorCopyWith<$Res> {
  _$TrackingLimiterStateErrorCopyWithImpl(TrackingLimiterStateError _value,
      $Res Function(TrackingLimiterStateError) _then)
      : super(_value, (v) => _then(v as TrackingLimiterStateError));

  @override
  TrackingLimiterStateError get _value =>
      super._value as TrackingLimiterStateError;

  @override
  $Res call({
    Object? trackNumber = freezed,
    Object? error = freezed,
  }) {
    return _then(TrackingLimiterStateError(
      trackNumber: trackNumber == freezed
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as String,
      error: error == freezed
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

class _$TrackingLimiterStateError implements TrackingLimiterStateError {
  const _$TrackingLimiterStateError(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TrackingLimiterStateError &&
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
  $TrackingLimiterStateErrorCopyWith<TrackingLimiterStateError> get copyWith =>
      _$TrackingLimiterStateErrorCopyWithImpl<TrackingLimiterStateError>(
          this, _$identity);

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
      {required String trackNumber,
      required TrackingLimiterError error}) = _$TrackingLimiterStateError;

  @override
  String get trackNumber => throw _privateConstructorUsedError;
  TrackingLimiterError get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TrackingLimiterStateErrorCopyWith<TrackingLimiterStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TrackingLimiterErrorTearOff {
  const _$TrackingLimiterErrorTearOff();

  TrackingLimiterErrorStorage storage(StorageError error) {
    return TrackingLimiterErrorStorage(
      error,
    );
  }
}

/// @nodoc
const $TrackingLimiterError = _$TrackingLimiterErrorTearOff();

/// @nodoc
mixin _$TrackingLimiterError {
  StorageError get error => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StorageError error) storage,
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
      _$TrackingLimiterErrorCopyWithImpl<$Res>;
  $Res call({StorageError error});

  $StorageErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$TrackingLimiterErrorCopyWithImpl<$Res>
    implements $TrackingLimiterErrorCopyWith<$Res> {
  _$TrackingLimiterErrorCopyWithImpl(this._value, this._then);

  final TrackingLimiterError _value;
  // ignore: unused_field
  final $Res Function(TrackingLimiterError) _then;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
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
abstract class $TrackingLimiterErrorStorageCopyWith<$Res>
    implements $TrackingLimiterErrorCopyWith<$Res> {
  factory $TrackingLimiterErrorStorageCopyWith(
          TrackingLimiterErrorStorage value,
          $Res Function(TrackingLimiterErrorStorage) then) =
      _$TrackingLimiterErrorStorageCopyWithImpl<$Res>;
  @override
  $Res call({StorageError error});

  @override
  $StorageErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$TrackingLimiterErrorStorageCopyWithImpl<$Res>
    extends _$TrackingLimiterErrorCopyWithImpl<$Res>
    implements $TrackingLimiterErrorStorageCopyWith<$Res> {
  _$TrackingLimiterErrorStorageCopyWithImpl(TrackingLimiterErrorStorage _value,
      $Res Function(TrackingLimiterErrorStorage) _then)
      : super(_value, (v) => _then(v as TrackingLimiterErrorStorage));

  @override
  TrackingLimiterErrorStorage get _value =>
      super._value as TrackingLimiterErrorStorage;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(TrackingLimiterErrorStorage(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as StorageError,
    ));
  }
}

/// @nodoc

class _$TrackingLimiterErrorStorage implements TrackingLimiterErrorStorage {
  const _$TrackingLimiterErrorStorage(this.error);

  @override
  final StorageError error;

  @override
  String toString() {
    return 'TrackingLimiterError.storage(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TrackingLimiterErrorStorage &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $TrackingLimiterErrorStorageCopyWith<TrackingLimiterErrorStorage>
      get copyWith => _$TrackingLimiterErrorStorageCopyWithImpl<
          TrackingLimiterErrorStorage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StorageError error) storage,
  }) {
    return storage(error);
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
  const factory TrackingLimiterErrorStorage(StorageError error) =
      _$TrackingLimiterErrorStorage;

  @override
  StorageError get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TrackingLimiterErrorStorageCopyWith<TrackingLimiterErrorStorage>
      get copyWith => throw _privateConstructorUsedError;
}
