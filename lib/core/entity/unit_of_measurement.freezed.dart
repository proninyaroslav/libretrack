// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_of_measurement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
      _$UnitOfMeasurementCopyWithImpl<$Res, UnitOfMeasurement>;
  @useResult
  $Res call({double value, Measurement measurement});
}

/// @nodoc
class _$UnitOfMeasurementCopyWithImpl<$Res, $Val extends UnitOfMeasurement>
    implements $UnitOfMeasurementCopyWith<$Res> {
  _$UnitOfMeasurementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? measurement = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      measurement: null == measurement
          ? _value.measurement
          : measurement // ignore: cast_nullable_to_non_nullable
              as Measurement,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnitOfMeasurementImplCopyWith<$Res>
    implements $UnitOfMeasurementCopyWith<$Res> {
  factory _$$UnitOfMeasurementImplCopyWith(_$UnitOfMeasurementImpl value,
          $Res Function(_$UnitOfMeasurementImpl) then) =
      __$$UnitOfMeasurementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value, Measurement measurement});
}

/// @nodoc
class __$$UnitOfMeasurementImplCopyWithImpl<$Res>
    extends _$UnitOfMeasurementCopyWithImpl<$Res, _$UnitOfMeasurementImpl>
    implements _$$UnitOfMeasurementImplCopyWith<$Res> {
  __$$UnitOfMeasurementImplCopyWithImpl(_$UnitOfMeasurementImpl _value,
      $Res Function(_$UnitOfMeasurementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? measurement = null,
  }) {
    return _then(_$UnitOfMeasurementImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      measurement: null == measurement
          ? _value.measurement
          : measurement // ignore: cast_nullable_to_non_nullable
              as Measurement,
    ));
  }
}

/// @nodoc

class _$UnitOfMeasurementImpl
    with DiagnosticableTreeMixin
    implements _UnitOfMeasurement {
  const _$UnitOfMeasurementImpl(
      {required this.value, required this.measurement});

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitOfMeasurementImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.measurement, measurement) ||
                other.measurement == measurement));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, measurement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnitOfMeasurementImplCopyWith<_$UnitOfMeasurementImpl> get copyWith =>
      __$$UnitOfMeasurementImplCopyWithImpl<_$UnitOfMeasurementImpl>(
          this, _$identity);
}

abstract class _UnitOfMeasurement implements UnitOfMeasurement {
  const factory _UnitOfMeasurement(
      {required final double value,
      required final Measurement measurement}) = _$UnitOfMeasurementImpl;

  @override
  double get value;
  @override
  Measurement get measurement;
  @override
  @JsonKey(ignore: true)
  _$$UnitOfMeasurementImplCopyWith<_$UnitOfMeasurementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
