// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_account_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditAccountStateTearOff {
  const _$EditAccountStateTearOff();

  EditAccountStateInitial initial() {
    return const EditAccountStateInitial();
  }

  EditAccountStateApplying applying() {
    return const EditAccountStateApplying();
  }

  EditAccountStateApplied applied() {
    return const EditAccountStateApplied();
  }

  EditAccountStateApplyFailed applyFailed(
      {Exception? exception, StackTrace? stackTrace}) {
    return EditAccountStateApplyFailed(
      exception: exception,
      stackTrace: stackTrace,
    );
  }
}

/// @nodoc
const $EditAccountState = _$EditAccountStateTearOff();

/// @nodoc
mixin _$EditAccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() applying,
    required TResult Function() applied,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        applyFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? applying,
    TResult Function()? applied,
    TResult Function(Exception? exception, StackTrace? stackTrace)? applyFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? applying,
    TResult Function()? applied,
    TResult Function(Exception? exception, StackTrace? stackTrace)? applyFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditAccountStateInitial value) initial,
    required TResult Function(EditAccountStateApplying value) applying,
    required TResult Function(EditAccountStateApplied value) applied,
    required TResult Function(EditAccountStateApplyFailed value) applyFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditAccountStateInitial value)? initial,
    TResult Function(EditAccountStateApplying value)? applying,
    TResult Function(EditAccountStateApplied value)? applied,
    TResult Function(EditAccountStateApplyFailed value)? applyFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditAccountStateInitial value)? initial,
    TResult Function(EditAccountStateApplying value)? applying,
    TResult Function(EditAccountStateApplied value)? applied,
    TResult Function(EditAccountStateApplyFailed value)? applyFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditAccountStateCopyWith<$Res> {
  factory $EditAccountStateCopyWith(
          EditAccountState value, $Res Function(EditAccountState) then) =
      _$EditAccountStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditAccountStateCopyWithImpl<$Res>
    implements $EditAccountStateCopyWith<$Res> {
  _$EditAccountStateCopyWithImpl(this._value, this._then);

  final EditAccountState _value;
  // ignore: unused_field
  final $Res Function(EditAccountState) _then;
}

/// @nodoc
abstract class $EditAccountStateInitialCopyWith<$Res> {
  factory $EditAccountStateInitialCopyWith(EditAccountStateInitial value,
          $Res Function(EditAccountStateInitial) then) =
      _$EditAccountStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditAccountStateInitialCopyWithImpl<$Res>
    extends _$EditAccountStateCopyWithImpl<$Res>
    implements $EditAccountStateInitialCopyWith<$Res> {
  _$EditAccountStateInitialCopyWithImpl(EditAccountStateInitial _value,
      $Res Function(EditAccountStateInitial) _then)
      : super(_value, (v) => _then(v as EditAccountStateInitial));

  @override
  EditAccountStateInitial get _value => super._value as EditAccountStateInitial;
}

/// @nodoc

class _$EditAccountStateInitial
    with DiagnosticableTreeMixin
    implements EditAccountStateInitial {
  const _$EditAccountStateInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditAccountState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'EditAccountState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EditAccountStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() applying,
    required TResult Function() applied,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        applyFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? applying,
    TResult Function()? applied,
    TResult Function(Exception? exception, StackTrace? stackTrace)? applyFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? applying,
    TResult Function()? applied,
    TResult Function(Exception? exception, StackTrace? stackTrace)? applyFailed,
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
    required TResult Function(EditAccountStateInitial value) initial,
    required TResult Function(EditAccountStateApplying value) applying,
    required TResult Function(EditAccountStateApplied value) applied,
    required TResult Function(EditAccountStateApplyFailed value) applyFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditAccountStateInitial value)? initial,
    TResult Function(EditAccountStateApplying value)? applying,
    TResult Function(EditAccountStateApplied value)? applied,
    TResult Function(EditAccountStateApplyFailed value)? applyFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditAccountStateInitial value)? initial,
    TResult Function(EditAccountStateApplying value)? applying,
    TResult Function(EditAccountStateApplied value)? applied,
    TResult Function(EditAccountStateApplyFailed value)? applyFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class EditAccountStateInitial implements EditAccountState {
  const factory EditAccountStateInitial() = _$EditAccountStateInitial;
}

/// @nodoc
abstract class $EditAccountStateApplyingCopyWith<$Res> {
  factory $EditAccountStateApplyingCopyWith(EditAccountStateApplying value,
          $Res Function(EditAccountStateApplying) then) =
      _$EditAccountStateApplyingCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditAccountStateApplyingCopyWithImpl<$Res>
    extends _$EditAccountStateCopyWithImpl<$Res>
    implements $EditAccountStateApplyingCopyWith<$Res> {
  _$EditAccountStateApplyingCopyWithImpl(EditAccountStateApplying _value,
      $Res Function(EditAccountStateApplying) _then)
      : super(_value, (v) => _then(v as EditAccountStateApplying));

  @override
  EditAccountStateApplying get _value =>
      super._value as EditAccountStateApplying;
}

/// @nodoc

class _$EditAccountStateApplying
    with DiagnosticableTreeMixin
    implements EditAccountStateApplying {
  const _$EditAccountStateApplying();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditAccountState.applying()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'EditAccountState.applying'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EditAccountStateApplying);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() applying,
    required TResult Function() applied,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        applyFailed,
  }) {
    return applying();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? applying,
    TResult Function()? applied,
    TResult Function(Exception? exception, StackTrace? stackTrace)? applyFailed,
  }) {
    return applying?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? applying,
    TResult Function()? applied,
    TResult Function(Exception? exception, StackTrace? stackTrace)? applyFailed,
    required TResult orElse(),
  }) {
    if (applying != null) {
      return applying();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditAccountStateInitial value) initial,
    required TResult Function(EditAccountStateApplying value) applying,
    required TResult Function(EditAccountStateApplied value) applied,
    required TResult Function(EditAccountStateApplyFailed value) applyFailed,
  }) {
    return applying(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditAccountStateInitial value)? initial,
    TResult Function(EditAccountStateApplying value)? applying,
    TResult Function(EditAccountStateApplied value)? applied,
    TResult Function(EditAccountStateApplyFailed value)? applyFailed,
  }) {
    return applying?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditAccountStateInitial value)? initial,
    TResult Function(EditAccountStateApplying value)? applying,
    TResult Function(EditAccountStateApplied value)? applied,
    TResult Function(EditAccountStateApplyFailed value)? applyFailed,
    required TResult orElse(),
  }) {
    if (applying != null) {
      return applying(this);
    }
    return orElse();
  }
}

