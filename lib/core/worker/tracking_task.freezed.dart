// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracking_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TrackingInfo> trackingInfoList)? loading,
    TResult? Function(
            List<TrackingTaskResult> result,
            List<TrackingInfo> trackingInfoList,
            List<TrackingResponseInfo> responseInfoList,
            List<TrackNumberService>? unsupportedServices,
            List<TrackNumberService>? disabledServices)?
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrackingTaskStateLoading value)? loading,
    TResult? Function(TrackingTaskStateLoaded value)? loaded,
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
      _$TrackingTaskStateCopyWithImpl<$Res, TrackingTaskState>;
  @useResult
  $Res call({List<TrackingInfo> trackingInfoList});
}

/// @nodoc
class _$TrackingTaskStateCopyWithImpl<$Res, $Val extends TrackingTaskState>
    implements $TrackingTaskStateCopyWith<$Res> {
  _$TrackingTaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackingInfoList = null,
  }) {
    return _then(_value.copyWith(
      trackingInfoList: null == trackingInfoList
          ? _value.trackingInfoList
          : trackingInfoList // ignore: cast_nullable_to_non_nullable
              as List<TrackingInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrackingTaskStateLoadingImplCopyWith<$Res>
    implements $TrackingTaskStateCopyWith<$Res> {
  factory _$$TrackingTaskStateLoadingImplCopyWith(
          _$TrackingTaskStateLoadingImpl value,
          $Res Function(_$TrackingTaskStateLoadingImpl) then) =
      __$$TrackingTaskStateLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TrackingInfo> trackingInfoList});
}

/// @nodoc
class __$$TrackingTaskStateLoadingImplCopyWithImpl<$Res>
    extends _$TrackingTaskStateCopyWithImpl<$Res,
        _$TrackingTaskStateLoadingImpl>
    implements _$$TrackingTaskStateLoadingImplCopyWith<$Res> {
  __$$TrackingTaskStateLoadingImplCopyWithImpl(
      _$TrackingTaskStateLoadingImpl _value,
      $Res Function(_$TrackingTaskStateLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackingInfoList = null,
  }) {
    return _then(_$TrackingTaskStateLoadingImpl(
      trackingInfoList: null == trackingInfoList
          ? _value._trackingInfoList
          : trackingInfoList // ignore: cast_nullable_to_non_nullable
              as List<TrackingInfo>,
    ));
  }
}

/// @nodoc

class _$TrackingTaskStateLoadingImpl implements TrackingTaskStateLoading {
  const _$TrackingTaskStateLoadingImpl(
      {required final List<TrackingInfo> trackingInfoList})
      : _trackingInfoList = trackingInfoList;

  final List<TrackingInfo> _trackingInfoList;
  @override
  List<TrackingInfo> get trackingInfoList {
    if (_trackingInfoList is EqualUnmodifiableListView)
      return _trackingInfoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trackingInfoList);
  }

  @override
  String toString() {
    return 'TrackingTaskState.loading(trackingInfoList: $trackingInfoList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingTaskStateLoadingImpl &&
            const DeepCollectionEquality()
                .equals(other._trackingInfoList, _trackingInfoList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_trackingInfoList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackingTaskStateLoadingImplCopyWith<_$TrackingTaskStateLoadingImpl>
      get copyWith => __$$TrackingTaskStateLoadingImplCopyWithImpl<
          _$TrackingTaskStateLoadingImpl>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TrackingInfo> trackingInfoList)? loading,
    TResult? Function(
            List<TrackingTaskResult> result,
            List<TrackingInfo> trackingInfoList,
            List<TrackingResponseInfo> responseInfoList,
            List<TrackNumberService>? unsupportedServices,
            List<TrackNumberService>? disabledServices)?
        loaded,
  }) {
    return loading?.call(trackingInfoList);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrackingTaskStateLoading value)? loading,
    TResult? Function(TrackingTaskStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
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
          {required final List<TrackingInfo> trackingInfoList}) =
      _$TrackingTaskStateLoadingImpl;

  @override
  List<TrackingInfo> get trackingInfoList;
  @override
  @JsonKey(ignore: true)
  _$$TrackingTaskStateLoadingImplCopyWith<_$TrackingTaskStateLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TrackingTaskStateLoadedImplCopyWith<$Res>
    implements $TrackingTaskStateCopyWith<$Res> {
  factory _$$TrackingTaskStateLoadedImplCopyWith(
          _$TrackingTaskStateLoadedImpl value,
          $Res Function(_$TrackingTaskStateLoadedImpl) then) =
      __$$TrackingTaskStateLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TrackingTaskResult> result,
      List<TrackingInfo> trackingInfoList,
      List<TrackingResponseInfo> responseInfoList,
      List<TrackNumberService>? unsupportedServices,
      List<TrackNumberService>? disabledServices});
}

