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
  List<TrackNumberService> get trackServices =>
      throw _privateConstructorUsedError;
  List<ShipmentInfoEntry> get shipmentInfoList =>
      throw _privateConstructorUsedError;
  List<ShipmentActivityInfo> get activities =>
      throw _privateConstructorUsedError;
  List<TrackingHistoryEntry> get trackingHistory =>
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
      List<TrackNumberService> trackServices,
      List<ShipmentInfoEntry> shipmentInfoList,
      List<ShipmentActivityInfo> activities,
      List<TrackingHistoryEntry> trackingHistory});
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
    Object? trackServices = null,
    Object? shipmentInfoList = null,
    Object? activities = null,
    Object? trackingHistory = null,
  }) {
    return _then(_value.copyWith(
      trackInfo: null == trackInfo
          ? _value.trackInfo
          : trackInfo // ignore: cast_nullable_to_non_nullable
              as TrackNumberInfo,
      trackServices: null == trackServices
          ? _value.trackServices
          : trackServices // ignore: cast_nullable_to_non_nullable
              as List<TrackNumberService>,
      shipmentInfoList: null == shipmentInfoList
          ? _value.shipmentInfoList
          : shipmentInfoList // ignore: cast_nullable_to_non_nullable
              as List<ShipmentInfoEntry>,
      activities: null == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<ShipmentActivityInfo>,
      trackingHistory: null == trackingHistory
          ? _value.trackingHistory
          : trackingHistory // ignore: cast_nullable_to_non_nullable
              as List<TrackingHistoryEntry>,
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
      List<TrackNumberService> trackServices,
      List<ShipmentInfoEntry> shipmentInfoList,
      List<ShipmentActivityInfo> activities,
      List<TrackingHistoryEntry> trackingHistory});
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
    Object? trackServices = null,
    Object? shipmentInfoList = null,
    Object? activities = null,
    Object? trackingHistory = null,
  }) {
    return _then(_$ParcelInfoImpl(
      trackInfo: null == trackInfo
          ? _value.trackInfo
          : trackInfo // ignore: cast_nullable_to_non_nullable
              as TrackNumberInfo,
      trackServices: null == trackServices
          ? _value._trackServices
          : trackServices // ignore: cast_nullable_to_non_nullable
              as List<TrackNumberService>,
      shipmentInfoList: null == shipmentInfoList
          ? _value._shipmentInfoList
          : shipmentInfoList // ignore: cast_nullable_to_non_nullable
              as List<ShipmentInfoEntry>,
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<ShipmentActivityInfo>,
      trackingHistory: null == trackingHistory
          ? _value._trackingHistory
          : trackingHistory // ignore: cast_nullable_to_non_nullable
              as List<TrackingHistoryEntry>,
    ));
  }
}

/// @nodoc

class _$ParcelInfoImpl implements _ParcelInfo {
  const _$ParcelInfoImpl(
      {required this.trackInfo,
      final List<TrackNumberService> trackServices = const [],
      final List<ShipmentInfoEntry> shipmentInfoList = const [],
      final List<ShipmentActivityInfo> activities = const [],
      final List<TrackingHistoryEntry> trackingHistory = const []})
      : _trackServices = trackServices,
        _shipmentInfoList = shipmentInfoList,
        _activities = activities,
        _trackingHistory = trackingHistory;