abstract class EditAccountStateApplying implements EditAccountState {
  const factory EditAccountStateApplying() = _$EditAccountStateApplying;
}

/// @nodoc
abstract class $EditAccountStateAppliedCopyWith<$Res> {
  factory $EditAccountStateAppliedCopyWith(EditAccountStateApplied value,
          $Res Function(EditAccountStateApplied) then) =
      _$EditAccountStateAppliedCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditAccountStateAppliedCopyWithImpl<$Res>
    extends _$EditAccountStateCopyWithImpl<$Res>
    implements $EditAccountStateAppliedCopyWith<$Res> {
  _$EditAccountStateAppliedCopyWithImpl(EditAccountStateApplied _value,
      $Res Function(EditAccountStateApplied) _then)
      : super(_value, (v) => _then(v as EditAccountStateApplied));

  @override
  EditAccountStateApplied get _value => super._value as EditAccountStateApplied;
}

/// @nodoc

class _$EditAccountStateApplied
    with DiagnosticableTreeMixin
    implements EditAccountStateApplied {
  const _$EditAccountStateApplied();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditAccountState.applied()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'EditAccountState.applied'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EditAccountStateApplied);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() applying,
    required TResult Function() applied,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        applyFailed,
  }) {
    return applied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? applying,
    TResult Function()? applied,
    TResult Function(Exception? exception, StackTrace? stackTrace)? applyFailed,
  }) {
    return applied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? applying,
    TResult Function()? applied,
    TResult Function(Exception? exception, StackTrace? stackTrace)? applyFailed,
    required TResult orElse(),
  }) {
    if (applied != null) {
      return applied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditAccountStateInitial value) initial,
    required TResult Function(EditAccountStateApplying value) applying,
    required TResult Function(EditAccountStateApplied value) applied,
    required TResult Function(EditAccountStateApplyFailed value) applyFailed,
  }) {
    return applied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditAccountStateInitial value)? initial,
    TResult Function(EditAccountStateApplying value)? applying,
    TResult Function(EditAccountStateApplied value)? applied,
    TResult Function(EditAccountStateApplyFailed value)? applyFailed,
  }) {
    return applied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditAccountStateInitial value)? initial,
    TResult Function(EditAccountStateApplying value)? applying,
    TResult Function(EditAccountStateApplied value)? applied,
    TResult Function(EditAccountStateApplyFailed value)? applyFailed,
    required TResult orElse(),
  }) {
    if (applied != null) {
      return applied(this);
    }
    return orElse();
  }
}

