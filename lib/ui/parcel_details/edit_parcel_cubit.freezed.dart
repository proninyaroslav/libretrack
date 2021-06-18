// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'edit_parcel_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditParcelStateTearOff {
  const _$EditParcelStateTearOff();

  EditParcelStateInitial initial({ParcelName name = const ParcelName()}) {
    return EditParcelStateInitial(
      name: name,
    );
  }

  EditParcelStateFieldChanged fieldChanged({required ParcelName name}) {
    return EditParcelStateFieldChanged(
      name: name,
    );
  }

  EditParcelStateEditing editing() {
    return const EditParcelStateEditing();
  }

  EditParcelStateEdited edited({required ParcelName name}) {
    return EditParcelStateEdited(
      name: name,
    );
  }

  EditParcelStateEditFailed editFailed(
      {required ParcelName name,
      Exception? exception,
      StackTrace? stackTrace}) {
    return EditParcelStateEditFailed(
      name: name,
      exception: exception,
      stackTrace: stackTrace,
    );
  }
}

/// @nodoc
const $EditParcelState = _$EditParcelStateTearOff();

/// @nodoc
mixin _$EditParcelState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParcelName name) initial,
    required TResult Function(ParcelName name) fieldChanged,
    required TResult Function() editing,
    required TResult Function(ParcelName name) edited,
    required TResult Function(
            ParcelName name, Exception? exception, StackTrace? stackTrace)
        editFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParcelName name)? initial,
    TResult Function(ParcelName name)? fieldChanged,
    TResult Function()? editing,
    TResult Function(ParcelName name)? edited,
    TResult Function(
            ParcelName name, Exception? exception, StackTrace? stackTrace)?
        editFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditParcelStateInitial value) initial,
    required TResult Function(EditParcelStateFieldChanged value) fieldChanged,
    required TResult Function(EditParcelStateEditing value) editing,
    required TResult Function(EditParcelStateEdited value) edited,
    required TResult Function(EditParcelStateEditFailed value) editFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditParcelStateInitial value)? initial,
    TResult Function(EditParcelStateFieldChanged value)? fieldChanged,
    TResult Function(EditParcelStateEditing value)? editing,
    TResult Function(EditParcelStateEdited value)? edited,
    TResult Function(EditParcelStateEditFailed value)? editFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditParcelStateCopyWith<$Res> {
  factory $EditParcelStateCopyWith(
          EditParcelState value, $Res Function(EditParcelState) then) =
      _$EditParcelStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditParcelStateCopyWithImpl<$Res>
    implements $EditParcelStateCopyWith<$Res> {
  _$EditParcelStateCopyWithImpl(this._value, this._then);

  final EditParcelState _value;
  // ignore: unused_field
  final $Res Function(EditParcelState) _then;
}

/// @nodoc
abstract class $EditParcelStateInitialCopyWith<$Res> {
  factory $EditParcelStateInitialCopyWith(EditParcelStateInitial value,
          $Res Function(EditParcelStateInitial) then) =
      _$EditParcelStateInitialCopyWithImpl<$Res>;
  $Res call({ParcelName name});

  $ParcelNameCopyWith<$Res> get name;
}

/// @nodoc
class _$EditParcelStateInitialCopyWithImpl<$Res>
    extends _$EditParcelStateCopyWithImpl<$Res>
    implements $EditParcelStateInitialCopyWith<$Res> {
  _$EditParcelStateInitialCopyWithImpl(EditParcelStateInitial _value,
      $Res Function(EditParcelStateInitial) _then)
      : super(_value, (v) => _then(v as EditParcelStateInitial));

  @override
  EditParcelStateInitial get _value => super._value as EditParcelStateInitial;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(EditParcelStateInitial(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ParcelName,
    ));
  }

  @override
  $ParcelNameCopyWith<$Res> get name {
    return $ParcelNameCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value));
    });
  }
}

/// @nodoc

