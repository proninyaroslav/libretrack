// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ServiceInfoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TrackingServiceInfo info, AuthData authData,
            bool isAuthStorageSecured)
        loaded,
    required TResult Function(StorageError? error) loadingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TrackingServiceInfo info, AuthData authData,
            bool isAuthStorageSecured)?
        loaded,
    TResult? Function(StorageError? error)? loadingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TrackingServiceInfo info, AuthData authData,
            bool isAuthStorageSecured)?
        loaded,
    TResult Function(StorageError? error)? loadingFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServiceInfoStateInitial value) initial,
    required TResult Function(_ServiceInfoStateLoaded value) loaded,
    required TResult Function(ServiceInfoStateLoadingFailed value)
        loadingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServiceInfoStateInitial value)? initial,
    TResult? Function(_ServiceInfoStateLoaded value)? loaded,
    TResult? Function(ServiceInfoStateLoadingFailed value)? loadingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServiceInfoStateInitial value)? initial,
    TResult Function(_ServiceInfoStateLoaded value)? loaded,
    TResult Function(ServiceInfoStateLoadingFailed value)? loadingFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceInfoStateCopyWith<$Res> {
  factory $ServiceInfoStateCopyWith(
          ServiceInfoState value, $Res Function(ServiceInfoState) then) =
      _$ServiceInfoStateCopyWithImpl<$Res, ServiceInfoState>;
}

/// @nodoc
class _$ServiceInfoStateCopyWithImpl<$Res, $Val extends ServiceInfoState>
    implements $ServiceInfoStateCopyWith<$Res> {
  _$ServiceInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServiceInfoStateInitialImplCopyWith<$Res> {
  factory _$$ServiceInfoStateInitialImplCopyWith(
          _$ServiceInfoStateInitialImpl value,
          $Res Function(_$ServiceInfoStateInitialImpl) then) =
      __$$ServiceInfoStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServiceInfoStateInitialImplCopyWithImpl<$Res>
    extends _$ServiceInfoStateCopyWithImpl<$Res, _$ServiceInfoStateInitialImpl>
    implements _$$ServiceInfoStateInitialImplCopyWith<$Res> {
  __$$ServiceInfoStateInitialImplCopyWithImpl(
      _$ServiceInfoStateInitialImpl _value,
      $Res Function(_$ServiceInfoStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServiceInfoStateInitialImpl
    with DiagnosticableTreeMixin
    implements _ServiceInfoStateInitial {
  const _$ServiceInfoStateInitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceInfoState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ServiceInfoState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceInfoStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TrackingServiceInfo info, AuthData authData,
            bool isAuthStorageSecured)
        loaded,
    required TResult Function(StorageError? error) loadingFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TrackingServiceInfo info, AuthData authData,
            bool isAuthStorageSecured)?
        loaded,
    TResult? Function(StorageError? error)? loadingFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TrackingServiceInfo info, AuthData authData,
            bool isAuthStorageSecured)?
        loaded,
    TResult Function(StorageError? error)? loadingFailed,
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
    required TResult Function(_ServiceInfoStateInitial value) initial,
    required TResult Function(_ServiceInfoStateLoaded value) loaded,
    required TResult Function(ServiceInfoStateLoadingFailed value)
        loadingFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServiceInfoStateInitial value)? initial,
    TResult? Function(_ServiceInfoStateLoaded value)? loaded,
    TResult? Function(ServiceInfoStateLoadingFailed value)? loadingFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServiceInfoStateInitial value)? initial,
    TResult Function(_ServiceInfoStateLoaded value)? loaded,
    TResult Function(ServiceInfoStateLoadingFailed value)? loadingFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ServiceInfoStateInitial implements ServiceInfoState {
  const factory _ServiceInfoStateInitial() = _$ServiceInfoStateInitialImpl;
}

/// @nodoc
abstract class _$$ServiceInfoStateLoadedImplCopyWith<$Res> {
  factory _$$ServiceInfoStateLoadedImplCopyWith(
          _$ServiceInfoStateLoadedImpl value,
          $Res Function(_$ServiceInfoStateLoadedImpl) then) =
      __$$ServiceInfoStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {TrackingServiceInfo info, AuthData authData, bool isAuthStorageSecured});
}

