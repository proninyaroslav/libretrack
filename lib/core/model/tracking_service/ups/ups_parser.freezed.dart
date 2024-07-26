// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ups_parser.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeliveryDetail {
  _DateTime get dateTime => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(_DateTime dateTime) delivery,
    required TResult Function(_DateTime dateTime) estimatedDelivery,
    required TResult Function(_DateTime dateTime) scheduledDelivery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(_DateTime dateTime)? delivery,
    TResult? Function(_DateTime dateTime)? estimatedDelivery,
    TResult? Function(_DateTime dateTime)? scheduledDelivery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(_DateTime dateTime)? delivery,
    TResult Function(_DateTime dateTime)? estimatedDelivery,
    TResult Function(_DateTime dateTime)? scheduledDelivery,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeliveryDetailDelivery value) delivery,
    required TResult Function(_DetailEstimatedDelivery value) estimatedDelivery,
    required TResult Function(_DetailScheduledDelivery value) scheduledDelivery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeliveryDetailDelivery value)? delivery,
    TResult? Function(_DetailEstimatedDelivery value)? estimatedDelivery,
    TResult? Function(_DetailScheduledDelivery value)? scheduledDelivery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeliveryDetailDelivery value)? delivery,
    TResult Function(_DetailEstimatedDelivery value)? estimatedDelivery,
    TResult Function(_DetailScheduledDelivery value)? scheduledDelivery,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$DeliveryDetailCopyWith<_DeliveryDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeliveryDetailCopyWith<$Res> {
  factory _$DeliveryDetailCopyWith(
          _DeliveryDetail value, $Res Function(_DeliveryDetail) then) =
      __$DeliveryDetailCopyWithImpl<$Res, _DeliveryDetail>;
  @useResult
  $Res call({_DateTime dateTime});
}

/// @nodoc
class __$DeliveryDetailCopyWithImpl<$Res, $Val extends _DeliveryDetail>
    implements _$DeliveryDetailCopyWith<$Res> {
  __$DeliveryDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
  }) {
    return _then(_value.copyWith(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as _DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryDetailDeliveryImplCopyWith<$Res>
    implements _$DeliveryDetailCopyWith<$Res> {
  factory _$$DeliveryDetailDeliveryImplCopyWith(
          _$DeliveryDetailDeliveryImpl value,
          $Res Function(_$DeliveryDetailDeliveryImpl) then) =
      __$$DeliveryDetailDeliveryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({_DateTime dateTime});
}

/// @nodoc
class __$$DeliveryDetailDeliveryImplCopyWithImpl<$Res>
    extends __$DeliveryDetailCopyWithImpl<$Res, _$DeliveryDetailDeliveryImpl>
    implements _$$DeliveryDetailDeliveryImplCopyWith<$Res> {
  __$$DeliveryDetailDeliveryImplCopyWithImpl(
      _$DeliveryDetailDeliveryImpl _value,
      $Res Function(_$DeliveryDetailDeliveryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
  }) {
    return _then(_$DeliveryDetailDeliveryImpl(
      null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as _DateTime,
    ));
  }
}

/// @nodoc

class _$DeliveryDetailDeliveryImpl
    with DiagnosticableTreeMixin
    implements _DeliveryDetailDelivery {
  _$DeliveryDetailDeliveryImpl(this.dateTime);

  @override
  final _DateTime dateTime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return '_DeliveryDetail.delivery(dateTime: $dateTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', '_DeliveryDetail.delivery'))
      ..add(DiagnosticsProperty('dateTime', dateTime));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryDetailDeliveryImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryDetailDeliveryImplCopyWith<_$DeliveryDetailDeliveryImpl>
      get copyWith => __$$DeliveryDetailDeliveryImplCopyWithImpl<
          _$DeliveryDetailDeliveryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(_DateTime dateTime) delivery,
    required TResult Function(_DateTime dateTime) estimatedDelivery,
    required TResult Function(_DateTime dateTime) scheduledDelivery,
  }) {
    return delivery(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(_DateTime dateTime)? delivery,
    TResult? Function(_DateTime dateTime)? estimatedDelivery,
    TResult? Function(_DateTime dateTime)? scheduledDelivery,
  }) {
    return delivery?.call(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(_DateTime dateTime)? delivery,
    TResult Function(_DateTime dateTime)? estimatedDelivery,
    TResult Function(_DateTime dateTime)? scheduledDelivery,
    required TResult orElse(),
  }) {
    if (delivery != null) {
      return delivery(dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeliveryDetailDelivery value) delivery,
    required TResult Function(_DetailEstimatedDelivery value) estimatedDelivery,
    required TResult Function(_DetailScheduledDelivery value) scheduledDelivery,
  }) {
    return delivery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeliveryDetailDelivery value)? delivery,
    TResult? Function(_DetailEstimatedDelivery value)? estimatedDelivery,
    TResult? Function(_DetailScheduledDelivery value)? scheduledDelivery,
  }) {
    return delivery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeliveryDetailDelivery value)? delivery,
    TResult Function(_DetailEstimatedDelivery value)? estimatedDelivery,
    TResult Function(_DetailScheduledDelivery value)? scheduledDelivery,
    required TResult orElse(),
  }) {
    if (delivery != null) {
      return delivery(this);
    }
    return orElse();
  }
}

