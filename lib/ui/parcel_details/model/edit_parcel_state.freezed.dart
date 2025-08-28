// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_parcel_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ParcelName name)? initial,
    TResult? Function(ParcelName name)? fieldChanged,
    TResult? Function()? editing,
    TResult? Function(ParcelName name)? edited,
    TResult? Function(
            ParcelName name, Exception? exception, StackTrace? stackTrace)?
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditParcelStateInitial value)? initial,
    TResult? Function(EditParcelStateFieldChanged value)? fieldChanged,
    TResult? Function(EditParcelStateEditing value)? editing,
    TResult? Function(EditParcelStateEdited value)? edited,
    TResult? Function(EditParcelStateEditFailed value)? editFailed,
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
      _$EditParcelStateCopyWithImpl<$Res, EditParcelState>;
}

/// @nodoc
class _$EditParcelStateCopyWithImpl<$Res, $Val extends EditParcelState>
    implements $EditParcelStateCopyWith<$Res> {
  _$EditParcelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EditParcelStateInitialImplCopyWith<$Res> {
  factory _$$EditParcelStateInitialImplCopyWith(
          _$EditParcelStateInitialImpl value,
          $Res Function(_$EditParcelStateInitialImpl) then) =
      __$$EditParcelStateInitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ParcelName name});

  $ParcelNameCopyWith<$Res> get name;
}

/// @nodoc
class __$$EditParcelStateInitialImplCopyWithImpl<$Res>
    extends _$EditParcelStateCopyWithImpl<$Res, _$EditParcelStateInitialImpl>
    implements _$$EditParcelStateInitialImplCopyWith<$Res> {
  __$$EditParcelStateInitialImplCopyWithImpl(
      _$EditParcelStateInitialImpl _value,
      $Res Function(_$EditParcelStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$EditParcelStateInitialImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ParcelName,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ParcelNameCopyWith<$Res> get name {
    return $ParcelNameCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value));
    });
  }
}

/// @nodoc

class _$EditParcelStateInitialImpl
    with DiagnosticableTreeMixin
    implements EditParcelStateInitial {
  const _$EditParcelStateInitialImpl({this.name = const ParcelName()});

  @override
  @JsonKey()
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditParcelStateInitialImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditParcelStateInitialImplCopyWith<_$EditParcelStateInitialImpl>
      get copyWith => __$$EditParcelStateInitialImplCopyWithImpl<
          _$EditParcelStateInitialImpl>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ParcelName name)? initial,
    TResult? Function(ParcelName name)? fieldChanged,
    TResult? Function()? editing,
    TResult? Function(ParcelName name)? edited,
    TResult? Function(
            ParcelName name, Exception? exception, StackTrace? stackTrace)?
        editFailed,
  }) {
    return initial?.call(name);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditParcelStateInitial value)? initial,
    TResult? Function(EditParcelStateFieldChanged value)? fieldChanged,
    TResult? Function(EditParcelStateEditing value)? editing,
    TResult? Function(EditParcelStateEdited value)? edited,
    TResult? Function(EditParcelStateEditFailed value)? editFailed,
  }) {
    return initial?.call(this);
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
  const factory EditParcelStateInitial({final ParcelName name}) =
      _$EditParcelStateInitialImpl;

  ParcelName get name;
  @JsonKey(ignore: true)
  _$$EditParcelStateInitialImplCopyWith<_$EditParcelStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditParcelStateFieldChangedImplCopyWith<$Res> {
  factory _$$EditParcelStateFieldChangedImplCopyWith(
          _$EditParcelStateFieldChangedImpl value,
          $Res Function(_$EditParcelStateFieldChangedImpl) then) =
      __$$EditParcelStateFieldChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ParcelName name});

  $ParcelNameCopyWith<$Res> get name;
}

/// @nodoc
class __$$EditParcelStateFieldChangedImplCopyWithImpl<$Res>
    extends _$EditParcelStateCopyWithImpl<$Res,
        _$EditParcelStateFieldChangedImpl>
    implements _$$EditParcelStateFieldChangedImplCopyWith<$Res> {
  __$$EditParcelStateFieldChangedImplCopyWithImpl(
      _$EditParcelStateFieldChangedImpl _value,
      $Res Function(_$EditParcelStateFieldChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$EditParcelStateFieldChangedImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ParcelName,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ParcelNameCopyWith<$Res> get name {
    return $ParcelNameCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value));
    });
  }
}

/// @nodoc

