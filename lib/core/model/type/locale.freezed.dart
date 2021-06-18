// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'locale.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Locale _$LocaleFromJson(Map<String, dynamic> json) {
  return _Locale.fromJson(json);
}

/// @nodoc
class _$LocaleTearOff {
  const _$LocaleTearOff();

  _Locale call(String languageCode, [String? countryCode]) {
    return _Locale(
      languageCode,
      countryCode,
    );
  }

  Locale fromJson(Map<String, Object> json) {
    return Locale.fromJson(json);
  }
}

/// @nodoc
const $Locale = _$LocaleTearOff();

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
      _$LocaleCopyWithImpl<$Res>;
  $Res call({String languageCode, String? countryCode});
}

/// @nodoc
class _$LocaleCopyWithImpl<$Res> implements $LocaleCopyWith<$Res> {
  _$LocaleCopyWithImpl(this._value, this._then);

  final Locale _value;
  // ignore: unused_field
  final $Res Function(Locale) _then;

  @override
  $Res call({
    Object? languageCode = freezed,
    Object? countryCode = freezed,
  }) {
    return _then(_value.copyWith(
      languageCode: languageCode == freezed
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LocaleCopyWith<$Res> implements $LocaleCopyWith<$Res> {
  factory _$LocaleCopyWith(_Locale value, $Res Function(_Locale) then) =
      __$LocaleCopyWithImpl<$Res>;
  @override
  $Res call({String languageCode, String? countryCode});
}

/// @nodoc
class __$LocaleCopyWithImpl<$Res> extends _$LocaleCopyWithImpl<$Res>
    implements _$LocaleCopyWith<$Res> {
  __$LocaleCopyWithImpl(_Locale _value, $Res Function(_Locale) _then)
      : super(_value, (v) => _then(v as _Locale));

  @override
  _Locale get _value => super._value as _Locale;

  @override
  $Res call({
    Object? languageCode = freezed,
    Object? countryCode = freezed,
  }) {
    return _then(_Locale(
      languageCode == freezed
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Locale extends _Locale {
  const _$_Locale(this.languageCode, [this.countryCode]) : super._();

  factory _$_Locale.fromJson(Map<String, dynamic> json) =>
      _$_$_LocaleFromJson(json);

  @override
  final String languageCode;
  @override
  final String? countryCode;

  @override
  String toString() {
    return 'Locale(languageCode: $languageCode, countryCode: $countryCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Locale &&
            (identical(other.languageCode, languageCode) ||
                const DeepCollectionEquality()
                    .equals(other.languageCode, languageCode)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(languageCode) ^
      const DeepCollectionEquality().hash(countryCode);

  @JsonKey(ignore: true)
  @override
  _$LocaleCopyWith<_Locale> get copyWith =>
      __$LocaleCopyWithImpl<_Locale>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LocaleToJson(this);
  }
}

abstract class _Locale extends Locale {
  const factory _Locale(String languageCode, [String? countryCode]) = _$_Locale;
  const _Locale._() : super._();

  factory _Locale.fromJson(Map<String, dynamic> json) = _$_Locale.fromJson;

  @override
  String get languageCode => throw _privateConstructorUsedError;
  @override
  String? get countryCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocaleCopyWith<_Locale> get copyWith => throw _privateConstructorUsedError;
}