/// @nodoc
class __$$TrackingTaskStateLoadedImplCopyWithImpl<$Res>
    extends _$TrackingTaskStateCopyWithImpl<$Res, _$TrackingTaskStateLoadedImpl>
    implements _$$TrackingTaskStateLoadedImplCopyWith<$Res> {
  __$$TrackingTaskStateLoadedImplCopyWithImpl(
      _$TrackingTaskStateLoadedImpl _value,
      $Res Function(_$TrackingTaskStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? trackingInfoList = null,
    Object? responseInfoList = null,
    Object? unsupportedServices = freezed,
    Object? disabledServices = freezed,
  }) {
    return _then(_$TrackingTaskStateLoadedImpl(
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<TrackingTaskResult>,
      trackingInfoList: null == trackingInfoList
          ? _value._trackingInfoList
          : trackingInfoList // ignore: cast_nullable_to_non_nullable
              as List<TrackingInfo>,
      responseInfoList: null == responseInfoList
          ? _value._responseInfoList
          : responseInfoList // ignore: cast_nullable_to_non_nullable
              as List<TrackingResponseInfo>,
      unsupportedServices: freezed == unsupportedServices
          ? _value._unsupportedServices
          : unsupportedServices // ignore: cast_nullable_to_non_nullable
              as List<TrackNumberService>?,
      disabledServices: freezed == disabledServices
          ? _value._disabledServices
          : disabledServices // ignore: cast_nullable_to_non_nullable
              as List<TrackNumberService>?,
    ));
  }
}

/// @nodoc

class _$TrackingTaskStateLoadedImpl implements TrackingTaskStateLoaded {
  const _$TrackingTaskStateLoadedImpl(
      {required final List<TrackingTaskResult> result,
      required final List<TrackingInfo> trackingInfoList,
      required final List<TrackingResponseInfo> responseInfoList,
      final List<TrackNumberService>? unsupportedServices,
      final List<TrackNumberService>? disabledServices})
      : _result = result,
        _trackingInfoList = trackingInfoList,
        _responseInfoList = responseInfoList,
        _unsupportedServices = unsupportedServices,
        _disabledServices = disabledServices;