class _$EditParcelStateFieldChangedImpl
    with DiagnosticableTreeMixin
    implements EditParcelStateFieldChanged {
  const _$EditParcelStateFieldChangedImpl({required this.name});

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditParcelStateFieldChangedImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditParcelStateFieldChangedImplCopyWith<_$EditParcelStateFieldChangedImpl>
      get copyWith => __$$EditParcelStateFieldChangedImplCopyWithImpl<
          _$EditParcelStateFieldChangedImpl>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ParcelName name)? initial,
    TResult? Function(ParcelName name)? fieldChanged,
    TResult? Function()? editing,
    TResult? Function(ParcelName name)? edited,
    TResult? Function(
            ParcelName name, Exception? exception, StackTrace? stackTrace)?
        editFailed,
  }) {
    return fieldChanged?.call(name);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditParcelStateInitial value)? initial,
    TResult? Function(EditParcelStateFieldChanged value)? fieldChanged,
    TResult? Function(EditParcelStateEditing value)? editing,
    TResult? Function(EditParcelStateEdited value)? edited,
    TResult? Function(EditParcelStateEditFailed value)? editFailed,
  }) {
    return fieldChanged?.call(this);
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
  const factory EditParcelStateFieldChanged({required final ParcelName name}) =
      _$EditParcelStateFieldChangedImpl;

  ParcelName get name;
  @JsonKey(ignore: true)
  _$$EditParcelStateFieldChangedImplCopyWith<_$EditParcelStateFieldChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditParcelStateEditingImplCopyWith<$Res> {
  factory _$$EditParcelStateEditingImplCopyWith(
          _$EditParcelStateEditingImpl value,
          $Res Function(_$EditParcelStateEditingImpl) then) =
      __$$EditParcelStateEditingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditParcelStateEditingImplCopyWithImpl<$Res>
    extends _$EditParcelStateCopyWithImpl<$Res, _$EditParcelStateEditingImpl>
    implements _$$EditParcelStateEditingImplCopyWith<$Res> {
  __$$EditParcelStateEditingImplCopyWithImpl(
      _$EditParcelStateEditingImpl _value,
      $Res Function(_$EditParcelStateEditingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditParcelStateEditingImpl
    with DiagnosticableTreeMixin
    implements EditParcelStateEditing {
  const _$EditParcelStateEditingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditParcelState.editing()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'EditParcelState.editing'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditParcelStateEditingImpl);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ParcelName name)? initial,
    TResult? Function(ParcelName name)? fieldChanged,
    TResult? Function()? editing,
    TResult? Function(ParcelName name)? edited,
    TResult? Function(
            ParcelName name, Exception? exception, StackTrace? stackTrace)?
        editFailed,
  }) {
    return editing?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditParcelStateInitial value)? initial,
    TResult? Function(EditParcelStateFieldChanged value)? fieldChanged,
    TResult? Function(EditParcelStateEditing value)? editing,
    TResult? Function(EditParcelStateEdited value)? edited,
    TResult? Function(EditParcelStateEditFailed value)? editFailed,
  }) {
    return editing?.call(this);
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
  const factory EditParcelStateEditing() = _$EditParcelStateEditingImpl;
}

/// @nodoc
abstract class _$$EditParcelStateEditedImplCopyWith<$Res> {
  factory _$$EditParcelStateEditedImplCopyWith(
          _$EditParcelStateEditedImpl value,
          $Res Function(_$EditParcelStateEditedImpl) then) =
      __$$EditParcelStateEditedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ParcelName name});

  $ParcelNameCopyWith<$Res> get name;
}

/// @nodoc
class __$$EditParcelStateEditedImplCopyWithImpl<$Res>
    extends _$EditParcelStateCopyWithImpl<$Res, _$EditParcelStateEditedImpl>
    implements _$$EditParcelStateEditedImplCopyWith<$Res> {
  __$$EditParcelStateEditedImplCopyWithImpl(_$EditParcelStateEditedImpl _value,
      $Res Function(_$EditParcelStateEditedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$EditParcelStateEditedImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ParcelName,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ParcelNameCopyWith<$Res> get name {
    return $ParcelNameCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value));
    });
  }
}

/// @nodoc