abstract class _DeliveryDetailDelivery implements _DeliveryDetail {
  factory _DeliveryDetailDelivery(final _DateTime dateTime) =
      _$DeliveryDetailDeliveryImpl;

  @override
  _DateTime get dateTime;
  @override
  @JsonKey(ignore: true)
  _$$DeliveryDetailDeliveryImplCopyWith<_$DeliveryDetailDeliveryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailEstimatedDeliveryImplCopyWith<$Res>
    implements _$DeliveryDetailCopyWith<$Res> {
  factory _$$DetailEstimatedDeliveryImplCopyWith(
          _$DetailEstimatedDeliveryImpl value,
          $Res Function(_$DetailEstimatedDeliveryImpl) then) =
      __$$DetailEstimatedDeliveryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({_DateTime dateTime});
}

/// @nodoc
class __$$DetailEstimatedDeliveryImplCopyWithImpl<$Res>
    extends __$DeliveryDetailCopyWithImpl<$Res, _$DetailEstimatedDeliveryImpl>
    implements _$$DetailEstimatedDeliveryImplCopyWith<$Res> {
  __$$DetailEstimatedDeliveryImplCopyWithImpl(
      _$DetailEstimatedDeliveryImpl _value,
      $Res Function(_$DetailEstimatedDeliveryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
  }) {
    return _then(_$DetailEstimatedDeliveryImpl(
      null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as _DateTime,
    ));
  }
}

/// @nodoc

class _$DetailEstimatedDeliveryImpl
    with DiagnosticableTreeMixin
    implements _DetailEstimatedDelivery {
  _$DetailEstimatedDeliveryImpl(this.dateTime);

  @override
  final _DateTime dateTime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return '_DeliveryDetail.estimatedDelivery(dateTime: $dateTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', '_DeliveryDetail.estimatedDelivery'))
      ..add(DiagnosticsProperty('dateTime', dateTime));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailEstimatedDeliveryImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailEstimatedDeliveryImplCopyWith<_$DetailEstimatedDeliveryImpl>
      get copyWith => __$$DetailEstimatedDeliveryImplCopyWithImpl<
          _$DetailEstimatedDeliveryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(_DateTime dateTime) delivery,
    required TResult Function(_DateTime dateTime) estimatedDelivery,
    required TResult Function(_DateTime dateTime) scheduledDelivery,
  }) {
    return estimatedDelivery(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(_DateTime dateTime)? delivery,
    TResult? Function(_DateTime dateTime)? estimatedDelivery,
    TResult? Function(_DateTime dateTime)? scheduledDelivery,
  }) {
    return estimatedDelivery?.call(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(_DateTime dateTime)? delivery,
    TResult Function(_DateTime dateTime)? estimatedDelivery,
    TResult Function(_DateTime dateTime)? scheduledDelivery,
    required TResult orElse(),
  }) {
    if (estimatedDelivery != null) {
      return estimatedDelivery(dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeliveryDetailDelivery value) delivery,
    required TResult Function(_DetailEstimatedDelivery value) estimatedDelivery,
    required TResult Function(_DetailScheduledDelivery value) scheduledDelivery,
  }) {
    return estimatedDelivery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeliveryDetailDelivery value)? delivery,
    TResult? Function(_DetailEstimatedDelivery value)? estimatedDelivery,
    TResult? Function(_DetailScheduledDelivery value)? scheduledDelivery,
  }) {
    return estimatedDelivery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeliveryDetailDelivery value)? delivery,
    TResult Function(_DetailEstimatedDelivery value)? estimatedDelivery,
    TResult Function(_DetailScheduledDelivery value)? scheduledDelivery,
    required TResult orElse(),
  }) {
    if (estimatedDelivery != null) {
      return estimatedDelivery(this);
    }
    return orElse();
  }
}

