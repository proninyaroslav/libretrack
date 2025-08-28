// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parcel_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParcelInfo {
  TrackNumberInfo get trackInfo => throw _privateConstructorUsedError;
  ShipmentStatusType get currentStatus => throw _privateConstructorUsedError;
  List<TrackNumberService> get trackServices =>
      throw _privateConstructorUsedError;
  TrackingInfo? get lastTrackingInfo => throw _privateConstructorUsedError;
  ShipmentActivityInfo? get lastActivity => throw _privateConstructorUsedError;
  List<TrackingResponseInfo>? get lastTrackingResponse =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParcelInfoCopyWith<ParcelInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelInfoCopyWith<$Res> {
  factory $ParcelInfoCopyWith(
          ParcelInfo value, $Res Function(ParcelInfo) then) =
      _$ParcelInfoCopyWithImpl<$Res, ParcelInfo>;
  @useResult
  $Res call(
      {TrackNumberInfo trackInfo,
      ShipmentStatusType currentStatus,
      List<TrackNumberService> trackServices,
      TrackingInfo? lastTrackingInfo,
      ShipmentActivityInfo? lastActivity,
      List<TrackingResponseInfo>? lastTrackingResponse});
}

/// @nodoc
class _$ParcelInfoCopyWithImpl<$Res, $Val extends ParcelInfo>
    implements $ParcelInfoCopyWith<$Res> {
  _$ParcelInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackInfo = null,
    Object? currentStatus = null,
    Object? trackServices = null,
    Object? lastTrackingInfo = freezed,
    Object? lastActivity = freezed,
    Object? lastTrackingResponse = freezed,
  }) {
    return _then(_value.copyWith(
      trackInfo: null == trackInfo
          ? _value.trackInfo
          : trackInfo // ignore: cast_nullable_to_non_nullable
              as TrackNumberInfo,
      currentStatus: null == currentStatus
          ? _value.currentStatus
          : currentStatus // ignore: cast_nullable_to_non_nullable
              as ShipmentStatusType,
      trackServices: null == trackServices
          ? _value.trackServices
          : trackServices // ignore: cast_nullable_to_non_nullable
              as List<TrackNumberService>,
      lastTrackingInfo: freezed == lastTrackingInfo
          ? _value.lastTrackingInfo
          : lastTrackingInfo // ignore: cast_nullable_to_non_nullable
              as TrackingInfo?,
      lastActivity: freezed == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as ShipmentActivityInfo?,
      lastTrackingResponse: freezed == lastTrackingResponse
          ? _value.lastTrackingResponse
          : lastTrackingResponse // ignore: cast_nullable_to_non_nullable
              as List<TrackingResponseInfo>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParcelInfoImplCopyWith<$Res>
    implements $ParcelInfoCopyWith<$Res> {
  factory _$$ParcelInfoImplCopyWith(
          _$ParcelInfoImpl value, $Res Function(_$ParcelInfoImpl) then) =
      __$$ParcelInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TrackNumberInfo trackInfo,
      ShipmentStatusType currentStatus,
      List<TrackNumberService> trackServices,
      TrackingInfo? lastTrackingInfo,
      ShipmentActivityInfo? lastActivity,
      List<TrackingResponseInfo>? lastTrackingResponse});
}

/// @nodoc
class __$$ParcelInfoImplCopyWithImpl<$Res>
    extends _$ParcelInfoCopyWithImpl<$Res, _$ParcelInfoImpl>
    implements _$$ParcelInfoImplCopyWith<$Res> {
  __$$ParcelInfoImplCopyWithImpl(
      _$ParcelInfoImpl _value, $Res Function(_$ParcelInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackInfo = null,
    Object? currentStatus = null,
    Object? trackServices = null,
    Object? lastTrackingInfo = freezed,
    Object? lastActivity = freezed,
    Object? lastTrackingResponse = freezed,
  }) {
    return _then(_$ParcelInfoImpl(
      trackInfo: null == trackInfo
          ? _value.trackInfo
          : trackInfo // ignore: cast_nullable_to_non_nullable
              as TrackNumberInfo,
      currentStatus: null == currentStatus
          ? _value.currentStatus
          : currentStatus // ignore: cast_nullable_to_non_nullable
              as ShipmentStatusType,
      trackServices: null == trackServices
          ? _value._trackServices
          : trackServices // ignore: cast_nullable_to_non_nullable
              as List<TrackNumberService>,
      lastTrackingInfo: freezed == lastTrackingInfo
          ? _value.lastTrackingInfo
          : lastTrackingInfo // ignore: cast_nullable_to_non_nullable
              as TrackingInfo?,
      lastActivity: freezed == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as ShipmentActivityInfo?,
      lastTrackingResponse: freezed == lastTrackingResponse
          ? _value._lastTrackingResponse
          : lastTrackingResponse // ignore: cast_nullable_to_non_nullable
              as List<TrackingResponseInfo>?,
    ));
  }
}

/// @nodoc

class _$ParcelInfoImpl implements _ParcelInfo {
  const _$ParcelInfoImpl(
      {required this.trackInfo,
      required this.currentStatus,
      final List<TrackNumberService> trackServices = const [],
      this.lastTrackingInfo,
      this.lastActivity,
      final List<TrackingResponseInfo>? lastTrackingResponse})
      : _trackServices = trackServices,
        _lastTrackingResponse = lastTrackingResponse;

  @override
  final TrackNumberInfo trackInfo;
  @override
  final ShipmentStatusType currentStatus;
  final List<TrackNumberService> _trackServices;
  @override
  @JsonKey()
  List<TrackNumberService> get trackServices {
    if (_trackServices is EqualUnmodifiableListView) return _trackServices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trackServices);
  }

  @override
  final TrackingInfo? lastTrackingInfo;
  @override
  final ShipmentActivityInfo? lastActivity;
  final List<TrackingResponseInfo>? _lastTrackingResponse;
  @override
  List<TrackingResponseInfo>? get lastTrackingResponse {
    final value = _lastTrackingResponse;
    if (value == null) return null;
    if (_lastTrackingResponse is EqualUnmodifiableListView)
      return _lastTrackingResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ParcelInfo(trackInfo: $trackInfo, currentStatus: $currentStatus, trackServices: $trackServices, lastTrackingInfo: $lastTrackingInfo, lastActivity: $lastActivity, lastTrackingResponse: $lastTrackingResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelInfoImpl &&
            (identical(other.trackInfo, trackInfo) ||
                other.trackInfo == trackInfo) &&
            (identical(other.currentStatus, currentStatus) ||
                other.currentStatus == currentStatus) &&
            const DeepCollectionEquality()
                .equals(other._trackServices, _trackServices) &&
            (identical(other.lastTrackingInfo, lastTrackingInfo) ||
                other.lastTrackingInfo == lastTrackingInfo) &&
            (identical(other.lastActivity, lastActivity) ||
                other.lastActivity == lastActivity) &&
            const DeepCollectionEquality()
                .equals(other._lastTrackingResponse, _lastTrackingResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      trackInfo,
      currentStatus,
      const DeepCollectionEquality().hash(_trackServices),
      lastTrackingInfo,
      lastActivity,
      const DeepCollectionEquality().hash(_lastTrackingResponse));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParcelInfoImplCopyWith<_$ParcelInfoImpl> get copyWith =>
      __$$ParcelInfoImplCopyWithImpl<_$ParcelInfoImpl>(this, _$identity);
}

abstract class _ParcelInfo implements ParcelInfo {
  const factory _ParcelInfo(
          {required final TrackNumberInfo trackInfo,
          required final ShipmentStatusType currentStatus,
          final List<TrackNumberService> trackServices,
          final TrackingInfo? lastTrackingInfo,
          final ShipmentActivityInfo? lastActivity,
          final List<TrackingResponseInfo>? lastTrackingResponse}) =
      _$ParcelInfoImpl;

  @override
  TrackNumberInfo get trackInfo;
  @override
  ShipmentStatusType get currentStatus;
  @override
  List<TrackNumberService> get trackServices;
  @override
  TrackingInfo? get lastTrackingInfo;
  @override
  ShipmentActivityInfo? get lastActivity;
  @override
  List<TrackingResponseInfo>? get lastTrackingResponse;
  @override
  @JsonKey(ignore: true)
  _$$ParcelInfoImplCopyWith<_$ParcelInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