abstract class EditAccountStateApplied implements EditAccountState {
  const factory EditAccountStateApplied() = _$EditAccountStateApplied;
}

/// @nodoc
abstract class $EditAccountStateApplyFailedCopyWith<$Res> {
  factory $EditAccountStateApplyFailedCopyWith(
          EditAccountStateApplyFailed value,
          $Res Function(EditAccountStateApplyFailed) then) =
      _$EditAccountStateApplyFailedCopyWithImpl<$Res>;
  $Res call({Exception? exception, StackTrace? stackTrace});
}

/// @nodoc
class _$EditAccountStateApplyFailedCopyWithImpl<$Res>
    extends _$EditAccountStateCopyWithImpl<$Res>
    implements $EditAccountStateApplyFailedCopyWith<$Res> {
  _$EditAccountStateApplyFailedCopyWithImpl(EditAccountStateApplyFailed _value,
      $Res Function(EditAccountStateApplyFailed) _then)
      : super(_value, (v) => _then(v as EditAccountStateApplyFailed));

  @override
  EditAccountStateApplyFailed get _value =>
      super._value as EditAccountStateApplyFailed;

  @override
  $Res call({
    Object? exception = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(EditAccountStateApplyFailed(
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

class _$EditAccountStateApplyFailed
    with DiagnosticableTreeMixin
    implements EditAccountStateApplyFailed {
  const _$EditAccountStateApplyFailed({this.exception, this.stackTrace});

  @override
  final Exception? exception;
  @override
  final StackTrace? stackTrace;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditAccountState.applyFailed(exception: $exception, stackTrace: $stackTrace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EditAccountState.applyFailed'))
      ..add(DiagnosticsProperty('exception', exception))
      ..add(DiagnosticsProperty('stackTrace', stackTrace));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditAccountStateApplyFailed &&
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
  $EditAccountStateApplyFailedCopyWith<EditAccountStateApplyFailed>
      get copyWith => _$EditAccountStateApplyFailedCopyWithImpl<
          EditAccountStateApplyFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() applying,
    required TResult Function() applied,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        applyFailed,
  }) {
    return applyFailed(exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? applying,
    TResult Function()? applied,
    TResult Function(Exception? exception, StackTrace? stackTrace)? applyFailed,
  }) {
    return applyFailed?.call(exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? applying,
    TResult Function()? applied,
    TResult Function(Exception? exception, StackTrace? stackTrace)? applyFailed,
    required TResult orElse(),
  }) {
    if (applyFailed != null) {
      return applyFailed(exception, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditAccountStateInitial value) initial,
    required TResult Function(EditAccountStateApplying value) applying,
    required TResult Function(EditAccountStateApplied value) applied,
    required TResult Function(EditAccountStateApplyFailed value) applyFailed,
  }) {
    return applyFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditAccountStateInitial value)? initial,
    TResult Function(EditAccountStateApplying value)? applying,
    TResult Function(EditAccountStateApplied value)? applied,
    TResult Function(EditAccountStateApplyFailed value)? applyFailed,
  }) {
    return applyFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditAccountStateInitial value)? initial,
    TResult Function(EditAccountStateApplying value)? applying,
    TResult Function(EditAccountStateApplied value)? applied,
    TResult Function(EditAccountStateApplyFailed value)? applyFailed,
    required TResult orElse(),
  }) {
    if (applyFailed != null) {
      return applyFailed(this);
    }
    return orElse();
  }
}

abstract class EditAccountStateApplyFailed implements EditAccountState {
  const factory EditAccountStateApplyFailed(
      {Exception? exception,
      StackTrace? stackTrace}) = _$EditAccountStateApplyFailed;

  Exception? get exception => throw _privateConstructorUsedError;
  StackTrace? get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditAccountStateApplyFailedCopyWith<EditAccountStateApplyFailed>
      get copyWith => throw _privateConstructorUsedError;
}