  @override
  final TrackNumberInfo trackInfo;
  final List<TrackNumberService> _trackServices;
  @override
  @JsonKey()
  List<TrackNumberService> get trackServices {
    if (_trackServices is EqualUnmodifiableListView) return _trackServices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trackServices);
  }

  final List<ShipmentInfoEntry> _shipmentInfoList;
  @override
  @JsonKey()
  List<ShipmentInfoEntry> get shipmentInfoList {
    if (_shipmentInfoList is EqualUnmodifiableListView)
      return _shipmentInfoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shipmentInfoList);
  }

  final List<ShipmentActivityInfo> _activities;
  @override
  @JsonKey()
  List<ShipmentActivityInfo> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  final List<TrackingHistoryEntry> _trackingHistory;
  @override
  @JsonKey()
  List<TrackingHistoryEntry> get trackingHistory {
    if (_trackingHistory is EqualUnmodifiableListView) return _trackingHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trackingHistory);
  }

  @override
  String toString() {
    return 'ParcelInfo(trackInfo: $trackInfo, trackServices: $trackServices, shipmentInfoList: $shipmentInfoList, activities: $activities, trackingHistory: $trackingHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelInfoImpl &&
            (identical(other.trackInfo, trackInfo) ||
                other.trackInfo == trackInfo) &&
            const DeepCollectionEquality()
                .equals(other._trackServices, _trackServices) &&
            const DeepCollectionEquality()
                .equals(other._shipmentInfoList, _shipmentInfoList) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            const DeepCollectionEquality()
                .equals(other._trackingHistory, _trackingHistory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      trackInfo,
      const DeepCollectionEquality().hash(_trackServices),
      const DeepCollectionEquality().hash(_shipmentInfoList),
      const DeepCollectionEquality().hash(_activities),
      const DeepCollectionEquality().hash(_trackingHistory));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParcelInfoImplCopyWith<_$ParcelInfoImpl> get copyWith =>
      __$$ParcelInfoImplCopyWithImpl<_$ParcelInfoImpl>(this, _$identity);
}

abstract class _ParcelInfo implements ParcelInfo {
  const factory _ParcelInfo(
      {required final TrackNumberInfo trackInfo,
      final List<TrackNumberService> trackServices,
      final List<ShipmentInfoEntry> shipmentInfoList,
      final List<ShipmentActivityInfo> activities,
      final List<TrackingHistoryEntry> trackingHistory}) = _$ParcelInfoImpl;

