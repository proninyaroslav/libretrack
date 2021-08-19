// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'request_builder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ServiceRequestTearOff {
  const _$ServiceRequestTearOff();

  _ServiceRequest call(
      {required TransactionId transactionId,
      required Uri url,
      required RequestMethod method,
      String? body,
      Map<String, String> headers = const {}}) {
    return _ServiceRequest(
      transactionId: transactionId,
      url: url,
      method: method,
      body: body,
      headers: headers,
    );
  }
}

/// @nodoc
const $ServiceRequest = _$ServiceRequestTearOff();

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
      _$ServiceRequestCopyWithImpl<$Res>;
  $Res call(
      {TransactionId transactionId,
      Uri url,
      RequestMethod method,
      String? body,
      Map<String, String> headers});
}

/// @nodoc
class _$ServiceRequestCopyWithImpl<$Res>
    implements $ServiceRequestCopyWith<$Res> {
  _$ServiceRequestCopyWithImpl(this._value, this._then);

  final ServiceRequest _value;
  // ignore: unused_field
  final $Res Function(ServiceRequest) _then;

  @override
  $Res call({
    Object? transactionId = freezed,
    Object? url = freezed,
    Object? method = freezed,
    Object? body = freezed,
    Object? headers = freezed,
  }) {
    return _then(_value.copyWith(
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as TransactionId,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as RequestMethod,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      headers: headers == freezed
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
abstract class _$ServiceRequestCopyWith<$Res>
    implements $ServiceRequestCopyWith<$Res> {
  factory _$ServiceRequestCopyWith(
          _ServiceRequest value, $Res Function(_ServiceRequest) then) =
      __$ServiceRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {TransactionId transactionId,
      Uri url,
      RequestMethod method,
      String? body,
      Map<String, String> headers});
}

/// @nodoc
class __$ServiceRequestCopyWithImpl<$Res>
    extends _$ServiceRequestCopyWithImpl<$Res>
    implements _$ServiceRequestCopyWith<$Res> {
  __$ServiceRequestCopyWithImpl(
      _ServiceRequest _value, $Res Function(_ServiceRequest) _then)
      : super(_value, (v) => _then(v as _ServiceRequest));

  @override
  _ServiceRequest get _value => super._value as _ServiceRequest;

  @override
  $Res call({
    Object? transactionId = freezed,
    Object? url = freezed,
    Object? method = freezed,
    Object? body = freezed,
    Object? headers = freezed,
  }) {
    return _then(_ServiceRequest(
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as TransactionId,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as RequestMethod,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      headers: headers == freezed
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

class _$_ServiceRequest
    with DiagnosticableTreeMixin
    implements _ServiceRequest {
  const _$_ServiceRequest(
      {required this.transactionId,
      required this.url,
      required this.method,
      this.body,
      this.headers = const {}});

  @override
  final TransactionId transactionId;
  @override
  final Uri url;
  @override
  final RequestMethod method;
  @override
  final String? body;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, String> headers;

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServiceRequest &&
            (identical(other.transactionId, transactionId) ||
                const DeepCollectionEquality()
                    .equals(other.transactionId, transactionId)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.method, method) ||
                const DeepCollectionEquality().equals(other.method, method)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.headers, headers) ||
                const DeepCollectionEquality().equals(other.headers, headers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(transactionId) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(method) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(headers);

  @JsonKey(ignore: true)
  @override
  _$ServiceRequestCopyWith<_ServiceRequest> get copyWith =>
      __$ServiceRequestCopyWithImpl<_ServiceRequest>(this, _$identity);
}

abstract class _ServiceRequest implements ServiceRequest {
  const factory _ServiceRequest(
      {required TransactionId transactionId,
      required Uri url,
      required RequestMethod method,
      String? body,
      Map<String, String> headers}) = _$_ServiceRequest;

  @override
  TransactionId get transactionId => throw _privateConstructorUsedError;
  @override
  Uri get url => throw _privateConstructorUsedError;
  @override
  RequestMethod get method => throw _privateConstructorUsedError;
  @override
  String? get body => throw _privateConstructorUsedError;
  @override
  Map<String, String> get headers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ServiceRequestCopyWith<_ServiceRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
