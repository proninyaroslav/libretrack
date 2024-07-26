// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
      _$ServiceResponseCopyWithImpl<$Res, ServiceResponse>;
  @useResult
  $Res call({TransactionId transactionId, int statusCode, String payload});
}

/// @nodoc
class _$ServiceResponseCopyWithImpl<$Res, $Val extends ServiceResponse>
    implements $ServiceResponseCopyWith<$Res> {
  _$ServiceResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? statusCode = null,
    Object? payload = null,
  }) {
    return _then(_value.copyWith(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as TransactionId,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceResponseImplCopyWith<$Res>
    implements $ServiceResponseCopyWith<$Res> {
  factory _$$ServiceResponseImplCopyWith(_$ServiceResponseImpl value,
          $Res Function(_$ServiceResponseImpl) then) =
      __$$ServiceResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TransactionId transactionId, int statusCode, String payload});
}

/// @nodoc
class __$$ServiceResponseImplCopyWithImpl<$Res>
    extends _$ServiceResponseCopyWithImpl<$Res, _$ServiceResponseImpl>
    implements _$$ServiceResponseImplCopyWith<$Res> {
  __$$ServiceResponseImplCopyWithImpl(
      _$ServiceResponseImpl _value, $Res Function(_$ServiceResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? statusCode = null,
    Object? payload = null,
  }) {
    return _then(_$ServiceResponseImpl(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as TransactionId,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServiceResponseImpl
    with DiagnosticableTreeMixin
    implements _ServiceResponse {
  const _$ServiceResponseImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceResponseImpl &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, transactionId, statusCode, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceResponseImplCopyWith<_$ServiceResponseImpl> get copyWith =>
      __$$ServiceResponseImplCopyWithImpl<_$ServiceResponseImpl>(
          this, _$identity);
}

abstract class _ServiceResponse implements ServiceResponse {
  const factory _ServiceResponse(
      {required final TransactionId transactionId,
      required final int statusCode,
      required final String payload}) = _$ServiceResponseImpl;

  @override
  TransactionId get transactionId;
  @override
  int get statusCode;
  @override
  String get payload;
  @override
  @JsonKey(ignore: true)
  _$$ServiceResponseImplCopyWith<_$ServiceResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
