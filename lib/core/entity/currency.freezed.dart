// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'currency.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CurrencyTearOff {
  const _$CurrencyTearOff();

  _Currency call(double value, String currencyCode) {
    return _Currency(
      value,
      currencyCode,
    );
  }
}

/// @nodoc
const $Currency = _$CurrencyTearOff();

/// @nodoc
mixin _$Currency {
  double get value => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrencyCopyWith<Currency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyCopyWith<$Res> {
  factory $CurrencyCopyWith(Currency value, $Res Function(Currency) then) =
      _$CurrencyCopyWithImpl<$Res>;
  $Res call({double value, String currencyCode});
}

/// @nodoc
class _$CurrencyCopyWithImpl<$Res> implements $CurrencyCopyWith<$Res> {
  _$CurrencyCopyWithImpl(this._value, this._then);

  final Currency _value;
  // ignore: unused_field
  final $Res Function(Currency) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? currencyCode = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      currencyCode: currencyCode == freezed
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CurrencyCopyWith<$Res> implements $CurrencyCopyWith<$Res> {
  factory _$CurrencyCopyWith(_Currency value, $Res Function(_Currency) then) =
      __$CurrencyCopyWithImpl<$Res>;
  @override
  $Res call({double value, String currencyCode});
}

/// @nodoc
class __$CurrencyCopyWithImpl<$Res> extends _$CurrencyCopyWithImpl<$Res>
    implements _$CurrencyCopyWith<$Res> {
  __$CurrencyCopyWithImpl(_Currency _value, $Res Function(_Currency) _then)
      : super(_value, (v) => _then(v as _Currency));

  @override
  _Currency get _value => super._value as _Currency;

  @override
  $Res call({
    Object? value = freezed,
    Object? currencyCode = freezed,
  }) {
    return _then(_Currency(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      currencyCode == freezed
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Currency with DiagnosticableTreeMixin implements _Currency {
  const _$_Currency(this.value, this.currencyCode);

  @override
  final double value;
  @override
  final String currencyCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Currency(value: $value, currencyCode: $currencyCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Currency'))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('currencyCode', currencyCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Currency &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.currencyCode, currencyCode) ||
                const DeepCollectionEquality()
                    .equals(other.currencyCode, currencyCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(currencyCode);

  @JsonKey(ignore: true)
  @override
  _$CurrencyCopyWith<_Currency> get copyWith =>
      __$CurrencyCopyWithImpl<_Currency>(this, _$identity);
}

abstract class _Currency implements Currency {
  const factory _Currency(double value, String currencyCode) = _$_Currency;

  @override
  double get value => throw _privateConstructorUsedError;
  @override
  String get currencyCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CurrencyCopyWith<_Currency> get copyWith =>
      throw _privateConstructorUsedError;
}
