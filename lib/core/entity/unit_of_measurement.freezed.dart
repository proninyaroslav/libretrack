// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'unit_of_measurement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UnitOfMeasurementTearOff {
  const _$UnitOfMeasurementTearOff();

  _UnitOfMeasurement call(
      {required double value, required Measurement measurement}) {
    return _UnitOfMeasurement(
      value: value,
      measurement: measurement,
    );
  }
}

/// @nodoc
const $UnitOfMeasurement = _$UnitOfMeasurementTearOff();

/// @nodoc
mixin _$UnitOfMeasurement {
  double get value => throw _privateConstructorUsedError;
  Measurement get measurement => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UnitOfMeasurementCopyWith<UnitOfMeasurement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitOfMeasurementCopyWith<$Res> {
  factory $UnitOfMeasurementCopyWith(
          UnitOfMeasurement value, $Res Function(UnitOfMeasurement) then) =
      _$UnitOfMeasurementCopyWithImpl<$Res>;
  $Res call({double value, Measurement measurement});
}

/// @nodoc
class _$UnitOfMeasurementCopyWithImpl<$Res>
    implements $UnitOfMeasurementCopyWith<$Res> {
  _$UnitOfMeasurementCopyWithImpl(this._value, this._then);

  final UnitOfMeasurement _value;
  // ignore: unused_field
  final $Res Function(UnitOfMeasurement) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? measurement = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      measurement: measurement == freezed
          ? _value.measurement
          : measurement // ignore: cast_nullable_to_non_nullable
              as Measurement,
    ));
  }
}

/// @nodoc
abstract class _$UnitOfMeasurementCopyWith<$Res>
    implements $UnitOfMeasurementCopyWith<$Res> {
  factory _$UnitOfMeasurementCopyWith(
          _UnitOfMeasurement value, $Res Function(_UnitOfMeasurement) then) =
      __$UnitOfMeasurementCopyWithImpl<$Res>;
  @override
  $Res call({double value, Measurement measurement});
}

/// @nodoc
class __$UnitOfMeasurementCopyWithImpl<$Res>
    extends _$UnitOfMeasurementCopyWithImpl<$Res>
    implements _$UnitOfMeasurementCopyWith<$Res> {
  __$UnitOfMeasurementCopyWithImpl(
      _UnitOfMeasurement _value, $Res Function(_UnitOfMeasurement) _then)
      : super(_value, (v) => _then(v as _UnitOfMeasurement));

  @override
  _UnitOfMeasurement get _value => super._value as _UnitOfMeasurement;

  @override
  $Res call({
    Object? value = freezed,
    Object? measurement = freezed,
  }) {
    return _then(_UnitOfMeasurement(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      measurement: measurement == freezed
          ? _value.measurement
          : measurement // ignore: cast_nullable_to_non_nullable
              as Measurement,
    ));
  }
}

/// @nodoc

class _$_UnitOfMeasurement
    with DiagnosticableTreeMixin
    implements _UnitOfMeasurement {
  const _$_UnitOfMeasurement({required this.value, required this.measurement});

  @override
  final double value;
  @override
  final Measurement measurement;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UnitOfMeasurement(value: $value, measurement: $measurement)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UnitOfMeasurement'))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('measurement', measurement));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnitOfMeasurement &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.measurement, measurement) ||
                const DeepCollectionEquality()
                    .equals(other.measurement, measurement)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(measurement);

  @JsonKey(ignore: true)
  @override
  _$UnitOfMeasurementCopyWith<_UnitOfMeasurement> get copyWith =>
      __$UnitOfMeasurementCopyWithImpl<_UnitOfMeasurement>(this, _$identity);
}

abstract class _UnitOfMeasurement implements UnitOfMeasurement {
  const factory _UnitOfMeasurement(
      {required double value,
      required Measurement measurement}) = _$_UnitOfMeasurement;

  @override
  double get value => throw _privateConstructorUsedError;
  @override
  Measurement get measurement => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UnitOfMeasurementCopyWith<_UnitOfMeasurement> get copyWith =>
      throw _privateConstructorUsedError;
}