class _$EditParcelStateInitial
    with DiagnosticableTreeMixin
    implements EditParcelStateInitial {
  const _$EditParcelStateInitial({this.name = const ParcelName()});

  @JsonKey(defaultValue: const ParcelName())
  @override
  final ParcelName name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditParcelState.initial(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EditParcelState.initial'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditParcelStateInitial &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  $EditParcelStateInitialCopyWith<EditParcelStateInitial> get copyWith =>
      _$EditParcelStateInitialCopyWithImpl<EditParcelStateInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParcelName name) initial,
    required TResult Function(ParcelName name) fieldChanged,
    required TResult Function() editing,
    required TResult Function(ParcelName name) edited,
    required TResult Function(
            ParcelName name, Exception? exception, StackTrace? stackTrace)
        editFailed,
  }) {
    return initial(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParcelName name)? initial,
    TResult Function(ParcelName name)? fieldChanged,
    TResult Function()? editing,
    TResult Function(ParcelName name)? edited,
    TResult Function(
            ParcelName name, Exception? exception, StackTrace? stackTrace)?
        editFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditParcelStateInitial value) initial,
    required TResult Function(EditParcelStateFieldChanged value) fieldChanged,
    required TResult Function(EditParcelStateEditing value) editing,
    required TResult Function(EditParcelStateEdited value) edited,
    required TResult Function(EditParcelStateEditFailed value) editFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditParcelStateInitial value)? initial,
    TResult Function(EditParcelStateFieldChanged value)? fieldChanged,
    TResult Function(EditParcelStateEditing value)? editing,
    TResult Function(EditParcelStateEdited value)? edited,
    TResult Function(EditParcelStateEditFailed value)? editFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class EditParcelStateInitial implements EditParcelState {
  const factory EditParcelStateInitial({ParcelName name}) =
      _$EditParcelStateInitial;

  ParcelName get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditParcelStateInitialCopyWith<EditParcelStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditParcelStateFieldChangedCopyWith<$Res> {
  factory $EditParcelStateFieldChangedCopyWith(
          EditParcelStateFieldChanged value,
          $Res Function(EditParcelStateFieldChanged) then) =
      _$EditParcelStateFieldChangedCopyWithImpl<$Res>;
  $Res call({ParcelName name});

  $ParcelNameCopyWith<$Res> get name;
}

/// @nodoc
class _$EditParcelStateFieldChangedCopyWithImpl<$Res>
    extends _$EditParcelStateCopyWithImpl<$Res>
    implements $EditParcelStateFieldChangedCopyWith<$Res> {
  _$EditParcelStateFieldChangedCopyWithImpl(EditParcelStateFieldChanged _value,
      $Res Function(EditParcelStateFieldChanged) _then)
      : super(_value, (v) => _then(v as EditParcelStateFieldChanged));

  @override
  EditParcelStateFieldChanged get _value =>
      super._value as EditParcelStateFieldChanged;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(EditParcelStateFieldChanged(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ParcelName,
    ));
  }

  @override
  $ParcelNameCopyWith<$Res> get name {
    return $ParcelNameCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value));
    });
  }
}

/// @nodoc

class _$EditParcelStateFieldChanged
    with DiagnosticableTreeMixin
    implements EditParcelStateFieldChanged {
  const _$EditParcelStateFieldChanged({required this.name});

  @override
  final ParcelName name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditParcelState.fieldChanged(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EditParcelState.fieldChanged'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditParcelStateFieldChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  $EditParcelStateFieldChangedCopyWith<EditParcelStateFieldChanged>
      get copyWith => _$EditParcelStateFieldChangedCopyWithImpl<
          EditParcelStateFieldChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParcelName name) initial,
    required TResult Function(ParcelName name) fieldChanged,
    required TResult Function() editing,
    required TResult Function(ParcelName name) edited,
    required TResult Function(
            ParcelName name, Exception? exception, StackTrace? stackTrace)
        editFailed,
  }) {
    return fieldChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParcelName name)? initial,
    TResult Function(ParcelName name)? fieldChanged,
    TResult Function()? editing,
    TResult Function(ParcelName name)? edited,
    TResult Function(
            ParcelName name, Exception? exception, StackTrace? stackTrace)?
        editFailed,
    required TResult orElse(),
  }) {
    if (fieldChanged != null) {
      return fieldChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditParcelStateInitial value) initial,
    required TResult Function(EditParcelStateFieldChanged value) fieldChanged,
    required TResult Function(EditParcelStateEditing value) editing,
    required TResult Function(EditParcelStateEdited value) edited,
    required TResult Function(EditParcelStateEditFailed value) editFailed,
  }) {
    return fieldChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditParcelStateInitial value)? initial,
    TResult Function(EditParcelStateFieldChanged value)? fieldChanged,
    TResult Function(EditParcelStateEditing value)? editing,
    TResult Function(EditParcelStateEdited value)? edited,
    TResult Function(EditParcelStateEditFailed value)? editFailed,
    required TResult orElse(),
  }) {
    if (fieldChanged != null) {
      return fieldChanged(this);
    }
    return orElse();
  }
}

