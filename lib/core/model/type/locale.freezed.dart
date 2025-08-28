// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locale.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Locale _$LocaleFromJson(Map<String, dynamic> json) {
  return _Locale.fromJson(json);
}

/// @nodoc
mixin _$Locale {
  String get languageCode => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocaleCopyWith<Locale> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocaleCopyWith<$Res> {
  factory $LocaleCopyWith(Locale value, $Res Function(Locale) then) =
      _$LocaleCopyWithImpl<$Res, Locale>;
  @useResult
  $Res call({String languageCode, String? countryCode});
}

/// @nodoc
class _$LocaleCopyWithImpl<$Res, $Val extends Locale>
    implements $LocaleCopyWith<$Res> {
  _$LocaleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = null,
    Object? countryCode = freezed,
  }) {
    return _then(_value.copyWith(
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocaleImplCopyWith<$Res> implements $LocaleCopyWith<$Res> {
  factory _$$LocaleImplCopyWith(
          _$LocaleImpl value, $Res Function(_$LocaleImpl) then) =
      __$$LocaleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String languageCode, String? countryCode});
}

/// @nodoc
class __$$LocaleImplCopyWithImpl<$Res>
    extends _$LocaleCopyWithImpl<$Res, _$LocaleImpl>
    implements _$$LocaleImplCopyWith<$Res> {
  __$$LocaleImplCopyWithImpl(
      _$LocaleImpl _value, $Res Function(_$LocaleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = null,
    Object? countryCode = freezed,
  }) {
    return _then(_$LocaleImpl(
      null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocaleImpl extends _Locale {
  const _$LocaleImpl(this.languageCode, [this.countryCode]) : super._();

  factory _$LocaleImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocaleImplFromJson(json);

  @override
  final String languageCode;
  @override
  final String? countryCode;

  @override
  String toString() {
    return 'Locale(languageCode: $languageCode, countryCode: $countryCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocaleImpl &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, languageCode, countryCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocaleImplCopyWith<_$LocaleImpl> get copyWith =>
      __$$LocaleImplCopyWithImpl<_$LocaleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocaleImplToJson(
      this,
    );
  }
}

abstract class _Locale extends Locale {
  const factory _Locale(final String languageCode,
      [final String? countryCode]) = _$LocaleImpl;
  const _Locale._() : super._();

  factory _Locale.fromJson(Map<String, dynamic> json) = _$LocaleImpl.fromJson;

  @override
  String get languageCode;
  @override
  String? get countryCode;
  @override
  @JsonKey(ignore: true)
  _$$LocaleImplCopyWith<_$LocaleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
