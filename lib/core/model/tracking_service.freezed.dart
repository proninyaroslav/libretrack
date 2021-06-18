// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tracking_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TrackingServiceResultTearOff {
  const _$TrackingServiceResultTearOff();

  TrackingServiceResultData call(
      {required TrackingRequest request,
      required ShipmentInfo info,
      required List<ShipmentActivityInfo> activity,
      List<String>? alternateTracks}) {
    return TrackingServiceResultData(
      request: request,
      info: info,
      activity: activity,
      alternateTracks: alternateTracks,
    );
  }

  TrackingServiceResultNoInfo noInfo(TrackingRequest request) {
    return TrackingServiceResultNoInfo(
      request,
    );
  }

  TrackingResultError error(
      {required TrackingRequest request,
      required TrackingServiceError error,
      required bool isRetryable}) {
    return TrackingResultError(
      request: request,
      error: error,
      isRetryable: isRetryable,
    );
  }
}

/// @nodoc
const $TrackingServiceResult = _$TrackingServiceResultTearOff();

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
      _$TrackingServiceResultCopyWithImpl<$Res>;
  $Res call({TrackingRequest request});
}

/// @nodoc
class _$TrackingServiceResultCopyWithImpl<$Res>
    implements $TrackingServiceResultCopyWith<$Res> {
  _$TrackingServiceResultCopyWithImpl(this._value, this._then);

  final TrackingServiceResult _value;
  // ignore: unused_field
  final $Res Function(TrackingServiceResult) _then;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_value.copyWith(
      request: request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as TrackingRequest,
    ));
  }
}

/// @nodoc
abstract class $TrackingServiceResultDataCopyWith<$Res>
    implements $TrackingServiceResultCopyWith<$Res> {
  factory $TrackingServiceResultDataCopyWith(TrackingServiceResultData value,
          $Res Function(TrackingServiceResultData) then) =
      _$TrackingServiceResultDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {TrackingRequest request,
      ShipmentInfo info,
      List<ShipmentActivityInfo> activity,
      List<String>? alternateTracks});
}

