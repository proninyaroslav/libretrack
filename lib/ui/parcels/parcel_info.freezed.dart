// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'parcel_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ParcelInfoTearOff {
  const _$ParcelInfoTearOff();

  _ParcelInfo call(
      {required TrackNumberInfo trackInfo,
      List<TrackNumberService> trackServices = const [],
      TrackingInfo? lastTrackingInfo,
      ShipmentActivityInfo? lastActivity,
      List<TrackingResponseInfo>? lastTrackingResponse}) {
    return _ParcelInfo(
      trackInfo: trackInfo,
      trackServices: trackServices,
      lastTrackingInfo: lastTrackingInfo,
      lastActivity: lastActivity,
      lastTrackingResponse: lastTrackingResponse,
    );
  }
}

/// @nodoc
const $ParcelInfo = _$ParcelInfoTearOff();

/// @nodoc
mixin _$ParcelInfo {
  TrackNumberInfo get trackInfo => throw _privateConstructorUsedError;
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
      _$ParcelInfoCopyWithImpl<$Res>;
  $Res call(
      {TrackNumberInfo trackInfo,
      List<TrackNumberService> trackServices,
      TrackingInfo? lastTrackingInfo,
      ShipmentActivityInfo? lastActivity,
      List<TrackingResponseInfo>? lastTrackingResponse});
}

/// @nodoc
class _$ParcelInfoCopyWithImpl<$Res> implements $ParcelInfoCopyWith<$Res> {
  _$ParcelInfoCopyWithImpl(this._value, this._then);

  final ParcelInfo _value;
  // ignore: unused_field
  final $Res Function(ParcelInfo) _then;

  @override
  $Res call({
    Object? trackInfo = freezed,
    Object? trackServices = freezed,
    Object? lastTrackingInfo = freezed,
    Object? lastActivity = freezed,
    Object? lastTrackingResponse = freezed,
  }) {
    return _then(_value.copyWith(
      trackInfo: trackInfo == freezed
          ? _value.trackInfo
          : trackInfo // ignore: cast_nullable_to_non_nullable
              as TrackNumberInfo,
      trackServices: trackServices == freezed
          ? _value.trackServices
          : trackServices // ignore: cast_nullable_to_non_nullable
              as List<TrackNumberService>,
      lastTrackingInfo: lastTrackingInfo == freezed
          ? _value.lastTrackingInfo
          : lastTrackingInfo // ignore: cast_nullable_to_non_nullable
              as TrackingInfo?,
      lastActivity: lastActivity == freezed
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as ShipmentActivityInfo?,
      lastTrackingResponse: lastTrackingResponse == freezed
          ? _value.lastTrackingResponse
          : lastTrackingResponse // ignore: cast_nullable_to_non_nullable
              as List<TrackingResponseInfo>?,
    ));
  }
}

/// @nodoc
abstract class _$ParcelInfoCopyWith<$Res> implements $ParcelInfoCopyWith<$Res> {
  factory _$ParcelInfoCopyWith(
          _ParcelInfo value, $Res Function(_ParcelInfo) then) =
      __$ParcelInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {TrackNumberInfo trackInfo,
      List<TrackNumberService> trackServices,
      TrackingInfo? lastTrackingInfo,
      ShipmentActivityInfo? lastActivity,
      List<TrackingResponseInfo>? lastTrackingResponse});
}

/// @nodoc
class __$ParcelInfoCopyWithImpl<$Res> extends _$ParcelInfoCopyWithImpl<$Res>
    implements _$ParcelInfoCopyWith<$Res> {
  __$ParcelInfoCopyWithImpl(
      _ParcelInfo _value, $Res Function(_ParcelInfo) _then)
      : super(_value, (v) => _then(v as _ParcelInfo));

  @override
  _ParcelInfo get _value => super._value as _ParcelInfo;

  @override
  $Res call({
    Object? trackInfo = freezed,
    Object? trackServices = freezed,
    Object? lastTrackingInfo = freezed,
    Object? lastActivity = freezed,
    Object? lastTrackingResponse = freezed,
  }) {
    return _then(_ParcelInfo(
      trackInfo: trackInfo == freezed
          ? _value.trackInfo
          : trackInfo // ignore: cast_nullable_to_non_nullable
              as TrackNumberInfo,
      trackServices: trackServices == freezed
          ? _value.trackServices
          : trackServices // ignore: cast_nullable_to_non_nullable
              as List<TrackNumberService>,
      lastTrackingInfo: lastTrackingInfo == freezed
          ? _value.lastTrackingInfo
          : lastTrackingInfo // ignore: cast_nullable_to_non_nullable
              as TrackingInfo?,
      lastActivity: lastActivity == freezed
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as ShipmentActivityInfo?,
      lastTrackingResponse: lastTrackingResponse == freezed
          ? _value.lastTrackingResponse
          : lastTrackingResponse // ignore: cast_nullable_to_non_nullable
              as List<TrackingResponseInfo>?,
    ));
  }
}