abstract class EditParcelStateFieldChanged implements EditParcelState {
  const factory EditParcelStateFieldChanged({required ParcelName name}) =
      _$EditParcelStateFieldChanged;

  ParcelName get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditParcelStateFieldChangedCopyWith<EditParcelStateFieldChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditParcelStateEditingCopyWith<$Res> {
  factory $EditParcelStateEditingCopyWith(EditParcelStateEditing value,
          $Res Function(EditParcelStateEditing) then) =
      _$EditParcelStateEditingCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditParcelStateEditingCopyWithImpl<$Res>
    extends _$EditParcelStateCopyWithImpl<$Res>
    implements $EditParcelStateEditingCopyWith<$Res> {
  _$EditParcelStateEditingCopyWithImpl(EditParcelStateEditing _value,
      $Res Function(EditParcelStateEditing) _then)
      : super(_value, (v) => _then(v as EditParcelStateEditing));

  @override
  EditParcelStateEditing get _value => super._value as EditParcelStateEditing;
}

/// @nodoc

class _$EditParcelStateEditing
    with DiagnosticableTreeMixin
    implements EditParcelStateEditing {
  const _$EditParcelStateEditing();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditParcelState.editing()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'EditParcelState.editing'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EditParcelStateEditing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParcelName name) initial,
    required TResult Function(ParcelName name) fieldChanged,
    required TResult Function() editing,
    required TResult Function(ParcelName name) edited,
    required TResult Function(
            ParcelName name, Exception? exception, StackTrace? stackTrace)
        editFailed,
  }) {
    return editing();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParcelName name)? initial,
    TResult Function(ParcelName name)? fieldChanged,
    TResult Function()? editing,
    TResult Function(ParcelName name)? edited,
    TResult Function(
            ParcelName name, Exception? exception, StackTrace? stackTrace)?
        editFailed,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditParcelStateInitial value) initial,
    required TResult Function(EditParcelStateFieldChanged value) fieldChanged,
    required TResult Function(EditParcelStateEditing value) editing,
    required TResult Function(EditParcelStateEdited value) edited,
    required TResult Function(EditParcelStateEditFailed value) editFailed,
  }) {
    return editing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditParcelStateInitial value)? initial,
    TResult Function(EditParcelStateFieldChanged value)? fieldChanged,
    TResult Function(EditParcelStateEditing value)? editing,
    TResult Function(EditParcelStateEdited value)? edited,
    TResult Function(EditParcelStateEditFailed value)? editFailed,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(this);
    }
    return orElse();
  }
}

abstract class EditParcelStateEditing implements EditParcelState {
  const factory EditParcelStateEditing() = _$EditParcelStateEditing;
}

/// @nodoc
abstract class $EditParcelStateEditedCopyWith<$Res> {
  factory $EditParcelStateEditedCopyWith(EditParcelStateEdited value,
          $Res Function(EditParcelStateEdited) then) =
      _$EditParcelStateEditedCopyWithImpl<$Res>;
  $Res call({ParcelName name});

  $ParcelNameCopyWith<$Res> get name;
}

/// @nodoc
class _$EditParcelStateEditedCopyWithImpl<$Res>
    extends _$EditParcelStateCopyWithImpl<$Res>
    implements $EditParcelStateEditedCopyWith<$Res> {
  _$EditParcelStateEditedCopyWithImpl(
      EditParcelStateEdited _value, $Res Function(EditParcelStateEdited) _then)
      : super(_value, (v) => _then(v as EditParcelStateEdited));

  @override
  EditParcelStateEdited get _value => super._value as EditParcelStateEdited;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(EditParcelStateEdited(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ParcelName,
    ));
  }

  @override
  $ParcelNameCopyWith<$Res> get name {
    return $ParcelNameCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value));
    });
  }
}

