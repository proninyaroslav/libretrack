// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ups_parser.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$_DeliveryDetailTearOff {
  const _$_DeliveryDetailTearOff();

  _DeliveryDetailDelivery delivery(_DateTime dateTime) {
    return _DeliveryDetailDelivery(
      dateTime,
    );
  }

  _DetailEstimatedDelivery estimatedDelivery(_DateTime dateTime) {
    return _DetailEstimatedDelivery(
      dateTime,
    );
  }

  _DetailScheduledDelivery scheduledDelivery(_DateTime dateTime) {
    return _DetailScheduledDelivery(
      dateTime,
    );
  }
}

/// @nodoc
const _$DeliveryDetail = _$_DeliveryDetailTearOff();

/// @nodoc
mixin _$_DeliveryDetail {
  _DateTime get dateTime => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(_DateTime dateTime) delivery,
    required TResult Function(_DateTime dateTime) estimatedDelivery,
    required TResult Function(_DateTime dateTime) scheduledDelivery,
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
      __$DeliveryDetailCopyWithImpl<$Res>;
  $Res call({_DateTime dateTime});
}

/// @nodoc
class __$DeliveryDetailCopyWithImpl<$Res>
    implements _$DeliveryDetailCopyWith<$Res> {
  __$DeliveryDetailCopyWithImpl(this._value, this._then);

  final _DeliveryDetail _value;
  // ignore: unused_field
  final $Res Function(_DeliveryDetail) _then;

  @override
  $Res call({
    Object? dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as _DateTime,
    ));
  }
}

/// @nodoc
abstract class _$DeliveryDetailDeliveryCopyWith<$Res>
    implements _$DeliveryDetailCopyWith<$Res> {
  factory _$DeliveryDetailDeliveryCopyWith(_DeliveryDetailDelivery value,
          $Res Function(_DeliveryDetailDelivery) then) =
      __$DeliveryDetailDeliveryCopyWithImpl<$Res>;
  @override
  $Res call({_DateTime dateTime});
}

/// @nodoc
class __$DeliveryDetailDeliveryCopyWithImpl<$Res>
    extends __$DeliveryDetailCopyWithImpl<$Res>
    implements _$DeliveryDetailDeliveryCopyWith<$Res> {
  __$DeliveryDetailDeliveryCopyWithImpl(_DeliveryDetailDelivery _value,
      $Res Function(_DeliveryDetailDelivery) _then)
      : super(_value, (v) => _then(v as _DeliveryDetailDelivery));

  @override
  _DeliveryDetailDelivery get _value => super._value as _DeliveryDetailDelivery;

  @override
  $Res call({
    Object? dateTime = freezed,
  }) {
    return _then(_DeliveryDetailDelivery(
      dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as _DateTime,
    ));
  }
}

/// @nodoc

