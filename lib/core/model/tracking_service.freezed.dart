// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracking_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TrackingServiceResult {
  TrackingRequest get request => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TrackingRequest request, ShipmentInfo info,
            List<ShipmentActivityInfo> activity, List<String>? alternateTracks)
        $default, {
    required TResult Function(TrackingRequest request) noInfo,
    required TResult Function(TrackingRequest request,
            TrackingServiceError error, bool isRetryable)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(TrackingRequest request, ShipmentInfo info,
            List<ShipmentActivityInfo> activity, List<String>? alternateTracks)?
        $default, {
    TResult? Function(TrackingRequest request)? noInfo,
    TResult? Function(TrackingRequest request, TrackingServiceError error,
            bool isRetryable)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TrackingRequest request, ShipmentInfo info,
            List<ShipmentActivityInfo> activity, List<String>? alternateTracks)?
        $default, {
    TResult Function(TrackingRequest request)? noInfo,
    TResult Function(TrackingRequest request, TrackingServiceError error,
            bool isRetryable)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TrackingServiceResultData value) $default, {
    required TResult Function(TrackingServiceResultNoInfo value) noInfo,
    required TResult Function(TrackingResultError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(TrackingServiceResultData value)? $default, {
    TResult? Function(TrackingServiceResultNoInfo value)? noInfo,
    TResult? Function(TrackingResultError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TrackingServiceResultData value)? $default, {
    TResult Function(TrackingServiceResultNoInfo value)? noInfo,
    TResult Function(TrackingResultError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrackingServiceResultCopyWith<TrackingServiceResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingServiceResultCopyWith<$Res> {
  factory $TrackingServiceResultCopyWith(TrackingServiceResult value,
          $Res Function(TrackingServiceResult) then) =
      _$TrackingServiceResultCopyWithImpl<$Res, TrackingServiceResult>;
  @useResult
  $Res call({TrackingRequest request});
}

/// @nodoc
class _$TrackingServiceResultCopyWithImpl<$Res,
        $Val extends TrackingServiceResult>
    implements $TrackingServiceResultCopyWith<$Res> {
  _$TrackingServiceResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_value.copyWith(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as TrackingRequest,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrackingServiceResultDataImplCopyWith<$Res>
    implements $TrackingServiceResultCopyWith<$Res> {
  factory _$$TrackingServiceResultDataImplCopyWith(
          _$TrackingServiceResultDataImpl value,
          $Res Function(_$TrackingServiceResultDataImpl) then) =
      __$$TrackingServiceResultDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TrackingRequest request,
      ShipmentInfo info,
      List<ShipmentActivityInfo> activity,
      List<String>? alternateTracks});
}

/// @nodoc
class __$$TrackingServiceResultDataImplCopyWithImpl<$Res>
    extends _$TrackingServiceResultCopyWithImpl<$Res,
        _$TrackingServiceResultDataImpl>
    implements _$$TrackingServiceResultDataImplCopyWith<$Res> {
  __$$TrackingServiceResultDataImplCopyWithImpl(
      _$TrackingServiceResultDataImpl _value,
      $Res Function(_$TrackingServiceResultDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? info = null,
    Object? activity = null,
    Object? alternateTracks = freezed,
  }) {
    return _then(_$TrackingServiceResultDataImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as TrackingRequest,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as ShipmentInfo,
      activity: null == activity
          ? _value._activity
          : activity // ignore: cast_nullable_to_non_nullable
              as List<ShipmentActivityInfo>,
      alternateTracks: freezed == alternateTracks
          ? _value._alternateTracks
          : alternateTracks // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$TrackingServiceResultDataImpl
    with DiagnosticableTreeMixin
    implements TrackingServiceResultData {
  const _$TrackingServiceResultDataImpl(
      {required this.request,
      required this.info,
      required final List<ShipmentActivityInfo> activity,
      final List<String>? alternateTracks})
      : _activity = activity,
        _alternateTracks = alternateTracks;

  @override
  final TrackingRequest request;
  @override
  final ShipmentInfo info;
  final List<ShipmentActivityInfo> _activity;
  @override
  List<ShipmentActivityInfo> get activity {
    if (_activity is EqualUnmodifiableListView) return _activity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activity);
  }

  final List<String>? _alternateTracks;
  @override
  List<String>? get alternateTracks {
    final value = _alternateTracks;
    if (value == null) return null;
    if (_alternateTracks is EqualUnmodifiableListView) return _alternateTracks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackingServiceResult(request: $request, info: $info, activity: $activity, alternateTracks: $alternateTracks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrackingServiceResult'))
      ..add(DiagnosticsProperty('request', request))
      ..add(DiagnosticsProperty('info', info))
      ..add(DiagnosticsProperty('activity', activity))
      ..add(DiagnosticsProperty('alternateTracks', alternateTracks));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingServiceResultDataImpl &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other._activity, _activity) &&
            const DeepCollectionEquality()
                .equals(other._alternateTracks, _alternateTracks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      request,
      info,
      const DeepCollectionEquality().hash(_activity),
      const DeepCollectionEquality().hash(_alternateTracks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackingServiceResultDataImplCopyWith<_$TrackingServiceResultDataImpl>
      get copyWith => __$$TrackingServiceResultDataImplCopyWithImpl<
          _$TrackingServiceResultDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TrackingRequest request, ShipmentInfo info,
            List<ShipmentActivityInfo> activity, List<String>? alternateTracks)
        $default, {
    required TResult Function(TrackingRequest request) noInfo,
    required TResult Function(TrackingRequest request,
            TrackingServiceError error, bool isRetryable)
        error,
  }) {
    return $default(request, info, activity, alternateTracks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(TrackingRequest request, ShipmentInfo info,
            List<ShipmentActivityInfo> activity, List<String>? alternateTracks)?
        $default, {
    TResult? Function(TrackingRequest request)? noInfo,
    TResult? Function(TrackingRequest request, TrackingServiceError error,
            bool isRetryable)?
        error,
  }) {
    return $default?.call(request, info, activity, alternateTracks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TrackingRequest request, ShipmentInfo info,
            List<ShipmentActivityInfo> activity, List<String>? alternateTracks)?
        $default, {
    TResult Function(TrackingRequest request)? noInfo,
    TResult Function(TrackingRequest request, TrackingServiceError error,
            bool isRetryable)?
        error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(request, info, activity, alternateTracks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TrackingServiceResultData value) $default, {
    required TResult Function(TrackingServiceResultNoInfo value) noInfo,
    required TResult Function(TrackingResultError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(TrackingServiceResultData value)? $default, {
    TResult? Function(TrackingServiceResultNoInfo value)? noInfo,
    TResult? Function(TrackingResultError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TrackingServiceResultData value)? $default, {
    TResult Function(TrackingServiceResultNoInfo value)? noInfo,
    TResult Function(TrackingResultError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class TrackingServiceResultData implements TrackingServiceResult {
  const factory TrackingServiceResultData(
      {required final TrackingRequest request,
      required final ShipmentInfo info,
      required final List<ShipmentActivityInfo> activity,
      final List<String>? alternateTracks}) = _$TrackingServiceResultDataImpl;

  @override
  TrackingRequest get request;
  ShipmentInfo get info;
  List<ShipmentActivityInfo> get activity;
  List<String>? get alternateTracks;
  @override
  @JsonKey(ignore: true)
  _$$TrackingServiceResultDataImplCopyWith<_$TrackingServiceResultDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TrackingServiceResultNoInfoImplCopyWith<$Res>
    implements $TrackingServiceResultCopyWith<$Res> {
  factory _$$TrackingServiceResultNoInfoImplCopyWith(
          _$TrackingServiceResultNoInfoImpl value,
          $Res Function(_$TrackingServiceResultNoInfoImpl) then) =
      __$$TrackingServiceResultNoInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TrackingRequest request});
}

/// @nodoc
class __$$TrackingServiceResultNoInfoImplCopyWithImpl<$Res>
    extends _$TrackingServiceResultCopyWithImpl<$Res,
        _$TrackingServiceResultNoInfoImpl>
    implements _$$TrackingServiceResultNoInfoImplCopyWith<$Res> {
  __$$TrackingServiceResultNoInfoImplCopyWithImpl(
      _$TrackingServiceResultNoInfoImpl _value,
      $Res Function(_$TrackingServiceResultNoInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$TrackingServiceResultNoInfoImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as TrackingRequest,
    ));
  }
}

/// @nodoc

class _$TrackingServiceResultNoInfoImpl
    with DiagnosticableTreeMixin
    implements TrackingServiceResultNoInfo {
  const _$TrackingServiceResultNoInfoImpl(this.request);

  @override
  final TrackingRequest request;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackingServiceResult.noInfo(request: $request)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrackingServiceResult.noInfo'))
      ..add(DiagnosticsProperty('request', request));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingServiceResultNoInfoImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackingServiceResultNoInfoImplCopyWith<_$TrackingServiceResultNoInfoImpl>
      get copyWith => __$$TrackingServiceResultNoInfoImplCopyWithImpl<
          _$TrackingServiceResultNoInfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TrackingRequest request, ShipmentInfo info,
            List<ShipmentActivityInfo> activity, List<String>? alternateTracks)
        $default, {
    required TResult Function(TrackingRequest request) noInfo,
    required TResult Function(TrackingRequest request,
            TrackingServiceError error, bool isRetryable)
        error,
  }) {
    return noInfo(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(TrackingRequest request, ShipmentInfo info,
            List<ShipmentActivityInfo> activity, List<String>? alternateTracks)?
        $default, {
    TResult? Function(TrackingRequest request)? noInfo,
    TResult? Function(TrackingRequest request, TrackingServiceError error,
            bool isRetryable)?
        error,
  }) {
    return noInfo?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TrackingRequest request, ShipmentInfo info,
            List<ShipmentActivityInfo> activity, List<String>? alternateTracks)?
        $default, {
    TResult Function(TrackingRequest request)? noInfo,
    TResult Function(TrackingRequest request, TrackingServiceError error,
            bool isRetryable)?
        error,
    required TResult orElse(),
  }) {
    if (noInfo != null) {
      return noInfo(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TrackingServiceResultData value) $default, {
    required TResult Function(TrackingServiceResultNoInfo value) noInfo,
    required TResult Function(TrackingResultError value) error,
  }) {
    return noInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(TrackingServiceResultData value)? $default, {
    TResult? Function(TrackingServiceResultNoInfo value)? noInfo,
    TResult? Function(TrackingResultError value)? error,
  }) {
    return noInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TrackingServiceResultData value)? $default, {
    TResult Function(TrackingServiceResultNoInfo value)? noInfo,
    TResult Function(TrackingResultError value)? error,
    required TResult orElse(),
  }) {
    if (noInfo != null) {
      return noInfo(this);
    }
    return orElse();
  }
}

abstract class TrackingServiceResultNoInfo implements TrackingServiceResult {
  const factory TrackingServiceResultNoInfo(final TrackingRequest request) =
      _$TrackingServiceResultNoInfoImpl;

  @override
  TrackingRequest get request;
  @override
  @JsonKey(ignore: true)
  _$$TrackingServiceResultNoInfoImplCopyWith<_$TrackingServiceResultNoInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TrackingResultErrorImplCopyWith<$Res>
    implements $TrackingServiceResultCopyWith<$Res> {
  factory _$$TrackingResultErrorImplCopyWith(_$TrackingResultErrorImpl value,
          $Res Function(_$TrackingResultErrorImpl) then) =
      __$$TrackingResultErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TrackingRequest request, TrackingServiceError error, bool isRetryable});

  $TrackingServiceErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$TrackingResultErrorImplCopyWithImpl<$Res>
    extends _$TrackingServiceResultCopyWithImpl<$Res, _$TrackingResultErrorImpl>
    implements _$$TrackingResultErrorImplCopyWith<$Res> {
  __$$TrackingResultErrorImplCopyWithImpl(_$TrackingResultErrorImpl _value,
      $Res Function(_$TrackingResultErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? error = null,
    Object? isRetryable = null,
  }) {
    return _then(_$TrackingResultErrorImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as TrackingRequest,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as TrackingServiceError,
      isRetryable: null == isRetryable
          ? _value.isRetryable
          : isRetryable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TrackingServiceErrorCopyWith<$Res> get error {
    return $TrackingServiceErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$TrackingResultErrorImpl
    with DiagnosticableTreeMixin
    implements TrackingResultError {
  const _$TrackingResultErrorImpl(
      {required this.request, required this.error, required this.isRetryable});

  @override
  final TrackingRequest request;
  @override
  final TrackingServiceError error;
  @override
  final bool isRetryable;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackingServiceResult.error(request: $request, error: $error, isRetryable: $isRetryable)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrackingServiceResult.error'))
      ..add(DiagnosticsProperty('request', request))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('isRetryable', isRetryable));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingResultErrorImpl &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isRetryable, isRetryable) ||
                other.isRetryable == isRetryable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request, error, isRetryable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackingResultErrorImplCopyWith<_$TrackingResultErrorImpl> get copyWith =>
      __$$TrackingResultErrorImplCopyWithImpl<_$TrackingResultErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TrackingRequest request, ShipmentInfo info,
            List<ShipmentActivityInfo> activity, List<String>? alternateTracks)
        $default, {
    required TResult Function(TrackingRequest request) noInfo,
    required TResult Function(TrackingRequest request,
            TrackingServiceError error, bool isRetryable)
        error,
  }) {
    return error(request, this.error, isRetryable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(TrackingRequest request, ShipmentInfo info,
            List<ShipmentActivityInfo> activity, List<String>? alternateTracks)?
        $default, {
    TResult? Function(TrackingRequest request)? noInfo,
    TResult? Function(TrackingRequest request, TrackingServiceError error,
            bool isRetryable)?
        error,
  }) {
    return error?.call(request, this.error, isRetryable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TrackingRequest request, ShipmentInfo info,
            List<ShipmentActivityInfo> activity, List<String>? alternateTracks)?
        $default, {
    TResult Function(TrackingRequest request)? noInfo,
    TResult Function(TrackingRequest request, TrackingServiceError error,
            bool isRetryable)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(request, this.error, isRetryable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TrackingServiceResultData value) $default, {
    required TResult Function(TrackingServiceResultNoInfo value) noInfo,
    required TResult Function(TrackingResultError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(TrackingServiceResultData value)? $default, {
    TResult? Function(TrackingServiceResultNoInfo value)? noInfo,
    TResult? Function(TrackingResultError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TrackingServiceResultData value)? $default, {
    TResult Function(TrackingServiceResultNoInfo value)? noInfo,
    TResult Function(TrackingResultError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TrackingResultError implements TrackingServiceResult {
  const factory TrackingResultError(
      {required final TrackingRequest request,
      required final TrackingServiceError error,
      required final bool isRetryable}) = _$TrackingResultErrorImpl;

  @override
  TrackingRequest get request;
  TrackingServiceError get error;
  bool get isRetryable;
  @override
  @JsonKey(ignore: true)
  _$$TrackingResultErrorImplCopyWith<_$TrackingResultErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TrackingServiceError {
  Object get e => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FetchError e) fetch,
    required TResult Function(ParseError e) parse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FetchError e)? fetch,
    TResult? Function(ParseError e)? parse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FetchError e)? fetch,
    TResult Function(ParseError e)? parse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrackingServiceErrorFetch value) fetch,
    required TResult Function(TrackingServiceErrorParse value) parse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrackingServiceErrorFetch value)? fetch,
    TResult? Function(TrackingServiceErrorParse value)? parse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackingServiceErrorFetch value)? fetch,
    TResult Function(TrackingServiceErrorParse value)? parse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingServiceErrorCopyWith<$Res> {
  factory $TrackingServiceErrorCopyWith(TrackingServiceError value,
          $Res Function(TrackingServiceError) then) =
      _$TrackingServiceErrorCopyWithImpl<$Res, TrackingServiceError>;
}

/// @nodoc
class _$TrackingServiceErrorCopyWithImpl<$Res,
        $Val extends TrackingServiceError>
    implements $TrackingServiceErrorCopyWith<$Res> {
  _$TrackingServiceErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TrackingServiceErrorFetchImplCopyWith<$Res> {
  factory _$$TrackingServiceErrorFetchImplCopyWith(
          _$TrackingServiceErrorFetchImpl value,
          $Res Function(_$TrackingServiceErrorFetchImpl) then) =
      __$$TrackingServiceErrorFetchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FetchError e});

  $FetchErrorCopyWith<$Res> get e;
}

/// @nodoc
class __$$TrackingServiceErrorFetchImplCopyWithImpl<$Res>
    extends _$TrackingServiceErrorCopyWithImpl<$Res,
        _$TrackingServiceErrorFetchImpl>
    implements _$$TrackingServiceErrorFetchImplCopyWith<$Res> {
  __$$TrackingServiceErrorFetchImplCopyWithImpl(
      _$TrackingServiceErrorFetchImpl _value,
      $Res Function(_$TrackingServiceErrorFetchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$TrackingServiceErrorFetchImpl(
      null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as FetchError,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FetchErrorCopyWith<$Res> get e {
    return $FetchErrorCopyWith<$Res>(_value.e, (value) {
      return _then(_value.copyWith(e: value));
    });
  }
}

/// @nodoc

class _$TrackingServiceErrorFetchImpl
    with DiagnosticableTreeMixin
    implements TrackingServiceErrorFetch {
  const _$TrackingServiceErrorFetchImpl(this.e);

  @override
  final FetchError e;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackingServiceError.fetch(e: $e)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrackingServiceError.fetch'))
      ..add(DiagnosticsProperty('e', e));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingServiceErrorFetchImpl &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackingServiceErrorFetchImplCopyWith<_$TrackingServiceErrorFetchImpl>
      get copyWith => __$$TrackingServiceErrorFetchImplCopyWithImpl<
          _$TrackingServiceErrorFetchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FetchError e) fetch,
    required TResult Function(ParseError e) parse,
  }) {
    return fetch(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FetchError e)? fetch,
    TResult? Function(ParseError e)? parse,
  }) {
    return fetch?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FetchError e)? fetch,
    TResult Function(ParseError e)? parse,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrackingServiceErrorFetch value) fetch,
    required TResult Function(TrackingServiceErrorParse value) parse,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrackingServiceErrorFetch value)? fetch,
    TResult? Function(TrackingServiceErrorParse value)? parse,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackingServiceErrorFetch value)? fetch,
    TResult Function(TrackingServiceErrorParse value)? parse,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class TrackingServiceErrorFetch implements TrackingServiceError {
  const factory TrackingServiceErrorFetch(final FetchError e) =
      _$TrackingServiceErrorFetchImpl;

  @override
  FetchError get e;
  @JsonKey(ignore: true)
  _$$TrackingServiceErrorFetchImplCopyWith<_$TrackingServiceErrorFetchImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TrackingServiceErrorParseImplCopyWith<$Res> {
  factory _$$TrackingServiceErrorParseImplCopyWith(
          _$TrackingServiceErrorParseImpl value,
          $Res Function(_$TrackingServiceErrorParseImpl) then) =
      __$$TrackingServiceErrorParseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ParseError e});

  $ParseErrorCopyWith<$Res> get e;
}

/// @nodoc
class __$$TrackingServiceErrorParseImplCopyWithImpl<$Res>
    extends _$TrackingServiceErrorCopyWithImpl<$Res,
        _$TrackingServiceErrorParseImpl>
    implements _$$TrackingServiceErrorParseImplCopyWith<$Res> {
  __$$TrackingServiceErrorParseImplCopyWithImpl(
      _$TrackingServiceErrorParseImpl _value,
      $Res Function(_$TrackingServiceErrorParseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$TrackingServiceErrorParseImpl(
      null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as ParseError,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ParseErrorCopyWith<$Res> get e {
    return $ParseErrorCopyWith<$Res>(_value.e, (value) {
      return _then(_value.copyWith(e: value));
    });
  }
}

/// @nodoc

class _$TrackingServiceErrorParseImpl
    with DiagnosticableTreeMixin
    implements TrackingServiceErrorParse {
  const _$TrackingServiceErrorParseImpl(this.e);

  @override
  final ParseError e;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackingServiceError.parse(e: $e)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrackingServiceError.parse'))
      ..add(DiagnosticsProperty('e', e));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingServiceErrorParseImpl &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackingServiceErrorParseImplCopyWith<_$TrackingServiceErrorParseImpl>
      get copyWith => __$$TrackingServiceErrorParseImplCopyWithImpl<
          _$TrackingServiceErrorParseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FetchError e) fetch,
    required TResult Function(ParseError e) parse,
  }) {
    return parse(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FetchError e)? fetch,
    TResult? Function(ParseError e)? parse,
  }) {
    return parse?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FetchError e)? fetch,
    TResult Function(ParseError e)? parse,
    required TResult orElse(),
  }) {
    if (parse != null) {
      return parse(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrackingServiceErrorFetch value) fetch,
    required TResult Function(TrackingServiceErrorParse value) parse,
  }) {
    return parse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrackingServiceErrorFetch value)? fetch,
    TResult? Function(TrackingServiceErrorParse value)? parse,
  }) {
    return parse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackingServiceErrorFetch value)? fetch,
    TResult Function(TrackingServiceErrorParse value)? parse,
    required TResult orElse(),
  }) {
    if (parse != null) {
      return parse(this);
    }
    return orElse();
  }
}

abstract class TrackingServiceErrorParse implements TrackingServiceError {
  const factory TrackingServiceErrorParse(final ParseError e) =
      _$TrackingServiceErrorParseImpl;

  @override
  ParseError get e;
  @JsonKey(ignore: true)
  _$$TrackingServiceErrorParseImplCopyWith<_$TrackingServiceErrorParseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
