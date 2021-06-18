// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'add_account_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddAccountStateTearOff {
  const _$AddAccountStateTearOff();

  AddAccountStateInitial initial() {
    return const AddAccountStateInitial();
  }

  AddAccountStateAdding adding() {
    return const AddAccountStateAdding();
  }

  AddAccountStateAdded added() {
    return const AddAccountStateAdded();
  }

  AddAccountStateAddFailed addFailed(
      {Exception? exception, StackTrace? stackTrace}) {
    return AddAccountStateAddFailed(
      exception: exception,
      stackTrace: stackTrace,
    );
  }
}

/// @nodoc
const $AddAccountState = _$AddAccountStateTearOff();

/// @nodoc
mixin _$AddAccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adding,
    required TResult Function() added,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        addFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adding,
    TResult Function()? added,
    TResult Function(Exception? exception, StackTrace? stackTrace)? addFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddAccountStateInitial value) initial,
    required TResult Function(AddAccountStateAdding value) adding,
    required TResult Function(AddAccountStateAdded value) added,
    required TResult Function(AddAccountStateAddFailed value) addFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddAccountStateInitial value)? initial,
    TResult Function(AddAccountStateAdding value)? adding,
    TResult Function(AddAccountStateAdded value)? added,
    TResult Function(AddAccountStateAddFailed value)? addFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAccountStateCopyWith<$Res> {
  factory $AddAccountStateCopyWith(
          AddAccountState value, $Res Function(AddAccountState) then) =
      _$AddAccountStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddAccountStateCopyWithImpl<$Res>
    implements $AddAccountStateCopyWith<$Res> {
  _$AddAccountStateCopyWithImpl(this._value, this._then);

  final AddAccountState _value;
  // ignore: unused_field
  final $Res Function(AddAccountState) _then;
}

/// @nodoc
abstract class $AddAccountStateInitialCopyWith<$Res> {
  factory $AddAccountStateInitialCopyWith(AddAccountStateInitial value,
          $Res Function(AddAccountStateInitial) then) =
      _$AddAccountStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddAccountStateInitialCopyWithImpl<$Res>
    extends _$AddAccountStateCopyWithImpl<$Res>
    implements $AddAccountStateInitialCopyWith<$Res> {
  _$AddAccountStateInitialCopyWithImpl(AddAccountStateInitial _value,
      $Res Function(AddAccountStateInitial) _then)
      : super(_value, (v) => _then(v as AddAccountStateInitial));

  @override
  AddAccountStateInitial get _value => super._value as AddAccountStateInitial;
}

/// @nodoc

class _$AddAccountStateInitial
    with DiagnosticableTreeMixin
    implements AddAccountStateInitial {
  const _$AddAccountStateInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddAccountState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AddAccountState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddAccountStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adding,
    required TResult Function() added,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        addFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adding,
    TResult Function()? added,
    TResult Function(Exception? exception, StackTrace? stackTrace)? addFailed,
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
    required TResult Function(AddAccountStateInitial value) initial,
    required TResult Function(AddAccountStateAdding value) adding,
    required TResult Function(AddAccountStateAdded value) added,
    required TResult Function(AddAccountStateAddFailed value) addFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddAccountStateInitial value)? initial,
    TResult Function(AddAccountStateAdding value)? adding,
    TResult Function(AddAccountStateAdded value)? added,
    TResult Function(AddAccountStateAddFailed value)? addFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AddAccountStateInitial implements AddAccountState {
  const factory AddAccountStateInitial() = _$AddAccountStateInitial;
}

/// @nodoc
abstract class $AddAccountStateAddingCopyWith<$Res> {
  factory $AddAccountStateAddingCopyWith(AddAccountStateAdding value,
          $Res Function(AddAccountStateAdding) then) =
      _$AddAccountStateAddingCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddAccountStateAddingCopyWithImpl<$Res>
    extends _$AddAccountStateCopyWithImpl<$Res>
    implements $AddAccountStateAddingCopyWith<$Res> {
  _$AddAccountStateAddingCopyWithImpl(
      AddAccountStateAdding _value, $Res Function(AddAccountStateAdding) _then)
      : super(_value, (v) => _then(v as AddAccountStateAdding));

  @override
  AddAccountStateAdding get _value => super._value as AddAccountStateAdding;
}

/// @nodoc

class _$AddAccountStateAdding
    with DiagnosticableTreeMixin
    implements AddAccountStateAdding {
  const _$AddAccountStateAdding();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddAccountState.adding()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AddAccountState.adding'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddAccountStateAdding);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adding,
    required TResult Function() added,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        addFailed,
  }) {
    return adding();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adding,
    TResult Function()? added,
    TResult Function(Exception? exception, StackTrace? stackTrace)? addFailed,
    required TResult orElse(),
  }) {
    if (adding != null) {
      return adding();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddAccountStateInitial value) initial,
    required TResult Function(AddAccountStateAdding value) adding,
    required TResult Function(AddAccountStateAdded value) added,
    required TResult Function(AddAccountStateAddFailed value) addFailed,
  }) {
    return adding(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddAccountStateInitial value)? initial,
    TResult Function(AddAccountStateAdding value)? adding,
    TResult Function(AddAccountStateAdded value)? added,
    TResult Function(AddAccountStateAddFailed value)? addFailed,
    required TResult orElse(),
  }) {
    if (adding != null) {
      return adding(this);
    }
    return orElse();
  }
}

