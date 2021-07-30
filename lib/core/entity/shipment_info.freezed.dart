// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'shipment_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CashOnDeliveryTearOff {
  const _$CashOnDeliveryTearOff();

  _CashOnDelivery call(double value, String currencyCode) {
    return _CashOnDelivery(
      value,
      currencyCode,
    );
  }
}

/// @nodoc
const $CashOnDelivery = _$CashOnDeliveryTearOff();

/// @nodoc
mixin _$CashOnDelivery {
  double get value => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CashOnDeliveryCopyWith<CashOnDelivery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CashOnDeliveryCopyWith<$Res> {
  factory $CashOnDeliveryCopyWith(
          CashOnDelivery value, $Res Function(CashOnDelivery) then) =
      _$CashOnDeliveryCopyWithImpl<$Res>;
  $Res call({double value, String currencyCode});
}

/// @nodoc
class _$CashOnDeliveryCopyWithImpl<$Res>
    implements $CashOnDeliveryCopyWith<$Res> {
  _$CashOnDeliveryCopyWithImpl(this._value, this._then);

  final CashOnDelivery _value;
  // ignore: unused_field
  final $Res Function(CashOnDelivery) _then;

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
abstract class _$CashOnDeliveryCopyWith<$Res>
    implements $CashOnDeliveryCopyWith<$Res> {
  factory _$CashOnDeliveryCopyWith(
          _CashOnDelivery value, $Res Function(_CashOnDelivery) then) =
      __$CashOnDeliveryCopyWithImpl<$Res>;
  @override
  $Res call({double value, String currencyCode});
}

/// @nodoc
class __$CashOnDeliveryCopyWithImpl<$Res>
    extends _$CashOnDeliveryCopyWithImpl<$Res>
    implements _$CashOnDeliveryCopyWith<$Res> {
  __$CashOnDeliveryCopyWithImpl(
      _CashOnDelivery _value, $Res Function(_CashOnDelivery) _then)
      : super(_value, (v) => _then(v as _CashOnDelivery));

  @override
  _CashOnDelivery get _value => super._value as _CashOnDelivery;

  @override
  $Res call({
    Object? value = freezed,
    Object? currencyCode = freezed,
  }) {
    return _then(_CashOnDelivery(
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

class _$_CashOnDelivery
    with DiagnosticableTreeMixin
    implements _CashOnDelivery {
  const _$_CashOnDelivery(this.value, this.currencyCode);

  @override
  final double value;
  @override
  final String currencyCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CashOnDelivery(value: $value, currencyCode: $currencyCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CashOnDelivery'))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('currencyCode', currencyCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CashOnDelivery &&
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
  _$CashOnDeliveryCopyWith<_CashOnDelivery> get copyWith =>
      __$CashOnDeliveryCopyWithImpl<_CashOnDelivery>(this, _$identity);
}

abstract class _CashOnDelivery implements CashOnDelivery {
  const factory _CashOnDelivery(double value, String currencyCode) =
      _$_CashOnDelivery;

  @override
  double get value => throw _privateConstructorUsedError;
  @override
  String get currencyCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CashOnDeliveryCopyWith<_CashOnDelivery> get copyWith =>
      throw _privateConstructorUsedError;
}
