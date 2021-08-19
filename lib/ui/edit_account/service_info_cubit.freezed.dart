// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'service_info_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ServiceInfoStateTearOff {
  const _$ServiceInfoStateTearOff();

  _ServiceInfoStateInitial initial() {
    return const _ServiceInfoStateInitial();
  }

  _ServiceInfoStateLoaded loaded(
      {required TrackingServiceInfo info,
      required AuthData authData,
      required bool isAuthStorageEncrypted}) {
    return _ServiceInfoStateLoaded(
      info: info,
      authData: authData,
      isAuthStorageEncrypted: isAuthStorageEncrypted,
    );
  }

  ServiceInfoStateLoadingFailed loadingFailed({StorageError? error}) {
    return ServiceInfoStateLoadingFailed(
      error: error,
    );
  }
}

/// @nodoc
const $ServiceInfoState = _$ServiceInfoStateTearOff();

/// @nodoc
mixin _$ServiceInfoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TrackingServiceInfo info, AuthData authData,
            bool isAuthStorageEncrypted)
        loaded,
    required TResult Function(StorageError? error) loadingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TrackingServiceInfo info, AuthData authData,
            bool isAuthStorageEncrypted)?
        loaded,
    TResult Function(StorageError? error)? loadingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TrackingServiceInfo info, AuthData authData,
            bool isAuthStorageEncrypted)?
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
    TResult Function(_ServiceInfoStateInitial value)? initial,
    TResult Function(_ServiceInfoStateLoaded value)? loaded,
    TResult Function(ServiceInfoStateLoadingFailed value)? loadingFailed,
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
      _$ServiceInfoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServiceInfoStateCopyWithImpl<$Res>
    implements $ServiceInfoStateCopyWith<$Res> {
  _$ServiceInfoStateCopyWithImpl(this._value, this._then);

  final ServiceInfoState _value;
  // ignore: unused_field
  final $Res Function(ServiceInfoState) _then;
}

/// @nodoc
abstract class _$ServiceInfoStateInitialCopyWith<$Res> {
  factory _$ServiceInfoStateInitialCopyWith(_ServiceInfoStateInitial value,
          $Res Function(_ServiceInfoStateInitial) then) =
      __$ServiceInfoStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$ServiceInfoStateInitialCopyWithImpl<$Res>
    extends _$ServiceInfoStateCopyWithImpl<$Res>
    implements _$ServiceInfoStateInitialCopyWith<$Res> {
  __$ServiceInfoStateInitialCopyWithImpl(_ServiceInfoStateInitial _value,
      $Res Function(_ServiceInfoStateInitial) _then)
      : super(_value, (v) => _then(v as _ServiceInfoStateInitial));

  @override
  _ServiceInfoStateInitial get _value =>
      super._value as _ServiceInfoStateInitial;
}

/// @nodoc

class _$_ServiceInfoStateInitial
    with DiagnosticableTreeMixin
    implements _ServiceInfoStateInitial {
  const _$_ServiceInfoStateInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceInfoState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ServiceInfoState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ServiceInfoStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TrackingServiceInfo info, AuthData authData,
            bool isAuthStorageEncrypted)
        loaded,
    required TResult Function(StorageError? error) loadingFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TrackingServiceInfo info, AuthData authData,
            bool isAuthStorageEncrypted)?
        loaded,
    TResult Function(StorageError? error)? loadingFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TrackingServiceInfo info, AuthData authData,
            bool isAuthStorageEncrypted)?
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
    TResult Function(_ServiceInfoStateInitial value)? initial,
    TResult Function(_ServiceInfoStateLoaded value)? loaded,
    TResult Function(ServiceInfoStateLoadingFailed value)? loadingFailed,
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
  const factory _ServiceInfoStateInitial() = _$_ServiceInfoStateInitial;
}

/// @nodoc
abstract class _$ServiceInfoStateLoadedCopyWith<$Res> {
  factory _$ServiceInfoStateLoadedCopyWith(_ServiceInfoStateLoaded value,
          $Res Function(_ServiceInfoStateLoaded) then) =
      __$ServiceInfoStateLoadedCopyWithImpl<$Res>;
  $Res call(
      {TrackingServiceInfo info,
      AuthData authData,
      bool isAuthStorageEncrypted});
}

