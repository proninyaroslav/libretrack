// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'parcel_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ParcelDetailsStateTearOff {
  const _$ParcelDetailsStateTearOff();

  ParcelDetailsStateInitial initial() {
    return const ParcelDetailsStateInitial();
  }

  ParcelDetailsStateNotFound notFound({required String trackNumber}) {
    return ParcelDetailsStateNotFound(
      trackNumber: trackNumber,
    );
  }

  ParcelDetailsStateLoadingFailed loadingFailed(
      {required String trackNumber, StorageError? error}) {
    return ParcelDetailsStateLoadingFailed(
      trackNumber: trackNumber,
      error: error,
    );
  }

  ParcelDetailsStateLoaded loaded(
      {required String trackNumber, required ParcelInfo info}) {
    return ParcelDetailsStateLoaded(
      trackNumber: trackNumber,
      info: info,
    );
  }
}

/// @nodoc
const $ParcelDetailsState = _$ParcelDetailsStateTearOff();

/// @nodoc
mixin _$ParcelDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String trackNumber) notFound,
    required TResult Function(String trackNumber, StorageError? error)
        loadingFailed,
    required TResult Function(String trackNumber, ParcelInfo info) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String trackNumber)? notFound,
    TResult Function(String trackNumber, StorageError? error)? loadingFailed,
    TResult Function(String trackNumber, ParcelInfo info)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String trackNumber)? notFound,
    TResult Function(String trackNumber, StorageError? error)? loadingFailed,
    TResult Function(String trackNumber, ParcelInfo info)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelDetailsStateInitial value) initial,
    required TResult Function(ParcelDetailsStateNotFound value) notFound,
    required TResult Function(ParcelDetailsStateLoadingFailed value)
        loadingFailed,
    required TResult Function(ParcelDetailsStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ParcelDetailsStateInitial value)? initial,
    TResult Function(ParcelDetailsStateNotFound value)? notFound,
    TResult Function(ParcelDetailsStateLoadingFailed value)? loadingFailed,
    TResult Function(ParcelDetailsStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelDetailsStateInitial value)? initial,
    TResult Function(ParcelDetailsStateNotFound value)? notFound,
    TResult Function(ParcelDetailsStateLoadingFailed value)? loadingFailed,
    TResult Function(ParcelDetailsStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelDetailsStateCopyWith<$Res> {
  factory $ParcelDetailsStateCopyWith(
          ParcelDetailsState value, $Res Function(ParcelDetailsState) then) =
      _$ParcelDetailsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParcelDetailsStateCopyWithImpl<$Res>
    implements $ParcelDetailsStateCopyWith<$Res> {
  _$ParcelDetailsStateCopyWithImpl(this._value, this._then);

  final ParcelDetailsState _value;
  // ignore: unused_field
  final $Res Function(ParcelDetailsState) _then;
}

/// @nodoc
abstract class $ParcelDetailsStateInitialCopyWith<$Res> {
  factory $ParcelDetailsStateInitialCopyWith(ParcelDetailsStateInitial value,
          $Res Function(ParcelDetailsStateInitial) then) =
      _$ParcelDetailsStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParcelDetailsStateInitialCopyWithImpl<$Res>
    extends _$ParcelDetailsStateCopyWithImpl<$Res>
    implements $ParcelDetailsStateInitialCopyWith<$Res> {
  _$ParcelDetailsStateInitialCopyWithImpl(ParcelDetailsStateInitial _value,
      $Res Function(ParcelDetailsStateInitial) _then)
      : super(_value, (v) => _then(v as ParcelDetailsStateInitial));

  @override
  ParcelDetailsStateInitial get _value =>
      super._value as ParcelDetailsStateInitial;
}

/// @nodoc

class _$ParcelDetailsStateInitial implements ParcelDetailsStateInitial {
  const _$ParcelDetailsStateInitial();

  @override
  String toString() {
    return 'ParcelDetailsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ParcelDetailsStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String trackNumber) notFound,
    required TResult Function(String trackNumber, StorageError? error)
        loadingFailed,
    required TResult Function(String trackNumber, ParcelInfo info) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String trackNumber)? notFound,
    TResult Function(String trackNumber, StorageError? error)? loadingFailed,
    TResult Function(String trackNumber, ParcelInfo info)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String trackNumber)? notFound,
    TResult Function(String trackNumber, StorageError? error)? loadingFailed,
    TResult Function(String trackNumber, ParcelInfo info)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelDetailsStateInitial value) initial,
    required TResult Function(ParcelDetailsStateNotFound value) notFound,
    required TResult Function(ParcelDetailsStateLoadingFailed value)
        loadingFailed,
    required TResult Function(ParcelDetailsStateLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ParcelDetailsStateInitial value)? initial,
    TResult Function(ParcelDetailsStateNotFound value)? notFound,
    TResult Function(ParcelDetailsStateLoadingFailed value)? loadingFailed,
    TResult Function(ParcelDetailsStateLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelDetailsStateInitial value)? initial,
    TResult Function(ParcelDetailsStateNotFound value)? notFound,
    TResult Function(ParcelDetailsStateLoadingFailed value)? loadingFailed,
    TResult Function(ParcelDetailsStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ParcelDetailsStateInitial implements ParcelDetailsState {
  const factory ParcelDetailsStateInitial() = _$ParcelDetailsStateInitial;
}

/// @nodoc
abstract class $ParcelDetailsStateNotFoundCopyWith<$Res> {
  factory $ParcelDetailsStateNotFoundCopyWith(ParcelDetailsStateNotFound value,
          $Res Function(ParcelDetailsStateNotFound) then) =
      _$ParcelDetailsStateNotFoundCopyWithImpl<$Res>;
  $Res call({String trackNumber});
}

/// @nodoc
class _$ParcelDetailsStateNotFoundCopyWithImpl<$Res>
    extends _$ParcelDetailsStateCopyWithImpl<$Res>
    implements $ParcelDetailsStateNotFoundCopyWith<$Res> {
  _$ParcelDetailsStateNotFoundCopyWithImpl(ParcelDetailsStateNotFound _value,
      $Res Function(ParcelDetailsStateNotFound) _then)
      : super(_value, (v) => _then(v as ParcelDetailsStateNotFound));

  @override
  ParcelDetailsStateNotFound get _value =>
      super._value as ParcelDetailsStateNotFound;

  @override
  $Res call({
    Object? trackNumber = freezed,
  }) {
    return _then(ParcelDetailsStateNotFound(
      trackNumber: trackNumber == freezed
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ParcelDetailsStateNotFound implements ParcelDetailsStateNotFound {
  const _$ParcelDetailsStateNotFound({required this.trackNumber});

  @override
  final String trackNumber;

  @override
  String toString() {
    return 'ParcelDetailsState.notFound(trackNumber: $trackNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParcelDetailsStateNotFound &&
            (identical(other.trackNumber, trackNumber) ||
                const DeepCollectionEquality()
                    .equals(other.trackNumber, trackNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(trackNumber);

  @JsonKey(ignore: true)
  @override
  $ParcelDetailsStateNotFoundCopyWith<ParcelDetailsStateNotFound>
      get copyWith =>
          _$ParcelDetailsStateNotFoundCopyWithImpl<ParcelDetailsStateNotFound>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String trackNumber) notFound,
    required TResult Function(String trackNumber, StorageError? error)
        loadingFailed,
    required TResult Function(String trackNumber, ParcelInfo info) loaded,
  }) {
    return notFound(trackNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String trackNumber)? notFound,
    TResult Function(String trackNumber, StorageError? error)? loadingFailed,
    TResult Function(String trackNumber, ParcelInfo info)? loaded,
  }) {
    return notFound?.call(trackNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String trackNumber)? notFound,
    TResult Function(String trackNumber, StorageError? error)? loadingFailed,
    TResult Function(String trackNumber, ParcelInfo info)? loaded,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(trackNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelDetailsStateInitial value) initial,
    required TResult Function(ParcelDetailsStateNotFound value) notFound,
    required TResult Function(ParcelDetailsStateLoadingFailed value)
        loadingFailed,
    required TResult Function(ParcelDetailsStateLoaded value) loaded,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ParcelDetailsStateInitial value)? initial,
    TResult Function(ParcelDetailsStateNotFound value)? notFound,
    TResult Function(ParcelDetailsStateLoadingFailed value)? loadingFailed,
    TResult Function(ParcelDetailsStateLoaded value)? loaded,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelDetailsStateInitial value)? initial,
    TResult Function(ParcelDetailsStateNotFound value)? notFound,
    TResult Function(ParcelDetailsStateLoadingFailed value)? loadingFailed,
    TResult Function(ParcelDetailsStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class ParcelDetailsStateNotFound implements ParcelDetailsState {
  const factory ParcelDetailsStateNotFound({required String trackNumber}) =
      _$ParcelDetailsStateNotFound;

  String get trackNumber => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParcelDetailsStateNotFoundCopyWith<ParcelDetailsStateNotFound>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelDetailsStateLoadingFailedCopyWith<$Res> {
  factory $ParcelDetailsStateLoadingFailedCopyWith(
          ParcelDetailsStateLoadingFailed value,
          $Res Function(ParcelDetailsStateLoadingFailed) then) =
      _$ParcelDetailsStateLoadingFailedCopyWithImpl<$Res>;
  $Res call({String trackNumber, StorageError? error});

  $StorageErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$ParcelDetailsStateLoadingFailedCopyWithImpl<$Res>
    extends _$ParcelDetailsStateCopyWithImpl<$Res>
    implements $ParcelDetailsStateLoadingFailedCopyWith<$Res> {
  _$ParcelDetailsStateLoadingFailedCopyWithImpl(
      ParcelDetailsStateLoadingFailed _value,
      $Res Function(ParcelDetailsStateLoadingFailed) _then)
      : super(_value, (v) => _then(v as ParcelDetailsStateLoadingFailed));

  @override
  ParcelDetailsStateLoadingFailed get _value =>
      super._value as ParcelDetailsStateLoadingFailed;

  @override
  $Res call({
    Object? trackNumber = freezed,
    Object? error = freezed,
  }) {
    return _then(ParcelDetailsStateLoadingFailed(
      trackNumber: trackNumber == freezed
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as String,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as StorageError?,
    ));
  }

  @override
  $StorageErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $StorageErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$ParcelDetailsStateLoadingFailed
    implements ParcelDetailsStateLoadingFailed {
  const _$ParcelDetailsStateLoadingFailed(
      {required this.trackNumber, this.error});

  @override
  final String trackNumber;
  @override
  final StorageError? error;

  @override
  String toString() {
    return 'ParcelDetailsState.loadingFailed(trackNumber: $trackNumber, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParcelDetailsStateLoadingFailed &&
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
  $ParcelDetailsStateLoadingFailedCopyWith<ParcelDetailsStateLoadingFailed>
      get copyWith => _$ParcelDetailsStateLoadingFailedCopyWithImpl<
          ParcelDetailsStateLoadingFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String trackNumber) notFound,
    required TResult Function(String trackNumber, StorageError? error)
        loadingFailed,
    required TResult Function(String trackNumber, ParcelInfo info) loaded,
  }) {
    return loadingFailed(trackNumber, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String trackNumber)? notFound,
    TResult Function(String trackNumber, StorageError? error)? loadingFailed,
    TResult Function(String trackNumber, ParcelInfo info)? loaded,
  }) {
    return loadingFailed?.call(trackNumber, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String trackNumber)? notFound,
    TResult Function(String trackNumber, StorageError? error)? loadingFailed,
    TResult Function(String trackNumber, ParcelInfo info)? loaded,
    required TResult orElse(),
  }) {
    if (loadingFailed != null) {
      return loadingFailed(trackNumber, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelDetailsStateInitial value) initial,
    required TResult Function(ParcelDetailsStateNotFound value) notFound,
    required TResult Function(ParcelDetailsStateLoadingFailed value)
        loadingFailed,
    required TResult Function(ParcelDetailsStateLoaded value) loaded,
  }) {
    return loadingFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ParcelDetailsStateInitial value)? initial,
    TResult Function(ParcelDetailsStateNotFound value)? notFound,
    TResult Function(ParcelDetailsStateLoadingFailed value)? loadingFailed,
    TResult Function(ParcelDetailsStateLoaded value)? loaded,
  }) {
    return loadingFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelDetailsStateInitial value)? initial,
    TResult Function(ParcelDetailsStateNotFound value)? notFound,
    TResult Function(ParcelDetailsStateLoadingFailed value)? loadingFailed,
    TResult Function(ParcelDetailsStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadingFailed != null) {
      return loadingFailed(this);
    }
    return orElse();
  }
}

abstract class ParcelDetailsStateLoadingFailed implements ParcelDetailsState {
  const factory ParcelDetailsStateLoadingFailed(
      {required String trackNumber,
      StorageError? error}) = _$ParcelDetailsStateLoadingFailed;

  String get trackNumber => throw _privateConstructorUsedError;
  StorageError? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParcelDetailsStateLoadingFailedCopyWith<ParcelDetailsStateLoadingFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelDetailsStateLoadedCopyWith<$Res> {
  factory $ParcelDetailsStateLoadedCopyWith(ParcelDetailsStateLoaded value,
          $Res Function(ParcelDetailsStateLoaded) then) =
      _$ParcelDetailsStateLoadedCopyWithImpl<$Res>;
  $Res call({String trackNumber, ParcelInfo info});

  $ParcelInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$ParcelDetailsStateLoadedCopyWithImpl<$Res>
    extends _$ParcelDetailsStateCopyWithImpl<$Res>
    implements $ParcelDetailsStateLoadedCopyWith<$Res> {
  _$ParcelDetailsStateLoadedCopyWithImpl(ParcelDetailsStateLoaded _value,
      $Res Function(ParcelDetailsStateLoaded) _then)
      : super(_value, (v) => _then(v as ParcelDetailsStateLoaded));

  @override
  ParcelDetailsStateLoaded get _value =>
      super._value as ParcelDetailsStateLoaded;

  @override
  $Res call({
    Object? trackNumber = freezed,
    Object? info = freezed,
  }) {
    return _then(ParcelDetailsStateLoaded(
      trackNumber: trackNumber == freezed
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as String,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as ParcelInfo,
    ));
  }

  @override
  $ParcelInfoCopyWith<$Res> get info {
    return $ParcelInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc

class _$ParcelDetailsStateLoaded implements ParcelDetailsStateLoaded {
  const _$ParcelDetailsStateLoaded(
      {required this.trackNumber, required this.info});

  @override
  final String trackNumber;
  @override
  final ParcelInfo info;

  @override
  String toString() {
    return 'ParcelDetailsState.loaded(trackNumber: $trackNumber, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParcelDetailsStateLoaded &&
            (identical(other.trackNumber, trackNumber) ||
                const DeepCollectionEquality()
                    .equals(other.trackNumber, trackNumber)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(trackNumber) ^
      const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  $ParcelDetailsStateLoadedCopyWith<ParcelDetailsStateLoaded> get copyWith =>
      _$ParcelDetailsStateLoadedCopyWithImpl<ParcelDetailsStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String trackNumber) notFound,
    required TResult Function(String trackNumber, StorageError? error)
        loadingFailed,
    required TResult Function(String trackNumber, ParcelInfo info) loaded,
  }) {
    return loaded(trackNumber, info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String trackNumber)? notFound,
    TResult Function(String trackNumber, StorageError? error)? loadingFailed,
    TResult Function(String trackNumber, ParcelInfo info)? loaded,
  }) {
    return loaded?.call(trackNumber, info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String trackNumber)? notFound,
    TResult Function(String trackNumber, StorageError? error)? loadingFailed,
    TResult Function(String trackNumber, ParcelInfo info)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(trackNumber, info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelDetailsStateInitial value) initial,
    required TResult Function(ParcelDetailsStateNotFound value) notFound,
    required TResult Function(ParcelDetailsStateLoadingFailed value)
        loadingFailed,
    required TResult Function(ParcelDetailsStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ParcelDetailsStateInitial value)? initial,
    TResult Function(ParcelDetailsStateNotFound value)? notFound,
    TResult Function(ParcelDetailsStateLoadingFailed value)? loadingFailed,
    TResult Function(ParcelDetailsStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelDetailsStateInitial value)? initial,
    TResult Function(ParcelDetailsStateNotFound value)? notFound,
    TResult Function(ParcelDetailsStateLoadingFailed value)? loadingFailed,
    TResult Function(ParcelDetailsStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ParcelDetailsStateLoaded implements ParcelDetailsState {
  const factory ParcelDetailsStateLoaded(
      {required String trackNumber,
      required ParcelInfo info}) = _$ParcelDetailsStateLoaded;

  String get trackNumber => throw _privateConstructorUsedError;
  ParcelInfo get info => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParcelDetailsStateLoadedCopyWith<ParcelDetailsStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$_BuildResultTearOff {
  const _$_BuildResultTearOff();

  _BuildResultData call({required ParcelInfo info}) {
    return _BuildResultData(
      info: info,
    );
  }

  _BuildResultNotFound notFound() {
    return const _BuildResultNotFound();
  }

  _BuildResultFailed failed({required StorageError error}) {
    return _BuildResultFailed(
      error: error,
    );
  }
}

/// @nodoc
const _$BuildResult = _$_BuildResultTearOff();

/// @nodoc
mixin _$_BuildResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ParcelInfo info) $default, {
    required TResult Function() notFound,
    required TResult Function(StorageError error) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(ParcelInfo info)? $default, {
    TResult Function()? notFound,
    TResult Function(StorageError error)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ParcelInfo info)? $default, {
    TResult Function()? notFound,
    TResult Function(StorageError error)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BuildResultData value) $default, {
    required TResult Function(_BuildResultNotFound value) notFound,
    required TResult Function(_BuildResultFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_BuildResultData value)? $default, {
    TResult Function(_BuildResultNotFound value)? notFound,
    TResult Function(_BuildResultFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BuildResultData value)? $default, {
    TResult Function(_BuildResultNotFound value)? notFound,
    TResult Function(_BuildResultFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BuildResultCopyWith<$Res> {
  factory _$BuildResultCopyWith(
          _BuildResult value, $Res Function(_BuildResult) then) =
      __$BuildResultCopyWithImpl<$Res>;
}

/// @nodoc
class __$BuildResultCopyWithImpl<$Res> implements _$BuildResultCopyWith<$Res> {
  __$BuildResultCopyWithImpl(this._value, this._then);

  final _BuildResult _value;
  // ignore: unused_field
  final $Res Function(_BuildResult) _then;
}

/// @nodoc
abstract class _$BuildResultDataCopyWith<$Res> {
  factory _$BuildResultDataCopyWith(
          _BuildResultData value, $Res Function(_BuildResultData) then) =
      __$BuildResultDataCopyWithImpl<$Res>;
  $Res call({ParcelInfo info});

  $ParcelInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$BuildResultDataCopyWithImpl<$Res>
    extends __$BuildResultCopyWithImpl<$Res>
    implements _$BuildResultDataCopyWith<$Res> {
  __$BuildResultDataCopyWithImpl(
      _BuildResultData _value, $Res Function(_BuildResultData) _then)
      : super(_value, (v) => _then(v as _BuildResultData));

  @override
  _BuildResultData get _value => super._value as _BuildResultData;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(_BuildResultData(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as ParcelInfo,
    ));
  }

  @override
  $ParcelInfoCopyWith<$Res> get info {
    return $ParcelInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc

class _$_BuildResultData implements _BuildResultData {
  const _$_BuildResultData({required this.info});

  @override
  final ParcelInfo info;

  @override
  String toString() {
    return '_BuildResult(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BuildResultData &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  _$BuildResultDataCopyWith<_BuildResultData> get copyWith =>
      __$BuildResultDataCopyWithImpl<_BuildResultData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ParcelInfo info) $default, {
    required TResult Function() notFound,
    required TResult Function(StorageError error) failed,
  }) {
    return $default(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(ParcelInfo info)? $default, {
    TResult Function()? notFound,
    TResult Function(StorageError error)? failed,
  }) {
    return $default?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ParcelInfo info)? $default, {
    TResult Function()? notFound,
    TResult Function(StorageError error)? failed,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BuildResultData value) $default, {
    required TResult Function(_BuildResultNotFound value) notFound,
    required TResult Function(_BuildResultFailed value) failed,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_BuildResultData value)? $default, {
    TResult Function(_BuildResultNotFound value)? notFound,
    TResult Function(_BuildResultFailed value)? failed,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BuildResultData value)? $default, {
    TResult Function(_BuildResultNotFound value)? notFound,
    TResult Function(_BuildResultFailed value)? failed,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _BuildResultData implements _BuildResult {
  const factory _BuildResultData({required ParcelInfo info}) =
      _$_BuildResultData;

  ParcelInfo get info => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$BuildResultDataCopyWith<_BuildResultData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BuildResultNotFoundCopyWith<$Res> {
  factory _$BuildResultNotFoundCopyWith(_BuildResultNotFound value,
          $Res Function(_BuildResultNotFound) then) =
      __$BuildResultNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$BuildResultNotFoundCopyWithImpl<$Res>
    extends __$BuildResultCopyWithImpl<$Res>
    implements _$BuildResultNotFoundCopyWith<$Res> {
  __$BuildResultNotFoundCopyWithImpl(
      _BuildResultNotFound _value, $Res Function(_BuildResultNotFound) _then)
      : super(_value, (v) => _then(v as _BuildResultNotFound));

  @override
  _BuildResultNotFound get _value => super._value as _BuildResultNotFound;
}

/// @nodoc

class _$_BuildResultNotFound implements _BuildResultNotFound {
  const _$_BuildResultNotFound();

  @override
  String toString() {
    return '_BuildResult.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _BuildResultNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ParcelInfo info) $default, {
    required TResult Function() notFound,
    required TResult Function(StorageError error) failed,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(ParcelInfo info)? $default, {
    TResult Function()? notFound,
    TResult Function(StorageError error)? failed,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ParcelInfo info)? $default, {
    TResult Function()? notFound,
    TResult Function(StorageError error)? failed,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BuildResultData value) $default, {
    required TResult Function(_BuildResultNotFound value) notFound,
    required TResult Function(_BuildResultFailed value) failed,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_BuildResultData value)? $default, {
    TResult Function(_BuildResultNotFound value)? notFound,
    TResult Function(_BuildResultFailed value)? failed,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BuildResultData value)? $default, {
    TResult Function(_BuildResultNotFound value)? notFound,
    TResult Function(_BuildResultFailed value)? failed,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _BuildResultNotFound implements _BuildResult {
  const factory _BuildResultNotFound() = _$_BuildResultNotFound;
}

/// @nodoc
abstract class _$BuildResultFailedCopyWith<$Res> {
  factory _$BuildResultFailedCopyWith(
          _BuildResultFailed value, $Res Function(_BuildResultFailed) then) =
      __$BuildResultFailedCopyWithImpl<$Res>;
  $Res call({StorageError error});

  $StorageErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$BuildResultFailedCopyWithImpl<$Res>
    extends __$BuildResultCopyWithImpl<$Res>
    implements _$BuildResultFailedCopyWith<$Res> {
  __$BuildResultFailedCopyWithImpl(
      _BuildResultFailed _value, $Res Function(_BuildResultFailed) _then)
      : super(_value, (v) => _then(v as _BuildResultFailed));

  @override
  _BuildResultFailed get _value => super._value as _BuildResultFailed;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_BuildResultFailed(
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

class _$_BuildResultFailed implements _BuildResultFailed {
  const _$_BuildResultFailed({required this.error});

  @override
  final StorageError error;

  @override
  String toString() {
    return '_BuildResult.failed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BuildResultFailed &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$BuildResultFailedCopyWith<_BuildResultFailed> get copyWith =>
      __$BuildResultFailedCopyWithImpl<_BuildResultFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ParcelInfo info) $default, {
    required TResult Function() notFound,
    required TResult Function(StorageError error) failed,
  }) {
    return failed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(ParcelInfo info)? $default, {
    TResult Function()? notFound,
    TResult Function(StorageError error)? failed,
  }) {
    return failed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ParcelInfo info)? $default, {
    TResult Function()? notFound,
    TResult Function(StorageError error)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BuildResultData value) $default, {
    required TResult Function(_BuildResultNotFound value) notFound,
    required TResult Function(_BuildResultFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_BuildResultData value)? $default, {
    TResult Function(_BuildResultNotFound value)? notFound,
    TResult Function(_BuildResultFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BuildResultData value)? $default, {
    TResult Function(_BuildResultNotFound value)? notFound,
    TResult Function(_BuildResultFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _BuildResultFailed implements _BuildResult {
  const factory _BuildResultFailed({required StorageError error}) =
      _$_BuildResultFailed;

  StorageError get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$BuildResultFailedCopyWith<_BuildResultFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