abstract class _DetailEstimatedDelivery implements _DeliveryDetail {
  factory _DetailEstimatedDelivery(final _DateTime dateTime) =
      _$DetailEstimatedDeliveryImpl;

  @override
  _DateTime get dateTime;
  @override
  @JsonKey(ignore: true)
  _$$DetailEstimatedDeliveryImplCopyWith<_$DetailEstimatedDeliveryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailScheduledDeliveryImplCopyWith<$Res>
    implements _$DeliveryDetailCopyWith<$Res> {
  factory _$$DetailScheduledDeliveryImplCopyWith(
          _$DetailScheduledDeliveryImpl value,
          $Res Function(_$DetailScheduledDeliveryImpl) then) =
      __$$DetailScheduledDeliveryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({_DateTime dateTime});
}

/// @nodoc
class __$$DetailScheduledDeliveryImplCopyWithImpl<$Res>
    extends __$DeliveryDetailCopyWithImpl<$Res, _$DetailScheduledDeliveryImpl>
    implements _$$DetailScheduledDeliveryImplCopyWith<$Res> {
  __$$DetailScheduledDeliveryImplCopyWithImpl(
      _$DetailScheduledDeliveryImpl _value,
      $Res Function(_$DetailScheduledDeliveryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
  }) {
    return _then(_$DetailScheduledDeliveryImpl(
      null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as _DateTime,
    ));
  }
}

/// @nodoc

class _$DetailScheduledDeliveryImpl
    with DiagnosticableTreeMixin
    implements _DetailScheduledDelivery {
  _$DetailScheduledDeliveryImpl(this.dateTime);

  @override
  final _DateTime dateTime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return '_DeliveryDetail.scheduledDelivery(dateTime: $dateTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', '_DeliveryDetail.scheduledDelivery'))
      ..add(DiagnosticsProperty('dateTime', dateTime));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailScheduledDeliveryImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailScheduledDeliveryImplCopyWith<_$DetailScheduledDeliveryImpl>
      get copyWith => __$$DetailScheduledDeliveryImplCopyWithImpl<
          _$DetailScheduledDeliveryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(_DateTime dateTime) delivery,
    required TResult Function(_DateTime dateTime) estimatedDelivery,
    required TResult Function(_DateTime dateTime) scheduledDelivery,
  }) {
    return scheduledDelivery(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(_DateTime dateTime)? delivery,
    TResult? Function(_DateTime dateTime)? estimatedDelivery,
    TResult? Function(_DateTime dateTime)? scheduledDelivery,
  }) {
    return scheduledDelivery?.call(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(_DateTime dateTime)? delivery,
    TResult Function(_DateTime dateTime)? estimatedDelivery,
    TResult Function(_DateTime dateTime)? scheduledDelivery,
    required TResult orElse(),
  }) {
    if (scheduledDelivery != null) {
      return scheduledDelivery(dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeliveryDetailDelivery value) delivery,
    required TResult Function(_DetailEstimatedDelivery value) estimatedDelivery,
    required TResult Function(_DetailScheduledDelivery value) scheduledDelivery,
  }) {
    return scheduledDelivery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeliveryDetailDelivery value)? delivery,
    TResult? Function(_DetailEstimatedDelivery value)? estimatedDelivery,
    TResult? Function(_DetailScheduledDelivery value)? scheduledDelivery,
  }) {
    return scheduledDelivery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeliveryDetailDelivery value)? delivery,
    TResult Function(_DetailEstimatedDelivery value)? estimatedDelivery,
    TResult Function(_DetailScheduledDelivery value)? scheduledDelivery,
    required TResult orElse(),
  }) {
    if (scheduledDelivery != null) {
      return scheduledDelivery(this);
    }
    return orElse();
  }
}

