// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dimensions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Dimensions {
  UnitOfMeasurement get width => throw _privateConstructorUsedError;
  UnitOfMeasurement get height => throw _privateConstructorUsedError;
  UnitOfMeasurement get length => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DimensionsCopyWith<Dimensions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DimensionsCopyWith<$Res> {
  factory $DimensionsCopyWith(
          Dimensions value, $Res Function(Dimensions) then) =
      _$DimensionsCopyWithImpl<$Res, Dimensions>;
  @useResult
  $Res call(
      {UnitOfMeasurement width,
      UnitOfMeasurement height,
      UnitOfMeasurement length});

  $UnitOfMeasurementCopyWith<$Res> get width;
  $UnitOfMeasurementCopyWith<$Res> get height;
  $UnitOfMeasurementCopyWith<$Res> get length;
}

/// @nodoc
class _$DimensionsCopyWithImpl<$Res, $Val extends Dimensions>
    implements $DimensionsCopyWith<$Res> {
  _$DimensionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? length = null,
  }) {
    return _then(_value.copyWith(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as UnitOfMeasurement,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as UnitOfMeasurement,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as UnitOfMeasurement,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UnitOfMeasurementCopyWith<$Res> get width {
    return $UnitOfMeasurementCopyWith<$Res>(_value.width, (value) {
      return _then(_value.copyWith(width: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UnitOfMeasurementCopyWith<$Res> get height {
    return $UnitOfMeasurementCopyWith<$Res>(_value.height, (value) {
      return _then(_value.copyWith(height: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UnitOfMeasurementCopyWith<$Res> get length {
    return $UnitOfMeasurementCopyWith<$Res>(_value.length, (value) {
      return _then(_value.copyWith(length: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DimensionsImplCopyWith<$Res>
    implements $DimensionsCopyWith<$Res> {
  factory _$$DimensionsImplCopyWith(
          _$DimensionsImpl value, $Res Function(_$DimensionsImpl) then) =
      __$$DimensionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UnitOfMeasurement width,
      UnitOfMeasurement height,
      UnitOfMeasurement length});

  @override
  $UnitOfMeasurementCopyWith<$Res> get width;
  @override
  $UnitOfMeasurementCopyWith<$Res> get height;
  @override
  $UnitOfMeasurementCopyWith<$Res> get length;
}

/// @nodoc
class __$$DimensionsImplCopyWithImpl<$Res>
    extends _$DimensionsCopyWithImpl<$Res, _$DimensionsImpl>
    implements _$$DimensionsImplCopyWith<$Res> {
  __$$DimensionsImplCopyWithImpl(
      _$DimensionsImpl _value, $Res Function(_$DimensionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? length = null,
  }) {
    return _then(_$DimensionsImpl(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as UnitOfMeasurement,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as UnitOfMeasurement,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as UnitOfMeasurement,
    ));
  }
}

/// @nodoc

class _$DimensionsImpl with DiagnosticableTreeMixin implements _Dimensions {
  const _$DimensionsImpl(
      {required this.width, required this.height, required this.length});

  @override
  final UnitOfMeasurement width;
  @override
  final UnitOfMeasurement height;
  @override
  final UnitOfMeasurement length;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Dimensions(width: $width, height: $height, length: $length)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Dimensions'))
      ..add(DiagnosticsProperty('width', width))
      ..add(DiagnosticsProperty('height', height))
      ..add(DiagnosticsProperty('length', length));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DimensionsImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.length, length) || other.length == length));
  }

  @override
  int get hashCode => Object.hash(runtimeType, width, height, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DimensionsImplCopyWith<_$DimensionsImpl> get copyWith =>
      __$$DimensionsImplCopyWithImpl<_$DimensionsImpl>(this, _$identity);
}

abstract class _Dimensions implements Dimensions {
  const factory _Dimensions(
      {required final UnitOfMeasurement width,
      required final UnitOfMeasurement height,
      required final UnitOfMeasurement length}) = _$DimensionsImpl;

  @override
  UnitOfMeasurement get width;
  @override
  UnitOfMeasurement get height;
  @override
  UnitOfMeasurement get length;
  @override
  @JsonKey(ignore: true)
  _$$DimensionsImplCopyWith<_$DimensionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
