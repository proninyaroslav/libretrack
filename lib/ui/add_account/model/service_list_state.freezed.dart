// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ServiceListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TrackingServiceType> nonExistenServices,
            bool isAuthStorageSecured)
        loaded,
    required TResult Function(StorageError? error) loadingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TrackingServiceType> nonExistenServices,
            bool isAuthStorageSecured)?
        loaded,
    TResult? Function(StorageError? error)? loadingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TrackingServiceType> nonExistenServices,
            bool isAuthStorageSecured)?
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
    TResult? Function(ServiceListStateInitial value)? initial,
    TResult? Function(ServiceListStateLoaded value)? loaded,
    TResult? Function(ServiceListStateLoadingFailed value)? loadingFailed,
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
      _$ServiceListStateCopyWithImpl<$Res, ServiceListState>;
}

/// @nodoc
class _$ServiceListStateCopyWithImpl<$Res, $Val extends ServiceListState>
    implements $ServiceListStateCopyWith<$Res> {
  _$ServiceListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServiceListStateInitialImplCopyWith<$Res> {
  factory _$$ServiceListStateInitialImplCopyWith(
          _$ServiceListStateInitialImpl value,
          $Res Function(_$ServiceListStateInitialImpl) then) =
      __$$ServiceListStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServiceListStateInitialImplCopyWithImpl<$Res>
    extends _$ServiceListStateCopyWithImpl<$Res, _$ServiceListStateInitialImpl>
    implements _$$ServiceListStateInitialImplCopyWith<$Res> {
  __$$ServiceListStateInitialImplCopyWithImpl(
      _$ServiceListStateInitialImpl _value,
      $Res Function(_$ServiceListStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServiceListStateInitialImpl
    with DiagnosticableTreeMixin
    implements ServiceListStateInitial {
  const _$ServiceListStateInitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceListState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ServiceListState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceListStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TrackingServiceType> nonExistenServices,
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
    TResult? Function(List<TrackingServiceType> nonExistenServices,
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
    TResult Function(List<TrackingServiceType> nonExistenServices,
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
    TResult? Function(ServiceListStateInitial value)? initial,
    TResult? Function(ServiceListStateLoaded value)? loaded,
    TResult? Function(ServiceListStateLoadingFailed value)? loadingFailed,
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
  const factory ServiceListStateInitial() = _$ServiceListStateInitialImpl;
}

/// @nodoc
abstract class _$$ServiceListStateLoadedImplCopyWith<$Res> {
  factory _$$ServiceListStateLoadedImplCopyWith(
          _$ServiceListStateLoadedImpl value,
          $Res Function(_$ServiceListStateLoadedImpl) then) =
      __$$ServiceListStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<TrackingServiceType> nonExistenServices,
      bool isAuthStorageSecured});
}

/// @nodoc
class __$$ServiceListStateLoadedImplCopyWithImpl<$Res>
    extends _$ServiceListStateCopyWithImpl<$Res, _$ServiceListStateLoadedImpl>
    implements _$$ServiceListStateLoadedImplCopyWith<$Res> {
  __$$ServiceListStateLoadedImplCopyWithImpl(
      _$ServiceListStateLoadedImpl _value,
      $Res Function(_$ServiceListStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nonExistenServices = null,
    Object? isAuthStorageSecured = null,
  }) {
    return _then(_$ServiceListStateLoadedImpl(
      nonExistenServices: null == nonExistenServices
          ? _value._nonExistenServices
          : nonExistenServices // ignore: cast_nullable_to_non_nullable
              as List<TrackingServiceType>,
      isAuthStorageSecured: null == isAuthStorageSecured
          ? _value.isAuthStorageSecured
          : isAuthStorageSecured // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ServiceListStateLoadedImpl
    with DiagnosticableTreeMixin
    implements ServiceListStateLoaded {
  const _$ServiceListStateLoadedImpl(
      {required final List<TrackingServiceType> nonExistenServices,
      required this.isAuthStorageSecured})
      : _nonExistenServices = nonExistenServices;

  final List<TrackingServiceType> _nonExistenServices;
  @override
  List<TrackingServiceType> get nonExistenServices {
    if (_nonExistenServices is EqualUnmodifiableListView)
      return _nonExistenServices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nonExistenServices);
  }

  @override
  final bool isAuthStorageSecured;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceListState.loaded(nonExistenServices: $nonExistenServices, isAuthStorageSecured: $isAuthStorageSecured)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceListState.loaded'))
      ..add(DiagnosticsProperty('nonExistenServices', nonExistenServices))
      ..add(DiagnosticsProperty('isAuthStorageSecured', isAuthStorageSecured));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceListStateLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._nonExistenServices, _nonExistenServices) &&
            (identical(other.isAuthStorageSecured, isAuthStorageSecured) ||
                other.isAuthStorageSecured == isAuthStorageSecured));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_nonExistenServices),
      isAuthStorageSecured);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceListStateLoadedImplCopyWith<_$ServiceListStateLoadedImpl>
      get copyWith => __$$ServiceListStateLoadedImplCopyWithImpl<
          _$ServiceListStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TrackingServiceType> nonExistenServices,
            bool isAuthStorageSecured)
        loaded,
    required TResult Function(StorageError? error) loadingFailed,
  }) {
    return loaded(nonExistenServices, isAuthStorageSecured);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TrackingServiceType> nonExistenServices,
            bool isAuthStorageSecured)?
        loaded,
    TResult? Function(StorageError? error)? loadingFailed,
  }) {
    return loaded?.call(nonExistenServices, isAuthStorageSecured);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TrackingServiceType> nonExistenServices,
            bool isAuthStorageSecured)?
        loaded,
    TResult Function(StorageError? error)? loadingFailed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(nonExistenServices, isAuthStorageSecured);
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
    TResult? Function(ServiceListStateInitial value)? initial,
    TResult? Function(ServiceListStateLoaded value)? loaded,
    TResult? Function(ServiceListStateLoadingFailed value)? loadingFailed,
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
      {required final List<TrackingServiceType> nonExistenServices,
      required final bool isAuthStorageSecured}) = _$ServiceListStateLoadedImpl;

  List<TrackingServiceType> get nonExistenServices;
  bool get isAuthStorageSecured;
  @JsonKey(ignore: true)
  _$$ServiceListStateLoadedImplCopyWith<_$ServiceListStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServiceListStateLoadingFailedImplCopyWith<$Res> {
  factory _$$ServiceListStateLoadingFailedImplCopyWith(
          _$ServiceListStateLoadingFailedImpl value,
          $Res Function(_$ServiceListStateLoadingFailedImpl) then) =
      __$$ServiceListStateLoadingFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StorageError? error});

  $StorageErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$ServiceListStateLoadingFailedImplCopyWithImpl<$Res>
    extends _$ServiceListStateCopyWithImpl<$Res,
        _$ServiceListStateLoadingFailedImpl>
    implements _$$ServiceListStateLoadingFailedImplCopyWith<$Res> {
  __$$ServiceListStateLoadingFailedImplCopyWithImpl(
      _$ServiceListStateLoadingFailedImpl _value,
      $Res Function(_$ServiceListStateLoadingFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ServiceListStateLoadingFailedImpl(
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

class _$ServiceListStateLoadingFailedImpl
    with DiagnosticableTreeMixin
    implements ServiceListStateLoadingFailed {
  const _$ServiceListStateLoadingFailedImpl({this.error});

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceListStateLoadingFailedImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceListStateLoadingFailedImplCopyWith<
          _$ServiceListStateLoadingFailedImpl>
      get copyWith => __$$ServiceListStateLoadingFailedImplCopyWithImpl<
          _$ServiceListStateLoadingFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TrackingServiceType> nonExistenServices,
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
    TResult? Function(List<TrackingServiceType> nonExistenServices,
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
    TResult Function(List<TrackingServiceType> nonExistenServices,
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
    TResult? Function(ServiceListStateInitial value)? initial,
    TResult? Function(ServiceListStateLoaded value)? loaded,
    TResult? Function(ServiceListStateLoadingFailed value)? loadingFailed,
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
  const factory ServiceListStateLoadingFailed({final StorageError? error}) =
      _$ServiceListStateLoadingFailedImpl;

  StorageError? get error;
  @JsonKey(ignore: true)
  _$$ServiceListStateLoadingFailedImplCopyWith<
          _$ServiceListStateLoadingFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