abstract class _DetailScheduledDelivery implements _DeliveryDetail {
  factory _DetailScheduledDelivery(final _DateTime dateTime) =
      _$DetailScheduledDeliveryImpl;

  @override
  _DateTime get dateTime;
  @override
  @JsonKey(ignore: true)
  _$$DetailScheduledDeliveryImplCopyWith<_$DetailScheduledDeliveryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ShipmentAddress {
  Address get address => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Address address) shipper,
    required TResult Function(Address address) shipTo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Address address)? shipper,
    TResult? Function(Address address)? shipTo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Address address)? shipper,
    TResult Function(Address address)? shipTo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShipmentAddressShipper value) shipper,
    required TResult Function(_ShipmentAddressShipTo value) shipTo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShipmentAddressShipper value)? shipper,
    TResult? Function(_ShipmentAddressShipTo value)? shipTo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShipmentAddressShipper value)? shipper,
    TResult Function(_ShipmentAddressShipTo value)? shipTo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$ShipmentAddressCopyWith<_ShipmentAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ShipmentAddressCopyWith<$Res> {
  factory _$ShipmentAddressCopyWith(
          _ShipmentAddress value, $Res Function(_ShipmentAddress) then) =
      __$ShipmentAddressCopyWithImpl<$Res, _ShipmentAddress>;
  @useResult
  $Res call({Address address});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$ShipmentAddressCopyWithImpl<$Res, $Val extends _ShipmentAddress>
    implements _$ShipmentAddressCopyWith<$Res> {
  __$ShipmentAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShipmentAddressShipperImplCopyWith<$Res>
    implements _$ShipmentAddressCopyWith<$Res> {
  factory _$$ShipmentAddressShipperImplCopyWith(
          _$ShipmentAddressShipperImpl value,
          $Res Function(_$ShipmentAddressShipperImpl) then) =
      __$$ShipmentAddressShipperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Address address});

  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$ShipmentAddressShipperImplCopyWithImpl<$Res>
    extends __$ShipmentAddressCopyWithImpl<$Res, _$ShipmentAddressShipperImpl>
    implements _$$ShipmentAddressShipperImplCopyWith<$Res> {
  __$$ShipmentAddressShipperImplCopyWithImpl(
      _$ShipmentAddressShipperImpl _value,
      $Res Function(_$ShipmentAddressShipperImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$ShipmentAddressShipperImpl(
      null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }
}

/// @nodoc

class _$ShipmentAddressShipperImpl
    with DiagnosticableTreeMixin
    implements _ShipmentAddressShipper {
  const _$ShipmentAddressShipperImpl(this.address);

  @override
  final Address address;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return '_ShipmentAddress.shipper(address: $address)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', '_ShipmentAddress.shipper'))
      ..add(DiagnosticsProperty('address', address));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipmentAddressShipperImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipmentAddressShipperImplCopyWith<_$ShipmentAddressShipperImpl>
      get copyWith => __$$ShipmentAddressShipperImplCopyWithImpl<
          _$ShipmentAddressShipperImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Address address) shipper,
    required TResult Function(Address address) shipTo,
  }) {
    return shipper(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Address address)? shipper,
    TResult? Function(Address address)? shipTo,
  }) {
    return shipper?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Address address)? shipper,
    TResult Function(Address address)? shipTo,
    required TResult orElse(),
  }) {
    if (shipper != null) {
      return shipper(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShipmentAddressShipper value) shipper,
    required TResult Function(_ShipmentAddressShipTo value) shipTo,
  }) {
    return shipper(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShipmentAddressShipper value)? shipper,
    TResult? Function(_ShipmentAddressShipTo value)? shipTo,
  }) {
    return shipper?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShipmentAddressShipper value)? shipper,
    TResult Function(_ShipmentAddressShipTo value)? shipTo,
    required TResult orElse(),
  }) {
    if (shipper != null) {
      return shipper(this);
    }
    return orElse();
  }
}

