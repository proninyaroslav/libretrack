// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'accounts_actions_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AccountsActionsStateTearOff {
  const _$AccountsActionsStateTearOff();

  AccountsActionsStateInitial initial() {
    return const AccountsActionsStateInitial();
  }

  AccountsActionsStateDeleting deleting() {
    return const AccountsActionsStateDeleting();
  }

  AccountsActionsStateDeleteSuccess deleteSuccess() {
    return const AccountsActionsStateDeleteSuccess();
  }

  AccountsActionsStateDeleteFailed deleteFailed({required StorageError error}) {
    return AccountsActionsStateDeleteFailed(
      error: error,
    );
  }
}

/// @nodoc
const $AccountsActionsState = _$AccountsActionsStateTearOff();

/// @nodoc
mixin _$AccountsActionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error) deleteFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error)? deleteFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountsActionsStateInitial value) initial,
    required TResult Function(AccountsActionsStateDeleting value) deleting,
    required TResult Function(AccountsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(AccountsActionsStateDeleteFailed value)
        deleteFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountsActionsStateInitial value)? initial,
    TResult Function(AccountsActionsStateDeleting value)? deleting,
    TResult Function(AccountsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(AccountsActionsStateDeleteFailed value)? deleteFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountsActionsStateCopyWith<$Res> {
  factory $AccountsActionsStateCopyWith(AccountsActionsState value,
          $Res Function(AccountsActionsState) then) =
      _$AccountsActionsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountsActionsStateCopyWithImpl<$Res>
    implements $AccountsActionsStateCopyWith<$Res> {
  _$AccountsActionsStateCopyWithImpl(this._value, this._then);

  final AccountsActionsState _value;
  // ignore: unused_field
  final $Res Function(AccountsActionsState) _then;
}

/// @nodoc
abstract class $AccountsActionsStateInitialCopyWith<$Res> {
  factory $AccountsActionsStateInitialCopyWith(
          AccountsActionsStateInitial value,
          $Res Function(AccountsActionsStateInitial) then) =
      _$AccountsActionsStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountsActionsStateInitialCopyWithImpl<$Res>
    extends _$AccountsActionsStateCopyWithImpl<$Res>
    implements $AccountsActionsStateInitialCopyWith<$Res> {
  _$AccountsActionsStateInitialCopyWithImpl(AccountsActionsStateInitial _value,
      $Res Function(AccountsActionsStateInitial) _then)
      : super(_value, (v) => _then(v as AccountsActionsStateInitial));

  @override
  AccountsActionsStateInitial get _value =>
      super._value as AccountsActionsStateInitial;
}

/// @nodoc

class _$AccountsActionsStateInitial
    with DiagnosticableTreeMixin
    implements AccountsActionsStateInitial {
  const _$AccountsActionsStateInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountsActionsState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountsActionsState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AccountsActionsStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error) deleteFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error)? deleteFailed,
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
    required TResult Function(AccountsActionsStateInitial value) initial,
    required TResult Function(AccountsActionsStateDeleting value) deleting,
    required TResult Function(AccountsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(AccountsActionsStateDeleteFailed value)
        deleteFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountsActionsStateInitial value)? initial,
    TResult Function(AccountsActionsStateDeleting value)? deleting,
    TResult Function(AccountsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(AccountsActionsStateDeleteFailed value)? deleteFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AccountsActionsStateInitial implements AccountsActionsState {
  const factory AccountsActionsStateInitial() = _$AccountsActionsStateInitial;
}

/// @nodoc
abstract class $AccountsActionsStateDeletingCopyWith<$Res> {
  factory $AccountsActionsStateDeletingCopyWith(
          AccountsActionsStateDeleting value,
          $Res Function(AccountsActionsStateDeleting) then) =
      _$AccountsActionsStateDeletingCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountsActionsStateDeletingCopyWithImpl<$Res>
    extends _$AccountsActionsStateCopyWithImpl<$Res>
    implements $AccountsActionsStateDeletingCopyWith<$Res> {
  _$AccountsActionsStateDeletingCopyWithImpl(
      AccountsActionsStateDeleting _value,
      $Res Function(AccountsActionsStateDeleting) _then)
      : super(_value, (v) => _then(v as AccountsActionsStateDeleting));

  @override
  AccountsActionsStateDeleting get _value =>
      super._value as AccountsActionsStateDeleting;
}

/// @nodoc

class _$AccountsActionsStateDeleting
    with DiagnosticableTreeMixin
    implements AccountsActionsStateDeleting {
  const _$AccountsActionsStateDeleting();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountsActionsState.deleting()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountsActionsState.deleting'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AccountsActionsStateDeleting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error) deleteFailed,
  }) {
    return deleting();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error)? deleteFailed,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountsActionsStateInitial value) initial,
    required TResult Function(AccountsActionsStateDeleting value) deleting,
    required TResult Function(AccountsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(AccountsActionsStateDeleteFailed value)
        deleteFailed,
  }) {
    return deleting(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountsActionsStateInitial value)? initial,
    TResult Function(AccountsActionsStateDeleting value)? deleting,
    TResult Function(AccountsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(AccountsActionsStateDeleteFailed value)? deleteFailed,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting(this);
    }
    return orElse();
  }
}

