// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'accounts_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AccountsStateTearOff {
  const _$AccountsStateTearOff();

  AccountsStateInitial initial() {
    return const AccountsStateInitial();
  }

  AccountsStateLoaded loaded(List<TrackingServiceInfo> serviceList) {
    return AccountsStateLoaded(
      serviceList,
    );
  }

  AccountsStateLoadingFailed loadingFailed({required StorageError error}) {
    return AccountsStateLoadingFailed(
      error: error,
    );
  }
}

/// @nodoc
const $AccountsState = _$AccountsStateTearOff();

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
      _$AccountsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountsStateCopyWithImpl<$Res>
    implements $AccountsStateCopyWith<$Res> {
  _$AccountsStateCopyWithImpl(this._value, this._then);

  final AccountsState _value;
  // ignore: unused_field
  final $Res Function(AccountsState) _then;
}

/// @nodoc
abstract class $AccountsStateInitialCopyWith<$Res> {
  factory $AccountsStateInitialCopyWith(AccountsStateInitial value,
          $Res Function(AccountsStateInitial) then) =
      _$AccountsStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountsStateInitialCopyWithImpl<$Res>
    extends _$AccountsStateCopyWithImpl<$Res>
    implements $AccountsStateInitialCopyWith<$Res> {
  _$AccountsStateInitialCopyWithImpl(
      AccountsStateInitial _value, $Res Function(AccountsStateInitial) _then)
      : super(_value, (v) => _then(v as AccountsStateInitial));

  @override
  AccountsStateInitial get _value => super._value as AccountsStateInitial;
}

/// @nodoc

class _$AccountsStateInitial
    with DiagnosticableTreeMixin
    implements AccountsStateInitial {
  const _$AccountsStateInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountsState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AccountsState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AccountsStateInitial);
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
  const factory AccountsStateInitial() = _$AccountsStateInitial;
}

/// @nodoc
abstract class $AccountsStateLoadedCopyWith<$Res> {
  factory $AccountsStateLoadedCopyWith(
          AccountsStateLoaded value, $Res Function(AccountsStateLoaded) then) =
      _$AccountsStateLoadedCopyWithImpl<$Res>;
  $Res call({List<TrackingServiceInfo> serviceList});
}

/// @nodoc
class _$AccountsStateLoadedCopyWithImpl<$Res>
    extends _$AccountsStateCopyWithImpl<$Res>
    implements $AccountsStateLoadedCopyWith<$Res> {
  _$AccountsStateLoadedCopyWithImpl(
      AccountsStateLoaded _value, $Res Function(AccountsStateLoaded) _then)
      : super(_value, (v) => _then(v as AccountsStateLoaded));

  @override
  AccountsStateLoaded get _value => super._value as AccountsStateLoaded;

  @override
  $Res call({
    Object? serviceList = freezed,
  }) {
    return _then(AccountsStateLoaded(
      serviceList == freezed
          ? _value.serviceList
          : serviceList // ignore: cast_nullable_to_non_nullable
              as List<TrackingServiceInfo>,
    ));
  }
}

/// @nodoc

class _$AccountsStateLoaded
    with DiagnosticableTreeMixin
    implements AccountsStateLoaded {
  const _$AccountsStateLoaded(this.serviceList);

  @override
  final List<TrackingServiceInfo> serviceList;

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountsStateLoaded &&
            (identical(other.serviceList, serviceList) ||
                const DeepCollectionEquality()
                    .equals(other.serviceList, serviceList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(serviceList);

  @JsonKey(ignore: true)
  @override
  $AccountsStateLoadedCopyWith<AccountsStateLoaded> get copyWith =>
      _$AccountsStateLoadedCopyWithImpl<AccountsStateLoaded>(this, _$identity);

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
  const factory AccountsStateLoaded(List<TrackingServiceInfo> serviceList) =
      _$AccountsStateLoaded;

  List<TrackingServiceInfo> get serviceList =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountsStateLoadedCopyWith<AccountsStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountsStateLoadingFailedCopyWith<$Res> {
  factory $AccountsStateLoadingFailedCopyWith(AccountsStateLoadingFailed value,
          $Res Function(AccountsStateLoadingFailed) then) =
      _$AccountsStateLoadingFailedCopyWithImpl<$Res>;
  $Res call({StorageError error});

  $StorageErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$AccountsStateLoadingFailedCopyWithImpl<$Res>
    extends _$AccountsStateCopyWithImpl<$Res>
    implements $AccountsStateLoadingFailedCopyWith<$Res> {
  _$AccountsStateLoadingFailedCopyWithImpl(AccountsStateLoadingFailed _value,
      $Res Function(AccountsStateLoadingFailed) _then)
      : super(_value, (v) => _then(v as AccountsStateLoadingFailed));

  @override
  AccountsStateLoadingFailed get _value =>
      super._value as AccountsStateLoadingFailed;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(AccountsStateLoadingFailed(
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

class _$AccountsStateLoadingFailed
    with DiagnosticableTreeMixin
    implements AccountsStateLoadingFailed {
  const _$AccountsStateLoadingFailed({required this.error});

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountsStateLoadingFailed &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $AccountsStateLoadingFailedCopyWith<AccountsStateLoadingFailed>
      get copyWith =>
          _$AccountsStateLoadingFailedCopyWithImpl<AccountsStateLoadingFailed>(
              this, _$identity);

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
  const factory AccountsStateLoadingFailed({required StorageError error}) =
      _$AccountsStateLoadingFailed;

  StorageError get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountsStateLoadingFailedCopyWith<AccountsStateLoadingFailed>
      get copyWith => throw _privateConstructorUsedError;
}