/// @nodoc
class __$$ServiceInfoStateLoadedImplCopyWithImpl<$Res>
    extends _$ServiceInfoStateCopyWithImpl<$Res, _$ServiceInfoStateLoadedImpl>
    implements _$$ServiceInfoStateLoadedImplCopyWith<$Res> {
  __$$ServiceInfoStateLoadedImplCopyWithImpl(
      _$ServiceInfoStateLoadedImpl _value,
      $Res Function(_$ServiceInfoStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? authData = null,
    Object? isAuthStorageSecured = null,
  }) {
    return _then(_$ServiceInfoStateLoadedImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as TrackingServiceInfo,
      authData: null == authData
          ? _value.authData
          : authData // ignore: cast_nullable_to_non_nullable
              as AuthData,
      isAuthStorageSecured: null == isAuthStorageSecured
          ? _value.isAuthStorageSecured
          : isAuthStorageSecured // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ServiceInfoStateLoadedImpl
    with DiagnosticableTreeMixin
    implements _ServiceInfoStateLoaded {
  const _$ServiceInfoStateLoadedImpl(
      {required this.info,
      required this.authData,
      required this.isAuthStorageSecured});

  @override
  final TrackingServiceInfo info;
  @override
  final AuthData authData;
  @override
  final bool isAuthStorageSecured;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceInfoState.loaded(info: $info, authData: $authData, isAuthStorageSecured: $isAuthStorageSecured)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceInfoState.loaded'))
      ..add(DiagnosticsProperty('info', info))
      ..add(DiagnosticsProperty('authData', authData))
      ..add(DiagnosticsProperty('isAuthStorageSecured', isAuthStorageSecured));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceInfoStateLoadedImpl &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other.authData, authData) &&
            (identical(other.isAuthStorageSecured, isAuthStorageSecured) ||
                other.isAuthStorageSecured == isAuthStorageSecured));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info,
      const DeepCollectionEquality().hash(authData), isAuthStorageSecured);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceInfoStateLoadedImplCopyWith<_$ServiceInfoStateLoadedImpl>
      get copyWith => __$$ServiceInfoStateLoadedImplCopyWithImpl<
          _$ServiceInfoStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TrackingServiceInfo info, AuthData authData,
            bool isAuthStorageSecured)
        loaded,
    required TResult Function(StorageError? error) loadingFailed,
  }) {
    return loaded(info, authData, isAuthStorageSecured);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TrackingServiceInfo info, AuthData authData,
            bool isAuthStorageSecured)?
        loaded,
    TResult? Function(StorageError? error)? loadingFailed,
  }) {
    return loaded?.call(info, authData, isAuthStorageSecured);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TrackingServiceInfo info, AuthData authData,
            bool isAuthStorageSecured)?
        loaded,
    TResult Function(StorageError? error)? loadingFailed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(info, authData, isAuthStorageSecured);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServiceInfoStateInitial value) initial,
    required TResult Function(_ServiceInfoStateLoaded value) loaded,
    required TResult Function(ServiceInfoStateLoadingFailed value)
        loadingFailed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServiceInfoStateInitial value)? initial,
    TResult? Function(_ServiceInfoStateLoaded value)? loaded,
    TResult? Function(ServiceInfoStateLoadingFailed value)? loadingFailed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServiceInfoStateInitial value)? initial,
    TResult Function(_ServiceInfoStateLoaded value)? loaded,
    TResult Function(ServiceInfoStateLoadingFailed value)? loadingFailed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ServiceInfoStateLoaded implements ServiceInfoState {
  const factory _ServiceInfoStateLoaded(
      {required final TrackingServiceInfo info,
      required final AuthData authData,
      required final bool isAuthStorageSecured}) = _$ServiceInfoStateLoadedImpl;

  TrackingServiceInfo get info;
  AuthData get authData;
  bool get isAuthStorageSecured;
  @JsonKey(ignore: true)
  _$$ServiceInfoStateLoadedImplCopyWith<_$ServiceInfoStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServiceInfoStateLoadingFailedImplCopyWith<$Res> {
  factory _$$ServiceInfoStateLoadingFailedImplCopyWith(
          _$ServiceInfoStateLoadingFailedImpl value,
          $Res Function(_$ServiceInfoStateLoadingFailedImpl) then) =
      __$$ServiceInfoStateLoadingFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StorageError? error});

  $StorageErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$ServiceInfoStateLoadingFailedImplCopyWithImpl<$Res>
    extends _$ServiceInfoStateCopyWithImpl<$Res,
        _$ServiceInfoStateLoadingFailedImpl>
    implements _$$ServiceInfoStateLoadingFailedImplCopyWith<$Res> {
  __$$ServiceInfoStateLoadingFailedImplCopyWithImpl(
      _$ServiceInfoStateLoadingFailedImpl _value,
      $Res Function(_$ServiceInfoStateLoadingFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ServiceInfoStateLoadingFailedImpl(
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

class _$ServiceInfoStateLoadingFailedImpl
    with DiagnosticableTreeMixin
    implements ServiceInfoStateLoadingFailed {
  const _$ServiceInfoStateLoadingFailedImpl({this.error});

  @override
  final StorageError? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceInfoState.loadingFailed(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceInfoState.loadingFailed'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceInfoStateLoadingFailedImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceInfoStateLoadingFailedImplCopyWith<
          _$ServiceInfoStateLoadingFailedImpl>
      get copyWith => __$$ServiceInfoStateLoadingFailedImplCopyWithImpl<
          _$ServiceInfoStateLoadingFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TrackingServiceInfo info, AuthData authData,
            bool isAuthStorageSecured)
        loaded,
    required TResult Function(StorageError? error) loadingFailed,
  }) {
    return loadingFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TrackingServiceInfo info, AuthData authData,
            bool isAuthStorageSecured)?
        loaded,
    TResult? Function(StorageError? error)? loadingFailed,
  }) {
    return loadingFailed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TrackingServiceInfo info, AuthData authData,
            bool isAuthStorageSecured)?
        loaded,
    TResult Function(StorageError? error)? loadingFailed,
    required TResult orElse(),
  }) {
    if (loadingFailed != null) {
      return loadingFailed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServiceInfoStateInitial value) initial,
    required TResult Function(_ServiceInfoStateLoaded value) loaded,
    required TResult Function(ServiceInfoStateLoadingFailed value)
        loadingFailed,
  }) {
    return loadingFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServiceInfoStateInitial value)? initial,
    TResult? Function(_ServiceInfoStateLoaded value)? loaded,
    TResult? Function(ServiceInfoStateLoadingFailed value)? loadingFailed,
  }) {
    return loadingFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServiceInfoStateInitial value)? initial,
    TResult Function(_ServiceInfoStateLoaded value)? loaded,
    TResult Function(ServiceInfoStateLoadingFailed value)? loadingFailed,
    required TResult orElse(),
  }) {
    if (loadingFailed != null) {
      return loadingFailed(this);
    }
    return orElse();
  }
}

abstract class ServiceInfoStateLoadingFailed implements ServiceInfoState {
  const factory ServiceInfoStateLoadingFailed({final StorageError? error}) =
      _$ServiceInfoStateLoadingFailedImpl;

  StorageError? get error;
  @JsonKey(ignore: true)
  _$$ServiceInfoStateLoadingFailedImplCopyWith<
          _$ServiceInfoStateLoadingFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