abstract class AccountsActionsStateDeleting implements AccountsActionsState {
  const factory AccountsActionsStateDeleting() = _$AccountsActionsStateDeleting;
}

/// @nodoc
abstract class $AccountsActionsStateDeleteSuccessCopyWith<$Res> {
  factory $AccountsActionsStateDeleteSuccessCopyWith(
          AccountsActionsStateDeleteSuccess value,
          $Res Function(AccountsActionsStateDeleteSuccess) then) =
      _$AccountsActionsStateDeleteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountsActionsStateDeleteSuccessCopyWithImpl<$Res>
    extends _$AccountsActionsStateCopyWithImpl<$Res>
    implements $AccountsActionsStateDeleteSuccessCopyWith<$Res> {
  _$AccountsActionsStateDeleteSuccessCopyWithImpl(
      AccountsActionsStateDeleteSuccess _value,
      $Res Function(AccountsActionsStateDeleteSuccess) _then)
      : super(_value, (v) => _then(v as AccountsActionsStateDeleteSuccess));

  @override
  AccountsActionsStateDeleteSuccess get _value =>
      super._value as AccountsActionsStateDeleteSuccess;
}

/// @nodoc

class _$AccountsActionsStateDeleteSuccess
    with DiagnosticableTreeMixin
    implements AccountsActionsStateDeleteSuccess {
  const _$AccountsActionsStateDeleteSuccess();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountsActionsState.deleteSuccess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountsActionsState.deleteSuccess'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountsActionsStateDeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error) deleteFailed,
  }) {
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error)? deleteFailed,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountsActionsStateInitial value) initial,
    required TResult Function(AccountsActionsStateDeleting value) deleting,
    required TResult Function(AccountsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(AccountsActionsStateDeleteFailed value)
        deleteFailed,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountsActionsStateInitial value)? initial,
    TResult Function(AccountsActionsStateDeleting value)? deleting,
    TResult Function(AccountsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(AccountsActionsStateDeleteFailed value)? deleteFailed,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class AccountsActionsStateDeleteSuccess
    implements AccountsActionsState {
  const factory AccountsActionsStateDeleteSuccess() =
      _$AccountsActionsStateDeleteSuccess;
}

/// @nodoc
abstract class $AccountsActionsStateDeleteFailedCopyWith<$Res> {
  factory $AccountsActionsStateDeleteFailedCopyWith(
          AccountsActionsStateDeleteFailed value,
          $Res Function(AccountsActionsStateDeleteFailed) then) =
      _$AccountsActionsStateDeleteFailedCopyWithImpl<$Res>;
  $Res call({StorageError error});

  $StorageErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$AccountsActionsStateDeleteFailedCopyWithImpl<$Res>
    extends _$AccountsActionsStateCopyWithImpl<$Res>
    implements $AccountsActionsStateDeleteFailedCopyWith<$Res> {
  _$AccountsActionsStateDeleteFailedCopyWithImpl(
      AccountsActionsStateDeleteFailed _value,
      $Res Function(AccountsActionsStateDeleteFailed) _then)
      : super(_value, (v) => _then(v as AccountsActionsStateDeleteFailed));

  @override
  AccountsActionsStateDeleteFailed get _value =>
      super._value as AccountsActionsStateDeleteFailed;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(AccountsActionsStateDeleteFailed(
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

class _$AccountsActionsStateDeleteFailed
    with DiagnosticableTreeMixin
    implements AccountsActionsStateDeleteFailed {
  const _$AccountsActionsStateDeleteFailed({required this.error});

  @override
  final StorageError error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountsActionsState.deleteFailed(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountsActionsState.deleteFailed'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountsActionsStateDeleteFailed &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $AccountsActionsStateDeleteFailedCopyWith<AccountsActionsStateDeleteFailed>
      get copyWith => _$AccountsActionsStateDeleteFailedCopyWithImpl<
          AccountsActionsStateDeleteFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function() deleteSuccess,
    required TResult Function(StorageError error) deleteFailed,
  }) {
    return deleteFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function()? deleteSuccess,
    TResult Function(StorageError error)? deleteFailed,
    required TResult orElse(),
  }) {
    if (deleteFailed != null) {
      return deleteFailed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountsActionsStateInitial value) initial,
    required TResult Function(AccountsActionsStateDeleting value) deleting,
    required TResult Function(AccountsActionsStateDeleteSuccess value)
        deleteSuccess,
    required TResult Function(AccountsActionsStateDeleteFailed value)
        deleteFailed,
  }) {
    return deleteFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountsActionsStateInitial value)? initial,
    TResult Function(AccountsActionsStateDeleting value)? deleting,
    TResult Function(AccountsActionsStateDeleteSuccess value)? deleteSuccess,
    TResult Function(AccountsActionsStateDeleteFailed value)? deleteFailed,
    required TResult orElse(),
  }) {
    if (deleteFailed != null) {
      return deleteFailed(this);
    }
    return orElse();
  }
}

abstract class AccountsActionsStateDeleteFailed
    implements AccountsActionsState {
  const factory AccountsActionsStateDeleteFailed(
      {required StorageError error}) = _$AccountsActionsStateDeleteFailed;

  StorageError get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountsActionsStateDeleteFailedCopyWith<AccountsActionsStateDeleteFailed>
      get copyWith => throw _privateConstructorUsedError;
}
