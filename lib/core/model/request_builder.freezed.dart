// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_builder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ServiceRequest {
  TransactionId get transactionId => throw _privateConstructorUsedError;
  Uri get url => throw _privateConstructorUsedError;
  RequestMethod get method => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  Map<String, String> get headers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServiceRequestCopyWith<ServiceRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceRequestCopyWith<$Res> {
  factory $ServiceRequestCopyWith(
          ServiceRequest value, $Res Function(ServiceRequest) then) =
      _$ServiceRequestCopyWithImpl<$Res, ServiceRequest>;
  @useResult
  $Res call(
      {TransactionId transactionId,
      Uri url,
      RequestMethod method,
      String? body,
      Map<String, String> headers});
}

/// @nodoc
class _$ServiceRequestCopyWithImpl<$Res, $Val extends ServiceRequest>
    implements $ServiceRequestCopyWith<$Res> {
  _$ServiceRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? url = null,
    Object? method = null,
    Object? body = freezed,
    Object? headers = null,
  }) {
    return _then(_value.copyWith(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as TransactionId,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as RequestMethod,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      headers: null == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceRequestImplCopyWith<$Res>
    implements $ServiceRequestCopyWith<$Res> {
  factory _$$ServiceRequestImplCopyWith(_$ServiceRequestImpl value,
          $Res Function(_$ServiceRequestImpl) then) =
      __$$ServiceRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TransactionId transactionId,
      Uri url,
      RequestMethod method,
      String? body,
      Map<String, String> headers});
}

/// @nodoc
class __$$ServiceRequestImplCopyWithImpl<$Res>
    extends _$ServiceRequestCopyWithImpl<$Res, _$ServiceRequestImpl>
    implements _$$ServiceRequestImplCopyWith<$Res> {
  __$$ServiceRequestImplCopyWithImpl(
      _$ServiceRequestImpl _value, $Res Function(_$ServiceRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? url = null,
    Object? method = null,
    Object? body = freezed,
    Object? headers = null,
  }) {
    return _then(_$ServiceRequestImpl(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as TransactionId,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as RequestMethod,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      headers: null == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

class _$ServiceRequestImpl
    with DiagnosticableTreeMixin
    implements _ServiceRequest {
  const _$ServiceRequestImpl(
      {required this.transactionId,
      required this.url,
      required this.method,
      this.body,
      final Map<String, String> headers = const {}})
      : _headers = headers;

  @override
  final TransactionId transactionId;
  @override
  final Uri url;
  @override
  final RequestMethod method;
  @override
  final String? body;
  final Map<String, String> _headers;
  @override
  @JsonKey()
  Map<String, String> get headers {
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_headers);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceRequest(transactionId: $transactionId, url: $url, method: $method, body: $body, headers: $headers)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceRequest'))
      ..add(DiagnosticsProperty('transactionId', transactionId))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('method', method))
      ..add(DiagnosticsProperty('body', body))
      ..add(DiagnosticsProperty('headers', headers));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceRequestImpl &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.body, body) || other.body == body) &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionId, url, method, body,
      const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceRequestImplCopyWith<_$ServiceRequestImpl> get copyWith =>
      __$$ServiceRequestImplCopyWithImpl<_$ServiceRequestImpl>(
          this, _$identity);
}

abstract class _ServiceRequest implements ServiceRequest {
  const factory _ServiceRequest(
      {required final TransactionId transactionId,
      required final Uri url,
      required final RequestMethod method,
      final String? body,
      final Map<String, String> headers}) = _$ServiceRequestImpl;

  @override
  TransactionId get transactionId;
  @override
  Uri get url;
  @override
  RequestMethod get method;
  @override
  String? get body;
  @override
  Map<String, String> get headers;
  @override
  @JsonKey(ignore: true)
  _$$ServiceRequestImplCopyWith<_$ServiceRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
