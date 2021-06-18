// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'storage_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StorageResultTearOff {
  const _$StorageResultTearOff();

  StorageResultValue<T> call<T>(T value) {
    return StorageResultValue<T>(
      value,
    );
  }

  StorageResultError<T> error<T>(StorageError value) {
    return StorageResultError<T>(
      value,
    );
  }
}

/// @nodoc
const $StorageResult = _$StorageResultTearOff();

/// @nodoc
mixin _$StorageResult<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T value) $default, {
    required TResult Function(StorageError value) error,
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
      _$StorageResultCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$StorageResultCopyWithImpl<T, $Res>
    implements $StorageResultCopyWith<T, $Res> {
  _$StorageResultCopyWithImpl(this._value, this._then);

  final StorageResult<T> _value;
  // ignore: unused_field
  final $Res Function(StorageResult<T>) _then;
}

/// @nodoc
abstract class $StorageResultValueCopyWith<T, $Res> {
  factory $StorageResultValueCopyWith(StorageResultValue<T> value,
          $Res Function(StorageResultValue<T>) then) =
      _$StorageResultValueCopyWithImpl<T, $Res>;
  $Res call({T value});
}

/// @nodoc
class _$StorageResultValueCopyWithImpl<T, $Res>
    extends _$StorageResultCopyWithImpl<T, $Res>
    implements $StorageResultValueCopyWith<T, $Res> {
  _$StorageResultValueCopyWithImpl(
      StorageResultValue<T> _value, $Res Function(StorageResultValue<T>) _then)
      : super(_value, (v) => _then(v as StorageResultValue<T>));

  @override
  StorageResultValue<T> get _value => super._value as StorageResultValue<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(StorageResultValue<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$StorageResultValue<T> implements StorageResultValue<T> {
  const _$StorageResultValue(this.value);

  @override
  final T value;

  @override
  String toString() {
    return 'StorageResult<$T>(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StorageResultValue<T> &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $StorageResultValueCopyWith<T, StorageResultValue<T>> get copyWith =>
      _$StorageResultValueCopyWithImpl<T, StorageResultValue<T>>(
          this, _$identity);

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
  const factory StorageResultValue(T value) = _$StorageResultValue<T>;

  T get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StorageResultValueCopyWith<T, StorageResultValue<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageResultErrorCopyWith<T, $Res> {
  factory $StorageResultErrorCopyWith(StorageResultError<T> value,
          $Res Function(StorageResultError<T>) then) =
      _$StorageResultErrorCopyWithImpl<T, $Res>;
  $Res call({StorageError value});

  $StorageErrorCopyWith<$Res> get value;
}

/// @nodoc
class _$StorageResultErrorCopyWithImpl<T, $Res>
    extends _$StorageResultCopyWithImpl<T, $Res>
    implements $StorageResultErrorCopyWith<T, $Res> {
  _$StorageResultErrorCopyWithImpl(
      StorageResultError<T> _value, $Res Function(StorageResultError<T>) _then)
      : super(_value, (v) => _then(v as StorageResultError<T>));

  @override
  StorageResultError<T> get _value => super._value as StorageResultError<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(StorageResultError<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as StorageError,
    ));
  }

  @override
  $StorageErrorCopyWith<$Res> get value {
    return $StorageErrorCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc

class _$StorageResultError<T> implements StorageResultError<T> {
  const _$StorageResultError(this.value);

  @override
  final StorageError value;

  @override
  String toString() {
    return 'StorageResult<$T>.error(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StorageResultError<T> &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $StorageResultErrorCopyWith<T, StorageResultError<T>> get copyWith =>
      _$StorageResultErrorCopyWithImpl<T, StorageResultError<T>>(
          this, _$identity);

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
  const factory StorageResultError(StorageError value) =
      _$StorageResultError<T>;

  StorageError get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StorageResultErrorCopyWith<T, StorageResultError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$StorageErrorTearOff {
  const _$StorageErrorTearOff();

  StorageErrorDatabase database(
      {Exception? exception, StackTrace? stackTrace}) {
    return StorageErrorDatabase(
      exception: exception,
      stackTrace: stackTrace,
    );
  }
}

/// @nodoc
const $StorageError = _$StorageErrorTearOff();

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
      _$StorageErrorCopyWithImpl<$Res>;
  $Res call({Exception? exception, StackTrace? stackTrace});
}

/// @nodoc
class _$StorageErrorCopyWithImpl<$Res> implements $StorageErrorCopyWith<$Res> {
  _$StorageErrorCopyWithImpl(this._value, this._then);

  final StorageError _value;
  // ignore: unused_field
  final $Res Function(StorageError) _then;

  @override
  $Res call({
    Object? exception = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_value.copyWith(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc
abstract class $StorageErrorDatabaseCopyWith<$Res>
    implements $StorageErrorCopyWith<$Res> {
  factory $StorageErrorDatabaseCopyWith(StorageErrorDatabase value,
          $Res Function(StorageErrorDatabase) then) =
      _$StorageErrorDatabaseCopyWithImpl<$Res>;
  @override
  $Res call({Exception? exception, StackTrace? stackTrace});
}

/// @nodoc
class _$StorageErrorDatabaseCopyWithImpl<$Res>
    extends _$StorageErrorCopyWithImpl<$Res>
    implements $StorageErrorDatabaseCopyWith<$Res> {
  _$StorageErrorDatabaseCopyWithImpl(
      StorageErrorDatabase _value, $Res Function(StorageErrorDatabase) _then)
      : super(_value, (v) => _then(v as StorageErrorDatabase));

  @override
  StorageErrorDatabase get _value => super._value as StorageErrorDatabase;

  @override
  $Res call({
    Object? exception = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(StorageErrorDatabase(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$StorageErrorDatabase implements StorageErrorDatabase {
  const _$StorageErrorDatabase({this.exception, this.stackTrace});

  @override
  final Exception? exception;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'StorageError.database(exception: $exception, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StorageErrorDatabase &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality()
                    .equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exception) ^
      const DeepCollectionEquality().hash(stackTrace);

  @JsonKey(ignore: true)
  @override
  $StorageErrorDatabaseCopyWith<StorageErrorDatabase> get copyWith =>
      _$StorageErrorDatabaseCopyWithImpl<StorageErrorDatabase>(
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
      {Exception? exception, StackTrace? stackTrace}) = _$StorageErrorDatabase;

  @override
  Exception? get exception => throw _privateConstructorUsedError;
  @override
  StackTrace? get stackTrace => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $StorageErrorDatabaseCopyWith<StorageErrorDatabase> get copyWith =>
      throw _privateConstructorUsedError;
}