abstract class _ShipmentAddressShipper implements _ShipmentAddress {
  const factory _ShipmentAddressShipper(final Address address) =
      _$ShipmentAddressShipperImpl;

  @override
  Address get address;
  @override
  @JsonKey(ignore: true)
  _$$ShipmentAddressShipperImplCopyWith<_$ShipmentAddressShipperImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShipmentAddressShipToImplCopyWith<$Res>
    implements _$ShipmentAddressCopyWith<$Res> {
  factory _$$ShipmentAddressShipToImplCopyWith(
          _$ShipmentAddressShipToImpl value,
          $Res Function(_$ShipmentAddressShipToImpl) then) =
      __$$ShipmentAddressShipToImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Address address});

  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$ShipmentAddressShipToImplCopyWithImpl<$Res>
    extends __$ShipmentAddressCopyWithImpl<$Res, _$ShipmentAddressShipToImpl>
    implements _$$ShipmentAddressShipToImplCopyWith<$Res> {
  __$$ShipmentAddressShipToImplCopyWithImpl(_$ShipmentAddressShipToImpl _value,
      $Res Function(_$ShipmentAddressShipToImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$ShipmentAddressShipToImpl(
      null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }
}

/// @nodoc

class _$ShipmentAddressShipToImpl
    with DiagnosticableTreeMixin
    implements _ShipmentAddressShipTo {
  const _$ShipmentAddressShipToImpl(this.address);

  @override
  final Address address;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return '_ShipmentAddress.shipTo(address: $address)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', '_ShipmentAddress.shipTo'))
      ..add(DiagnosticsProperty('address', address));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipmentAddressShipToImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipmentAddressShipToImplCopyWith<_$ShipmentAddressShipToImpl>
      get copyWith => __$$ShipmentAddressShipToImplCopyWithImpl<
          _$ShipmentAddressShipToImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Address address) shipper,
    required TResult Function(Address address) shipTo,
  }) {
    return shipTo(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Address address)? shipper,
    TResult? Function(Address address)? shipTo,
  }) {
    return shipTo?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Address address)? shipper,
    TResult Function(Address address)? shipTo,
    required TResult orElse(),
  }) {
    if (shipTo != null) {
      return shipTo(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShipmentAddressShipper value) shipper,
    required TResult Function(_ShipmentAddressShipTo value) shipTo,
  }) {
    return shipTo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShipmentAddressShipper value)? shipper,
    TResult? Function(_ShipmentAddressShipTo value)? shipTo,
  }) {
    return shipTo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShipmentAddressShipper value)? shipper,
    TResult Function(_ShipmentAddressShipTo value)? shipTo,
    required TResult orElse(),
  }) {
    if (shipTo != null) {
      return shipTo(this);
    }
    return orElse();
  }
}

abstract class _ShipmentAddressShipTo implements _ShipmentAddress {
  const factory _ShipmentAddressShipTo(final Address address) =
      _$ShipmentAddressShipToImpl;

  @override
  Address get address;
  @override
  @JsonKey(ignore: true)
  _$$ShipmentAddressShipToImplCopyWith<_$ShipmentAddressShipToImpl>
      get copyWith => throw _privateConstructorUsedError;
}
