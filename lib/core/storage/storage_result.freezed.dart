// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'storage_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StorageResult<T> {
  Object? get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T value) $default, {
    required TResult Function(StorageError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(T value)? $default, {
    TResult? Function(StorageError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function(StorageError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(StorageResultValue<T> value) $default, {
    required TResult Function(StorageResultError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(StorageResultValue<T> value)? $default, {
    TResult? Function(StorageResultError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(StorageResultValue<T> value)? $default, {
    TResult Function(StorageResultError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageResultCopyWith<T, $Res> {
  factory $StorageResultCopyWith(
          StorageResult<T> value, $Res Function(StorageResult<T>) then) =
      _$StorageResultCopyWithImpl<T, $Res, StorageResult<T>>;
}

/// @nodoc
class _$StorageResultCopyWithImpl<T, $Res, $Val extends StorageResult<T>>
    implements $StorageResultCopyWith<T, $Res> {
  _$StorageResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StorageResultValueImplCopyWith<T, $Res> {
  factory _$$StorageResultValueImplCopyWith(_$StorageResultValueImpl<T> value,
          $Res Function(_$StorageResultValueImpl<T>) then) =
      __$$StorageResultValueImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T value});
}

/// @nodoc
class __$$StorageResultValueImplCopyWithImpl<T, $Res>
    extends _$StorageResultCopyWithImpl<T, $Res, _$StorageResultValueImpl<T>>
    implements _$$StorageResultValueImplCopyWith<T, $Res> {
  __$$StorageResultValueImplCopyWithImpl(_$StorageResultValueImpl<T> _value,
      $Res Function(_$StorageResultValueImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$StorageResultValueImpl<T>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$StorageResultValueImpl<T> implements StorageResultValue<T> {
  const _$StorageResultValueImpl(this.value);

  @override
  final T value;

  @override
  String toString() {
    return 'StorageResult<$T>(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageResultValueImpl<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageResultValueImplCopyWith<T, _$StorageResultValueImpl<T>>
      get copyWith => __$$StorageResultValueImplCopyWithImpl<T,
          _$StorageResultValueImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T value) $default, {
    required TResult Function(StorageError value) error,
  }) {
    return $default(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(T value)? $default, {
    TResult? Function(StorageError value)? error,
  }) {
    return $default?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function(StorageError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(StorageResultValue<T> value) $default, {
    required TResult Function(StorageResultError<T> value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(StorageResultValue<T> value)? $default, {
    TResult? Function(StorageResultError<T> value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(StorageResultValue<T> value)? $default, {
    TResult Function(StorageResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class StorageResultValue<T> implements StorageResult<T> {
  const factory StorageResultValue(final T value) = _$StorageResultValueImpl<T>;

  @override
  T get value;
  @JsonKey(ignore: true)
  _$$StorageResultValueImplCopyWith<T, _$StorageResultValueImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StorageResultErrorImplCopyWith<T, $Res> {
  factory _$$StorageResultErrorImplCopyWith(_$StorageResultErrorImpl<T> value,
          $Res Function(_$StorageResultErrorImpl<T>) then) =
      __$$StorageResultErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({StorageError value});

  $StorageErrorCopyWith<$Res> get value;
}

/// @nodoc
class __$$StorageResultErrorImplCopyWithImpl<T, $Res>
    extends _$StorageResultCopyWithImpl<T, $Res, _$StorageResultErrorImpl<T>>
    implements _$$StorageResultErrorImplCopyWith<T, $Res> {
  __$$StorageResultErrorImplCopyWithImpl(_$StorageResultErrorImpl<T> _value,
      $Res Function(_$StorageResultErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$StorageResultErrorImpl<T>(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as StorageError,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StorageErrorCopyWith<$Res> get value {
    return $StorageErrorCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc

class _$StorageResultErrorImpl<T> implements StorageResultError<T> {
  const _$StorageResultErrorImpl(this.value);

  @override
  final StorageError value;

  @override
  String toString() {
    return 'StorageResult<$T>.error(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageResultErrorImpl<T> &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageResultErrorImplCopyWith<T, _$StorageResultErrorImpl<T>>
      get copyWith => __$$StorageResultErrorImplCopyWithImpl<T,
          _$StorageResultErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T value) $default, {
    required TResult Function(StorageError value) error,
  }) {
    return error(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(T value)? $default, {
    TResult? Function(StorageError value)? error,
  }) {
    return error?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function(StorageError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(StorageResultValue<T> value) $default, {
    required TResult Function(StorageResultError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(StorageResultValue<T> value)? $default, {
    TResult? Function(StorageResultError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(StorageResultValue<T> value)? $default, {
    TResult Function(StorageResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StorageResultError<T> implements StorageResult<T> {
  const factory StorageResultError(final StorageError value) =
      _$StorageResultErrorImpl<T>;

  @override
  StorageError get value;
  @JsonKey(ignore: true)
  _$$StorageResultErrorImplCopyWith<T, _$StorageResultErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StorageError {
  Exception? get exception => throw _privateConstructorUsedError;
  StackTrace? get stackTrace => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        database,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Exception? exception, StackTrace? stackTrace)? database,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception? exception, StackTrace? stackTrace)? database,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StorageErrorDatabase value) database,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StorageErrorDatabase value)? database,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StorageErrorDatabase value)? database,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StorageErrorCopyWith<StorageError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageErrorCopyWith<$Res> {
  factory $StorageErrorCopyWith(
          StorageError value, $Res Function(StorageError) then) =
      _$StorageErrorCopyWithImpl<$Res, StorageError>;
  @useResult
  $Res call({Exception? exception, StackTrace? stackTrace});
}

/// @nodoc
class _$StorageErrorCopyWithImpl<$Res, $Val extends StorageError>
    implements $StorageErrorCopyWith<$Res> {
  _$StorageErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_value.copyWith(
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StorageErrorDatabaseImplCopyWith<$Res>
    implements $StorageErrorCopyWith<$Res> {
  factory _$$StorageErrorDatabaseImplCopyWith(_$StorageErrorDatabaseImpl value,
          $Res Function(_$StorageErrorDatabaseImpl) then) =
      __$$StorageErrorDatabaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Exception? exception, StackTrace? stackTrace});
}

/// @nodoc
class __$$StorageErrorDatabaseImplCopyWithImpl<$Res>
    extends _$StorageErrorCopyWithImpl<$Res, _$StorageErrorDatabaseImpl>
    implements _$$StorageErrorDatabaseImplCopyWith<$Res> {
  __$$StorageErrorDatabaseImplCopyWithImpl(_$StorageErrorDatabaseImpl _value,
      $Res Function(_$StorageErrorDatabaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$StorageErrorDatabaseImpl(
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$StorageErrorDatabaseImpl implements StorageErrorDatabase {
  const _$StorageErrorDatabaseImpl({this.exception, this.stackTrace});

  @override
  final Exception? exception;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'StorageError.database(exception: $exception, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageErrorDatabaseImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception, stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageErrorDatabaseImplCopyWith<_$StorageErrorDatabaseImpl>
      get copyWith =>
          __$$StorageErrorDatabaseImplCopyWithImpl<_$StorageErrorDatabaseImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        database,
  }) {
    return database(exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Exception? exception, StackTrace? stackTrace)? database,
  }) {
    return database?.call(exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception? exception, StackTrace? stackTrace)? database,
    required TResult orElse(),
  }) {
    if (database != null) {
      return database(exception, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StorageErrorDatabase value) database,
  }) {
    return database(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StorageErrorDatabase value)? database,
  }) {
    return database?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StorageErrorDatabase value)? database,
    required TResult orElse(),
  }) {
    if (database != null) {
      return database(this);
    }
    return orElse();
  }
}

abstract class StorageErrorDatabase implements StorageError {
  const factory StorageErrorDatabase(
      {final Exception? exception,
      final StackTrace? stackTrace}) = _$StorageErrorDatabaseImpl;

  @override
  Exception? get exception;
  @override
  StackTrace? get stackTrace;
  @override
  @JsonKey(ignore: true)
  _$$StorageErrorDatabaseImplCopyWith<_$StorageErrorDatabaseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
