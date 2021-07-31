// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'http_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HttpResponseTearOff {
  const _$HttpResponseTearOff();

  HttpResponseSuccess success({required String body}) {
    return HttpResponseSuccess(
      body: body,
    );
  }

  HttpResponseError httpError({required int statusCode, required String body}) {
    return HttpResponseError(
      statusCode: statusCode,
      body: body,
    );
  }

  HttpResponseException exception(Exception e, {StackTrace? stackTrace}) {
    return HttpResponseException(
      e,
      stackTrace: stackTrace,
    );
  }
}

/// @nodoc
const $HttpResponse = _$HttpResponseTearOff();

/// @nodoc
mixin _$HttpResponse {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String body) success,
    required TResult Function(int statusCode, String body) httpError,
    required TResult Function(Exception e, StackTrace? stackTrace) exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String body)? success,
    TResult Function(int statusCode, String body)? httpError,
    TResult Function(Exception e, StackTrace? stackTrace)? exception,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpResponseSuccess value) success,
    required TResult Function(HttpResponseError value) httpError,
    required TResult Function(HttpResponseException value) exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpResponseSuccess value)? success,
    TResult Function(HttpResponseError value)? httpError,
    TResult Function(HttpResponseException value)? exception,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpResponseCopyWith<$Res> {
  factory $HttpResponseCopyWith(
          HttpResponse value, $Res Function(HttpResponse) then) =
      _$HttpResponseCopyWithImpl<$Res>;
}

/// @nodoc
class _$HttpResponseCopyWithImpl<$Res> implements $HttpResponseCopyWith<$Res> {
  _$HttpResponseCopyWithImpl(this._value, this._then);

  final HttpResponse _value;
  // ignore: unused_field
  final $Res Function(HttpResponse) _then;
}

/// @nodoc
abstract class $HttpResponseSuccessCopyWith<$Res> {
  factory $HttpResponseSuccessCopyWith(
          HttpResponseSuccess value, $Res Function(HttpResponseSuccess) then) =
      _$HttpResponseSuccessCopyWithImpl<$Res>;
  $Res call({String body});
}

/// @nodoc
class _$HttpResponseSuccessCopyWithImpl<$Res>
    extends _$HttpResponseCopyWithImpl<$Res>
    implements $HttpResponseSuccessCopyWith<$Res> {
  _$HttpResponseSuccessCopyWithImpl(
      HttpResponseSuccess _value, $Res Function(HttpResponseSuccess) _then)
      : super(_value, (v) => _then(v as HttpResponseSuccess));

  @override
  HttpResponseSuccess get _value => super._value as HttpResponseSuccess;

  @override
  $Res call({
    Object? body = freezed,
  }) {
    return _then(HttpResponseSuccess(
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HttpResponseSuccess
    with DiagnosticableTreeMixin
    implements HttpResponseSuccess {
  const _$HttpResponseSuccess({required this.body});

  @override
  final String body;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HttpResponse.success(body: $body)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HttpResponse.success'))
      ..add(DiagnosticsProperty('body', body));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HttpResponseSuccess &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(body);

  @JsonKey(ignore: true)
  @override
  $HttpResponseSuccessCopyWith<HttpResponseSuccess> get copyWith =>
      _$HttpResponseSuccessCopyWithImpl<HttpResponseSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String body) success,
    required TResult Function(int statusCode, String body) httpError,
    required TResult Function(Exception e, StackTrace? stackTrace) exception,
  }) {
    return success(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String body)? success,
    TResult Function(int statusCode, String body)? httpError,
    TResult Function(Exception e, StackTrace? stackTrace)? exception,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpResponseSuccess value) success,
    required TResult Function(HttpResponseError value) httpError,
    required TResult Function(HttpResponseException value) exception,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpResponseSuccess value)? success,
    TResult Function(HttpResponseError value)? httpError,
    TResult Function(HttpResponseException value)? exception,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class HttpResponseSuccess implements HttpResponse {
  const factory HttpResponseSuccess({required String body}) =
      _$HttpResponseSuccess;

  String get body => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HttpResponseSuccessCopyWith<HttpResponseSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpResponseErrorCopyWith<$Res> {
  factory $HttpResponseErrorCopyWith(
          HttpResponseError value, $Res Function(HttpResponseError) then) =
      _$HttpResponseErrorCopyWithImpl<$Res>;
  $Res call({int statusCode, String body});
}

/// @nodoc
class _$HttpResponseErrorCopyWithImpl<$Res>
    extends _$HttpResponseCopyWithImpl<$Res>
    implements $HttpResponseErrorCopyWith<$Res> {
  _$HttpResponseErrorCopyWithImpl(
      HttpResponseError _value, $Res Function(HttpResponseError) _then)
      : super(_value, (v) => _then(v as HttpResponseError));

  @override
  HttpResponseError get _value => super._value as HttpResponseError;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? body = freezed,
  }) {
    return _then(HttpResponseError(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HttpResponseError
    with DiagnosticableTreeMixin
    implements HttpResponseError {
  const _$HttpResponseError({required this.statusCode, required this.body});

  @override
  final int statusCode;
  @override
  final String body;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HttpResponse.httpError(statusCode: $statusCode, body: $body)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HttpResponse.httpError'))
      ..add(DiagnosticsProperty('statusCode', statusCode))
      ..add(DiagnosticsProperty('body', body));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HttpResponseError &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(body);

  @JsonKey(ignore: true)
  @override
  $HttpResponseErrorCopyWith<HttpResponseError> get copyWith =>
      _$HttpResponseErrorCopyWithImpl<HttpResponseError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String body) success,
    required TResult Function(int statusCode, String body) httpError,
    required TResult Function(Exception e, StackTrace? stackTrace) exception,
  }) {
    return httpError(statusCode, body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String body)? success,
    TResult Function(int statusCode, String body)? httpError,
    TResult Function(Exception e, StackTrace? stackTrace)? exception,
    required TResult orElse(),
  }) {
    if (httpError != null) {
      return httpError(statusCode, body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpResponseSuccess value) success,
    required TResult Function(HttpResponseError value) httpError,
    required TResult Function(HttpResponseException value) exception,
  }) {
    return httpError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpResponseSuccess value)? success,
    TResult Function(HttpResponseError value)? httpError,
    TResult Function(HttpResponseException value)? exception,
    required TResult orElse(),
  }) {
    if (httpError != null) {
      return httpError(this);
    }
    return orElse();
  }
}