/// @nodoc
class __$ServiceInfoStateLoadedCopyWithImpl<$Res>
    extends _$ServiceInfoStateCopyWithImpl<$Res>
    implements _$ServiceInfoStateLoadedCopyWith<$Res> {
  __$ServiceInfoStateLoadedCopyWithImpl(_ServiceInfoStateLoaded _value,
      $Res Function(_ServiceInfoStateLoaded) _then)
      : super(_value, (v) => _then(v as _ServiceInfoStateLoaded));

  @override
  _ServiceInfoStateLoaded get _value => super._value as _ServiceInfoStateLoaded;

  @override
  $Res call({
    Object? info = freezed,
    Object? authData = freezed,
    Object? isAuthStorageEncrypted = freezed,
  }) {
    return _then(_ServiceInfoStateLoaded(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as TrackingServiceInfo,
      authData: authData == freezed
          ? _value.authData
          : authData // ignore: cast_nullable_to_non_nullable
              as AuthData,
      isAuthStorageEncrypted: isAuthStorageEncrypted == freezed
          ? _value.isAuthStorageEncrypted
          : isAuthStorageEncrypted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ServiceInfoStateLoaded
    with DiagnosticableTreeMixin
    implements _ServiceInfoStateLoaded {
  const _$_ServiceInfoStateLoaded(
      {required this.info,
      required this.authData,
      required this.isAuthStorageEncrypted});

  @override
  final TrackingServiceInfo info;
  @override
  final AuthData authData;
  @override
  final bool isAuthStorageEncrypted;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceInfoState.loaded(info: $info, authData: $authData, isAuthStorageEncrypted: $isAuthStorageEncrypted)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceInfoState.loaded'))
      ..add(DiagnosticsProperty('info', info))
      ..add(DiagnosticsProperty('authData', authData))
      ..add(DiagnosticsProperty(
          'isAuthStorageEncrypted', isAuthStorageEncrypted));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServiceInfoStateLoaded &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)) &&
            (identical(other.authData, authData) ||
                const DeepCollectionEquality()
                    .equals(other.authData, authData)) &&
            (identical(other.isAuthStorageEncrypted, isAuthStorageEncrypted) ||
                const DeepCollectionEquality().equals(
                    other.isAuthStorageEncrypted, isAuthStorageEncrypted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(authData) ^
      const DeepCollectionEquality().hash(isAuthStorageEncrypted);

  @JsonKey(ignore: true)
  @override
  _$ServiceInfoStateLoadedCopyWith<_ServiceInfoStateLoaded> get copyWith =>
      __$ServiceInfoStateLoadedCopyWithImpl<_ServiceInfoStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TrackingServiceInfo info, AuthData authData,
            bool isAuthStorageEncrypted)
        loaded,
    required TResult Function(StorageError? error) loadingFailed,
  }) {
    return loaded(info, authData, isAuthStorageEncrypted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TrackingServiceInfo info, AuthData authData,
            bool isAuthStorageEncrypted)?
        loaded,
    TResult Function(StorageError? error)? loadingFailed,
  }) {
    return loaded?.call(info, authData, isAuthStorageEncrypted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TrackingServiceInfo info, AuthData authData,
            bool isAuthStorageEncrypted)?
        loaded,
    TResult Function(StorageError? error)? loadingFailed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(info, authData, isAuthStorageEncrypted);
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
    TResult Function(_ServiceInfoStateInitial value)? initial,
    TResult Function(_ServiceInfoStateLoaded value)? loaded,
    TResult Function(ServiceInfoStateLoadingFailed value)? loadingFailed,
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
      {required TrackingServiceInfo info,
      required AuthData authData,
      required bool isAuthStorageEncrypted}) = _$_ServiceInfoStateLoaded;

  TrackingServiceInfo get info => throw _privateConstructorUsedError;
  AuthData get authData => throw _privateConstructorUsedError;
  bool get isAuthStorageEncrypted => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ServiceInfoStateLoadedCopyWith<_ServiceInfoStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceInfoStateLoadingFailedCopyWith<$Res> {
  factory $ServiceInfoStateLoadingFailedCopyWith(
          ServiceInfoStateLoadingFailed value,
          $Res Function(ServiceInfoStateLoadingFailed) then) =
      _$ServiceInfoStateLoadingFailedCopyWithImpl<$Res>;
  $Res call({StorageError? error});

  $StorageErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$ServiceInfoStateLoadingFailedCopyWithImpl<$Res>
    extends _$ServiceInfoStateCopyWithImpl<$Res>
    implements $ServiceInfoStateLoadingFailedCopyWith<$Res> {
  _$ServiceInfoStateLoadingFailedCopyWithImpl(
      ServiceInfoStateLoadingFailed _value,
      $Res Function(ServiceInfoStateLoadingFailed) _then)
      : super(_value, (v) => _then(v as ServiceInfoStateLoadingFailed));

  @override
  ServiceInfoStateLoadingFailed get _value =>
      super._value as ServiceInfoStateLoadingFailed;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(ServiceInfoStateLoadingFailed(
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

class _$ServiceInfoStateLoadingFailed
    with DiagnosticableTreeMixin
    implements ServiceInfoStateLoadingFailed {
  const _$ServiceInfoStateLoadingFailed({this.error});

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ServiceInfoStateLoadingFailed &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $ServiceInfoStateLoadingFailedCopyWith<ServiceInfoStateLoadingFailed>
      get copyWith => _$ServiceInfoStateLoadingFailedCopyWithImpl<
          ServiceInfoStateLoadingFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TrackingServiceInfo info, AuthData authData,
            bool isAuthStorageEncrypted)
        loaded,
    required TResult Function(StorageError? error) loadingFailed,
  }) {
    return loadingFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TrackingServiceInfo info, AuthData authData,
            bool isAuthStorageEncrypted)?
        loaded,
    TResult Function(StorageError? error)? loadingFailed,
  }) {
    return loadingFailed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TrackingServiceInfo info, AuthData authData,
            bool isAuthStorageEncrypted)?
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
    TResult Function(_ServiceInfoStateInitial value)? initial,
    TResult Function(_ServiceInfoStateLoaded value)? loaded,
    TResult Function(ServiceInfoStateLoadingFailed value)? loadingFailed,
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
  const factory ServiceInfoStateLoadingFailed({StorageError? error}) =
      _$ServiceInfoStateLoadingFailed;

  StorageError? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceInfoStateLoadingFailedCopyWith<ServiceInfoStateLoadingFailed>
      get copyWith => throw _privateConstructorUsedError;
}
