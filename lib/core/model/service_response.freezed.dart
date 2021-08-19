// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'service_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ServiceResponseTearOff {
  const _$ServiceResponseTearOff();

  _ServiceResponse call(
      {required TransactionId transactionId,
      required int statusCode,
      required String payload}) {
    return _ServiceResponse(
      transactionId: transactionId,
      statusCode: statusCode,
      payload: payload,
    );
  }
}

/// @nodoc
const $ServiceResponse = _$ServiceResponseTearOff();

/// @nodoc
mixin _$ServiceResponse {
  TransactionId get transactionId => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;
  String get payload => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServiceResponseCopyWith<ServiceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceResponseCopyWith<$Res> {
  factory $ServiceResponseCopyWith(
          ServiceResponse value, $Res Function(ServiceResponse) then) =
      _$ServiceResponseCopyWithImpl<$Res>;
  $Res call({TransactionId transactionId, int statusCode, String payload});
}

/// @nodoc
class _$ServiceResponseCopyWithImpl<$Res>
    implements $ServiceResponseCopyWith<$Res> {
  _$ServiceResponseCopyWithImpl(this._value, this._then);

  final ServiceResponse _value;
  // ignore: unused_field
  final $Res Function(ServiceResponse) _then;

  @override
  $Res call({
    Object? transactionId = freezed,
    Object? statusCode = freezed,
    Object? payload = freezed,
  }) {
    return _then(_value.copyWith(
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as TransactionId,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ServiceResponseCopyWith<$Res>
    implements $ServiceResponseCopyWith<$Res> {
  factory _$ServiceResponseCopyWith(
          _ServiceResponse value, $Res Function(_ServiceResponse) then) =
      __$ServiceResponseCopyWithImpl<$Res>;
  @override
  $Res call({TransactionId transactionId, int statusCode, String payload});
}

/// @nodoc
class __$ServiceResponseCopyWithImpl<$Res>
    extends _$ServiceResponseCopyWithImpl<$Res>
    implements _$ServiceResponseCopyWith<$Res> {
  __$ServiceResponseCopyWithImpl(
      _ServiceResponse _value, $Res Function(_ServiceResponse) _then)
      : super(_value, (v) => _then(v as _ServiceResponse));

  @override
  _ServiceResponse get _value => super._value as _ServiceResponse;

  @override
  $Res call({
    Object? transactionId = freezed,
    Object? statusCode = freezed,
    Object? payload = freezed,
  }) {
    return _then(_ServiceResponse(
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as TransactionId,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ServiceResponse
    with DiagnosticableTreeMixin
    implements _ServiceResponse {
  const _$_ServiceResponse(
      {required this.transactionId,
      required this.statusCode,
      required this.payload});

  @override
  final TransactionId transactionId;
  @override
  final int statusCode;
  @override
  final String payload;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceResponse(transactionId: $transactionId, statusCode: $statusCode, payload: $payload)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceResponse'))
      ..add(DiagnosticsProperty('transactionId', transactionId))
      ..add(DiagnosticsProperty('statusCode', statusCode))
      ..add(DiagnosticsProperty('payload', payload));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServiceResponse &&
            (identical(other.transactionId, transactionId) ||
                const DeepCollectionEquality()
                    .equals(other.transactionId, transactionId)) &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(transactionId) ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$ServiceResponseCopyWith<_ServiceResponse> get copyWith =>
      __$ServiceResponseCopyWithImpl<_ServiceResponse>(this, _$identity);
}

abstract class _ServiceResponse implements ServiceResponse {
  const factory _ServiceResponse(
      {required TransactionId transactionId,
      required int statusCode,
      required String payload}) = _$_ServiceResponse;

  @override
  TransactionId get transactionId => throw _privateConstructorUsedError;
  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  String get payload => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ServiceResponseCopyWith<_ServiceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