/// @nodoc

class _$EditParcelStateEdited
    with DiagnosticableTreeMixin
    implements EditParcelStateEdited {
  const _$EditParcelStateEdited({required this.name});

  @override
  final ParcelName name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditParcelState.edited(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EditParcelState.edited'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditParcelStateEdited &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  $EditParcelStateEditedCopyWith<EditParcelStateEdited> get copyWith =>
      _$EditParcelStateEditedCopyWithImpl<EditParcelStateEdited>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParcelName name) initial,
    required TResult Function(ParcelName name) fieldChanged,
    required TResult Function() editing,
    required TResult Function(ParcelName name) edited,
    required TResult Function(
            ParcelName name, Exception? exception, StackTrace? stackTrace)
        editFailed,
  }) {
    return edited(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParcelName name)? initial,
    TResult Function(ParcelName name)? fieldChanged,
    TResult Function()? editing,
    TResult Function(ParcelName name)? edited,
    TResult Function(
            ParcelName name, Exception? exception, StackTrace? stackTrace)?
        editFailed,
    required TResult orElse(),
  }) {
    if (edited != null) {
      return edited(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditParcelStateInitial value) initial,
    required TResult Function(EditParcelStateFieldChanged value) fieldChanged,
    required TResult Function(EditParcelStateEditing value) editing,
    required TResult Function(EditParcelStateEdited value) edited,
    required TResult Function(EditParcelStateEditFailed value) editFailed,
  }) {
    return edited(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditParcelStateInitial value)? initial,
    TResult Function(EditParcelStateFieldChanged value)? fieldChanged,
    TResult Function(EditParcelStateEditing value)? editing,
    TResult Function(EditParcelStateEdited value)? edited,
    TResult Function(EditParcelStateEditFailed value)? editFailed,
    required TResult orElse(),
  }) {
    if (edited != null) {
      return edited(this);
    }
    return orElse();
  }
}

abstract class EditParcelStateEdited implements EditParcelState {
  const factory EditParcelStateEdited({required ParcelName name}) =
      _$EditParcelStateEdited;

  ParcelName get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditParcelStateEditedCopyWith<EditParcelStateEdited> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditParcelStateEditFailedCopyWith<$Res> {
  factory $EditParcelStateEditFailedCopyWith(EditParcelStateEditFailed value,
          $Res Function(EditParcelStateEditFailed) then) =
      _$EditParcelStateEditFailedCopyWithImpl<$Res>;
  $Res call({ParcelName name, Exception? exception, StackTrace? stackTrace});

  $ParcelNameCopyWith<$Res> get name;
}

/// @nodoc
class _$EditParcelStateEditFailedCopyWithImpl<$Res>
    extends _$EditParcelStateCopyWithImpl<$Res>
    implements $EditParcelStateEditFailedCopyWith<$Res> {
  _$EditParcelStateEditFailedCopyWithImpl(EditParcelStateEditFailed _value,
      $Res Function(EditParcelStateEditFailed) _then)
      : super(_value, (v) => _then(v as EditParcelStateEditFailed));

  @override
  EditParcelStateEditFailed get _value =>
      super._value as EditParcelStateEditFailed;

  @override
  $Res call({
    Object? name = freezed,
    Object? exception = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(EditParcelStateEditFailed(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ParcelName,
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

  @override
  $ParcelNameCopyWith<$Res> get name {
    return $ParcelNameCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value));
    });
  }
}

/// @nodoc

class _$EditParcelStateEditFailed
    with DiagnosticableTreeMixin
    implements EditParcelStateEditFailed {
  const _$EditParcelStateEditFailed(
      {required this.name, this.exception, this.stackTrace});

  @override
  final ParcelName name;
  @override
  final Exception? exception;
  @override
  final StackTrace? stackTrace;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditParcelState.editFailed(name: $name, exception: $exception, stackTrace: $stackTrace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EditParcelState.editFailed'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('exception', exception))
      ..add(DiagnosticsProperty('stackTrace', stackTrace));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditParcelStateEditFailed &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
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
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(exception) ^
      const DeepCollectionEquality().hash(stackTrace);

  @JsonKey(ignore: true)
  @override
  $EditParcelStateEditFailedCopyWith<EditParcelStateEditFailed> get copyWith =>
      _$EditParcelStateEditFailedCopyWithImpl<EditParcelStateEditFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParcelName name) initial,
    required TResult Function(ParcelName name) fieldChanged,
    required TResult Function() editing,
    required TResult Function(ParcelName name) edited,
    required TResult Function(
            ParcelName name, Exception? exception, StackTrace? stackTrace)
        editFailed,
  }) {
    return editFailed(name, exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParcelName name)? initial,
    TResult Function(ParcelName name)? fieldChanged,
    TResult Function()? editing,
    TResult Function(ParcelName name)? edited,
    TResult Function(
            ParcelName name, Exception? exception, StackTrace? stackTrace)?
        editFailed,
    required TResult orElse(),
  }) {
    if (editFailed != null) {
      return editFailed(name, exception, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditParcelStateInitial value) initial,
    required TResult Function(EditParcelStateFieldChanged value) fieldChanged,
    required TResult Function(EditParcelStateEditing value) editing,
    required TResult Function(EditParcelStateEdited value) edited,
    required TResult Function(EditParcelStateEditFailed value) editFailed,
  }) {
    return editFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditParcelStateInitial value)? initial,
    TResult Function(EditParcelStateFieldChanged value)? fieldChanged,
    TResult Function(EditParcelStateEditing value)? editing,
    TResult Function(EditParcelStateEdited value)? edited,
    TResult Function(EditParcelStateEditFailed value)? editFailed,
    required TResult orElse(),
  }) {
    if (editFailed != null) {
      return editFailed(this);
    }
    return orElse();
  }
}