/// @nodoc

class _$_ParcelInfo with DiagnosticableTreeMixin implements _ParcelInfo {
  const _$_ParcelInfo(
      {required this.trackInfo,
      this.trackServices = const [],
      this.lastTrackingInfo,
      this.lastActivity,
      this.lastTrackingResponse});

  @override
  final TrackNumberInfo trackInfo;
  @JsonKey(defaultValue: const [])
  @override
  final List<TrackNumberService> trackServices;
  @override
  final TrackingInfo? lastTrackingInfo;
  @override
  final ShipmentActivityInfo? lastActivity;
  @override
  final List<TrackingResponseInfo>? lastTrackingResponse;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParcelInfo(trackInfo: $trackInfo, trackServices: $trackServices, lastTrackingInfo: $lastTrackingInfo, lastActivity: $lastActivity, lastTrackingResponse: $lastTrackingResponse)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParcelInfo'))
      ..add(DiagnosticsProperty('trackInfo', trackInfo))
      ..add(DiagnosticsProperty('trackServices', trackServices))
      ..add(DiagnosticsProperty('lastTrackingInfo', lastTrackingInfo))
      ..add(DiagnosticsProperty('lastActivity', lastActivity))
      ..add(DiagnosticsProperty('lastTrackingResponse', lastTrackingResponse));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ParcelInfo &&
            (identical(other.trackInfo, trackInfo) ||
                const DeepCollectionEquality()
                    .equals(other.trackInfo, trackInfo)) &&
            (identical(other.trackServices, trackServices) ||
                const DeepCollectionEquality()
                    .equals(other.trackServices, trackServices)) &&
            (identical(other.lastTrackingInfo, lastTrackingInfo) ||
                const DeepCollectionEquality()
                    .equals(other.lastTrackingInfo, lastTrackingInfo)) &&
            (identical(other.lastActivity, lastActivity) ||
                const DeepCollectionEquality()
                    .equals(other.lastActivity, lastActivity)) &&
            (identical(other.lastTrackingResponse, lastTrackingResponse) ||
                const DeepCollectionEquality()
                    .equals(other.lastTrackingResponse, lastTrackingResponse)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(trackInfo) ^
      const DeepCollectionEquality().hash(trackServices) ^
      const DeepCollectionEquality().hash(lastTrackingInfo) ^
      const DeepCollectionEquality().hash(lastActivity) ^
      const DeepCollectionEquality().hash(lastTrackingResponse);

  @JsonKey(ignore: true)
  @override
  _$ParcelInfoCopyWith<_ParcelInfo> get copyWith =>
      __$ParcelInfoCopyWithImpl<_ParcelInfo>(this, _$identity);
}

abstract class _ParcelInfo implements ParcelInfo {
  const factory _ParcelInfo(
      {required TrackNumberInfo trackInfo,
      List<TrackNumberService> trackServices,
      TrackingInfo? lastTrackingInfo,
      ShipmentActivityInfo? lastActivity,
      List<TrackingResponseInfo>? lastTrackingResponse}) = _$_ParcelInfo;

  @override
  TrackNumberInfo get trackInfo => throw _privateConstructorUsedError;
  @override
  List<TrackNumberService> get trackServices =>
      throw _privateConstructorUsedError;
  @override
  TrackingInfo? get lastTrackingInfo => throw _privateConstructorUsedError;
  @override
  ShipmentActivityInfo? get lastActivity => throw _privateConstructorUsedError;
  @override
  List<TrackingResponseInfo>? get lastTrackingResponse =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ParcelInfoCopyWith<_ParcelInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