class _$EditParcelStateEditedImpl
    with DiagnosticableTreeMixin
    implements EditParcelStateEdited {
  const _$EditParcelStateEditedImpl({required this.name});

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditParcelStateEditedImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditParcelStateEditedImplCopyWith<_$EditParcelStateEditedImpl>
      get copyWith => __$$EditParcelStateEditedImplCopyWithImpl<
          _$EditParcelStateEditedImpl>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ParcelName name)? initial,
    TResult? Function(ParcelName name)? fieldChanged,
    TResult? Function()? editing,
    TResult? Function(ParcelName name)? edited,
    TResult? Function(
            ParcelName name, Exception? exception, StackTrace? stackTrace)?
        editFailed,
  }) {
    return edited?.call(name);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditParcelStateInitial value)? initial,
    TResult? Function(EditParcelStateFieldChanged value)? fieldChanged,
    TResult? Function(EditParcelStateEditing value)? editing,
    TResult? Function(EditParcelStateEdited value)? edited,
    TResult? Function(EditParcelStateEditFailed value)? editFailed,
  }) {
    return edited?.call(this);
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
  const factory EditParcelStateEdited({required final ParcelName name}) =
      _$EditParcelStateEditedImpl;

  ParcelName get name;
  @JsonKey(ignore: true)
  _$$EditParcelStateEditedImplCopyWith<_$EditParcelStateEditedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditParcelStateEditFailedImplCopyWith<$Res> {
  factory _$$EditParcelStateEditFailedImplCopyWith(
          _$EditParcelStateEditFailedImpl value,
          $Res Function(_$EditParcelStateEditFailedImpl) then) =
      __$$EditParcelStateEditFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ParcelName name, Exception? exception, StackTrace? stackTrace});

  $ParcelNameCopyWith<$Res> get name;
}

/// @nodoc
class __$$EditParcelStateEditFailedImplCopyWithImpl<$Res>
    extends _$EditParcelStateCopyWithImpl<$Res, _$EditParcelStateEditFailedImpl>
    implements _$$EditParcelStateEditFailedImplCopyWith<$Res> {
  __$$EditParcelStateEditFailedImplCopyWithImpl(
      _$EditParcelStateEditFailedImpl _value,
      $Res Function(_$EditParcelStateEditFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? exception = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$EditParcelStateEditFailedImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ParcelName,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ParcelNameCopyWith<$Res> get name {
    return $ParcelNameCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value));
    });
  }
}

/// @nodoc

class _$EditParcelStateEditFailedImpl
    with DiagnosticableTreeMixin
    implements EditParcelStateEditFailed {
  const _$EditParcelStateEditFailedImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditParcelStateEditFailedImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, exception, stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditParcelStateEditFailedImplCopyWith<_$EditParcelStateEditFailedImpl>
      get copyWith => __$$EditParcelStateEditFailedImplCopyWithImpl<
          _$EditParcelStateEditFailedImpl>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ParcelName name)? initial,
    TResult? Function(ParcelName name)? fieldChanged,
    TResult? Function()? editing,
    TResult? Function(ParcelName name)? edited,
    TResult? Function(
            ParcelName name, Exception? exception, StackTrace? stackTrace)?
        editFailed,
  }) {
    return editFailed?.call(name, exception, stackTrace);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditParcelStateInitial value)? initial,
    TResult? Function(EditParcelStateFieldChanged value)? fieldChanged,
    TResult? Function(EditParcelStateEditing value)? editing,
    TResult? Function(EditParcelStateEdited value)? edited,
    TResult? Function(EditParcelStateEditFailed value)? editFailed,
  }) {
    return editFailed?.call(this);
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
      {required final ParcelName name,
      final Exception? exception,
      final StackTrace? stackTrace}) = _$EditParcelStateEditFailedImpl;

  ParcelName get name;
  Exception? get exception;
  StackTrace? get stackTrace;
  @JsonKey(ignore: true)
  _$$EditParcelStateEditFailedImplCopyWith<_$EditParcelStateEditFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

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
      _$ParcelNameCopyWithImpl<$Res, ParcelName>;
  @useResult
  $Res call({String? value});
}

/// @nodoc
class _$ParcelNameCopyWithImpl<$Res, $Val extends ParcelName>
    implements $ParcelNameCopyWith<$Res> {
  _$ParcelNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParcelNameImplCopyWith<$Res>
    implements $ParcelNameCopyWith<$Res> {
  factory _$$ParcelNameImplCopyWith(
          _$ParcelNameImpl value, $Res Function(_$ParcelNameImpl) then) =
      __$$ParcelNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? value});
}

/// @nodoc
class __$$ParcelNameImplCopyWithImpl<$Res>
    extends _$ParcelNameCopyWithImpl<$Res, _$ParcelNameImpl>
    implements _$$ParcelNameImplCopyWith<$Res> {
  __$$ParcelNameImplCopyWithImpl(
      _$ParcelNameImpl _value, $Res Function(_$ParcelNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$ParcelNameImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ParcelNameImpl with DiagnosticableTreeMixin implements _ParcelName {
  const _$ParcelNameImpl({this.value});

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelNameImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParcelNameImplCopyWith<_$ParcelNameImpl> get copyWith =>
      __$$ParcelNameImplCopyWithImpl<_$ParcelNameImpl>(this, _$identity);
}

abstract class _ParcelName implements ParcelName {
  const factory _ParcelName({final String? value}) = _$ParcelNameImpl;

  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$ParcelNameImplCopyWith<_$ParcelNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