/// @nodoc
class _$TrackingServiceResultDataCopyWithImpl<$Res>
    extends _$TrackingServiceResultCopyWithImpl<$Res>
    implements $TrackingServiceResultDataCopyWith<$Res> {
  _$TrackingServiceResultDataCopyWithImpl(TrackingServiceResultData _value,
      $Res Function(TrackingServiceResultData) _then)
      : super(_value, (v) => _then(v as TrackingServiceResultData));

  @override
  TrackingServiceResultData get _value =>
      super._value as TrackingServiceResultData;

  @override
  $Res call({
    Object? request = freezed,
    Object? info = freezed,
    Object? activity = freezed,
    Object? alternateTracks = freezed,
  }) {
    return _then(TrackingServiceResultData(
      request: request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as TrackingRequest,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as ShipmentInfo,
      activity: activity == freezed
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as List<ShipmentActivityInfo>,
      alternateTracks: alternateTracks == freezed
          ? _value.alternateTracks
          : alternateTracks // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$TrackingServiceResultData
    with DiagnosticableTreeMixin
    implements TrackingServiceResultData {
  const _$TrackingServiceResultData(
      {required this.request,
      required this.info,
      required this.activity,
      this.alternateTracks});

  @override
  final TrackingRequest request;
  @override
  final ShipmentInfo info;
  @override
  final List<ShipmentActivityInfo> activity;
  @override
  final List<String>? alternateTracks;

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TrackingServiceResultData &&
            (identical(other.request, request) ||
                const DeepCollectionEquality()
                    .equals(other.request, request)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)) &&
            (identical(other.activity, activity) ||
                const DeepCollectionEquality()
                    .equals(other.activity, activity)) &&
            (identical(other.alternateTracks, alternateTracks) ||
                const DeepCollectionEquality()
                    .equals(other.alternateTracks, alternateTracks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(request) ^
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(activity) ^
      const DeepCollectionEquality().hash(alternateTracks);

  @JsonKey(ignore: true)
  @override
  $TrackingServiceResultDataCopyWith<TrackingServiceResultData> get copyWith =>
      _$TrackingServiceResultDataCopyWithImpl<TrackingServiceResultData>(
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
    return $default(request, info, activity, alternateTracks);
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
      {required TrackingRequest request,
      required ShipmentInfo info,
      required List<ShipmentActivityInfo> activity,
      List<String>? alternateTracks}) = _$TrackingServiceResultData;

  @override
  TrackingRequest get request => throw _privateConstructorUsedError;
  ShipmentInfo get info => throw _privateConstructorUsedError;
  List<ShipmentActivityInfo> get activity => throw _privateConstructorUsedError;
  List<String>? get alternateTracks => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TrackingServiceResultDataCopyWith<TrackingServiceResultData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingServiceResultNoInfoCopyWith<$Res>
    implements $TrackingServiceResultCopyWith<$Res> {
  factory $TrackingServiceResultNoInfoCopyWith(
          TrackingServiceResultNoInfo value,
          $Res Function(TrackingServiceResultNoInfo) then) =
      _$TrackingServiceResultNoInfoCopyWithImpl<$Res>;
  @override
  $Res call({TrackingRequest request});
}

/// @nodoc
class _$TrackingServiceResultNoInfoCopyWithImpl<$Res>
    extends _$TrackingServiceResultCopyWithImpl<$Res>
    implements $TrackingServiceResultNoInfoCopyWith<$Res> {
  _$TrackingServiceResultNoInfoCopyWithImpl(TrackingServiceResultNoInfo _value,
      $Res Function(TrackingServiceResultNoInfo) _then)
      : super(_value, (v) => _then(v as TrackingServiceResultNoInfo));

  @override
  TrackingServiceResultNoInfo get _value =>
      super._value as TrackingServiceResultNoInfo;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(TrackingServiceResultNoInfo(
      request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as TrackingRequest,
    ));
  }
}

/// @nodoc

class _$TrackingServiceResultNoInfo
    with DiagnosticableTreeMixin
    implements TrackingServiceResultNoInfo {
  const _$TrackingServiceResultNoInfo(this.request);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TrackingServiceResultNoInfo &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(request);

  @JsonKey(ignore: true)
  @override
  $TrackingServiceResultNoInfoCopyWith<TrackingServiceResultNoInfo>
      get copyWith => _$TrackingServiceResultNoInfoCopyWithImpl<
          TrackingServiceResultNoInfo>(this, _$identity);

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
  const factory TrackingServiceResultNoInfo(TrackingRequest request) =
      _$TrackingServiceResultNoInfo;

  @override
  TrackingRequest get request => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TrackingServiceResultNoInfoCopyWith<TrackingServiceResultNoInfo>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingResultErrorCopyWith<$Res>
    implements $TrackingServiceResultCopyWith<$Res> {
  factory $TrackingResultErrorCopyWith(
          TrackingResultError value, $Res Function(TrackingResultError) then) =
      _$TrackingResultErrorCopyWithImpl<$Res>;
  @override
  $Res call(
      {TrackingRequest request, TrackingServiceError error, bool isRetryable});

  $TrackingServiceErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$TrackingResultErrorCopyWithImpl<$Res>
    extends _$TrackingServiceResultCopyWithImpl<$Res>
    implements $TrackingResultErrorCopyWith<$Res> {
  _$TrackingResultErrorCopyWithImpl(
      TrackingResultError _value, $Res Function(TrackingResultError) _then)
      : super(_value, (v) => _then(v as TrackingResultError));

  @override
  TrackingResultError get _value => super._value as TrackingResultError;

  @override
  $Res call({
    Object? request = freezed,
    Object? error = freezed,
    Object? isRetryable = freezed,
  }) {
    return _then(TrackingResultError(
      request: request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as TrackingRequest,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as TrackingServiceError,
      isRetryable: isRetryable == freezed
          ? _value.isRetryable
          : isRetryable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $TrackingServiceErrorCopyWith<$Res> get error {
    return $TrackingServiceErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$TrackingResultError
    with DiagnosticableTreeMixin
    implements TrackingResultError {
  const _$TrackingResultError(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TrackingResultError &&
            (identical(other.request, request) ||
                const DeepCollectionEquality()
                    .equals(other.request, request)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.isRetryable, isRetryable) ||
                const DeepCollectionEquality()
                    .equals(other.isRetryable, isRetryable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(request) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(isRetryable);

  @JsonKey(ignore: true)
  @override
  $TrackingResultErrorCopyWith<TrackingResultError> get copyWith =>
      _$TrackingResultErrorCopyWithImpl<TrackingResultError>(this, _$identity);

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
      {required TrackingRequest request,
      required TrackingServiceError error,
      required bool isRetryable}) = _$TrackingResultError;

  @override
  TrackingRequest get request => throw _privateConstructorUsedError;
  TrackingServiceError get error => throw _privateConstructorUsedError;
  bool get isRetryable => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TrackingResultErrorCopyWith<TrackingResultError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TrackingServiceErrorTearOff {
  const _$TrackingServiceErrorTearOff();

  TrackingServiceErrorFetch fetch(FetchError e) {
    return TrackingServiceErrorFetch(
      e,
    );
  }

  TrackingServiceErrorParse parse(ParseError e) {
    return TrackingServiceErrorParse(
      e,
    );
  }
}

/// @nodoc
const $TrackingServiceError = _$TrackingServiceErrorTearOff();

/// @nodoc
mixin _$TrackingServiceError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FetchError e) fetch,
    required TResult Function(ParseError e) parse,
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
      _$TrackingServiceErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrackingServiceErrorCopyWithImpl<$Res>
    implements $TrackingServiceErrorCopyWith<$Res> {
  _$TrackingServiceErrorCopyWithImpl(this._value, this._then);

  final TrackingServiceError _value;
  // ignore: unused_field
  final $Res Function(TrackingServiceError) _then;
}

/// @nodoc
abstract class $TrackingServiceErrorFetchCopyWith<$Res> {
  factory $TrackingServiceErrorFetchCopyWith(TrackingServiceErrorFetch value,
          $Res Function(TrackingServiceErrorFetch) then) =
      _$TrackingServiceErrorFetchCopyWithImpl<$Res>;
  $Res call({FetchError e});

  $FetchErrorCopyWith<$Res> get e;
}

/// @nodoc
class _$TrackingServiceErrorFetchCopyWithImpl<$Res>
    extends _$TrackingServiceErrorCopyWithImpl<$Res>
    implements $TrackingServiceErrorFetchCopyWith<$Res> {
  _$TrackingServiceErrorFetchCopyWithImpl(TrackingServiceErrorFetch _value,
      $Res Function(TrackingServiceErrorFetch) _then)
      : super(_value, (v) => _then(v as TrackingServiceErrorFetch));

  @override
  TrackingServiceErrorFetch get _value =>
      super._value as TrackingServiceErrorFetch;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(TrackingServiceErrorFetch(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as FetchError,
    ));
  }

  @override
  $FetchErrorCopyWith<$Res> get e {
    return $FetchErrorCopyWith<$Res>(_value.e, (value) {
      return _then(_value.copyWith(e: value));
    });
  }
}

/// @nodoc

class _$TrackingServiceErrorFetch
    with DiagnosticableTreeMixin
    implements TrackingServiceErrorFetch {
  const _$TrackingServiceErrorFetch(this.e);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TrackingServiceErrorFetch &&
            (identical(other.e, e) ||
                const DeepCollectionEquality().equals(other.e, e)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(e);

  @JsonKey(ignore: true)
  @override
  $TrackingServiceErrorFetchCopyWith<TrackingServiceErrorFetch> get copyWith =>
      _$TrackingServiceErrorFetchCopyWithImpl<TrackingServiceErrorFetch>(
          this, _$identity);

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
  const factory TrackingServiceErrorFetch(FetchError e) =
      _$TrackingServiceErrorFetch;

  FetchError get e => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackingServiceErrorFetchCopyWith<TrackingServiceErrorFetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingServiceErrorParseCopyWith<$Res> {
  factory $TrackingServiceErrorParseCopyWith(TrackingServiceErrorParse value,
          $Res Function(TrackingServiceErrorParse) then) =
      _$TrackingServiceErrorParseCopyWithImpl<$Res>;
  $Res call({ParseError e});

  $ParseErrorCopyWith<$Res> get e;
}

/// @nodoc
class _$TrackingServiceErrorParseCopyWithImpl<$Res>
    extends _$TrackingServiceErrorCopyWithImpl<$Res>
    implements $TrackingServiceErrorParseCopyWith<$Res> {
  _$TrackingServiceErrorParseCopyWithImpl(TrackingServiceErrorParse _value,
      $Res Function(TrackingServiceErrorParse) _then)
      : super(_value, (v) => _then(v as TrackingServiceErrorParse));

  @override
  TrackingServiceErrorParse get _value =>
      super._value as TrackingServiceErrorParse;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(TrackingServiceErrorParse(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as ParseError,
    ));
  }

  @override
  $ParseErrorCopyWith<$Res> get e {
    return $ParseErrorCopyWith<$Res>(_value.e, (value) {
      return _then(_value.copyWith(e: value));
    });
  }
}

/// @nodoc

class _$TrackingServiceErrorParse
    with DiagnosticableTreeMixin
    implements TrackingServiceErrorParse {
  const _$TrackingServiceErrorParse(this.e);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TrackingServiceErrorParse &&
            (identical(other.e, e) ||
                const DeepCollectionEquality().equals(other.e, e)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(e);

  @JsonKey(ignore: true)
  @override
  $TrackingServiceErrorParseCopyWith<TrackingServiceErrorParse> get copyWith =>
      _$TrackingServiceErrorParseCopyWithImpl<TrackingServiceErrorParse>(
          this, _$identity);

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
  const factory TrackingServiceErrorParse(ParseError e) =
      _$TrackingServiceErrorParse;

  ParseError get e => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackingServiceErrorParseCopyWith<TrackingServiceErrorParse> get copyWith =>
      throw _privateConstructorUsedError;
}
