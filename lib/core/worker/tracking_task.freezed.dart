// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tracking_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TrackingTaskStateTearOff {
  const _$TrackingTaskStateTearOff();

  TrackingTaskStateLoading loading(
      {required List<TrackingInfo> trackingInfoList}) {
    return TrackingTaskStateLoading(
      trackingInfoList: trackingInfoList,
    );
  }

  TrackingTaskStateLoaded loaded(
      {required List<TrackingTaskResult> result,
      required List<TrackingInfo> trackingInfoList,
      required List<TrackingResponseInfo> responseInfoList,
      List<TrackNumberService>? unsupportedServices,
      List<TrackNumberService>? disabledServices}) {
    return TrackingTaskStateLoaded(
      result: result,
      trackingInfoList: trackingInfoList,
      responseInfoList: responseInfoList,
      unsupportedServices: unsupportedServices,
      disabledServices: disabledServices,
    );
  }
}

/// @nodoc
const $TrackingTaskState = _$TrackingTaskStateTearOff();

/// @nodoc
mixin _$TrackingTaskState {
  List<TrackingInfo> get trackingInfoList => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TrackingInfo> trackingInfoList) loading,
    required TResult Function(
            List<TrackingTaskResult> result,
            List<TrackingInfo> trackingInfoList,
            List<TrackingResponseInfo> responseInfoList,
            List<TrackNumberService>? unsupportedServices,
            List<TrackNumberService>? disabledServices)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TrackingInfo> trackingInfoList)? loading,
    TResult Function(
            List<TrackingTaskResult> result,
            List<TrackingInfo> trackingInfoList,
            List<TrackingResponseInfo> responseInfoList,
            List<TrackNumberService>? unsupportedServices,
            List<TrackNumberService>? disabledServices)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrackingTaskStateLoading value) loading,
    required TResult Function(TrackingTaskStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackingTaskStateLoading value)? loading,
    TResult Function(TrackingTaskStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrackingTaskStateCopyWith<TrackingTaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingTaskStateCopyWith<$Res> {
  factory $TrackingTaskStateCopyWith(
          TrackingTaskState value, $Res Function(TrackingTaskState) then) =
      _$TrackingTaskStateCopyWithImpl<$Res>;
  $Res call({List<TrackingInfo> trackingInfoList});
}

/// @nodoc
class _$TrackingTaskStateCopyWithImpl<$Res>
    implements $TrackingTaskStateCopyWith<$Res> {
  _$TrackingTaskStateCopyWithImpl(this._value, this._then);

  final TrackingTaskState _value;
  // ignore: unused_field
  final $Res Function(TrackingTaskState) _then;

  @override
  $Res call({
    Object? trackingInfoList = freezed,
  }) {
    return _then(_value.copyWith(
      trackingInfoList: trackingInfoList == freezed
          ? _value.trackingInfoList
          : trackingInfoList // ignore: cast_nullable_to_non_nullable
              as List<TrackingInfo>,
    ));
  }
}

/// @nodoc
abstract class $TrackingTaskStateLoadingCopyWith<$Res>
    implements $TrackingTaskStateCopyWith<$Res> {
  factory $TrackingTaskStateLoadingCopyWith(TrackingTaskStateLoading value,
          $Res Function(TrackingTaskStateLoading) then) =
      _$TrackingTaskStateLoadingCopyWithImpl<$Res>;
  @override
  $Res call({List<TrackingInfo> trackingInfoList});
}

/// @nodoc
class _$TrackingTaskStateLoadingCopyWithImpl<$Res>
    extends _$TrackingTaskStateCopyWithImpl<$Res>
    implements $TrackingTaskStateLoadingCopyWith<$Res> {
  _$TrackingTaskStateLoadingCopyWithImpl(TrackingTaskStateLoading _value,
      $Res Function(TrackingTaskStateLoading) _then)
      : super(_value, (v) => _then(v as TrackingTaskStateLoading));

  @override
  TrackingTaskStateLoading get _value =>
      super._value as TrackingTaskStateLoading;

  @override
  $Res call({
    Object? trackingInfoList = freezed,
  }) {
    return _then(TrackingTaskStateLoading(
      trackingInfoList: trackingInfoList == freezed
          ? _value.trackingInfoList
          : trackingInfoList // ignore: cast_nullable_to_non_nullable
              as List<TrackingInfo>,
    ));
  }
}

/// @nodoc

class _$TrackingTaskStateLoading
    with DiagnosticableTreeMixin
    implements TrackingTaskStateLoading {
  const _$TrackingTaskStateLoading({required this.trackingInfoList});

  @override
  final List<TrackingInfo> trackingInfoList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackingTaskState.loading(trackingInfoList: $trackingInfoList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrackingTaskState.loading'))
      ..add(DiagnosticsProperty('trackingInfoList', trackingInfoList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TrackingTaskStateLoading &&
            (identical(other.trackingInfoList, trackingInfoList) ||
                const DeepCollectionEquality()
                    .equals(other.trackingInfoList, trackingInfoList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(trackingInfoList);

  @JsonKey(ignore: true)
  @override
  $TrackingTaskStateLoadingCopyWith<TrackingTaskStateLoading> get copyWith =>
      _$TrackingTaskStateLoadingCopyWithImpl<TrackingTaskStateLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TrackingInfo> trackingInfoList) loading,
    required TResult Function(
            List<TrackingTaskResult> result,
            List<TrackingInfo> trackingInfoList,
            List<TrackingResponseInfo> responseInfoList,
            List<TrackNumberService>? unsupportedServices,
            List<TrackNumberService>? disabledServices)
        loaded,
  }) {
    return loading(trackingInfoList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TrackingInfo> trackingInfoList)? loading,
    TResult Function(
            List<TrackingTaskResult> result,
            List<TrackingInfo> trackingInfoList,
            List<TrackingResponseInfo> responseInfoList,
            List<TrackNumberService>? unsupportedServices,
            List<TrackNumberService>? disabledServices)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(trackingInfoList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrackingTaskStateLoading value) loading,
    required TResult Function(TrackingTaskStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackingTaskStateLoading value)? loading,
    TResult Function(TrackingTaskStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TrackingTaskStateLoading implements TrackingTaskState {
  const factory TrackingTaskStateLoading(
          {required List<TrackingInfo> trackingInfoList}) =
      _$TrackingTaskStateLoading;

  @override
  List<TrackingInfo> get trackingInfoList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TrackingTaskStateLoadingCopyWith<TrackingTaskStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingTaskStateLoadedCopyWith<$Res>
    implements $TrackingTaskStateCopyWith<$Res> {
  factory $TrackingTaskStateLoadedCopyWith(TrackingTaskStateLoaded value,
          $Res Function(TrackingTaskStateLoaded) then) =
      _$TrackingTaskStateLoadedCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<TrackingTaskResult> result,
      List<TrackingInfo> trackingInfoList,
      List<TrackingResponseInfo> responseInfoList,
      List<TrackNumberService>? unsupportedServices,
      List<TrackNumberService>? disabledServices});
}

/// @nodoc
class _$TrackingTaskStateLoadedCopyWithImpl<$Res>
    extends _$TrackingTaskStateCopyWithImpl<$Res>
    implements $TrackingTaskStateLoadedCopyWith<$Res> {
  _$TrackingTaskStateLoadedCopyWithImpl(TrackingTaskStateLoaded _value,
      $Res Function(TrackingTaskStateLoaded) _then)
      : super(_value, (v) => _then(v as TrackingTaskStateLoaded));

  @override
  TrackingTaskStateLoaded get _value => super._value as TrackingTaskStateLoaded;

  @override
  $Res call({
    Object? result = freezed,
    Object? trackingInfoList = freezed,
    Object? responseInfoList = freezed,
    Object? unsupportedServices = freezed,
    Object? disabledServices = freezed,
  }) {
    return _then(TrackingTaskStateLoaded(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<TrackingTaskResult>,
      trackingInfoList: trackingInfoList == freezed
          ? _value.trackingInfoList
          : trackingInfoList // ignore: cast_nullable_to_non_nullable
              as List<TrackingInfo>,
      responseInfoList: responseInfoList == freezed
          ? _value.responseInfoList
          : responseInfoList // ignore: cast_nullable_to_non_nullable
              as List<TrackingResponseInfo>,
      unsupportedServices: unsupportedServices == freezed
          ? _value.unsupportedServices
          : unsupportedServices // ignore: cast_nullable_to_non_nullable
              as List<TrackNumberService>?,
      disabledServices: disabledServices == freezed
          ? _value.disabledServices
          : disabledServices // ignore: cast_nullable_to_non_nullable
              as List<TrackNumberService>?,
    ));
  }
}

/// @nodoc

class _$TrackingTaskStateLoaded
    with DiagnosticableTreeMixin
    implements TrackingTaskStateLoaded {
  const _$TrackingTaskStateLoaded(
      {required this.result,
      required this.trackingInfoList,
      required this.responseInfoList,
      this.unsupportedServices,
      this.disabledServices});

  @override
  final List<TrackingTaskResult> result;
  @override
  final List<TrackingInfo> trackingInfoList;
  @override
  final List<TrackingResponseInfo> responseInfoList;
  @override

  /// Services that returned the "invalid tracking number" status
  final List<TrackNumberService>? unsupportedServices;
  @override

  /// Services with non-temporary, hard error, or have a final status
  /// (for example, the parcel is delivered).
  /// `isActive` fields of items are set to `false`
  final List<TrackNumberService>? disabledServices;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackingTaskState.loaded(result: $result, trackingInfoList: $trackingInfoList, responseInfoList: $responseInfoList, unsupportedServices: $unsupportedServices, disabledServices: $disabledServices)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrackingTaskState.loaded'))
      ..add(DiagnosticsProperty('result', result))
      ..add(DiagnosticsProperty('trackingInfoList', trackingInfoList))
      ..add(DiagnosticsProperty('responseInfoList', responseInfoList))
      ..add(DiagnosticsProperty('unsupportedServices', unsupportedServices))
      ..add(DiagnosticsProperty('disabledServices', disabledServices));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TrackingTaskStateLoaded &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.trackingInfoList, trackingInfoList) ||
                const DeepCollectionEquality()
                    .equals(other.trackingInfoList, trackingInfoList)) &&
            (identical(other.responseInfoList, responseInfoList) ||
                const DeepCollectionEquality()
                    .equals(other.responseInfoList, responseInfoList)) &&
            (identical(other.unsupportedServices, unsupportedServices) ||
                const DeepCollectionEquality()
                    .equals(other.unsupportedServices, unsupportedServices)) &&
            (identical(other.disabledServices, disabledServices) ||
                const DeepCollectionEquality()
                    .equals(other.disabledServices, disabledServices)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(trackingInfoList) ^
      const DeepCollectionEquality().hash(responseInfoList) ^
      const DeepCollectionEquality().hash(unsupportedServices) ^
      const DeepCollectionEquality().hash(disabledServices);

  @JsonKey(ignore: true)
  @override
  $TrackingTaskStateLoadedCopyWith<TrackingTaskStateLoaded> get copyWith =>
      _$TrackingTaskStateLoadedCopyWithImpl<TrackingTaskStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TrackingInfo> trackingInfoList) loading,
    required TResult Function(
            List<TrackingTaskResult> result,
            List<TrackingInfo> trackingInfoList,
            List<TrackingResponseInfo> responseInfoList,
            List<TrackNumberService>? unsupportedServices,
            List<TrackNumberService>? disabledServices)
        loaded,
  }) {
    return loaded(result, trackingInfoList, responseInfoList,
        unsupportedServices, disabledServices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TrackingInfo> trackingInfoList)? loading,
    TResult Function(
            List<TrackingTaskResult> result,
            List<TrackingInfo> trackingInfoList,
            List<TrackingResponseInfo> responseInfoList,
            List<TrackNumberService>? unsupportedServices,
            List<TrackNumberService>? disabledServices)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(result, trackingInfoList, responseInfoList,
          unsupportedServices, disabledServices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrackingTaskStateLoading value) loading,
    required TResult Function(TrackingTaskStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackingTaskStateLoading value)? loading,
    TResult Function(TrackingTaskStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TrackingTaskStateLoaded implements TrackingTaskState {
  const factory TrackingTaskStateLoaded(
      {required List<TrackingTaskResult> result,
      required List<TrackingInfo> trackingInfoList,
      required List<TrackingResponseInfo> responseInfoList,
      List<TrackNumberService>? unsupportedServices,
      List<TrackNumberService>? disabledServices}) = _$TrackingTaskStateLoaded;

  List<TrackingTaskResult> get result => throw _privateConstructorUsedError;
  @override
  List<TrackingInfo> get trackingInfoList => throw _privateConstructorUsedError;
  List<TrackingResponseInfo> get responseInfoList =>
      throw _privateConstructorUsedError;

  /// Services that returned the "invalid tracking number" status
  List<TrackNumberService>? get unsupportedServices =>
      throw _privateConstructorUsedError;

  /// Services with non-temporary, hard error, or have a final status
  /// (for example, the parcel is delivered).
  /// `isActive` fields of items are set to `false`
  List<TrackNumberService>? get disabledServices =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TrackingTaskStateLoadedCopyWith<TrackingTaskStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TrackingTaskResultTearOff {
  const _$TrackingTaskResultTearOff();

  _TrackingTaskResult call(
      {required TrackNumberService trackService,
      required ShipmentInfo info,
      required List<ShipmentActivityInfo> activity,
      List<String>? alternateTracks}) {
    return _TrackingTaskResult(
      trackService: trackService,
      info: info,
      activity: activity,
      alternateTracks: alternateTracks,
    );
  }
}

/// @nodoc
const $TrackingTaskResult = _$TrackingTaskResultTearOff();

/// @nodoc
mixin _$TrackingTaskResult {
  TrackNumberService get trackService => throw _privateConstructorUsedError;
  ShipmentInfo get info => throw _privateConstructorUsedError;
  List<ShipmentActivityInfo> get activity => throw _privateConstructorUsedError;
  List<String>? get alternateTracks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrackingTaskResultCopyWith<TrackingTaskResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingTaskResultCopyWith<$Res> {
  factory $TrackingTaskResultCopyWith(
          TrackingTaskResult value, $Res Function(TrackingTaskResult) then) =
      _$TrackingTaskResultCopyWithImpl<$Res>;
  $Res call(
      {TrackNumberService trackService,
      ShipmentInfo info,
      List<ShipmentActivityInfo> activity,
      List<String>? alternateTracks});
}

/// @nodoc
class _$TrackingTaskResultCopyWithImpl<$Res>
    implements $TrackingTaskResultCopyWith<$Res> {
  _$TrackingTaskResultCopyWithImpl(this._value, this._then);

  final TrackingTaskResult _value;
  // ignore: unused_field
  final $Res Function(TrackingTaskResult) _then;

  @override
  $Res call({
    Object? trackService = freezed,
    Object? info = freezed,
    Object? activity = freezed,
    Object? alternateTracks = freezed,
  }) {
    return _then(_value.copyWith(
      trackService: trackService == freezed
          ? _value.trackService
          : trackService // ignore: cast_nullable_to_non_nullable
              as TrackNumberService,
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
abstract class _$TrackingTaskResultCopyWith<$Res>
    implements $TrackingTaskResultCopyWith<$Res> {
  factory _$TrackingTaskResultCopyWith(
          _TrackingTaskResult value, $Res Function(_TrackingTaskResult) then) =
      __$TrackingTaskResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {TrackNumberService trackService,
      ShipmentInfo info,
      List<ShipmentActivityInfo> activity,
      List<String>? alternateTracks});
}

/// @nodoc
class __$TrackingTaskResultCopyWithImpl<$Res>
    extends _$TrackingTaskResultCopyWithImpl<$Res>
    implements _$TrackingTaskResultCopyWith<$Res> {
  __$TrackingTaskResultCopyWithImpl(
      _TrackingTaskResult _value, $Res Function(_TrackingTaskResult) _then)
      : super(_value, (v) => _then(v as _TrackingTaskResult));

  @override
  _TrackingTaskResult get _value => super._value as _TrackingTaskResult;

  @override
  $Res call({
    Object? trackService = freezed,
    Object? info = freezed,
    Object? activity = freezed,
    Object? alternateTracks = freezed,
  }) {
    return _then(_TrackingTaskResult(
      trackService: trackService == freezed
          ? _value.trackService
          : trackService // ignore: cast_nullable_to_non_nullable
              as TrackNumberService,
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

class _$_TrackingTaskResult
    with DiagnosticableTreeMixin
    implements _TrackingTaskResult {
  const _$_TrackingTaskResult(
      {required this.trackService,
      required this.info,
      required this.activity,
      this.alternateTracks});

  @override
  final TrackNumberService trackService;
  @override
  final ShipmentInfo info;
  @override
  final List<ShipmentActivityInfo> activity;
  @override
  final List<String>? alternateTracks;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackingTaskResult(trackService: $trackService, info: $info, activity: $activity, alternateTracks: $alternateTracks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrackingTaskResult'))
      ..add(DiagnosticsProperty('trackService', trackService))
      ..add(DiagnosticsProperty('info', info))
      ..add(DiagnosticsProperty('activity', activity))
      ..add(DiagnosticsProperty('alternateTracks', alternateTracks));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TrackingTaskResult &&
            (identical(other.trackService, trackService) ||
                const DeepCollectionEquality()
                    .equals(other.trackService, trackService)) &&
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
      const DeepCollectionEquality().hash(trackService) ^
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(activity) ^
      const DeepCollectionEquality().hash(alternateTracks);

  @JsonKey(ignore: true)
  @override
  _$TrackingTaskResultCopyWith<_TrackingTaskResult> get copyWith =>
      __$TrackingTaskResultCopyWithImpl<_TrackingTaskResult>(this, _$identity);
}

abstract class _TrackingTaskResult implements TrackingTaskResult {
  const factory _TrackingTaskResult(
      {required TrackNumberService trackService,
      required ShipmentInfo info,
      required List<ShipmentActivityInfo> activity,
      List<String>? alternateTracks}) = _$_TrackingTaskResult;

  @override
  TrackNumberService get trackService => throw _privateConstructorUsedError;
  @override
  ShipmentInfo get info => throw _privateConstructorUsedError;
  @override
  List<ShipmentActivityInfo> get activity => throw _privateConstructorUsedError;
  @override
  List<String>? get alternateTracks => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TrackingTaskResultCopyWith<_TrackingTaskResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TrackingTaskParamsTearOff {
  const _$TrackingTaskParamsTearOff();

  _TrackingTaskParams call({Locale? locale}) {
    return _TrackingTaskParams(
      locale: locale,
    );
  }
}

/// @nodoc
const $TrackingTaskParams = _$TrackingTaskParamsTearOff();

/// @nodoc
mixin _$TrackingTaskParams {
  Locale? get locale => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrackingTaskParamsCopyWith<TrackingTaskParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingTaskParamsCopyWith<$Res> {
  factory $TrackingTaskParamsCopyWith(
          TrackingTaskParams value, $Res Function(TrackingTaskParams) then) =
      _$TrackingTaskParamsCopyWithImpl<$Res>;
  $Res call({Locale? locale});

  $LocaleCopyWith<$Res>? get locale;
}

/// @nodoc
class _$TrackingTaskParamsCopyWithImpl<$Res>
    implements $TrackingTaskParamsCopyWith<$Res> {
  _$TrackingTaskParamsCopyWithImpl(this._value, this._then);

  final TrackingTaskParams _value;
  // ignore: unused_field
  final $Res Function(TrackingTaskParams) _then;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_value.copyWith(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ));
  }

  @override
  $LocaleCopyWith<$Res>? get locale {
    if (_value.locale == null) {
      return null;
    }

    return $LocaleCopyWith<$Res>(_value.locale!, (value) {
      return _then(_value.copyWith(locale: value));
    });
  }
}

/// @nodoc
abstract class _$TrackingTaskParamsCopyWith<$Res>
    implements $TrackingTaskParamsCopyWith<$Res> {
  factory _$TrackingTaskParamsCopyWith(
          _TrackingTaskParams value, $Res Function(_TrackingTaskParams) then) =
      __$TrackingTaskParamsCopyWithImpl<$Res>;
  @override
  $Res call({Locale? locale});

  @override
  $LocaleCopyWith<$Res>? get locale;
}

/// @nodoc
class __$TrackingTaskParamsCopyWithImpl<$Res>
    extends _$TrackingTaskParamsCopyWithImpl<$Res>
    implements _$TrackingTaskParamsCopyWith<$Res> {
  __$TrackingTaskParamsCopyWithImpl(
      _TrackingTaskParams _value, $Res Function(_TrackingTaskParams) _then)
      : super(_value, (v) => _then(v as _TrackingTaskParams));

  @override
  _TrackingTaskParams get _value => super._value as _TrackingTaskParams;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_TrackingTaskParams(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ));
  }
}

/// @nodoc

class _$_TrackingTaskParams
    with DiagnosticableTreeMixin
    implements _TrackingTaskParams {
  const _$_TrackingTaskParams({this.locale});

  @override
  final Locale? locale;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackingTaskParams(locale: $locale)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrackingTaskParams'))
      ..add(DiagnosticsProperty('locale', locale));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TrackingTaskParams &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locale);

  @JsonKey(ignore: true)
  @override
  _$TrackingTaskParamsCopyWith<_TrackingTaskParams> get copyWith =>
      __$TrackingTaskParamsCopyWithImpl<_TrackingTaskParams>(this, _$identity);
}

abstract class _TrackingTaskParams implements TrackingTaskParams {
  const factory _TrackingTaskParams({Locale? locale}) = _$_TrackingTaskParams;

  @override
  Locale? get locale => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TrackingTaskParamsCopyWith<_TrackingTaskParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$_FailedRequestTearOff {
  const _$_FailedRequestTearOff();

  _FailedRequestData call(
      {required TransactionId id,
      required TrackNumberService trackService,
      required _FailedRequestReason reason}) {
    return _FailedRequestData(
      id: id,
      trackService: trackService,
      reason: reason,
    );
  }
}

/// @nodoc
const _$FailedRequest = _$_FailedRequestTearOff();

/// @nodoc
mixin _$_FailedRequest {
  TransactionId get id => throw _privateConstructorUsedError;
  TrackNumberService get trackService => throw _privateConstructorUsedError;
  _FailedRequestReason get reason => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$FailedRequestCopyWith<_FailedRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailedRequestCopyWith<$Res> {
  factory _$FailedRequestCopyWith(
          _FailedRequest value, $Res Function(_FailedRequest) then) =
      __$FailedRequestCopyWithImpl<$Res>;
  $Res call(
      {TransactionId id,
      TrackNumberService trackService,
      _FailedRequestReason reason});

  _$FailedRequestReasonCopyWith<$Res> get reason;
}

/// @nodoc
class __$FailedRequestCopyWithImpl<$Res>
    implements _$FailedRequestCopyWith<$Res> {
  __$FailedRequestCopyWithImpl(this._value, this._then);

  final _FailedRequest _value;
  // ignore: unused_field
  final $Res Function(_FailedRequest) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? trackService = freezed,
    Object? reason = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TransactionId,
      trackService: trackService == freezed
          ? _value.trackService
          : trackService // ignore: cast_nullable_to_non_nullable
              as TrackNumberService,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as _FailedRequestReason,
    ));
  }

  @override
  _$FailedRequestReasonCopyWith<$Res> get reason {
    return _$FailedRequestReasonCopyWith<$Res>(_value.reason, (value) {
      return _then(_value.copyWith(reason: value));
    });
  }
}

/// @nodoc
abstract class _$FailedRequestDataCopyWith<$Res>
    implements _$FailedRequestCopyWith<$Res> {
  factory _$FailedRequestDataCopyWith(
          _FailedRequestData value, $Res Function(_FailedRequestData) then) =
      __$FailedRequestDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {TransactionId id,
      TrackNumberService trackService,
      _FailedRequestReason reason});

  @override
  _$FailedRequestReasonCopyWith<$Res> get reason;
}

/// @nodoc
class __$FailedRequestDataCopyWithImpl<$Res>
    extends __$FailedRequestCopyWithImpl<$Res>
    implements _$FailedRequestDataCopyWith<$Res> {
  __$FailedRequestDataCopyWithImpl(
      _FailedRequestData _value, $Res Function(_FailedRequestData) _then)
      : super(_value, (v) => _then(v as _FailedRequestData));

  @override
  _FailedRequestData get _value => super._value as _FailedRequestData;

  @override
  $Res call({
    Object? id = freezed,
    Object? trackService = freezed,
    Object? reason = freezed,
  }) {
    return _then(_FailedRequestData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TransactionId,
      trackService: trackService == freezed
          ? _value.trackService
          : trackService // ignore: cast_nullable_to_non_nullable
              as TrackNumberService,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as _FailedRequestReason,
    ));
  }
}

/// @nodoc

class _$_FailedRequestData
    with DiagnosticableTreeMixin
    implements _FailedRequestData {
  const _$_FailedRequestData(
      {required this.id, required this.trackService, required this.reason});

  @override
  final TransactionId id;
  @override
  final TrackNumberService trackService;
  @override
  final _FailedRequestReason reason;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return '_FailedRequest(id: $id, trackService: $trackService, reason: $reason)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', '_FailedRequest'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('trackService', trackService))
      ..add(DiagnosticsProperty('reason', reason));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FailedRequestData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.trackService, trackService) ||
                const DeepCollectionEquality()
                    .equals(other.trackService, trackService)) &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(trackService) ^
      const DeepCollectionEquality().hash(reason);

  @JsonKey(ignore: true)
  @override
  _$FailedRequestDataCopyWith<_FailedRequestData> get copyWith =>
      __$FailedRequestDataCopyWithImpl<_FailedRequestData>(this, _$identity);
}

abstract class _FailedRequestData implements _FailedRequest {
  const factory _FailedRequestData(
      {required TransactionId id,
      required TrackNumberService trackService,
      required _FailedRequestReason reason}) = _$_FailedRequestData;

  @override
  TransactionId get id => throw _privateConstructorUsedError;
  @override
  TrackNumberService get trackService => throw _privateConstructorUsedError;
  @override
  _FailedRequestReason get reason => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FailedRequestDataCopyWith<_FailedRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$_FailedRequestReasonTearOff {
  const _$_FailedRequestReasonTearOff();

  _FailedRequestMissingService missingService() {
    return const _FailedRequestMissingService();
  }

  _FailedRequestMissingAuthData missingAuthData() {
    return const _FailedRequestMissingAuthData();
  }
}

/// @nodoc
const _$FailedRequestReason = _$_FailedRequestReasonTearOff();

/// @nodoc
mixin _$_FailedRequestReason {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() missingService,
    required TResult Function() missingAuthData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? missingService,
    TResult Function()? missingAuthData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FailedRequestMissingService value)
        missingService,
    required TResult Function(_FailedRequestMissingAuthData value)
        missingAuthData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FailedRequestMissingService value)? missingService,
    TResult Function(_FailedRequestMissingAuthData value)? missingAuthData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailedRequestReasonCopyWith<$Res> {
  factory _$FailedRequestReasonCopyWith(_FailedRequestReason value,
          $Res Function(_FailedRequestReason) then) =
      __$FailedRequestReasonCopyWithImpl<$Res>;
}

/// @nodoc
class __$FailedRequestReasonCopyWithImpl<$Res>
    implements _$FailedRequestReasonCopyWith<$Res> {
  __$FailedRequestReasonCopyWithImpl(this._value, this._then);

  final _FailedRequestReason _value;
  // ignore: unused_field
  final $Res Function(_FailedRequestReason) _then;
}

/// @nodoc
abstract class _$FailedRequestMissingServiceCopyWith<$Res> {
  factory _$FailedRequestMissingServiceCopyWith(
          _FailedRequestMissingService value,
          $Res Function(_FailedRequestMissingService) then) =
      __$FailedRequestMissingServiceCopyWithImpl<$Res>;
}

/// @nodoc
class __$FailedRequestMissingServiceCopyWithImpl<$Res>
    extends __$FailedRequestReasonCopyWithImpl<$Res>
    implements _$FailedRequestMissingServiceCopyWith<$Res> {
  __$FailedRequestMissingServiceCopyWithImpl(
      _FailedRequestMissingService _value,
      $Res Function(_FailedRequestMissingService) _then)
      : super(_value, (v) => _then(v as _FailedRequestMissingService));

  @override
  _FailedRequestMissingService get _value =>
      super._value as _FailedRequestMissingService;
}

/// @nodoc

class _$_FailedRequestMissingService
    with DiagnosticableTreeMixin
    implements _FailedRequestMissingService {
  const _$_FailedRequestMissingService();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return '_FailedRequestReason.missingService()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', '_FailedRequestReason.missingService'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FailedRequestMissingService);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() missingService,
    required TResult Function() missingAuthData,
  }) {
    return missingService();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? missingService,
    TResult Function()? missingAuthData,
    required TResult orElse(),
  }) {
    if (missingService != null) {
      return missingService();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FailedRequestMissingService value)
        missingService,
    required TResult Function(_FailedRequestMissingAuthData value)
        missingAuthData,
  }) {
    return missingService(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FailedRequestMissingService value)? missingService,
    TResult Function(_FailedRequestMissingAuthData value)? missingAuthData,
    required TResult orElse(),
  }) {
    if (missingService != null) {
      return missingService(this);
    }
    return orElse();
  }
}

