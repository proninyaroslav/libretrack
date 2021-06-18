// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFormFieldTearOff {
  const _$AuthFormFieldTearOff();

  _AuthFormFieldData call(
      {required FormFieldId id,
      required String name,
      required bool secured,
      String? value}) {
    return _AuthFormFieldData(
      id: id,
      name: name,
      secured: secured,
      value: value,
    );
  }
}

/// @nodoc
const $AuthFormField = _$AuthFormFieldTearOff();

/// @nodoc
mixin _$AuthFormField {
  FormFieldId get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get secured => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthFormFieldCopyWith<AuthFormField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFormFieldCopyWith<$Res> {
  factory $AuthFormFieldCopyWith(
          AuthFormField value, $Res Function(AuthFormField) then) =
      _$AuthFormFieldCopyWithImpl<$Res>;
  $Res call({FormFieldId id, String name, bool secured, String? value});

  $FormFieldIdCopyWith<$Res> get id;
}

/// @nodoc
class _$AuthFormFieldCopyWithImpl<$Res>
    implements $AuthFormFieldCopyWith<$Res> {
  _$AuthFormFieldCopyWithImpl(this._value, this._then);

  final AuthFormField _value;
  // ignore: unused_field
  final $Res Function(AuthFormField) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? secured = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as FormFieldId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      secured: secured == freezed
          ? _value.secured
          : secured // ignore: cast_nullable_to_non_nullable
              as bool,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $FormFieldIdCopyWith<$Res> get id {
    return $FormFieldIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value));
    });
  }
}

/// @nodoc
abstract class _$AuthFormFieldDataCopyWith<$Res>
    implements $AuthFormFieldCopyWith<$Res> {
  factory _$AuthFormFieldDataCopyWith(
          _AuthFormFieldData value, $Res Function(_AuthFormFieldData) then) =
      __$AuthFormFieldDataCopyWithImpl<$Res>;
  @override
  $Res call({FormFieldId id, String name, bool secured, String? value});

  @override
  $FormFieldIdCopyWith<$Res> get id;
}

/// @nodoc
class __$AuthFormFieldDataCopyWithImpl<$Res>
    extends _$AuthFormFieldCopyWithImpl<$Res>
    implements _$AuthFormFieldDataCopyWith<$Res> {
  __$AuthFormFieldDataCopyWithImpl(
      _AuthFormFieldData _value, $Res Function(_AuthFormFieldData) _then)
      : super(_value, (v) => _then(v as _AuthFormFieldData));

  @override
  _AuthFormFieldData get _value => super._value as _AuthFormFieldData;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? secured = freezed,
    Object? value = freezed,
  }) {
    return _then(_AuthFormFieldData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as FormFieldId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      secured: secured == freezed
          ? _value.secured
          : secured // ignore: cast_nullable_to_non_nullable
              as bool,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AuthFormFieldData implements _AuthFormFieldData {
  const _$_AuthFormFieldData(
      {required this.id,
      required this.name,
      required this.secured,
      this.value});

  @override
  final FormFieldId id;
  @override
  final String name;
  @override
  final bool secured;
  @override
  final String? value;

  @override
  String toString() {
    return 'AuthFormField(id: $id, name: $name, secured: $secured, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthFormFieldData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.secured, secured) ||
                const DeepCollectionEquality()
                    .equals(other.secured, secured)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(secured) ^
      const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$AuthFormFieldDataCopyWith<_AuthFormFieldData> get copyWith =>
      __$AuthFormFieldDataCopyWithImpl<_AuthFormFieldData>(this, _$identity);
}

abstract class _AuthFormFieldData implements AuthFormField {
  const factory _AuthFormFieldData(
      {required FormFieldId id,
      required String name,
      required bool secured,
      String? value}) = _$_AuthFormFieldData;

  @override
  FormFieldId get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  bool get secured => throw _privateConstructorUsedError;
  @override
  String? get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthFormFieldDataCopyWith<_AuthFormFieldData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FormFieldIdTearOff {
  const _$FormFieldIdTearOff();

  _FormFieldIdData call(String value) {
    return _FormFieldIdData(
      value,
    );
  }
}

/// @nodoc
const $FormFieldId = _$FormFieldIdTearOff();

/// @nodoc
mixin _$FormFieldId {
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormFieldIdCopyWith<FormFieldId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormFieldIdCopyWith<$Res> {
  factory $FormFieldIdCopyWith(
          FormFieldId value, $Res Function(FormFieldId) then) =
      _$FormFieldIdCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$FormFieldIdCopyWithImpl<$Res> implements $FormFieldIdCopyWith<$Res> {
  _$FormFieldIdCopyWithImpl(this._value, this._then);

  final FormFieldId _value;
  // ignore: unused_field
  final $Res Function(FormFieldId) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FormFieldIdDataCopyWith<$Res>
    implements $FormFieldIdCopyWith<$Res> {
  factory _$FormFieldIdDataCopyWith(
          _FormFieldIdData value, $Res Function(_FormFieldIdData) then) =
      __$FormFieldIdDataCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$FormFieldIdDataCopyWithImpl<$Res>
    extends _$FormFieldIdCopyWithImpl<$Res>
    implements _$FormFieldIdDataCopyWith<$Res> {
  __$FormFieldIdDataCopyWithImpl(
      _FormFieldIdData _value, $Res Function(_FormFieldIdData) _then)
      : super(_value, (v) => _then(v as _FormFieldIdData));

  @override
  _FormFieldIdData get _value => super._value as _FormFieldIdData;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_FormFieldIdData(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FormFieldIdData implements _FormFieldIdData {
  const _$_FormFieldIdData(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'FormFieldId(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FormFieldIdData &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$FormFieldIdDataCopyWith<_FormFieldIdData> get copyWith =>
      __$FormFieldIdDataCopyWithImpl<_FormFieldIdData>(this, _$identity);
}

abstract class _FormFieldIdData implements FormFieldId {
  const factory _FormFieldIdData(String value) = _$_FormFieldIdData;

  @override
  String get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FormFieldIdDataCopyWith<_FormFieldIdData> get copyWith =>
      throw _privateConstructorUsedError;
}