abstract class EditParcelStateEditFailed implements EditParcelState {
  const factory EditParcelStateEditFailed(
      {required ParcelName name,
      Exception? exception,
      StackTrace? stackTrace}) = _$EditParcelStateEditFailed;

  ParcelName get name => throw _privateConstructorUsedError;
  Exception? get exception => throw _privateConstructorUsedError;
  StackTrace? get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditParcelStateEditFailedCopyWith<EditParcelStateEditFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ParcelNameTearOff {
  const _$ParcelNameTearOff();

  _ParcelName call({String? value}) {
    return _ParcelName(
      value: value,
    );
  }
}

/// @nodoc
const $ParcelName = _$ParcelNameTearOff();

/// @nodoc
mixin _$ParcelName {
  String? get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParcelNameCopyWith<ParcelName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelNameCopyWith<$Res> {
  factory $ParcelNameCopyWith(
          ParcelName value, $Res Function(ParcelName) then) =
      _$ParcelNameCopyWithImpl<$Res>;
  $Res call({String? value});
}

/// @nodoc
class _$ParcelNameCopyWithImpl<$Res> implements $ParcelNameCopyWith<$Res> {
  _$ParcelNameCopyWithImpl(this._value, this._then);

  final ParcelName _value;
  // ignore: unused_field
  final $Res Function(ParcelName) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ParcelNameCopyWith<$Res> implements $ParcelNameCopyWith<$Res> {
  factory _$ParcelNameCopyWith(
          _ParcelName value, $Res Function(_ParcelName) then) =
      __$ParcelNameCopyWithImpl<$Res>;
  @override
  $Res call({String? value});
}

/// @nodoc
class __$ParcelNameCopyWithImpl<$Res> extends _$ParcelNameCopyWithImpl<$Res>
    implements _$ParcelNameCopyWith<$Res> {
  __$ParcelNameCopyWithImpl(
      _ParcelName _value, $Res Function(_ParcelName) _then)
      : super(_value, (v) => _then(v as _ParcelName));

  @override
  _ParcelName get _value => super._value as _ParcelName;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ParcelName(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ParcelName with DiagnosticableTreeMixin implements _ParcelName {
  const _$_ParcelName({this.value});

  @override
  final String? value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParcelName(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParcelName'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ParcelName &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$ParcelNameCopyWith<_ParcelName> get copyWith =>
      __$ParcelNameCopyWithImpl<_ParcelName>(this, _$identity);
}

abstract class _ParcelName implements ParcelName {
  const factory _ParcelName({String? value}) = _$_ParcelName;

  @override
  String? get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ParcelNameCopyWith<_ParcelName> get copyWith =>
      throw _privateConstructorUsedError;
}