abstract class _FailedRequestMissingService implements _FailedRequestReason {
  const factory _FailedRequestMissingService() = _$_FailedRequestMissingService;
}

/// @nodoc
abstract class _$FailedRequestMissingAuthDataCopyWith<$Res> {
  factory _$FailedRequestMissingAuthDataCopyWith(
          _FailedRequestMissingAuthData value,
          $Res Function(_FailedRequestMissingAuthData) then) =
      __$FailedRequestMissingAuthDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$FailedRequestMissingAuthDataCopyWithImpl<$Res>
    extends __$FailedRequestReasonCopyWithImpl<$Res>
    implements _$FailedRequestMissingAuthDataCopyWith<$Res> {
  __$FailedRequestMissingAuthDataCopyWithImpl(
      _FailedRequestMissingAuthData _value,
      $Res Function(_FailedRequestMissingAuthData) _then)
      : super(_value, (v) => _then(v as _FailedRequestMissingAuthData));

  @override
  _FailedRequestMissingAuthData get _value =>
      super._value as _FailedRequestMissingAuthData;
}

/// @nodoc

class _$_FailedRequestMissingAuthData
    with DiagnosticableTreeMixin
    implements _FailedRequestMissingAuthData {
  const _$_FailedRequestMissingAuthData();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return '_FailedRequestReason.missingAuthData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', '_FailedRequestReason.missingAuthData'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FailedRequestMissingAuthData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() missingService,
    required TResult Function() missingAuthData,
  }) {
    return missingAuthData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? missingService,
    TResult Function()? missingAuthData,
    required TResult orElse(),
  }) {
    if (missingAuthData != null) {
      return missingAuthData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FailedRequestMissingService value)
        missingService,
    required TResult Function(_FailedRequestMissingAuthData value)
        missingAuthData,
  }) {
    return missingAuthData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FailedRequestMissingService value)? missingService,
    TResult Function(_FailedRequestMissingAuthData value)? missingAuthData,
    required TResult orElse(),
  }) {
    if (missingAuthData != null) {
      return missingAuthData(this);
    }
    return orElse();
  }
}

abstract class _FailedRequestMissingAuthData implements _FailedRequestReason {
  const factory _FailedRequestMissingAuthData() =
      _$_FailedRequestMissingAuthData;
}
