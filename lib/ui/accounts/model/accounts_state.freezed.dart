// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accounts_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TrackingServiceInfo> serviceList) loaded,
    required TResult Function(StorageError error) loadingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TrackingServiceInfo> serviceList)? loaded,
    TResult? Function(StorageError error)? loadingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TrackingServiceInfo> serviceList)? loaded,
    TResult Function(StorageError error)? loadingFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountsStateInitial value) initial,
    required TResult Function(AccountsStateLoaded value) loaded,
    required TResult Function(AccountsStateLoadingFailed value) loadingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountsStateInitial value)? initial,
    TResult? Function(AccountsStateLoaded value)? loaded,
    TResult? Function(AccountsStateLoadingFailed value)? loadingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountsStateInitial value)? initial,
    TResult Function(AccountsStateLoaded value)? loaded,
    TResult Function(AccountsStateLoadingFailed value)? loadingFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountsStateCopyWith<$Res> {
  factory $AccountsStateCopyWith(
          AccountsState value, $Res Function(AccountsState) then) =
      _$AccountsStateCopyWithImpl<$Res, AccountsState>;
}

/// @nodoc
class _$AccountsStateCopyWithImpl<$Res, $Val extends AccountsState>
    implements $AccountsStateCopyWith<$Res> {
  _$AccountsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AccountsStateInitialImplCopyWith<$Res> {
  factory _$$AccountsStateInitialImplCopyWith(_$AccountsStateInitialImpl value,
          $Res Function(_$AccountsStateInitialImpl) then) =
      __$$AccountsStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountsStateInitialImplCopyWithImpl<$Res>
    extends _$AccountsStateCopyWithImpl<$Res, _$AccountsStateInitialImpl>
    implements _$$AccountsStateInitialImplCopyWith<$Res> {
  __$$AccountsStateInitialImplCopyWithImpl(_$AccountsStateInitialImpl _value,
      $Res Function(_$AccountsStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountsStateInitialImpl
    with DiagnosticableTreeMixin
    implements AccountsStateInitial {
  const _$AccountsStateInitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountsState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AccountsState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountsStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TrackingServiceInfo> serviceList) loaded,
    required TResult Function(StorageError error) loadingFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TrackingServiceInfo> serviceList)? loaded,
    TResult? Function(StorageError error)? loadingFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TrackingServiceInfo> serviceList)? loaded,
    TResult Function(StorageError error)? loadingFailed,
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
    required TResult Function(AccountsStateInitial value) initial,
    required TResult Function(AccountsStateLoaded value) loaded,
    required TResult Function(AccountsStateLoadingFailed value) loadingFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountsStateInitial value)? initial,
    TResult? Function(AccountsStateLoaded value)? loaded,
    TResult? Function(AccountsStateLoadingFailed value)? loadingFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountsStateInitial value)? initial,
    TResult Function(AccountsStateLoaded value)? loaded,
    TResult Function(AccountsStateLoadingFailed value)? loadingFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AccountsStateInitial implements AccountsState {
  const factory AccountsStateInitial() = _$AccountsStateInitialImpl;
}

/// @nodoc
abstract class _$$AccountsStateLoadedImplCopyWith<$Res> {
  factory _$$AccountsStateLoadedImplCopyWith(_$AccountsStateLoadedImpl value,
          $Res Function(_$AccountsStateLoadedImpl) then) =
      __$$AccountsStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TrackingServiceInfo> serviceList});
}

/// @nodoc
class __$$AccountsStateLoadedImplCopyWithImpl<$Res>
    extends _$AccountsStateCopyWithImpl<$Res, _$AccountsStateLoadedImpl>
    implements _$$AccountsStateLoadedImplCopyWith<$Res> {
  __$$AccountsStateLoadedImplCopyWithImpl(_$AccountsStateLoadedImpl _value,
      $Res Function(_$AccountsStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceList = null,
  }) {
    return _then(_$AccountsStateLoadedImpl(
      null == serviceList
          ? _value._serviceList
          : serviceList // ignore: cast_nullable_to_non_nullable
              as List<TrackingServiceInfo>,
    ));
  }
}

/// @nodoc

