// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String body)? success,
    TResult? Function(int statusCode, String body)? httpError,
    TResult? Function(Exception e, StackTrace? stackTrace)? exception,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpResponseSuccess value)? success,
    TResult? Function(HttpResponseError value)? httpError,
    TResult? Function(HttpResponseException value)? exception,
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
      _$HttpResponseCopyWithImpl<$Res, HttpResponse>;
}

/// @nodoc
class _$HttpResponseCopyWithImpl<$Res, $Val extends HttpResponse>
    implements $HttpResponseCopyWith<$Res> {
  _$HttpResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HttpResponseSuccessImplCopyWith<$Res> {
  factory _$$HttpResponseSuccessImplCopyWith(_$HttpResponseSuccessImpl value,
          $Res Function(_$HttpResponseSuccessImpl) then) =
      __$$HttpResponseSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String body});
}

/// @nodoc
class __$$HttpResponseSuccessImplCopyWithImpl<$Res>
    extends _$HttpResponseCopyWithImpl<$Res, _$HttpResponseSuccessImpl>
    implements _$$HttpResponseSuccessImplCopyWith<$Res> {
  __$$HttpResponseSuccessImplCopyWithImpl(_$HttpResponseSuccessImpl _value,
      $Res Function(_$HttpResponseSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
  }) {
    return _then(_$HttpResponseSuccessImpl(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HttpResponseSuccessImpl
    with DiagnosticableTreeMixin
    implements HttpResponseSuccess {
  const _$HttpResponseSuccessImpl({required this.body});

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpResponseSuccessImpl &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HttpResponseSuccessImplCopyWith<_$HttpResponseSuccessImpl> get copyWith =>
      __$$HttpResponseSuccessImplCopyWithImpl<_$HttpResponseSuccessImpl>(
          this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String body)? success,
    TResult? Function(int statusCode, String body)? httpError,
    TResult? Function(Exception e, StackTrace? stackTrace)? exception,
  }) {
    return success?.call(body);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpResponseSuccess value)? success,
    TResult? Function(HttpResponseError value)? httpError,
    TResult? Function(HttpResponseException value)? exception,
  }) {
    return success?.call(this);
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
  const factory HttpResponseSuccess({required final String body}) =
      _$HttpResponseSuccessImpl;

  String get body;
  @JsonKey(ignore: true)
  _$$HttpResponseSuccessImplCopyWith<_$HttpResponseSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HttpResponseErrorImplCopyWith<$Res> {
  factory _$$HttpResponseErrorImplCopyWith(_$HttpResponseErrorImpl value,
          $Res Function(_$HttpResponseErrorImpl) then) =
      __$$HttpResponseErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int statusCode, String body});
}

/// @nodoc
class __$$HttpResponseErrorImplCopyWithImpl<$Res>
    extends _$HttpResponseCopyWithImpl<$Res, _$HttpResponseErrorImpl>
    implements _$$HttpResponseErrorImplCopyWith<$Res> {
  __$$HttpResponseErrorImplCopyWithImpl(_$HttpResponseErrorImpl _value,
      $Res Function(_$HttpResponseErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? body = null,
  }) {
    return _then(_$HttpResponseErrorImpl(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HttpResponseErrorImpl
    with DiagnosticableTreeMixin
    implements HttpResponseError {
  const _$HttpResponseErrorImpl({required this.statusCode, required this.body});

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpResponseErrorImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusCode, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HttpResponseErrorImplCopyWith<_$HttpResponseErrorImpl> get copyWith =>
      __$$HttpResponseErrorImplCopyWithImpl<_$HttpResponseErrorImpl>(
          this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String body)? success,
    TResult? Function(int statusCode, String body)? httpError,
    TResult? Function(Exception e, StackTrace? stackTrace)? exception,
  }) {
    return httpError?.call(statusCode, body);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpResponseSuccess value)? success,
    TResult? Function(HttpResponseError value)? httpError,
    TResult? Function(HttpResponseException value)? exception,
  }) {
    return httpError?.call(this);
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
      {required final int statusCode,
      required final String body}) = _$HttpResponseErrorImpl;

  int get statusCode;
  String get body;
  @JsonKey(ignore: true)
  _$$HttpResponseErrorImplCopyWith<_$HttpResponseErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HttpResponseExceptionImplCopyWith<$Res> {
  factory _$$HttpResponseExceptionImplCopyWith(
          _$HttpResponseExceptionImpl value,
          $Res Function(_$HttpResponseExceptionImpl) then) =
      __$$HttpResponseExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception e, StackTrace? stackTrace});
}

/// @nodoc
class __$$HttpResponseExceptionImplCopyWithImpl<$Res>
    extends _$HttpResponseCopyWithImpl<$Res, _$HttpResponseExceptionImpl>
    implements _$$HttpResponseExceptionImplCopyWith<$Res> {
  __$$HttpResponseExceptionImplCopyWithImpl(_$HttpResponseExceptionImpl _value,
      $Res Function(_$HttpResponseExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
    Object? stackTrace = freezed,
  }) {
    return _then(_$HttpResponseExceptionImpl(
      null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Exception,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$HttpResponseExceptionImpl
    with DiagnosticableTreeMixin
    implements HttpResponseException {
  const _$HttpResponseExceptionImpl(this.e, {this.stackTrace});

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpResponseExceptionImpl &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e, stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HttpResponseExceptionImplCopyWith<_$HttpResponseExceptionImpl>
      get copyWith => __$$HttpResponseExceptionImplCopyWithImpl<
          _$HttpResponseExceptionImpl>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String body)? success,
    TResult? Function(int statusCode, String body)? httpError,
    TResult? Function(Exception e, StackTrace? stackTrace)? exception,
  }) {
    return exception?.call(e, stackTrace);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpResponseSuccess value)? success,
    TResult? Function(HttpResponseError value)? httpError,
    TResult? Function(HttpResponseException value)? exception,
  }) {
    return exception?.call(this);
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
  const factory HttpResponseException(final Exception e,
      {final StackTrace? stackTrace}) = _$HttpResponseExceptionImpl;

  Exception get e;
  StackTrace? get stackTrace;
  @JsonKey(ignore: true)
  _$$HttpResponseExceptionImplCopyWith<_$HttpResponseExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
