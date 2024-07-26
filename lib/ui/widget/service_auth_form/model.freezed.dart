// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
      _$AuthFormFieldCopyWithImpl<$Res, AuthFormField>;
  @useResult
  $Res call({FormFieldId id, String name, bool secured, String? value});

  $FormFieldIdCopyWith<$Res> get id;
}

/// @nodoc
class _$AuthFormFieldCopyWithImpl<$Res, $Val extends AuthFormField>
    implements $AuthFormFieldCopyWith<$Res> {
  _$AuthFormFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? secured = null,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as FormFieldId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      secured: null == secured
          ? _value.secured
          : secured // ignore: cast_nullable_to_non_nullable
              as bool,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FormFieldIdCopyWith<$Res> get id {
    return $FormFieldIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthFormFieldDataImplCopyWith<$Res>
    implements $AuthFormFieldCopyWith<$Res> {
  factory _$$AuthFormFieldDataImplCopyWith(_$AuthFormFieldDataImpl value,
          $Res Function(_$AuthFormFieldDataImpl) then) =
      __$$AuthFormFieldDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FormFieldId id, String name, bool secured, String? value});

  @override
  $FormFieldIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$AuthFormFieldDataImplCopyWithImpl<$Res>
    extends _$AuthFormFieldCopyWithImpl<$Res, _$AuthFormFieldDataImpl>
    implements _$$AuthFormFieldDataImplCopyWith<$Res> {
  __$$AuthFormFieldDataImplCopyWithImpl(_$AuthFormFieldDataImpl _value,
      $Res Function(_$AuthFormFieldDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? secured = null,
    Object? value = freezed,
  }) {
    return _then(_$AuthFormFieldDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as FormFieldId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      secured: null == secured
          ? _value.secured
          : secured // ignore: cast_nullable_to_non_nullable
              as bool,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthFormFieldDataImpl implements _AuthFormFieldData {
  const _$AuthFormFieldDataImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFormFieldDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.secured, secured) || other.secured == secured) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, secured, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthFormFieldDataImplCopyWith<_$AuthFormFieldDataImpl> get copyWith =>
      __$$AuthFormFieldDataImplCopyWithImpl<_$AuthFormFieldDataImpl>(
          this, _$identity);
}

abstract class _AuthFormFieldData implements AuthFormField {
  const factory _AuthFormFieldData(
      {required final FormFieldId id,
      required final String name,
      required final bool secured,
      final String? value}) = _$AuthFormFieldDataImpl;

  @override
  FormFieldId get id;
  @override
  String get name;
  @override
  bool get secured;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$AuthFormFieldDataImplCopyWith<_$AuthFormFieldDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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
      _$FormFieldIdCopyWithImpl<$Res, FormFieldId>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$FormFieldIdCopyWithImpl<$Res, $Val extends FormFieldId>
    implements $FormFieldIdCopyWith<$Res> {
  _$FormFieldIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormFieldIdDataImplCopyWith<$Res>
    implements $FormFieldIdCopyWith<$Res> {
  factory _$$FormFieldIdDataImplCopyWith(_$FormFieldIdDataImpl value,
          $Res Function(_$FormFieldIdDataImpl) then) =
      __$$FormFieldIdDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$FormFieldIdDataImplCopyWithImpl<$Res>
    extends _$FormFieldIdCopyWithImpl<$Res, _$FormFieldIdDataImpl>
    implements _$$FormFieldIdDataImplCopyWith<$Res> {
  __$$FormFieldIdDataImplCopyWithImpl(
      _$FormFieldIdDataImpl _value, $Res Function(_$FormFieldIdDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$FormFieldIdDataImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FormFieldIdDataImpl implements _FormFieldIdData {
  const _$FormFieldIdDataImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'FormFieldId(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormFieldIdDataImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormFieldIdDataImplCopyWith<_$FormFieldIdDataImpl> get copyWith =>
      __$$FormFieldIdDataImplCopyWithImpl<_$FormFieldIdDataImpl>(
          this, _$identity);
}

abstract class _FormFieldIdData implements FormFieldId {
  const factory _FormFieldIdData(final String value) = _$FormFieldIdDataImpl;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$FormFieldIdDataImplCopyWith<_$FormFieldIdDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
