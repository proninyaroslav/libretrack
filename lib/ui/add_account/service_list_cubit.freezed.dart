// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'service_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ServiceListStateTearOff {
  const _$ServiceListStateTearOff();

  ServiceListStateInitial initial() {
    return const ServiceListStateInitial();
  }

  ServiceListStateLoaded loaded(
      {required List<TrackingServiceType> nonExistenServices,
      required bool isAuthStorageEncrypted}) {
    return ServiceListStateLoaded(
      nonExistenServices: nonExistenServices,
      isAuthStorageEncrypted: isAuthStorageEncrypted,
    );
  }

  ServiceListStateLoadingFailed loadingFailed({StorageError? error}) {
    return ServiceListStateLoadingFailed(
      error: error,
    );
  }
}

/// @nodoc
const $ServiceListState = _$ServiceListStateTearOff();

/// @nodoc
mixin _$ServiceListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TrackingServiceType> nonExistenServices,
            bool isAuthStorageEncrypted)
        loaded,
    required TResult Function(StorageError? error) loadingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TrackingServiceType> nonExistenServices,
            bool isAuthStorageEncrypted)?
        loaded,
    TResult Function(StorageError? error)? loadingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TrackingServiceType> nonExistenServices,
            bool isAuthStorageEncrypted)?
        loaded,
    TResult Function(StorageError? error)? loadingFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceListStateInitial value) initial,
    required TResult Function(ServiceListStateLoaded value) loaded,
    required TResult Function(ServiceListStateLoadingFailed value)
        loadingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServiceListStateInitial value)? initial,
    TResult Function(ServiceListStateLoaded value)? loaded,
    TResult Function(ServiceListStateLoadingFailed value)? loadingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceListStateInitial value)? initial,
    TResult Function(ServiceListStateLoaded value)? loaded,
    TResult Function(ServiceListStateLoadingFailed value)? loadingFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceListStateCopyWith<$Res> {
  factory $ServiceListStateCopyWith(
          ServiceListState value, $Res Function(ServiceListState) then) =
      _$ServiceListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServiceListStateCopyWithImpl<$Res>
    implements $ServiceListStateCopyWith<$Res> {
  _$ServiceListStateCopyWithImpl(this._value, this._then);

  final ServiceListState _value;
  // ignore: unused_field
  final $Res Function(ServiceListState) _then;
}

/// @nodoc
abstract class $ServiceListStateInitialCopyWith<$Res> {
  factory $ServiceListStateInitialCopyWith(ServiceListStateInitial value,
          $Res Function(ServiceListStateInitial) then) =
      _$ServiceListStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServiceListStateInitialCopyWithImpl<$Res>
    extends _$ServiceListStateCopyWithImpl<$Res>
    implements $ServiceListStateInitialCopyWith<$Res> {
  _$ServiceListStateInitialCopyWithImpl(ServiceListStateInitial _value,
      $Res Function(ServiceListStateInitial) _then)
      : super(_value, (v) => _then(v as ServiceListStateInitial));

  @override
  ServiceListStateInitial get _value => super._value as ServiceListStateInitial;
}

/// @nodoc

class _$ServiceListStateInitial
    with DiagnosticableTreeMixin
    implements ServiceListStateInitial {
  const _$ServiceListStateInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceListState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ServiceListState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServiceListStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TrackingServiceType> nonExistenServices,
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
    TResult Function(List<TrackingServiceType> nonExistenServices,
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
    TResult Function(List<TrackingServiceType> nonExistenServices,
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
    required TResult Function(ServiceListStateInitial value) initial,
    required TResult Function(ServiceListStateLoaded value) loaded,
    required TResult Function(ServiceListStateLoadingFailed value)
        loadingFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServiceListStateInitial value)? initial,
    TResult Function(ServiceListStateLoaded value)? loaded,
    TResult Function(ServiceListStateLoadingFailed value)? loadingFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceListStateInitial value)? initial,
    TResult Function(ServiceListStateLoaded value)? loaded,
    TResult Function(ServiceListStateLoadingFailed value)? loadingFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ServiceListStateInitial implements ServiceListState {
  const factory ServiceListStateInitial() = _$ServiceListStateInitial;
}

/// @nodoc
abstract class $ServiceListStateLoadedCopyWith<$Res> {
  factory $ServiceListStateLoadedCopyWith(ServiceListStateLoaded value,
          $Res Function(ServiceListStateLoaded) then) =
      _$ServiceListStateLoadedCopyWithImpl<$Res>;
  $Res call(
      {List<TrackingServiceType> nonExistenServices,
      bool isAuthStorageEncrypted});
}

/// @nodoc
class _$ServiceListStateLoadedCopyWithImpl<$Res>
    extends _$ServiceListStateCopyWithImpl<$Res>
    implements $ServiceListStateLoadedCopyWith<$Res> {
  _$ServiceListStateLoadedCopyWithImpl(ServiceListStateLoaded _value,
      $Res Function(ServiceListStateLoaded) _then)
      : super(_value, (v) => _then(v as ServiceListStateLoaded));

  @override
  ServiceListStateLoaded get _value => super._value as ServiceListStateLoaded;

  @override
  $Res call({
    Object? nonExistenServices = freezed,
    Object? isAuthStorageEncrypted = freezed,
  }) {
    return _then(ServiceListStateLoaded(
      nonExistenServices: nonExistenServices == freezed
          ? _value.nonExistenServices
          : nonExistenServices // ignore: cast_nullable_to_non_nullable
              as List<TrackingServiceType>,
      isAuthStorageEncrypted: isAuthStorageEncrypted == freezed
          ? _value.isAuthStorageEncrypted
          : isAuthStorageEncrypted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ServiceListStateLoaded
    with DiagnosticableTreeMixin
    implements ServiceListStateLoaded {
  const _$ServiceListStateLoaded(
      {required this.nonExistenServices, required this.isAuthStorageEncrypted});

  @override
  final List<TrackingServiceType> nonExistenServices;
  @override
  final bool isAuthStorageEncrypted;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceListState.loaded(nonExistenServices: $nonExistenServices, isAuthStorageEncrypted: $isAuthStorageEncrypted)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceListState.loaded'))
      ..add(DiagnosticsProperty('nonExistenServices', nonExistenServices))
      ..add(DiagnosticsProperty(
          'isAuthStorageEncrypted', isAuthStorageEncrypted));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ServiceListStateLoaded &&
            (identical(other.nonExistenServices, nonExistenServices) ||
                const DeepCollectionEquality()
                    .equals(other.nonExistenServices, nonExistenServices)) &&
            (identical(other.isAuthStorageEncrypted, isAuthStorageEncrypted) ||
                const DeepCollectionEquality().equals(
                    other.isAuthStorageEncrypted, isAuthStorageEncrypted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(nonExistenServices) ^
      const DeepCollectionEquality().hash(isAuthStorageEncrypted);

  @JsonKey(ignore: true)
  @override
  $ServiceListStateLoadedCopyWith<ServiceListStateLoaded> get copyWith =>
      _$ServiceListStateLoadedCopyWithImpl<ServiceListStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TrackingServiceType> nonExistenServices,
            bool isAuthStorageEncrypted)
        loaded,
    required TResult Function(StorageError? error) loadingFailed,
  }) {
    return loaded(nonExistenServices, isAuthStorageEncrypted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TrackingServiceType> nonExistenServices,
            bool isAuthStorageEncrypted)?
        loaded,
    TResult Function(StorageError? error)? loadingFailed,
  }) {
    return loaded?.call(nonExistenServices, isAuthStorageEncrypted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TrackingServiceType> nonExistenServices,
            bool isAuthStorageEncrypted)?
        loaded,
    TResult Function(StorageError? error)? loadingFailed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(nonExistenServices, isAuthStorageEncrypted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceListStateInitial value) initial,
    required TResult Function(ServiceListStateLoaded value) loaded,
    required TResult Function(ServiceListStateLoadingFailed value)
        loadingFailed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServiceListStateInitial value)? initial,
    TResult Function(ServiceListStateLoaded value)? loaded,
    TResult Function(ServiceListStateLoadingFailed value)? loadingFailed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceListStateInitial value)? initial,
    TResult Function(ServiceListStateLoaded value)? loaded,
    TResult Function(ServiceListStateLoadingFailed value)? loadingFailed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ServiceListStateLoaded implements ServiceListState {
  const factory ServiceListStateLoaded(
      {required List<TrackingServiceType> nonExistenServices,
      required bool isAuthStorageEncrypted}) = _$ServiceListStateLoaded;

  List<TrackingServiceType> get nonExistenServices =>
      throw _privateConstructorUsedError;
  bool get isAuthStorageEncrypted => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceListStateLoadedCopyWith<ServiceListStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceListStateLoadingFailedCopyWith<$Res> {
  factory $ServiceListStateLoadingFailedCopyWith(
          ServiceListStateLoadingFailed value,
          $Res Function(ServiceListStateLoadingFailed) then) =
      _$ServiceListStateLoadingFailedCopyWithImpl<$Res>;
  $Res call({StorageError? error});

  $StorageErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$ServiceListStateLoadingFailedCopyWithImpl<$Res>
    extends _$ServiceListStateCopyWithImpl<$Res>
    implements $ServiceListStateLoadingFailedCopyWith<$Res> {
  _$ServiceListStateLoadingFailedCopyWithImpl(
      ServiceListStateLoadingFailed _value,
      $Res Function(ServiceListStateLoadingFailed) _then)
      : super(_value, (v) => _then(v as ServiceListStateLoadingFailed));

  @override
  ServiceListStateLoadingFailed get _value =>
      super._value as ServiceListStateLoadingFailed;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(ServiceListStateLoadingFailed(
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

class _$ServiceListStateLoadingFailed
    with DiagnosticableTreeMixin
    implements ServiceListStateLoadingFailed {
  const _$ServiceListStateLoadingFailed({this.error});

  @override
  final StorageError? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceListState.loadingFailed(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceListState.loadingFailed'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ServiceListStateLoadingFailed &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $ServiceListStateLoadingFailedCopyWith<ServiceListStateLoadingFailed>
      get copyWith => _$ServiceListStateLoadingFailedCopyWithImpl<
          ServiceListStateLoadingFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TrackingServiceType> nonExistenServices,
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
    TResult Function(List<TrackingServiceType> nonExistenServices,
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
    TResult Function(List<TrackingServiceType> nonExistenServices,
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
    required TResult Function(ServiceListStateInitial value) initial,
    required TResult Function(ServiceListStateLoaded value) loaded,
    required TResult Function(ServiceListStateLoadingFailed value)
        loadingFailed,
  }) {
    return loadingFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServiceListStateInitial value)? initial,
    TResult Function(ServiceListStateLoaded value)? loaded,
    TResult Function(ServiceListStateLoadingFailed value)? loadingFailed,
  }) {
    return loadingFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceListStateInitial value)? initial,
    TResult Function(ServiceListStateLoaded value)? loaded,
    TResult Function(ServiceListStateLoadingFailed value)? loadingFailed,
    required TResult orElse(),
  }) {
    if (loadingFailed != null) {
      return loadingFailed(this);
    }
    return orElse();
  }
}

abstract class ServiceListStateLoadingFailed implements ServiceListState {
  const factory ServiceListStateLoadingFailed({StorageError? error}) =
      _$ServiceListStateLoadingFailed;

  StorageError? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceListStateLoadingFailedCopyWith<ServiceListStateLoadingFailed>
      get copyWith => throw _privateConstructorUsedError;
}