  @override
  TrackNumberInfo get trackInfo;
  @override
  List<TrackNumberService> get trackServices;
  @override
  List<ShipmentInfoEntry> get shipmentInfoList;
  @override
  List<ShipmentActivityInfo> get activities;
  @override
  List<TrackingHistoryEntry> get trackingHistory;
  @override
  @JsonKey(ignore: true)
  _$$ParcelInfoImplCopyWith<_$ParcelInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TrackingHistoryEntry {
  TrackingInfo get trackingInfo => throw _privateConstructorUsedError;
  List<TrackingResponseInfo> get responseList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrackingHistoryEntryCopyWith<TrackingHistoryEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingHistoryEntryCopyWith<$Res> {
  factory $TrackingHistoryEntryCopyWith(TrackingHistoryEntry value,
          $Res Function(TrackingHistoryEntry) then) =
      _$TrackingHistoryEntryCopyWithImpl<$Res, TrackingHistoryEntry>;
  @useResult
  $Res call(
      {TrackingInfo trackingInfo, List<TrackingResponseInfo> responseList});
}

/// @nodoc
class _$TrackingHistoryEntryCopyWithImpl<$Res,
        $Val extends TrackingHistoryEntry>
    implements $TrackingHistoryEntryCopyWith<$Res> {
  _$TrackingHistoryEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackingInfo = null,
    Object? responseList = null,
  }) {
    return _then(_value.copyWith(
      trackingInfo: null == trackingInfo
          ? _value.trackingInfo
          : trackingInfo // ignore: cast_nullable_to_non_nullable
              as TrackingInfo,
      responseList: null == responseList
          ? _value.responseList
          : responseList // ignore: cast_nullable_to_non_nullable
              as List<TrackingResponseInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrackingHistoryEntryImplCopyWith<$Res>
    implements $TrackingHistoryEntryCopyWith<$Res> {
  factory _$$TrackingHistoryEntryImplCopyWith(_$TrackingHistoryEntryImpl value,
          $Res Function(_$TrackingHistoryEntryImpl) then) =
      __$$TrackingHistoryEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TrackingInfo trackingInfo, List<TrackingResponseInfo> responseList});
}

/// @nodoc
class __$$TrackingHistoryEntryImplCopyWithImpl<$Res>
    extends _$TrackingHistoryEntryCopyWithImpl<$Res, _$TrackingHistoryEntryImpl>
    implements _$$TrackingHistoryEntryImplCopyWith<$Res> {
  __$$TrackingHistoryEntryImplCopyWithImpl(_$TrackingHistoryEntryImpl _value,
      $Res Function(_$TrackingHistoryEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackingInfo = null,
    Object? responseList = null,
  }) {
    return _then(_$TrackingHistoryEntryImpl(
      trackingInfo: null == trackingInfo
          ? _value.trackingInfo
          : trackingInfo // ignore: cast_nullable_to_non_nullable
              as TrackingInfo,
      responseList: null == responseList
          ? _value._responseList
          : responseList // ignore: cast_nullable_to_non_nullable
              as List<TrackingResponseInfo>,
    ));
  }
}

/// @nodoc

class _$TrackingHistoryEntryImpl implements _TrackingHistoryEntry {
  const _$TrackingHistoryEntryImpl(
      {required this.trackingInfo,
      required final List<TrackingResponseInfo> responseList})
      : _responseList = responseList;

  @override
  final TrackingInfo trackingInfo;
  final List<TrackingResponseInfo> _responseList;
  @override
  List<TrackingResponseInfo> get responseList {
    if (_responseList is EqualUnmodifiableListView) return _responseList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_responseList);
  }

  @override
  String toString() {
    return 'TrackingHistoryEntry(trackingInfo: $trackingInfo, responseList: $responseList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingHistoryEntryImpl &&
            (identical(other.trackingInfo, trackingInfo) ||
                other.trackingInfo == trackingInfo) &&
            const DeepCollectionEquality()
                .equals(other._responseList, _responseList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trackingInfo,
      const DeepCollectionEquality().hash(_responseList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackingHistoryEntryImplCopyWith<_$TrackingHistoryEntryImpl>
      get copyWith =>
          __$$TrackingHistoryEntryImplCopyWithImpl<_$TrackingHistoryEntryImpl>(
              this, _$identity);
}

abstract class _TrackingHistoryEntry implements TrackingHistoryEntry {
  const factory _TrackingHistoryEntry(
          {required final TrackingInfo trackingInfo,
          required final List<TrackingResponseInfo> responseList}) =
      _$TrackingHistoryEntryImpl;

  @override
  TrackingInfo get trackingInfo;
  @override
  List<TrackingResponseInfo> get responseList;
  @override
  @JsonKey(ignore: true)
  _$$TrackingHistoryEntryImplCopyWith<_$TrackingHistoryEntryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ShipmentInfoEntry {
  ShipmentInfo get shipmentInfo => throw _privateConstructorUsedError;
  List<AlternateTrackNumber> get alternateTrackNumbers =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShipmentInfoEntryCopyWith<ShipmentInfoEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentInfoEntryCopyWith<$Res> {
  factory $ShipmentInfoEntryCopyWith(
          ShipmentInfoEntry value, $Res Function(ShipmentInfoEntry) then) =
      _$ShipmentInfoEntryCopyWithImpl<$Res, ShipmentInfoEntry>;
  @useResult
  $Res call(
      {ShipmentInfo shipmentInfo,
      List<AlternateTrackNumber> alternateTrackNumbers});
}

/// @nodoc
class _$ShipmentInfoEntryCopyWithImpl<$Res, $Val extends ShipmentInfoEntry>
    implements $ShipmentInfoEntryCopyWith<$Res> {
  _$ShipmentInfoEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shipmentInfo = null,
    Object? alternateTrackNumbers = null,
  }) {
    return _then(_value.copyWith(
      shipmentInfo: null == shipmentInfo
          ? _value.shipmentInfo
          : shipmentInfo // ignore: cast_nullable_to_non_nullable
              as ShipmentInfo,
      alternateTrackNumbers: null == alternateTrackNumbers
          ? _value.alternateTrackNumbers
          : alternateTrackNumbers // ignore: cast_nullable_to_non_nullable
              as List<AlternateTrackNumber>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShipmentInfoEntryImplCopyWith<$Res>
    implements $ShipmentInfoEntryCopyWith<$Res> {
  factory _$$ShipmentInfoEntryImplCopyWith(_$ShipmentInfoEntryImpl value,
          $Res Function(_$ShipmentInfoEntryImpl) then) =
      __$$ShipmentInfoEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ShipmentInfo shipmentInfo,
      List<AlternateTrackNumber> alternateTrackNumbers});
}

/// @nodoc
class __$$ShipmentInfoEntryImplCopyWithImpl<$Res>
    extends _$ShipmentInfoEntryCopyWithImpl<$Res, _$ShipmentInfoEntryImpl>
    implements _$$ShipmentInfoEntryImplCopyWith<$Res> {
  __$$ShipmentInfoEntryImplCopyWithImpl(_$ShipmentInfoEntryImpl _value,
      $Res Function(_$ShipmentInfoEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shipmentInfo = null,
    Object? alternateTrackNumbers = null,
  }) {
    return _then(_$ShipmentInfoEntryImpl(
      shipmentInfo: null == shipmentInfo
          ? _value.shipmentInfo
          : shipmentInfo // ignore: cast_nullable_to_non_nullable
              as ShipmentInfo,
      alternateTrackNumbers: null == alternateTrackNumbers
          ? _value._alternateTrackNumbers
          : alternateTrackNumbers // ignore: cast_nullable_to_non_nullable
              as List<AlternateTrackNumber>,
    ));
  }
}

/// @nodoc

class _$ShipmentInfoEntryImpl implements _ShipmentInfoEntry {
  const _$ShipmentInfoEntryImpl(
      {required this.shipmentInfo,
      final List<AlternateTrackNumber> alternateTrackNumbers = const []})
      : _alternateTrackNumbers = alternateTrackNumbers;

  @override
  final ShipmentInfo shipmentInfo;
  final List<AlternateTrackNumber> _alternateTrackNumbers;
  @override
  @JsonKey()
  List<AlternateTrackNumber> get alternateTrackNumbers {
    if (_alternateTrackNumbers is EqualUnmodifiableListView)
      return _alternateTrackNumbers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alternateTrackNumbers);
  }

  @override
  String toString() {
    return 'ShipmentInfoEntry(shipmentInfo: $shipmentInfo, alternateTrackNumbers: $alternateTrackNumbers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipmentInfoEntryImpl &&
            (identical(other.shipmentInfo, shipmentInfo) ||
                other.shipmentInfo == shipmentInfo) &&
            const DeepCollectionEquality()
                .equals(other._alternateTrackNumbers, _alternateTrackNumbers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shipmentInfo,
      const DeepCollectionEquality().hash(_alternateTrackNumbers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipmentInfoEntryImplCopyWith<_$ShipmentInfoEntryImpl> get copyWith =>
      __$$ShipmentInfoEntryImplCopyWithImpl<_$ShipmentInfoEntryImpl>(
          this, _$identity);
}

abstract class _ShipmentInfoEntry implements ShipmentInfoEntry {
  const factory _ShipmentInfoEntry(
          {required final ShipmentInfo shipmentInfo,
          final List<AlternateTrackNumber> alternateTrackNumbers}) =
      _$ShipmentInfoEntryImpl;

  @override
  ShipmentInfo get shipmentInfo;
  @override
  List<AlternateTrackNumber> get alternateTrackNumbers;
  @override
  @JsonKey(ignore: true)
  _$$ShipmentInfoEntryImplCopyWith<_$ShipmentInfoEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