  final List<TrackingTaskResult> _result;
  @override
  List<TrackingTaskResult> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  final List<TrackingInfo> _trackingInfoList;
  @override
  List<TrackingInfo> get trackingInfoList {
    if (_trackingInfoList is EqualUnmodifiableListView)
      return _trackingInfoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trackingInfoList);
  }

  final List<TrackingResponseInfo> _responseInfoList;
  @override
  List<TrackingResponseInfo> get responseInfoList {
    if (_responseInfoList is EqualUnmodifiableListView)
      return _responseInfoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_responseInfoList);
  }

  /// Services that returned the "invalid tracking number" status
  final List<TrackNumberService>? _unsupportedServices;

  /// Services that returned the "invalid tracking number" status
  @override
  List<TrackNumberService>? get unsupportedServices {
    final value = _unsupportedServices;
    if (value == null) return null;
    if (_unsupportedServices is EqualUnmodifiableListView)
      return _unsupportedServices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Services with non-temporary, hard error, or have a final status
  /// (for example, the parcel is delivered).
  /// `isActive` fields of items are set to `false`
  final List<TrackNumberService>? _disabledServices;

  /// Services with non-temporary, hard error, or have a final status
  /// (for example, the parcel is delivered).
  /// `isActive` fields of items are set to `false`
  @override
  List<TrackNumberService>? get disabledServices {
    final value = _disabledServices;
    if (value == null) return null;
    if (_disabledServices is EqualUnmodifiableListView)
      return _disabledServices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TrackingTaskState.loaded(result: $result, trackingInfoList: $trackingInfoList, responseInfoList: $responseInfoList, unsupportedServices: $unsupportedServices, disabledServices: $disabledServices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingTaskStateLoadedImpl &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            const DeepCollectionEquality()
                .equals(other._trackingInfoList, _trackingInfoList) &&
            const DeepCollectionEquality()
                .equals(other._responseInfoList, _responseInfoList) &&
            const DeepCollectionEquality()
                .equals(other._unsupportedServices, _unsupportedServices) &&
            const DeepCollectionEquality()
                .equals(other._disabledServices, _disabledServices));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_result),
      const DeepCollectionEquality().hash(_trackingInfoList),
      const DeepCollectionEquality().hash(_responseInfoList),
      const DeepCollectionEquality().hash(_unsupportedServices),
      const DeepCollectionEquality().hash(_disabledServices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackingTaskStateLoadedImplCopyWith<_$TrackingTaskStateLoadedImpl>
      get copyWith => __$$TrackingTaskStateLoadedImplCopyWithImpl<
          _$TrackingTaskStateLoadedImpl>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TrackingInfo> trackingInfoList)? loading,
    TResult? Function(
            List<TrackingTaskResult> result,
            List<TrackingInfo> trackingInfoList,
            List<TrackingResponseInfo> responseInfoList,
            List<TrackNumberService>? unsupportedServices,
            List<TrackNumberService>? disabledServices)?
        loaded,
  }) {
    return loaded?.call(result, trackingInfoList, responseInfoList,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrackingTaskStateLoading value)? loading,
    TResult? Function(TrackingTaskStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
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
          {required final List<TrackingTaskResult> result,
          required final List<TrackingInfo> trackingInfoList,
          required final List<TrackingResponseInfo> responseInfoList,
          final List<TrackNumberService>? unsupportedServices,
          final List<TrackNumberService>? disabledServices}) =
      _$TrackingTaskStateLoadedImpl;

  List<TrackingTaskResult> get result;
  @override
  List<TrackingInfo> get trackingInfoList;
  List<TrackingResponseInfo> get responseInfoList;

  /// Services that returned the "invalid tracking number" status
  List<TrackNumberService>? get unsupportedServices;

  /// Services with non-temporary, hard error, or have a final status
  /// (for example, the parcel is delivered).
  /// `isActive` fields of items are set to `false`
  List<TrackNumberService>? get disabledServices;
  @override
  @JsonKey(ignore: true)
  _$$TrackingTaskStateLoadedImplCopyWith<_$TrackingTaskStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

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
      _$TrackingTaskResultCopyWithImpl<$Res, TrackingTaskResult>;
  @useResult
  $Res call(
      {TrackNumberService trackService,
      ShipmentInfo info,
      List<ShipmentActivityInfo> activity,
      List<String>? alternateTracks});
}

