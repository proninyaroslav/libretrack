// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetcher.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
    TResult? Function(ServiceResponse response)? $default, {
    TResult? Function(ServiceRequest request, FetchError error)? error,
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
    TResult? Function(FetchResultResponse value)? $default, {
    TResult? Function(FetchResultError value)? error,
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
      _$FetchResultCopyWithImpl<$Res, FetchResult>;
}

/// @nodoc
class _$FetchResultCopyWithImpl<$Res, $Val extends FetchResult>
    implements $FetchResultCopyWith<$Res> {
  _$FetchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchResultResponseImplCopyWith<$Res> {
  factory _$$FetchResultResponseImplCopyWith(_$FetchResultResponseImpl value,
          $Res Function(_$FetchResultResponseImpl) then) =
      __$$FetchResultResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ServiceResponse response});

  $ServiceResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$FetchResultResponseImplCopyWithImpl<$Res>
    extends _$FetchResultCopyWithImpl<$Res, _$FetchResultResponseImpl>
    implements _$$FetchResultResponseImplCopyWith<$Res> {
  __$$FetchResultResponseImplCopyWithImpl(_$FetchResultResponseImpl _value,
      $Res Function(_$FetchResultResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$FetchResultResponseImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ServiceResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ServiceResponseCopyWith<$Res> get response {
    return $ServiceResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$FetchResultResponseImpl
    with DiagnosticableTreeMixin
    implements FetchResultResponse {
  const _$FetchResultResponseImpl(this.response);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchResultResponseImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchResultResponseImplCopyWith<_$FetchResultResponseImpl> get copyWith =>
      __$$FetchResultResponseImplCopyWithImpl<_$FetchResultResponseImpl>(
          this, _$identity);

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
    TResult? Function(ServiceResponse response)? $default, {
    TResult? Function(ServiceRequest request, FetchError error)? error,
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
    TResult? Function(FetchResultResponse value)? $default, {
    TResult? Function(FetchResultError value)? error,
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
  const factory FetchResultResponse(final ServiceResponse response) =
      _$FetchResultResponseImpl;

  ServiceResponse get response;
  @JsonKey(ignore: true)
  _$$FetchResultResponseImplCopyWith<_$FetchResultResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchResultErrorImplCopyWith<$Res> {
  factory _$$FetchResultErrorImplCopyWith(_$FetchResultErrorImpl value,
          $Res Function(_$FetchResultErrorImpl) then) =
      __$$FetchResultErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ServiceRequest request, FetchError error});

  $ServiceRequestCopyWith<$Res> get request;
  $FetchErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$FetchResultErrorImplCopyWithImpl<$Res>
    extends _$FetchResultCopyWithImpl<$Res, _$FetchResultErrorImpl>
    implements _$$FetchResultErrorImplCopyWith<$Res> {
  __$$FetchResultErrorImplCopyWithImpl(_$FetchResultErrorImpl _value,
      $Res Function(_$FetchResultErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? error = null,
  }) {
    return _then(_$FetchResultErrorImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as ServiceRequest,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as FetchError,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ServiceRequestCopyWith<$Res> get request {
    return $ServiceRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FetchErrorCopyWith<$Res> get error {
    return $FetchErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$FetchResultErrorImpl
    with DiagnosticableTreeMixin
    implements FetchResultError {
  const _$FetchResultErrorImpl({required this.request, required this.error});

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchResultErrorImpl &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchResultErrorImplCopyWith<_$FetchResultErrorImpl> get copyWith =>
      __$$FetchResultErrorImplCopyWithImpl<_$FetchResultErrorImpl>(
          this, _$identity);

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
    TResult? Function(ServiceResponse response)? $default, {
    TResult? Function(ServiceRequest request, FetchError error)? error,
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
    TResult? Function(FetchResultResponse value)? $default, {
    TResult? Function(FetchResultError value)? error,
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
      {required final ServiceRequest request,
      required final FetchError error}) = _$FetchResultErrorImpl;

  ServiceRequest get request;
  FetchError get error;
  @JsonKey(ignore: true)
  _$$FetchResultErrorImplCopyWith<_$FetchResultErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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
    TResult? Function(String message)? $default, {
    TResult? Function(Exception e, StackTrace? stackTrace)? exception,
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
    TResult? Function(FetchErrorBase value)? $default, {
    TResult? Function(FetchErrorException value)? exception,
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
      _$FetchErrorCopyWithImpl<$Res, FetchError>;
}

/// @nodoc
class _$FetchErrorCopyWithImpl<$Res, $Val extends FetchError>
    implements $FetchErrorCopyWith<$Res> {
  _$FetchErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchErrorBaseImplCopyWith<$Res> {
  factory _$$FetchErrorBaseImplCopyWith(_$FetchErrorBaseImpl value,
          $Res Function(_$FetchErrorBaseImpl) then) =
      __$$FetchErrorBaseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FetchErrorBaseImplCopyWithImpl<$Res>
    extends _$FetchErrorCopyWithImpl<$Res, _$FetchErrorBaseImpl>
    implements _$$FetchErrorBaseImplCopyWith<$Res> {
  __$$FetchErrorBaseImplCopyWithImpl(
      _$FetchErrorBaseImpl _value, $Res Function(_$FetchErrorBaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FetchErrorBaseImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchErrorBaseImpl
    with DiagnosticableTreeMixin
    implements FetchErrorBase {
  const _$FetchErrorBaseImpl(this.message);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchErrorBaseImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchErrorBaseImplCopyWith<_$FetchErrorBaseImpl> get copyWith =>
      __$$FetchErrorBaseImplCopyWithImpl<_$FetchErrorBaseImpl>(
          this, _$identity);

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
    TResult? Function(String message)? $default, {
    TResult? Function(Exception e, StackTrace? stackTrace)? exception,
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
    TResult? Function(FetchErrorBase value)? $default, {
    TResult? Function(FetchErrorException value)? exception,
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
  const factory FetchErrorBase(final String message) = _$FetchErrorBaseImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$FetchErrorBaseImplCopyWith<_$FetchErrorBaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchErrorExceptionImplCopyWith<$Res> {
  factory _$$FetchErrorExceptionImplCopyWith(_$FetchErrorExceptionImpl value,
          $Res Function(_$FetchErrorExceptionImpl) then) =
      __$$FetchErrorExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception e, StackTrace? stackTrace});
}

/// @nodoc
class __$$FetchErrorExceptionImplCopyWithImpl<$Res>
    extends _$FetchErrorCopyWithImpl<$Res, _$FetchErrorExceptionImpl>
    implements _$$FetchErrorExceptionImplCopyWith<$Res> {
  __$$FetchErrorExceptionImplCopyWithImpl(_$FetchErrorExceptionImpl _value,
      $Res Function(_$FetchErrorExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
    Object? stackTrace = freezed,
  }) {
    return _then(_$FetchErrorExceptionImpl(
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

class _$FetchErrorExceptionImpl
    with DiagnosticableTreeMixin
    implements FetchErrorException {
  const _$FetchErrorExceptionImpl(this.e, {this.stackTrace});

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchErrorExceptionImpl &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e, stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchErrorExceptionImplCopyWith<_$FetchErrorExceptionImpl> get copyWith =>
      __$$FetchErrorExceptionImplCopyWithImpl<_$FetchErrorExceptionImpl>(
          this, _$identity);

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
    TResult? Function(String message)? $default, {
    TResult? Function(Exception e, StackTrace? stackTrace)? exception,
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
    TResult? Function(FetchErrorBase value)? $default, {
    TResult? Function(FetchErrorException value)? exception,
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
  const factory FetchErrorException(final Exception e,
      {final StackTrace? stackTrace}) = _$FetchErrorExceptionImpl;

  Exception get e;
  StackTrace? get stackTrace;
  @JsonKey(ignore: true)
  _$$FetchErrorExceptionImplCopyWith<_$FetchErrorExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