class _$_DeliveryDetailDelivery
    with DiagnosticableTreeMixin
    implements _DeliveryDetailDelivery {
  _$_DeliveryDetailDelivery(this.dateTime);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeliveryDetailDelivery &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(dateTime);

  @JsonKey(ignore: true)
  @override
  _$DeliveryDetailDeliveryCopyWith<_DeliveryDetailDelivery> get copyWith =>
      __$DeliveryDetailDeliveryCopyWithImpl<_DeliveryDetailDelivery>(
          this, _$identity);

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
  factory _DeliveryDetailDelivery(_DateTime dateTime) =
      _$_DeliveryDetailDelivery;

  @override
  _DateTime get dateTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeliveryDetailDeliveryCopyWith<_DeliveryDetailDelivery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DetailEstimatedDeliveryCopyWith<$Res>
    implements _$DeliveryDetailCopyWith<$Res> {
  factory _$DetailEstimatedDeliveryCopyWith(_DetailEstimatedDelivery value,
          $Res Function(_DetailEstimatedDelivery) then) =
      __$DetailEstimatedDeliveryCopyWithImpl<$Res>;
  @override
  $Res call({_DateTime dateTime});
}

/// @nodoc
class __$DetailEstimatedDeliveryCopyWithImpl<$Res>
    extends __$DeliveryDetailCopyWithImpl<$Res>
    implements _$DetailEstimatedDeliveryCopyWith<$Res> {
  __$DetailEstimatedDeliveryCopyWithImpl(_DetailEstimatedDelivery _value,
      $Res Function(_DetailEstimatedDelivery) _then)
      : super(_value, (v) => _then(v as _DetailEstimatedDelivery));

  @override
  _DetailEstimatedDelivery get _value =>
      super._value as _DetailEstimatedDelivery;

  @override
  $Res call({
    Object? dateTime = freezed,
  }) {
    return _then(_DetailEstimatedDelivery(
      dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as _DateTime,
    ));
  }
}

/// @nodoc

class _$_DetailEstimatedDelivery
    with DiagnosticableTreeMixin
    implements _DetailEstimatedDelivery {
  _$_DetailEstimatedDelivery(this.dateTime);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DetailEstimatedDelivery &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(dateTime);

  @JsonKey(ignore: true)
  @override
  _$DetailEstimatedDeliveryCopyWith<_DetailEstimatedDelivery> get copyWith =>
      __$DetailEstimatedDeliveryCopyWithImpl<_DetailEstimatedDelivery>(
          this, _$identity);

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
  factory _DetailEstimatedDelivery(_DateTime dateTime) =
      _$_DetailEstimatedDelivery;

  @override
  _DateTime get dateTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DetailEstimatedDeliveryCopyWith<_DetailEstimatedDelivery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DetailScheduledDeliveryCopyWith<$Res>
    implements _$DeliveryDetailCopyWith<$Res> {
  factory _$DetailScheduledDeliveryCopyWith(_DetailScheduledDelivery value,
          $Res Function(_DetailScheduledDelivery) then) =
      __$DetailScheduledDeliveryCopyWithImpl<$Res>;
  @override
  $Res call({_DateTime dateTime});
}

/// @nodoc
class __$DetailScheduledDeliveryCopyWithImpl<$Res>
    extends __$DeliveryDetailCopyWithImpl<$Res>
    implements _$DetailScheduledDeliveryCopyWith<$Res> {
  __$DetailScheduledDeliveryCopyWithImpl(_DetailScheduledDelivery _value,
      $Res Function(_DetailScheduledDelivery) _then)
      : super(_value, (v) => _then(v as _DetailScheduledDelivery));

  @override
  _DetailScheduledDelivery get _value =>
      super._value as _DetailScheduledDelivery;

  @override
  $Res call({
    Object? dateTime = freezed,
  }) {
    return _then(_DetailScheduledDelivery(
      dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as _DateTime,
    ));
  }
}

/// @nodoc

class _$_DetailScheduledDelivery
    with DiagnosticableTreeMixin
    implements _DetailScheduledDelivery {
  _$_DetailScheduledDelivery(this.dateTime);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DetailScheduledDelivery &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(dateTime);

  @JsonKey(ignore: true)
  @override
  _$DetailScheduledDeliveryCopyWith<_DetailScheduledDelivery> get copyWith =>
      __$DetailScheduledDeliveryCopyWithImpl<_DetailScheduledDelivery>(
          this, _$identity);

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
  factory _DetailScheduledDelivery(_DateTime dateTime) =
      _$_DetailScheduledDelivery;

  @override
  _DateTime get dateTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DetailScheduledDeliveryCopyWith<_DetailScheduledDelivery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$_ShipmentAddressTearOff {
  const _$_ShipmentAddressTearOff();

  _ShipmentAddressShipper shipper(Address address) {
    return _ShipmentAddressShipper(
      address,
    );
  }

  _ShipmentAddressShipTo shipTo(Address address) {
    return _ShipmentAddressShipTo(
      address,
    );
  }
}

/// @nodoc
const _$ShipmentAddress = _$_ShipmentAddressTearOff();

/// @nodoc
mixin _$_ShipmentAddress {
  Address get address => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Address address) shipper,
    required TResult Function(Address address) shipTo,
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
      __$ShipmentAddressCopyWithImpl<$Res>;
  $Res call({Address address});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$ShipmentAddressCopyWithImpl<$Res>
    implements _$ShipmentAddressCopyWith<$Res> {
  __$ShipmentAddressCopyWithImpl(this._value, this._then);

  final _ShipmentAddress _value;
  // ignore: unused_field
  final $Res Function(_ShipmentAddress) _then;

  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }

  @override
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc
abstract class _$ShipmentAddressShipperCopyWith<$Res>
    implements _$ShipmentAddressCopyWith<$Res> {
  factory _$ShipmentAddressShipperCopyWith(_ShipmentAddressShipper value,
          $Res Function(_ShipmentAddressShipper) then) =
      __$ShipmentAddressShipperCopyWithImpl<$Res>;
  @override
  $Res call({Address address});

  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$ShipmentAddressShipperCopyWithImpl<$Res>
    extends __$ShipmentAddressCopyWithImpl<$Res>
    implements _$ShipmentAddressShipperCopyWith<$Res> {
  __$ShipmentAddressShipperCopyWithImpl(_ShipmentAddressShipper _value,
      $Res Function(_ShipmentAddressShipper) _then)
      : super(_value, (v) => _then(v as _ShipmentAddressShipper));

  @override
  _ShipmentAddressShipper get _value => super._value as _ShipmentAddressShipper;

  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(_ShipmentAddressShipper(
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }
}

/// @nodoc

class _$_ShipmentAddressShipper
    with DiagnosticableTreeMixin
    implements _ShipmentAddressShipper {
  const _$_ShipmentAddressShipper(this.address);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShipmentAddressShipper &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(address);

  @JsonKey(ignore: true)
  @override
  _$ShipmentAddressShipperCopyWith<_ShipmentAddressShipper> get copyWith =>
      __$ShipmentAddressShipperCopyWithImpl<_ShipmentAddressShipper>(
          this, _$identity);

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
  const factory _ShipmentAddressShipper(Address address) =
      _$_ShipmentAddressShipper;

  @override
  Address get address => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShipmentAddressShipperCopyWith<_ShipmentAddressShipper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ShipmentAddressShipToCopyWith<$Res>
    implements _$ShipmentAddressCopyWith<$Res> {
  factory _$ShipmentAddressShipToCopyWith(_ShipmentAddressShipTo value,
          $Res Function(_ShipmentAddressShipTo) then) =
      __$ShipmentAddressShipToCopyWithImpl<$Res>;
  @override
  $Res call({Address address});

  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$ShipmentAddressShipToCopyWithImpl<$Res>
    extends __$ShipmentAddressCopyWithImpl<$Res>
    implements _$ShipmentAddressShipToCopyWith<$Res> {
  __$ShipmentAddressShipToCopyWithImpl(_ShipmentAddressShipTo _value,
      $Res Function(_ShipmentAddressShipTo) _then)
      : super(_value, (v) => _then(v as _ShipmentAddressShipTo));

  @override
  _ShipmentAddressShipTo get _value => super._value as _ShipmentAddressShipTo;

  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(_ShipmentAddressShipTo(
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }
}

/// @nodoc

class _$_ShipmentAddressShipTo
    with DiagnosticableTreeMixin
    implements _ShipmentAddressShipTo {
  const _$_ShipmentAddressShipTo(this.address);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShipmentAddressShipTo &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(address);

  @JsonKey(ignore: true)
  @override
  _$ShipmentAddressShipToCopyWith<_ShipmentAddressShipTo> get copyWith =>
      __$ShipmentAddressShipToCopyWithImpl<_ShipmentAddressShipTo>(
          this, _$identity);

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
  const factory _ShipmentAddressShipTo(Address address) =
      _$_ShipmentAddressShipTo;

  @override
  Address get address => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShipmentAddressShipToCopyWith<_ShipmentAddressShipTo> get copyWith =>
      throw _privateConstructorUsedError;
}