/// @nodoc
class _$TrackingTaskResultCopyWithImpl<$Res, $Val extends TrackingTaskResult>
    implements $TrackingTaskResultCopyWith<$Res> {
  _$TrackingTaskResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackService = null,
    Object? info = null,
    Object? activity = null,
    Object? alternateTracks = freezed,
  }) {
    return _then(_value.copyWith(
      trackService: null == trackService
          ? _value.trackService
          : trackService // ignore: cast_nullable_to_non_nullable
              as TrackNumberService,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as ShipmentInfo,
      activity: null == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as List<ShipmentActivityInfo>,
      alternateTracks: freezed == alternateTracks
          ? _value.alternateTracks
          : alternateTracks // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrackingTaskResultImplCopyWith<$Res>
    implements $TrackingTaskResultCopyWith<$Res> {
  factory _$$TrackingTaskResultImplCopyWith(_$TrackingTaskResultImpl value,
          $Res Function(_$TrackingTaskResultImpl) then) =
      __$$TrackingTaskResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TrackNumberService trackService,
      ShipmentInfo info,
      List<ShipmentActivityInfo> activity,
      List<String>? alternateTracks});
}

/// @nodoc
class __$$TrackingTaskResultImplCopyWithImpl<$Res>
    extends _$TrackingTaskResultCopyWithImpl<$Res, _$TrackingTaskResultImpl>
    implements _$$TrackingTaskResultImplCopyWith<$Res> {
  __$$TrackingTaskResultImplCopyWithImpl(_$TrackingTaskResultImpl _value,
      $Res Function(_$TrackingTaskResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackService = null,
    Object? info = null,
    Object? activity = null,
    Object? alternateTracks = freezed,
  }) {
    return _then(_$TrackingTaskResultImpl(
      trackService: null == trackService
          ? _value.trackService
          : trackService // ignore: cast_nullable_to_non_nullable
              as TrackNumberService,
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

class _$TrackingTaskResultImpl implements _TrackingTaskResult {
  const _$TrackingTaskResultImpl(
      {required this.trackService,
      required this.info,
      required final List<ShipmentActivityInfo> activity,
      final List<String>? alternateTracks})
      : _activity = activity,
        _alternateTracks = alternateTracks;

  @override
  final TrackNumberService trackService;
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
  String toString() {
    return 'TrackingTaskResult(trackService: $trackService, info: $info, activity: $activity, alternateTracks: $alternateTracks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingTaskResultImpl &&
            (identical(other.trackService, trackService) ||
                other.trackService == trackService) &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other._activity, _activity) &&
            const DeepCollectionEquality()
                .equals(other._alternateTracks, _alternateTracks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      trackService,
      info,
      const DeepCollectionEquality().hash(_activity),
      const DeepCollectionEquality().hash(_alternateTracks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackingTaskResultImplCopyWith<_$TrackingTaskResultImpl> get copyWith =>
      __$$TrackingTaskResultImplCopyWithImpl<_$TrackingTaskResultImpl>(
          this, _$identity);
}

abstract class _TrackingTaskResult implements TrackingTaskResult {
  const factory _TrackingTaskResult(
      {required final TrackNumberService trackService,
      required final ShipmentInfo info,
      required final List<ShipmentActivityInfo> activity,
      final List<String>? alternateTracks}) = _$TrackingTaskResultImpl;

  @override
  TrackNumberService get trackService;
  @override
  ShipmentInfo get info;
  @override
  List<ShipmentActivityInfo> get activity;
  @override
  List<String>? get alternateTracks;
  @override
  @JsonKey(ignore: true)
  _$$TrackingTaskResultImplCopyWith<_$TrackingTaskResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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
      _$TrackingTaskParamsCopyWithImpl<$Res, TrackingTaskParams>;
  @useResult
  $Res call({Locale? locale});

  $LocaleCopyWith<$Res>? get locale;
}

/// @nodoc
class _$TrackingTaskParamsCopyWithImpl<$Res, $Val extends TrackingTaskParams>
    implements $TrackingTaskParamsCopyWith<$Res> {
  _$TrackingTaskParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_value.copyWith(
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocaleCopyWith<$Res>? get locale {
    if (_value.locale == null) {
      return null;
    }

    return $LocaleCopyWith<$Res>(_value.locale!, (value) {
      return _then(_value.copyWith(locale: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrackingTaskParamsImplCopyWith<$Res>
    implements $TrackingTaskParamsCopyWith<$Res> {
  factory _$$TrackingTaskParamsImplCopyWith(_$TrackingTaskParamsImpl value,
          $Res Function(_$TrackingTaskParamsImpl) then) =
      __$$TrackingTaskParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Locale? locale});

  @override
  $LocaleCopyWith<$Res>? get locale;
}

/// @nodoc
class __$$TrackingTaskParamsImplCopyWithImpl<$Res>
    extends _$TrackingTaskParamsCopyWithImpl<$Res, _$TrackingTaskParamsImpl>
    implements _$$TrackingTaskParamsImplCopyWith<$Res> {
  __$$TrackingTaskParamsImplCopyWithImpl(_$TrackingTaskParamsImpl _value,
      $Res Function(_$TrackingTaskParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_$TrackingTaskParamsImpl(
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ));
  }
}

/// @nodoc

class _$TrackingTaskParamsImpl implements _TrackingTaskParams {
  const _$TrackingTaskParamsImpl({this.locale});

  @override
  final Locale? locale;

  @override
  String toString() {
    return 'TrackingTaskParams(locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingTaskParamsImpl &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackingTaskParamsImplCopyWith<_$TrackingTaskParamsImpl> get copyWith =>
      __$$TrackingTaskParamsImplCopyWithImpl<_$TrackingTaskParamsImpl>(
          this, _$identity);
}

abstract class _TrackingTaskParams implements TrackingTaskParams {
  const factory _TrackingTaskParams({final Locale? locale}) =
      _$TrackingTaskParamsImpl;

  @override
  Locale? get locale;
  @override
  @JsonKey(ignore: true)
  _$$TrackingTaskParamsImplCopyWith<_$TrackingTaskParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FailedRequest {
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
      __$FailedRequestCopyWithImpl<$Res, _FailedRequest>;
  @useResult
  $Res call(
      {TransactionId id,
      TrackNumberService trackService,
      _FailedRequestReason reason});

  _$FailedRequestReasonCopyWith<$Res> get reason;
}

/// @nodoc
class __$FailedRequestCopyWithImpl<$Res, $Val extends _FailedRequest>
    implements _$FailedRequestCopyWith<$Res> {
  __$FailedRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? trackService = null,
    Object? reason = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TransactionId,
      trackService: null == trackService
          ? _value.trackService
          : trackService // ignore: cast_nullable_to_non_nullable
              as TrackNumberService,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as _FailedRequestReason,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  _$FailedRequestReasonCopyWith<$Res> get reason {
    return _$FailedRequestReasonCopyWith<$Res>(_value.reason, (value) {
      return _then(_value.copyWith(reason: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FailedRequestDataImplCopyWith<$Res>
    implements _$FailedRequestCopyWith<$Res> {
  factory _$$FailedRequestDataImplCopyWith(_$FailedRequestDataImpl value,
          $Res Function(_$FailedRequestDataImpl) then) =
      __$$FailedRequestDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TransactionId id,
      TrackNumberService trackService,
      _FailedRequestReason reason});

  @override
  _$FailedRequestReasonCopyWith<$Res> get reason;
}

/// @nodoc
class __$$FailedRequestDataImplCopyWithImpl<$Res>
    extends __$FailedRequestCopyWithImpl<$Res, _$FailedRequestDataImpl>
    implements _$$FailedRequestDataImplCopyWith<$Res> {
  __$$FailedRequestDataImplCopyWithImpl(_$FailedRequestDataImpl _value,
      $Res Function(_$FailedRequestDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? trackService = null,
    Object? reason = null,
  }) {
    return _then(_$FailedRequestDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TransactionId,
      trackService: null == trackService
          ? _value.trackService
          : trackService // ignore: cast_nullable_to_non_nullable
              as TrackNumberService,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as _FailedRequestReason,
    ));
  }
}

/// @nodoc

class _$FailedRequestDataImpl implements _FailedRequestData {
  const _$FailedRequestDataImpl(
      {required this.id, required this.trackService, required this.reason});

  @override
  final TransactionId id;
  @override
  final TrackNumberService trackService;
  @override
  final _FailedRequestReason reason;

  @override
  String toString() {
    return '_FailedRequest(id: $id, trackService: $trackService, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedRequestDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.trackService, trackService) ||
                other.trackService == trackService) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, trackService, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedRequestDataImplCopyWith<_$FailedRequestDataImpl> get copyWith =>
      __$$FailedRequestDataImplCopyWithImpl<_$FailedRequestDataImpl>(
          this, _$identity);
}

abstract class _FailedRequestData implements _FailedRequest {
  const factory _FailedRequestData(
      {required final TransactionId id,
      required final TrackNumberService trackService,
      required final _FailedRequestReason reason}) = _$FailedRequestDataImpl;

  @override
  TransactionId get id;
  @override
  TrackNumberService get trackService;
  @override
  _FailedRequestReason get reason;
  @override
  @JsonKey(ignore: true)
  _$$FailedRequestDataImplCopyWith<_$FailedRequestDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FailedRequestReason {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() missingService,
    required TResult Function() missingAuthData,
    required TResult Function() serviceInactive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? missingService,
    TResult? Function()? missingAuthData,
    TResult? Function()? serviceInactive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? missingService,
    TResult Function()? missingAuthData,
    TResult Function()? serviceInactive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FailedRequestMissingService value)
        missingService,
    required TResult Function(_FailedRequestMissingAuthData value)
        missingAuthData,
    required TResult Function(_FailedRequestServiceInactive value)
        serviceInactive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FailedRequestMissingService value)? missingService,
    TResult? Function(_FailedRequestMissingAuthData value)? missingAuthData,
    TResult? Function(_FailedRequestServiceInactive value)? serviceInactive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FailedRequestMissingService value)? missingService,
    TResult Function(_FailedRequestMissingAuthData value)? missingAuthData,
    TResult Function(_FailedRequestServiceInactive value)? serviceInactive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailedRequestReasonCopyWith<$Res> {
  factory _$FailedRequestReasonCopyWith(_FailedRequestReason value,
          $Res Function(_FailedRequestReason) then) =
      __$FailedRequestReasonCopyWithImpl<$Res, _FailedRequestReason>;
}

/// @nodoc
class __$FailedRequestReasonCopyWithImpl<$Res,
        $Val extends _FailedRequestReason>
    implements _$FailedRequestReasonCopyWith<$Res> {
  __$FailedRequestReasonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FailedRequestMissingServiceImplCopyWith<$Res> {
  factory _$$FailedRequestMissingServiceImplCopyWith(
          _$FailedRequestMissingServiceImpl value,
          $Res Function(_$FailedRequestMissingServiceImpl) then) =
      __$$FailedRequestMissingServiceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedRequestMissingServiceImplCopyWithImpl<$Res>
    extends __$FailedRequestReasonCopyWithImpl<$Res,
        _$FailedRequestMissingServiceImpl>
    implements _$$FailedRequestMissingServiceImplCopyWith<$Res> {
  __$$FailedRequestMissingServiceImplCopyWithImpl(
      _$FailedRequestMissingServiceImpl _value,
      $Res Function(_$FailedRequestMissingServiceImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FailedRequestMissingServiceImpl
    implements _FailedRequestMissingService {
  const _$FailedRequestMissingServiceImpl();

  @override
  String toString() {
    return '_FailedRequestReason.missingService()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedRequestMissingServiceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() missingService,
    required TResult Function() missingAuthData,
    required TResult Function() serviceInactive,
  }) {
    return missingService();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? missingService,
    TResult? Function()? missingAuthData,
    TResult? Function()? serviceInactive,
  }) {
    return missingService?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? missingService,
    TResult Function()? missingAuthData,
    TResult Function()? serviceInactive,
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
    required TResult Function(_FailedRequestServiceInactive value)
        serviceInactive,
  }) {
    return missingService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FailedRequestMissingService value)? missingService,
    TResult? Function(_FailedRequestMissingAuthData value)? missingAuthData,
    TResult? Function(_FailedRequestServiceInactive value)? serviceInactive,
  }) {
    return missingService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FailedRequestMissingService value)? missingService,
    TResult Function(_FailedRequestMissingAuthData value)? missingAuthData,
    TResult Function(_FailedRequestServiceInactive value)? serviceInactive,
    required TResult orElse(),
  }) {
    if (missingService != null) {
      return missingService(this);
    }
    return orElse();
  }
}

abstract class _FailedRequestMissingService implements _FailedRequestReason {
  const factory _FailedRequestMissingService() =
      _$FailedRequestMissingServiceImpl;
}

/// @nodoc
abstract class _$$FailedRequestMissingAuthDataImplCopyWith<$Res> {
  factory _$$FailedRequestMissingAuthDataImplCopyWith(
          _$FailedRequestMissingAuthDataImpl value,
          $Res Function(_$FailedRequestMissingAuthDataImpl) then) =
      __$$FailedRequestMissingAuthDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedRequestMissingAuthDataImplCopyWithImpl<$Res>
    extends __$FailedRequestReasonCopyWithImpl<$Res,
        _$FailedRequestMissingAuthDataImpl>
    implements _$$FailedRequestMissingAuthDataImplCopyWith<$Res> {
  __$$FailedRequestMissingAuthDataImplCopyWithImpl(
      _$FailedRequestMissingAuthDataImpl _value,
      $Res Function(_$FailedRequestMissingAuthDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FailedRequestMissingAuthDataImpl
    implements _FailedRequestMissingAuthData {
  const _$FailedRequestMissingAuthDataImpl();

  @override
  String toString() {
    return '_FailedRequestReason.missingAuthData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedRequestMissingAuthDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() missingService,
    required TResult Function() missingAuthData,
    required TResult Function() serviceInactive,
  }) {
    return missingAuthData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? missingService,
    TResult? Function()? missingAuthData,
    TResult? Function()? serviceInactive,
  }) {
    return missingAuthData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? missingService,
    TResult Function()? missingAuthData,
    TResult Function()? serviceInactive,
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
    required TResult Function(_FailedRequestServiceInactive value)
        serviceInactive,
  }) {
    return missingAuthData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FailedRequestMissingService value)? missingService,
    TResult? Function(_FailedRequestMissingAuthData value)? missingAuthData,
    TResult? Function(_FailedRequestServiceInactive value)? serviceInactive,
  }) {
    return missingAuthData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FailedRequestMissingService value)? missingService,
    TResult Function(_FailedRequestMissingAuthData value)? missingAuthData,
    TResult Function(_FailedRequestServiceInactive value)? serviceInactive,
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
      _$FailedRequestMissingAuthDataImpl;
}

/// @nodoc
abstract class _$$FailedRequestServiceInactiveImplCopyWith<$Res> {
  factory _$$FailedRequestServiceInactiveImplCopyWith(
          _$FailedRequestServiceInactiveImpl value,
          $Res Function(_$FailedRequestServiceInactiveImpl) then) =
      __$$FailedRequestServiceInactiveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedRequestServiceInactiveImplCopyWithImpl<$Res>
    extends __$FailedRequestReasonCopyWithImpl<$Res,
        _$FailedRequestServiceInactiveImpl>
    implements _$$FailedRequestServiceInactiveImplCopyWith<$Res> {
  __$$FailedRequestServiceInactiveImplCopyWithImpl(
      _$FailedRequestServiceInactiveImpl _value,
      $Res Function(_$FailedRequestServiceInactiveImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FailedRequestServiceInactiveImpl
    implements _FailedRequestServiceInactive {
  const _$FailedRequestServiceInactiveImpl();

  @override
  String toString() {
    return '_FailedRequestReason.serviceInactive()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedRequestServiceInactiveImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() missingService,
    required TResult Function() missingAuthData,
    required TResult Function() serviceInactive,
  }) {
    return serviceInactive();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? missingService,
    TResult? Function()? missingAuthData,
    TResult? Function()? serviceInactive,
  }) {
    return serviceInactive?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? missingService,
    TResult Function()? missingAuthData,
    TResult Function()? serviceInactive,
    required TResult orElse(),
  }) {
    if (serviceInactive != null) {
      return serviceInactive();
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
    required TResult Function(_FailedRequestServiceInactive value)
        serviceInactive,
  }) {
    return serviceInactive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FailedRequestMissingService value)? missingService,
    TResult? Function(_FailedRequestMissingAuthData value)? missingAuthData,
    TResult? Function(_FailedRequestServiceInactive value)? serviceInactive,
  }) {
    return serviceInactive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FailedRequestMissingService value)? missingService,
    TResult Function(_FailedRequestMissingAuthData value)? missingAuthData,
    TResult Function(_FailedRequestServiceInactive value)? serviceInactive,
    required TResult orElse(),
  }) {
    if (serviceInactive != null) {
      return serviceInactive(this);
    }
    return orElse();
  }
}

abstract class _FailedRequestServiceInactive implements _FailedRequestReason {
  const factory _FailedRequestServiceInactive() =
      _$FailedRequestServiceInactiveImpl;
}