abstract class AddAccountStateAdding implements AddAccountState {
  const factory AddAccountStateAdding() = _$AddAccountStateAdding;
}

/// @nodoc
abstract class $AddAccountStateAddedCopyWith<$Res> {
  factory $AddAccountStateAddedCopyWith(AddAccountStateAdded value,
          $Res Function(AddAccountStateAdded) then) =
      _$AddAccountStateAddedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddAccountStateAddedCopyWithImpl<$Res>
    extends _$AddAccountStateCopyWithImpl<$Res>
    implements $AddAccountStateAddedCopyWith<$Res> {
  _$AddAccountStateAddedCopyWithImpl(
      AddAccountStateAdded _value, $Res Function(AddAccountStateAdded) _then)
      : super(_value, (v) => _then(v as AddAccountStateAdded));

  @override
  AddAccountStateAdded get _value => super._value as AddAccountStateAdded;
}

/// @nodoc

class _$AddAccountStateAdded
    with DiagnosticableTreeMixin
    implements AddAccountStateAdded {
  const _$AddAccountStateAdded();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddAccountState.added()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AddAccountState.added'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddAccountStateAdded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adding,
    required TResult Function() added,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        addFailed,
  }) {
    return added();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adding,
    TResult Function()? added,
    TResult Function(Exception? exception, StackTrace? stackTrace)? addFailed,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddAccountStateInitial value) initial,
    required TResult Function(AddAccountStateAdding value) adding,
    required TResult Function(AddAccountStateAdded value) added,
    required TResult Function(AddAccountStateAddFailed value) addFailed,
  }) {
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddAccountStateInitial value)? initial,
    TResult Function(AddAccountStateAdding value)? adding,
    TResult Function(AddAccountStateAdded value)? added,
    TResult Function(AddAccountStateAddFailed value)? addFailed,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class AddAccountStateAdded implements AddAccountState {
  const factory AddAccountStateAdded() = _$AddAccountStateAdded;
}

/// @nodoc
abstract class $AddAccountStateAddFailedCopyWith<$Res> {
  factory $AddAccountStateAddFailedCopyWith(AddAccountStateAddFailed value,
          $Res Function(AddAccountStateAddFailed) then) =
      _$AddAccountStateAddFailedCopyWithImpl<$Res>;
  $Res call({Exception? exception, StackTrace? stackTrace});
}

/// @nodoc
class _$AddAccountStateAddFailedCopyWithImpl<$Res>
    extends _$AddAccountStateCopyWithImpl<$Res>
    implements $AddAccountStateAddFailedCopyWith<$Res> {
  _$AddAccountStateAddFailedCopyWithImpl(AddAccountStateAddFailed _value,
      $Res Function(AddAccountStateAddFailed) _then)
      : super(_value, (v) => _then(v as AddAccountStateAddFailed));

  @override
  AddAccountStateAddFailed get _value =>
      super._value as AddAccountStateAddFailed;

  @override
  $Res call({
    Object? exception = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(AddAccountStateAddFailed(
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

class _$AddAccountStateAddFailed
    with DiagnosticableTreeMixin
    implements AddAccountStateAddFailed {
  const _$AddAccountStateAddFailed({this.exception, this.stackTrace});

  @override
  final Exception? exception;
  @override
  final StackTrace? stackTrace;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddAccountState.addFailed(exception: $exception, stackTrace: $stackTrace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddAccountState.addFailed'))
      ..add(DiagnosticsProperty('exception', exception))
      ..add(DiagnosticsProperty('stackTrace', stackTrace));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddAccountStateAddFailed &&
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
  $AddAccountStateAddFailedCopyWith<AddAccountStateAddFailed> get copyWith =>
      _$AddAccountStateAddFailedCopyWithImpl<AddAccountStateAddFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adding,
    required TResult Function() added,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        addFailed,
  }) {
    return addFailed(exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adding,
    TResult Function()? added,
    TResult Function(Exception? exception, StackTrace? stackTrace)? addFailed,
    required TResult orElse(),
  }) {
    if (addFailed != null) {
      return addFailed(exception, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddAccountStateInitial value) initial,
    required TResult Function(AddAccountStateAdding value) adding,
    required TResult Function(AddAccountStateAdded value) added,
    required TResult Function(AddAccountStateAddFailed value) addFailed,
  }) {
    return addFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddAccountStateInitial value)? initial,
    TResult Function(AddAccountStateAdding value)? adding,
    TResult Function(AddAccountStateAdded value)? added,
    TResult Function(AddAccountStateAddFailed value)? addFailed,
    required TResult orElse(),
  }) {
    if (addFailed != null) {
      return addFailed(this);
    }
    return orElse();
  }
}

abstract class AddAccountStateAddFailed implements AddAccountState {
  const factory AddAccountStateAddFailed(
      {Exception? exception,
      StackTrace? stackTrace}) = _$AddAccountStateAddFailed;

  Exception? get exception => throw _privateConstructorUsedError;
  StackTrace? get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddAccountStateAddFailedCopyWith<AddAccountStateAddFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