abstract class HttpResponseError implements HttpResponse {
  const factory HttpResponseError(
      {required int statusCode, required String body}) = _$HttpResponseError;

  int get statusCode => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HttpResponseErrorCopyWith<HttpResponseError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpResponseExceptionCopyWith<$Res> {
  factory $HttpResponseExceptionCopyWith(HttpResponseException value,
          $Res Function(HttpResponseException) then) =
      _$HttpResponseExceptionCopyWithImpl<$Res>;
  $Res call({Exception e, StackTrace? stackTrace});
}

/// @nodoc
class _$HttpResponseExceptionCopyWithImpl<$Res>
    extends _$HttpResponseCopyWithImpl<$Res>
    implements $HttpResponseExceptionCopyWith<$Res> {
  _$HttpResponseExceptionCopyWithImpl(
      HttpResponseException _value, $Res Function(HttpResponseException) _then)
      : super(_value, (v) => _then(v as HttpResponseException));

  @override
  HttpResponseException get _value => super._value as HttpResponseException;

  @override
  $Res call({
    Object? e = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(HttpResponseException(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Exception,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$HttpResponseException
    with DiagnosticableTreeMixin
    implements HttpResponseException {
  const _$HttpResponseException(this.e, {this.stackTrace});

  @override
  final Exception e;
  @override
  final StackTrace? stackTrace;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HttpResponse.exception(e: $e, stackTrace: $stackTrace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HttpResponse.exception'))
      ..add(DiagnosticsProperty('e', e))
      ..add(DiagnosticsProperty('stackTrace', stackTrace));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HttpResponseException &&
            (identical(other.e, e) ||
                const DeepCollectionEquality().equals(other.e, e)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality()
                    .equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(e) ^
      const DeepCollectionEquality().hash(stackTrace);

  @JsonKey(ignore: true)
  @override
  $HttpResponseExceptionCopyWith<HttpResponseException> get copyWith =>
      _$HttpResponseExceptionCopyWithImpl<HttpResponseException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String body) success,
    required TResult Function(int statusCode, String body) httpError,
    required TResult Function(Exception e, StackTrace? stackTrace) exception,
  }) {
    return exception(e, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String body)? success,
    TResult Function(int statusCode, String body)? httpError,
    TResult Function(Exception e, StackTrace? stackTrace)? exception,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(e, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpResponseSuccess value) success,
    required TResult Function(HttpResponseError value) httpError,
    required TResult Function(HttpResponseException value) exception,
  }) {
    return exception(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpResponseSuccess value)? success,
    TResult Function(HttpResponseError value)? httpError,
    TResult Function(HttpResponseException value)? exception,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this);
    }
    return orElse();
  }
}

abstract class HttpResponseException implements HttpResponse {
  const factory HttpResponseException(Exception e, {StackTrace? stackTrace}) =
      _$HttpResponseException;

  Exception get e => throw _privateConstructorUsedError;
  StackTrace? get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HttpResponseExceptionCopyWith<HttpResponseException> get copyWith =>
      throw _privateConstructorUsedError;
}
