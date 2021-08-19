// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fetcher.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FetchResultTearOff {
  const _$FetchResultTearOff();

  FetchResultResponse call(ServiceResponse response) {
    return FetchResultResponse(
      response,
    );
  }

  FetchResultError error(
      {required ServiceRequest request, required FetchError error}) {
    return FetchResultError(
      request: request,
      error: error,
    );
  }
}

/// @nodoc
const $FetchResult = _$FetchResultTearOff();

/// @nodoc
mixin _$FetchResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ServiceResponse response) $default, {
    required TResult Function(ServiceRequest request, FetchError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(ServiceResponse response)? $default, {
    TResult Function(ServiceRequest request, FetchError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ServiceResponse response)? $default, {
    TResult Function(ServiceRequest request, FetchError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(FetchResultResponse value) $default, {
    required TResult Function(FetchResultError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(FetchResultResponse value)? $default, {
    TResult Function(FetchResultError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(FetchResultResponse value)? $default, {
    TResult Function(FetchResultError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchResultCopyWith<$Res> {
  factory $FetchResultCopyWith(
          FetchResult value, $Res Function(FetchResult) then) =
      _$FetchResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchResultCopyWithImpl<$Res> implements $FetchResultCopyWith<$Res> {
  _$FetchResultCopyWithImpl(this._value, this._then);

  final FetchResult _value;
  // ignore: unused_field
  final $Res Function(FetchResult) _then;
}

/// @nodoc
abstract class $FetchResultResponseCopyWith<$Res> {
  factory $FetchResultResponseCopyWith(
          FetchResultResponse value, $Res Function(FetchResultResponse) then) =
      _$FetchResultResponseCopyWithImpl<$Res>;
  $Res call({ServiceResponse response});

  $ServiceResponseCopyWith<$Res> get response;
}

/// @nodoc
class _$FetchResultResponseCopyWithImpl<$Res>
    extends _$FetchResultCopyWithImpl<$Res>
    implements $FetchResultResponseCopyWith<$Res> {
  _$FetchResultResponseCopyWithImpl(
      FetchResultResponse _value, $Res Function(FetchResultResponse) _then)
      : super(_value, (v) => _then(v as FetchResultResponse));

  @override
  FetchResultResponse get _value => super._value as FetchResultResponse;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(FetchResultResponse(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ServiceResponse,
    ));
  }

  @override
  $ServiceResponseCopyWith<$Res> get response {
    return $ServiceResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$FetchResultResponse
    with DiagnosticableTreeMixin
    implements FetchResultResponse {
  const _$FetchResultResponse(this.response);

  @override
  final ServiceResponse response;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FetchResult(response: $response)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FetchResult'))
      ..add(DiagnosticsProperty('response', response));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchResultResponse &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  $FetchResultResponseCopyWith<FetchResultResponse> get copyWith =>
      _$FetchResultResponseCopyWithImpl<FetchResultResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ServiceResponse response) $default, {
    required TResult Function(ServiceRequest request, FetchError error) error,
  }) {
    return $default(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(ServiceResponse response)? $default, {
    TResult Function(ServiceRequest request, FetchError error)? error,
  }) {
    return $default?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ServiceResponse response)? $default, {
    TResult Function(ServiceRequest request, FetchError error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(FetchResultResponse value) $default, {
    required TResult Function(FetchResultError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(FetchResultResponse value)? $default, {
    TResult Function(FetchResultError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(FetchResultResponse value)? $default, {
    TResult Function(FetchResultError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class FetchResultResponse implements FetchResult {
  const factory FetchResultResponse(ServiceResponse response) =
      _$FetchResultResponse;

  ServiceResponse get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchResultResponseCopyWith<FetchResultResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchResultErrorCopyWith<$Res> {
  factory $FetchResultErrorCopyWith(
          FetchResultError value, $Res Function(FetchResultError) then) =
      _$FetchResultErrorCopyWithImpl<$Res>;
  $Res call({ServiceRequest request, FetchError error});

  $ServiceRequestCopyWith<$Res> get request;
  $FetchErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$FetchResultErrorCopyWithImpl<$Res>
    extends _$FetchResultCopyWithImpl<$Res>
    implements $FetchResultErrorCopyWith<$Res> {
  _$FetchResultErrorCopyWithImpl(
      FetchResultError _value, $Res Function(FetchResultError) _then)
      : super(_value, (v) => _then(v as FetchResultError));

  @override
  FetchResultError get _value => super._value as FetchResultError;

  @override
  $Res call({
    Object? request = freezed,
    Object? error = freezed,
  }) {
    return _then(FetchResultError(
      request: request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as ServiceRequest,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as FetchError,
    ));
  }

  @override
  $ServiceRequestCopyWith<$Res> get request {
    return $ServiceRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }

  @override
  $FetchErrorCopyWith<$Res> get error {
    return $FetchErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$FetchResultError
    with DiagnosticableTreeMixin
    implements FetchResultError {
  const _$FetchResultError({required this.request, required this.error});

  @override
  final ServiceRequest request;
  @override
  final FetchError error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FetchResult.error(request: $request, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FetchResult.error'))
      ..add(DiagnosticsProperty('request', request))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchResultError &&
            (identical(other.request, request) ||
                const DeepCollectionEquality()
                    .equals(other.request, request)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(request) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $FetchResultErrorCopyWith<FetchResultError> get copyWith =>
      _$FetchResultErrorCopyWithImpl<FetchResultError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ServiceResponse response) $default, {
    required TResult Function(ServiceRequest request, FetchError error) error,
  }) {
    return error(request, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(ServiceResponse response)? $default, {
    TResult Function(ServiceRequest request, FetchError error)? error,
  }) {
    return error?.call(request, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ServiceResponse response)? $default, {
    TResult Function(ServiceRequest request, FetchError error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(request, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(FetchResultResponse value) $default, {
    required TResult Function(FetchResultError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(FetchResultResponse value)? $default, {
    TResult Function(FetchResultError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(FetchResultResponse value)? $default, {
    TResult Function(FetchResultError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FetchResultError implements FetchResult {
  const factory FetchResultError(
      {required ServiceRequest request,
      required FetchError error}) = _$FetchResultError;

  ServiceRequest get request => throw _privateConstructorUsedError;
  FetchError get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchResultErrorCopyWith<FetchResultError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FetchErrorTearOff {
  const _$FetchErrorTearOff();

  FetchErrorBase call(String message) {
    return FetchErrorBase(
      message,
    );
  }

  FetchErrorException exception(Exception e, {StackTrace? stackTrace}) {
    return FetchErrorException(
      e,
      stackTrace: stackTrace,
    );
  }
}

/// @nodoc
const $FetchError = _$FetchErrorTearOff();

/// @nodoc
mixin _$FetchError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String message) $default, {
    required TResult Function(Exception e, StackTrace? stackTrace) exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String message)? $default, {
    TResult Function(Exception e, StackTrace? stackTrace)? exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String message)? $default, {
    TResult Function(Exception e, StackTrace? stackTrace)? exception,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(FetchErrorBase value) $default, {
    required TResult Function(FetchErrorException value) exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(FetchErrorBase value)? $default, {
    TResult Function(FetchErrorException value)? exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(FetchErrorBase value)? $default, {
    TResult Function(FetchErrorException value)? exception,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchErrorCopyWith<$Res> {
  factory $FetchErrorCopyWith(
          FetchError value, $Res Function(FetchError) then) =
      _$FetchErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchErrorCopyWithImpl<$Res> implements $FetchErrorCopyWith<$Res> {
  _$FetchErrorCopyWithImpl(this._value, this._then);

  final FetchError _value;
  // ignore: unused_field
  final $Res Function(FetchError) _then;
}

/// @nodoc
abstract class $FetchErrorBaseCopyWith<$Res> {
  factory $FetchErrorBaseCopyWith(
          FetchErrorBase value, $Res Function(FetchErrorBase) then) =
      _$FetchErrorBaseCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$FetchErrorBaseCopyWithImpl<$Res> extends _$FetchErrorCopyWithImpl<$Res>
    implements $FetchErrorBaseCopyWith<$Res> {
  _$FetchErrorBaseCopyWithImpl(
      FetchErrorBase _value, $Res Function(FetchErrorBase) _then)
      : super(_value, (v) => _then(v as FetchErrorBase));

  @override
  FetchErrorBase get _value => super._value as FetchErrorBase;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(FetchErrorBase(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchErrorBase with DiagnosticableTreeMixin implements FetchErrorBase {
  const _$FetchErrorBase(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FetchError(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FetchError'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchErrorBase &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $FetchErrorBaseCopyWith<FetchErrorBase> get copyWith =>
      _$FetchErrorBaseCopyWithImpl<FetchErrorBase>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String message) $default, {
    required TResult Function(Exception e, StackTrace? stackTrace) exception,
  }) {
    return $default(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String message)? $default, {
    TResult Function(Exception e, StackTrace? stackTrace)? exception,
  }) {
    return $default?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String message)? $default, {
    TResult Function(Exception e, StackTrace? stackTrace)? exception,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(FetchErrorBase value) $default, {
    required TResult Function(FetchErrorException value) exception,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(FetchErrorBase value)? $default, {
    TResult Function(FetchErrorException value)? exception,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(FetchErrorBase value)? $default, {
    TResult Function(FetchErrorException value)? exception,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class FetchErrorBase implements FetchError {
  const factory FetchErrorBase(String message) = _$FetchErrorBase;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchErrorBaseCopyWith<FetchErrorBase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchErrorExceptionCopyWith<$Res> {
  factory $FetchErrorExceptionCopyWith(
          FetchErrorException value, $Res Function(FetchErrorException) then) =
      _$FetchErrorExceptionCopyWithImpl<$Res>;
  $Res call({Exception e, StackTrace? stackTrace});
}

/// @nodoc
class _$FetchErrorExceptionCopyWithImpl<$Res>
    extends _$FetchErrorCopyWithImpl<$Res>
    implements $FetchErrorExceptionCopyWith<$Res> {
  _$FetchErrorExceptionCopyWithImpl(
      FetchErrorException _value, $Res Function(FetchErrorException) _then)
      : super(_value, (v) => _then(v as FetchErrorException));

  @override
  FetchErrorException get _value => super._value as FetchErrorException;

  @override
  $Res call({
    Object? e = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(FetchErrorException(
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

class _$FetchErrorException
    with DiagnosticableTreeMixin
    implements FetchErrorException {
  const _$FetchErrorException(this.e, {this.stackTrace});

  @override
  final Exception e;
  @override
  final StackTrace? stackTrace;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FetchError.exception(e: $e, stackTrace: $stackTrace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FetchError.exception'))
      ..add(DiagnosticsProperty('e', e))
      ..add(DiagnosticsProperty('stackTrace', stackTrace));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchErrorException &&
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
  $FetchErrorExceptionCopyWith<FetchErrorException> get copyWith =>
      _$FetchErrorExceptionCopyWithImpl<FetchErrorException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String message) $default, {
    required TResult Function(Exception e, StackTrace? stackTrace) exception,
  }) {
    return exception(e, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String message)? $default, {
    TResult Function(Exception e, StackTrace? stackTrace)? exception,
  }) {
    return exception?.call(e, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String message)? $default, {
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
  TResult map<TResult extends Object?>(
    TResult Function(FetchErrorBase value) $default, {
    required TResult Function(FetchErrorException value) exception,
  }) {
    return exception(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(FetchErrorBase value)? $default, {
    TResult Function(FetchErrorException value)? exception,
  }) {
    return exception?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(FetchErrorBase value)? $default, {
    TResult Function(FetchErrorException value)? exception,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this);
    }
    return orElse();
  }
}

abstract class FetchErrorException implements FetchError {
  const factory FetchErrorException(Exception e, {StackTrace? stackTrace}) =
      _$FetchErrorException;

  Exception get e => throw _privateConstructorUsedError;
  StackTrace? get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchErrorExceptionCopyWith<FetchErrorException> get copyWith =>
      throw _privateConstructorUsedError;
}