class _$AccountsStateLoadedImpl
    with DiagnosticableTreeMixin
    implements AccountsStateLoaded {
  const _$AccountsStateLoadedImpl(final List<TrackingServiceInfo> serviceList)
      : _serviceList = serviceList;

  final List<TrackingServiceInfo> _serviceList;
  @override
  List<TrackingServiceInfo> get serviceList {
    if (_serviceList is EqualUnmodifiableListView) return _serviceList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_serviceList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountsState.loaded(serviceList: $serviceList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountsState.loaded'))
      ..add(DiagnosticsProperty('serviceList', serviceList));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountsStateLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._serviceList, _serviceList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_serviceList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountsStateLoadedImplCopyWith<_$AccountsStateLoadedImpl> get copyWith =>
      __$$AccountsStateLoadedImplCopyWithImpl<_$AccountsStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TrackingServiceInfo> serviceList) loaded,
    required TResult Function(StorageError error) loadingFailed,
  }) {
    return loaded(serviceList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TrackingServiceInfo> serviceList)? loaded,
    TResult? Function(StorageError error)? loadingFailed,
  }) {
    return loaded?.call(serviceList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TrackingServiceInfo> serviceList)? loaded,
    TResult Function(StorageError error)? loadingFailed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(serviceList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountsStateInitial value) initial,
    required TResult Function(AccountsStateLoaded value) loaded,
    required TResult Function(AccountsStateLoadingFailed value) loadingFailed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountsStateInitial value)? initial,
    TResult? Function(AccountsStateLoaded value)? loaded,
    TResult? Function(AccountsStateLoadingFailed value)? loadingFailed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountsStateInitial value)? initial,
    TResult Function(AccountsStateLoaded value)? loaded,
    TResult Function(AccountsStateLoadingFailed value)? loadingFailed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AccountsStateLoaded implements AccountsState {
  const factory AccountsStateLoaded(
      final List<TrackingServiceInfo> serviceList) = _$AccountsStateLoadedImpl;

  List<TrackingServiceInfo> get serviceList;
  @JsonKey(ignore: true)
  _$$AccountsStateLoadedImplCopyWith<_$AccountsStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountsStateLoadingFailedImplCopyWith<$Res> {
  factory _$$AccountsStateLoadingFailedImplCopyWith(
          _$AccountsStateLoadingFailedImpl value,
          $Res Function(_$AccountsStateLoadingFailedImpl) then) =
      __$$AccountsStateLoadingFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StorageError error});

  $StorageErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$AccountsStateLoadingFailedImplCopyWithImpl<$Res>
    extends _$AccountsStateCopyWithImpl<$Res, _$AccountsStateLoadingFailedImpl>
    implements _$$AccountsStateLoadingFailedImplCopyWith<$Res> {
  __$$AccountsStateLoadingFailedImplCopyWithImpl(
      _$AccountsStateLoadingFailedImpl _value,
      $Res Function(_$AccountsStateLoadingFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AccountsStateLoadingFailedImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as StorageError,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StorageErrorCopyWith<$Res> get error {
    return $StorageErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$AccountsStateLoadingFailedImpl
    with DiagnosticableTreeMixin
    implements AccountsStateLoadingFailed {
  const _$AccountsStateLoadingFailedImpl({required this.error});

  @override
  final StorageError error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountsState.loadingFailed(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountsState.loadingFailed'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountsStateLoadingFailedImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountsStateLoadingFailedImplCopyWith<_$AccountsStateLoadingFailedImpl>
      get copyWith => __$$AccountsStateLoadingFailedImplCopyWithImpl<
          _$AccountsStateLoadingFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TrackingServiceInfo> serviceList) loaded,
    required TResult Function(StorageError error) loadingFailed,
  }) {
    return loadingFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TrackingServiceInfo> serviceList)? loaded,
    TResult? Function(StorageError error)? loadingFailed,
  }) {
    return loadingFailed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TrackingServiceInfo> serviceList)? loaded,
    TResult Function(StorageError error)? loadingFailed,
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
    required TResult Function(AccountsStateInitial value) initial,
    required TResult Function(AccountsStateLoaded value) loaded,
    required TResult Function(AccountsStateLoadingFailed value) loadingFailed,
  }) {
    return loadingFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountsStateInitial value)? initial,
    TResult? Function(AccountsStateLoaded value)? loaded,
    TResult? Function(AccountsStateLoadingFailed value)? loadingFailed,
  }) {
    return loadingFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountsStateInitial value)? initial,
    TResult Function(AccountsStateLoaded value)? loaded,
    TResult Function(AccountsStateLoadingFailed value)? loadingFailed,
    required TResult orElse(),
  }) {
    if (loadingFailed != null) {
      return loadingFailed(this);
    }
    return orElse();
  }
}

abstract class AccountsStateLoadingFailed implements AccountsState {
  const factory AccountsStateLoadingFailed(
      {required final StorageError error}) = _$AccountsStateLoadingFailedImpl;

  StorageError get error;
  @JsonKey(ignore: true)
  _$$AccountsStateLoadingFailedImplCopyWith<_$AccountsStateLoadingFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
