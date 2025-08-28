// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parcel_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
    TResult? Function()? initial,
    TResult? Function(String trackNumber)? notFound,
    TResult? Function(String trackNumber, StorageError? error)? loadingFailed,
    TResult? Function(String trackNumber, ParcelInfo info)? loaded,
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
    TResult? Function(ParcelDetailsStateInitial value)? initial,
    TResult? Function(ParcelDetailsStateNotFound value)? notFound,
    TResult? Function(ParcelDetailsStateLoadingFailed value)? loadingFailed,
    TResult? Function(ParcelDetailsStateLoaded value)? loaded,
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
      _$ParcelDetailsStateCopyWithImpl<$Res, ParcelDetailsState>;
}

/// @nodoc
class _$ParcelDetailsStateCopyWithImpl<$Res, $Val extends ParcelDetailsState>
    implements $ParcelDetailsStateCopyWith<$Res> {
  _$ParcelDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ParcelDetailsStateInitialImplCopyWith<$Res> {
  factory _$$ParcelDetailsStateInitialImplCopyWith(
          _$ParcelDetailsStateInitialImpl value,
          $Res Function(_$ParcelDetailsStateInitialImpl) then) =
      __$$ParcelDetailsStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ParcelDetailsStateInitialImplCopyWithImpl<$Res>
    extends _$ParcelDetailsStateCopyWithImpl<$Res,
        _$ParcelDetailsStateInitialImpl>
    implements _$$ParcelDetailsStateInitialImplCopyWith<$Res> {
  __$$ParcelDetailsStateInitialImplCopyWithImpl(
      _$ParcelDetailsStateInitialImpl _value,
      $Res Function(_$ParcelDetailsStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ParcelDetailsStateInitialImpl
    with DiagnosticableTreeMixin
    implements ParcelDetailsStateInitial {
  const _$ParcelDetailsStateInitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParcelDetailsState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ParcelDetailsState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelDetailsStateInitialImpl);
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
    TResult? Function()? initial,
    TResult? Function(String trackNumber)? notFound,
    TResult? Function(String trackNumber, StorageError? error)? loadingFailed,
    TResult? Function(String trackNumber, ParcelInfo info)? loaded,
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
    TResult? Function(ParcelDetailsStateInitial value)? initial,
    TResult? Function(ParcelDetailsStateNotFound value)? notFound,
    TResult? Function(ParcelDetailsStateLoadingFailed value)? loadingFailed,
    TResult? Function(ParcelDetailsStateLoaded value)? loaded,
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
  const factory ParcelDetailsStateInitial() = _$ParcelDetailsStateInitialImpl;
}

/// @nodoc
abstract class _$$ParcelDetailsStateNotFoundImplCopyWith<$Res> {
  factory _$$ParcelDetailsStateNotFoundImplCopyWith(
          _$ParcelDetailsStateNotFoundImpl value,
          $Res Function(_$ParcelDetailsStateNotFoundImpl) then) =
      __$$ParcelDetailsStateNotFoundImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String trackNumber});
}

/// @nodoc
class __$$ParcelDetailsStateNotFoundImplCopyWithImpl<$Res>
    extends _$ParcelDetailsStateCopyWithImpl<$Res,
        _$ParcelDetailsStateNotFoundImpl>
    implements _$$ParcelDetailsStateNotFoundImplCopyWith<$Res> {
  __$$ParcelDetailsStateNotFoundImplCopyWithImpl(
      _$ParcelDetailsStateNotFoundImpl _value,
      $Res Function(_$ParcelDetailsStateNotFoundImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackNumber = null,
  }) {
    return _then(_$ParcelDetailsStateNotFoundImpl(
      trackNumber: null == trackNumber
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ParcelDetailsStateNotFoundImpl
    with DiagnosticableTreeMixin
    implements ParcelDetailsStateNotFound {
  const _$ParcelDetailsStateNotFoundImpl({required this.trackNumber});

  @override
  final String trackNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParcelDetailsState.notFound(trackNumber: $trackNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParcelDetailsState.notFound'))
      ..add(DiagnosticsProperty('trackNumber', trackNumber));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelDetailsStateNotFoundImpl &&
            (identical(other.trackNumber, trackNumber) ||
                other.trackNumber == trackNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trackNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParcelDetailsStateNotFoundImplCopyWith<_$ParcelDetailsStateNotFoundImpl>
      get copyWith => __$$ParcelDetailsStateNotFoundImplCopyWithImpl<
          _$ParcelDetailsStateNotFoundImpl>(this, _$identity);

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
    TResult? Function()? initial,
    TResult? Function(String trackNumber)? notFound,
    TResult? Function(String trackNumber, StorageError? error)? loadingFailed,
    TResult? Function(String trackNumber, ParcelInfo info)? loaded,
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
    TResult? Function(ParcelDetailsStateInitial value)? initial,
    TResult? Function(ParcelDetailsStateNotFound value)? notFound,
    TResult? Function(ParcelDetailsStateLoadingFailed value)? loadingFailed,
    TResult? Function(ParcelDetailsStateLoaded value)? loaded,
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
  const factory ParcelDetailsStateNotFound(
      {required final String trackNumber}) = _$ParcelDetailsStateNotFoundImpl;

  String get trackNumber;
  @JsonKey(ignore: true)
  _$$ParcelDetailsStateNotFoundImplCopyWith<_$ParcelDetailsStateNotFoundImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParcelDetailsStateLoadingFailedImplCopyWith<$Res> {
  factory _$$ParcelDetailsStateLoadingFailedImplCopyWith(
          _$ParcelDetailsStateLoadingFailedImpl value,
          $Res Function(_$ParcelDetailsStateLoadingFailedImpl) then) =
      __$$ParcelDetailsStateLoadingFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String trackNumber, StorageError? error});

  $StorageErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$ParcelDetailsStateLoadingFailedImplCopyWithImpl<$Res>
    extends _$ParcelDetailsStateCopyWithImpl<$Res,
        _$ParcelDetailsStateLoadingFailedImpl>
    implements _$$ParcelDetailsStateLoadingFailedImplCopyWith<$Res> {
  __$$ParcelDetailsStateLoadingFailedImplCopyWithImpl(
      _$ParcelDetailsStateLoadingFailedImpl _value,
      $Res Function(_$ParcelDetailsStateLoadingFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackNumber = null,
    Object? error = freezed,
  }) {
    return _then(_$ParcelDetailsStateLoadingFailedImpl(
      trackNumber: null == trackNumber
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as StorageError?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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

class _$ParcelDetailsStateLoadingFailedImpl
    with DiagnosticableTreeMixin
    implements ParcelDetailsStateLoadingFailed {
  const _$ParcelDetailsStateLoadingFailedImpl(
      {required this.trackNumber, this.error});

  @override
  final String trackNumber;
  @override
  final StorageError? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParcelDetailsState.loadingFailed(trackNumber: $trackNumber, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParcelDetailsState.loadingFailed'))
      ..add(DiagnosticsProperty('trackNumber', trackNumber))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelDetailsStateLoadingFailedImpl &&
            (identical(other.trackNumber, trackNumber) ||
                other.trackNumber == trackNumber) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trackNumber, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParcelDetailsStateLoadingFailedImplCopyWith<
          _$ParcelDetailsStateLoadingFailedImpl>
      get copyWith => __$$ParcelDetailsStateLoadingFailedImplCopyWithImpl<
          _$ParcelDetailsStateLoadingFailedImpl>(this, _$identity);

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
    TResult? Function()? initial,
    TResult? Function(String trackNumber)? notFound,
    TResult? Function(String trackNumber, StorageError? error)? loadingFailed,
    TResult? Function(String trackNumber, ParcelInfo info)? loaded,
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
    TResult? Function(ParcelDetailsStateInitial value)? initial,
    TResult? Function(ParcelDetailsStateNotFound value)? notFound,
    TResult? Function(ParcelDetailsStateLoadingFailed value)? loadingFailed,
    TResult? Function(ParcelDetailsStateLoaded value)? loaded,
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
      {required final String trackNumber,
      final StorageError? error}) = _$ParcelDetailsStateLoadingFailedImpl;

  String get trackNumber;
  StorageError? get error;
  @JsonKey(ignore: true)
  _$$ParcelDetailsStateLoadingFailedImplCopyWith<
          _$ParcelDetailsStateLoadingFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParcelDetailsStateLoadedImplCopyWith<$Res> {
  factory _$$ParcelDetailsStateLoadedImplCopyWith(
          _$ParcelDetailsStateLoadedImpl value,
          $Res Function(_$ParcelDetailsStateLoadedImpl) then) =
      __$$ParcelDetailsStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String trackNumber, ParcelInfo info});

  $ParcelInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$ParcelDetailsStateLoadedImplCopyWithImpl<$Res>
    extends _$ParcelDetailsStateCopyWithImpl<$Res,
        _$ParcelDetailsStateLoadedImpl>
    implements _$$ParcelDetailsStateLoadedImplCopyWith<$Res> {
  __$$ParcelDetailsStateLoadedImplCopyWithImpl(
      _$ParcelDetailsStateLoadedImpl _value,
      $Res Function(_$ParcelDetailsStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackNumber = null,
    Object? info = null,
  }) {
    return _then(_$ParcelDetailsStateLoadedImpl(
      trackNumber: null == trackNumber
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as String,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as ParcelInfo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ParcelInfoCopyWith<$Res> get info {
    return $ParcelInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc

class _$ParcelDetailsStateLoadedImpl
    with DiagnosticableTreeMixin
    implements ParcelDetailsStateLoaded {
  const _$ParcelDetailsStateLoadedImpl(
      {required this.trackNumber, required this.info});

  @override
  final String trackNumber;
  @override
  final ParcelInfo info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParcelDetailsState.loaded(trackNumber: $trackNumber, info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParcelDetailsState.loaded'))
      ..add(DiagnosticsProperty('trackNumber', trackNumber))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelDetailsStateLoadedImpl &&
            (identical(other.trackNumber, trackNumber) ||
                other.trackNumber == trackNumber) &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trackNumber, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParcelDetailsStateLoadedImplCopyWith<_$ParcelDetailsStateLoadedImpl>
      get copyWith => __$$ParcelDetailsStateLoadedImplCopyWithImpl<
          _$ParcelDetailsStateLoadedImpl>(this, _$identity);

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
    TResult? Function()? initial,
    TResult? Function(String trackNumber)? notFound,
    TResult? Function(String trackNumber, StorageError? error)? loadingFailed,
    TResult? Function(String trackNumber, ParcelInfo info)? loaded,
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
    TResult? Function(ParcelDetailsStateInitial value)? initial,
    TResult? Function(ParcelDetailsStateNotFound value)? notFound,
    TResult? Function(ParcelDetailsStateLoadingFailed value)? loadingFailed,
    TResult? Function(ParcelDetailsStateLoaded value)? loaded,
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
      {required final String trackNumber,
      required final ParcelInfo info}) = _$ParcelDetailsStateLoadedImpl;

  String get trackNumber;
  ParcelInfo get info;
  @JsonKey(ignore: true)
  _$$ParcelDetailsStateLoadedImplCopyWith<_$ParcelDetailsStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
