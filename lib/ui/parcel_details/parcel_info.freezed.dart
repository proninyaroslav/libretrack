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
      List<ShipmentInfoEntry> shipmentInfoList = const [],
      List<ShipmentActivityInfo> activities = const [],
      List<TrackingHistoryEntry> trackingHistory = const []}) {
    return _ParcelInfo(
      trackInfo: trackInfo,
      trackServices: trackServices,
      shipmentInfoList: shipmentInfoList,
      activities: activities,
      trackingHistory: trackingHistory,
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
      _$ParcelInfoCopyWithImpl<$Res>;
  $Res call(
      {TrackNumberInfo trackInfo,
      List<TrackNumberService> trackServices,
      List<ShipmentInfoEntry> shipmentInfoList,
      List<ShipmentActivityInfo> activities,
      List<TrackingHistoryEntry> trackingHistory});
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
    Object? shipmentInfoList = freezed,
    Object? activities = freezed,
    Object? trackingHistory = freezed,
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
      shipmentInfoList: shipmentInfoList == freezed
          ? _value.shipmentInfoList
          : shipmentInfoList // ignore: cast_nullable_to_non_nullable
              as List<ShipmentInfoEntry>,
      activities: activities == freezed
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<ShipmentActivityInfo>,
      trackingHistory: trackingHistory == freezed
          ? _value.trackingHistory
          : trackingHistory // ignore: cast_nullable_to_non_nullable
              as List<TrackingHistoryEntry>,
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
      List<ShipmentInfoEntry> shipmentInfoList,
      List<ShipmentActivityInfo> activities,
      List<TrackingHistoryEntry> trackingHistory});
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
    Object? shipmentInfoList = freezed,
    Object? activities = freezed,
    Object? trackingHistory = freezed,
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
      shipmentInfoList: shipmentInfoList == freezed
          ? _value.shipmentInfoList
          : shipmentInfoList // ignore: cast_nullable_to_non_nullable
              as List<ShipmentInfoEntry>,
      activities: activities == freezed
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<ShipmentActivityInfo>,
      trackingHistory: trackingHistory == freezed
          ? _value.trackingHistory
          : trackingHistory // ignore: cast_nullable_to_non_nullable
              as List<TrackingHistoryEntry>,
    ));
  }
}

/// @nodoc

class _$_ParcelInfo with DiagnosticableTreeMixin implements _ParcelInfo {
  const _$_ParcelInfo(
      {required this.trackInfo,
      this.trackServices = const [],
      this.shipmentInfoList = const [],
      this.activities = const [],
      this.trackingHistory = const []});

  @override
  final TrackNumberInfo trackInfo;
  @JsonKey(defaultValue: const [])
  @override
  final List<TrackNumberService> trackServices;
  @JsonKey(defaultValue: const [])
  @override
  final List<ShipmentInfoEntry> shipmentInfoList;
  @JsonKey(defaultValue: const [])
  @override
  final List<ShipmentActivityInfo> activities;
  @JsonKey(defaultValue: const [])
  @override
  final List<TrackingHistoryEntry> trackingHistory;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParcelInfo(trackInfo: $trackInfo, trackServices: $trackServices, shipmentInfoList: $shipmentInfoList, activities: $activities, trackingHistory: $trackingHistory)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParcelInfo'))
      ..add(DiagnosticsProperty('trackInfo', trackInfo))
      ..add(DiagnosticsProperty('trackServices', trackServices))
      ..add(DiagnosticsProperty('shipmentInfoList', shipmentInfoList))
      ..add(DiagnosticsProperty('activities', activities))
      ..add(DiagnosticsProperty('trackingHistory', trackingHistory));
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
            (identical(other.shipmentInfoList, shipmentInfoList) ||
                const DeepCollectionEquality()
                    .equals(other.shipmentInfoList, shipmentInfoList)) &&
            (identical(other.activities, activities) ||
                const DeepCollectionEquality()
                    .equals(other.activities, activities)) &&
            (identical(other.trackingHistory, trackingHistory) ||
                const DeepCollectionEquality()
                    .equals(other.trackingHistory, trackingHistory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(trackInfo) ^
      const DeepCollectionEquality().hash(trackServices) ^
      const DeepCollectionEquality().hash(shipmentInfoList) ^
      const DeepCollectionEquality().hash(activities) ^
      const DeepCollectionEquality().hash(trackingHistory);

  @JsonKey(ignore: true)
  @override
  _$ParcelInfoCopyWith<_ParcelInfo> get copyWith =>
      __$ParcelInfoCopyWithImpl<_ParcelInfo>(this, _$identity);
}

abstract class _ParcelInfo implements ParcelInfo {
  const factory _ParcelInfo(
      {required TrackNumberInfo trackInfo,
      List<TrackNumberService> trackServices,
      List<ShipmentInfoEntry> shipmentInfoList,
      List<ShipmentActivityInfo> activities,
      List<TrackingHistoryEntry> trackingHistory}) = _$_ParcelInfo;

  @override
  TrackNumberInfo get trackInfo => throw _privateConstructorUsedError;
  @override
  List<TrackNumberService> get trackServices =>
      throw _privateConstructorUsedError;
  @override
  List<ShipmentInfoEntry> get shipmentInfoList =>
      throw _privateConstructorUsedError;
  @override
  List<ShipmentActivityInfo> get activities =>
      throw _privateConstructorUsedError;
  @override
  List<TrackingHistoryEntry> get trackingHistory =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ParcelInfoCopyWith<_ParcelInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TrackingHistoryEntryTearOff {
  const _$TrackingHistoryEntryTearOff();

  _TrackingHistoryEntry call(
      {required TrackingInfo trackingInfo,
      required List<TrackingResponseInfo> responseList}) {
    return _TrackingHistoryEntry(
      trackingInfo: trackingInfo,
      responseList: responseList,
    );
  }
}

/// @nodoc
const $TrackingHistoryEntry = _$TrackingHistoryEntryTearOff();

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
      _$TrackingHistoryEntryCopyWithImpl<$Res>;
  $Res call(
      {TrackingInfo trackingInfo, List<TrackingResponseInfo> responseList});
}

/// @nodoc
class _$TrackingHistoryEntryCopyWithImpl<$Res>
    implements $TrackingHistoryEntryCopyWith<$Res> {
  _$TrackingHistoryEntryCopyWithImpl(this._value, this._then);

  final TrackingHistoryEntry _value;
  // ignore: unused_field
  final $Res Function(TrackingHistoryEntry) _then;

  @override
  $Res call({
    Object? trackingInfo = freezed,
    Object? responseList = freezed,
  }) {
    return _then(_value.copyWith(
      trackingInfo: trackingInfo == freezed
          ? _value.trackingInfo
          : trackingInfo // ignore: cast_nullable_to_non_nullable
              as TrackingInfo,
      responseList: responseList == freezed
          ? _value.responseList
          : responseList // ignore: cast_nullable_to_non_nullable
              as List<TrackingResponseInfo>,
    ));
  }
}

/// @nodoc
abstract class _$TrackingHistoryEntryCopyWith<$Res>
    implements $TrackingHistoryEntryCopyWith<$Res> {
  factory _$TrackingHistoryEntryCopyWith(_TrackingHistoryEntry value,
          $Res Function(_TrackingHistoryEntry) then) =
      __$TrackingHistoryEntryCopyWithImpl<$Res>;
  @override
  $Res call(
      {TrackingInfo trackingInfo, List<TrackingResponseInfo> responseList});
}

/// @nodoc
class __$TrackingHistoryEntryCopyWithImpl<$Res>
    extends _$TrackingHistoryEntryCopyWithImpl<$Res>
    implements _$TrackingHistoryEntryCopyWith<$Res> {
  __$TrackingHistoryEntryCopyWithImpl(
      _TrackingHistoryEntry _value, $Res Function(_TrackingHistoryEntry) _then)
      : super(_value, (v) => _then(v as _TrackingHistoryEntry));

  @override
  _TrackingHistoryEntry get _value => super._value as _TrackingHistoryEntry;

  @override
  $Res call({
    Object? trackingInfo = freezed,
    Object? responseList = freezed,
  }) {
    return _then(_TrackingHistoryEntry(
      trackingInfo: trackingInfo == freezed
          ? _value.trackingInfo
          : trackingInfo // ignore: cast_nullable_to_non_nullable
              as TrackingInfo,
      responseList: responseList == freezed
          ? _value.responseList
          : responseList // ignore: cast_nullable_to_non_nullable
              as List<TrackingResponseInfo>,
    ));
  }
}

/// @nodoc

class _$_TrackingHistoryEntry
    with DiagnosticableTreeMixin
    implements _TrackingHistoryEntry {
  const _$_TrackingHistoryEntry(
      {required this.trackingInfo, required this.responseList});

  @override
  final TrackingInfo trackingInfo;
  @override
  final List<TrackingResponseInfo> responseList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackingHistoryEntry(trackingInfo: $trackingInfo, responseList: $responseList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrackingHistoryEntry'))
      ..add(DiagnosticsProperty('trackingInfo', trackingInfo))
      ..add(DiagnosticsProperty('responseList', responseList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TrackingHistoryEntry &&
            (identical(other.trackingInfo, trackingInfo) ||
                const DeepCollectionEquality()
                    .equals(other.trackingInfo, trackingInfo)) &&
            (identical(other.responseList, responseList) ||
                const DeepCollectionEquality()
                    .equals(other.responseList, responseList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(trackingInfo) ^
      const DeepCollectionEquality().hash(responseList);

  @JsonKey(ignore: true)
  @override
  _$TrackingHistoryEntryCopyWith<_TrackingHistoryEntry> get copyWith =>
      __$TrackingHistoryEntryCopyWithImpl<_TrackingHistoryEntry>(
          this, _$identity);
}

abstract class _TrackingHistoryEntry implements TrackingHistoryEntry {
  const factory _TrackingHistoryEntry(
          {required TrackingInfo trackingInfo,
          required List<TrackingResponseInfo> responseList}) =
      _$_TrackingHistoryEntry;

  @override
  TrackingInfo get trackingInfo => throw _privateConstructorUsedError;
  @override
  List<TrackingResponseInfo> get responseList =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TrackingHistoryEntryCopyWith<_TrackingHistoryEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ShipmentInfoEntryTearOff {
  const _$ShipmentInfoEntryTearOff();

  _ShipmentInfoEntry call(
      {required ShipmentInfo shipmentInfo,
      List<AlternateTrackNumber> alternateTrackNumbers = const []}) {
    return _ShipmentInfoEntry(
      shipmentInfo: shipmentInfo,
      alternateTrackNumbers: alternateTrackNumbers,
    );
  }
}

/// @nodoc
const $ShipmentInfoEntry = _$ShipmentInfoEntryTearOff();

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
      _$ShipmentInfoEntryCopyWithImpl<$Res>;
  $Res call(
      {ShipmentInfo shipmentInfo,
      List<AlternateTrackNumber> alternateTrackNumbers});
}

/// @nodoc
class _$ShipmentInfoEntryCopyWithImpl<$Res>
    implements $ShipmentInfoEntryCopyWith<$Res> {
  _$ShipmentInfoEntryCopyWithImpl(this._value, this._then);

  final ShipmentInfoEntry _value;
  // ignore: unused_field
  final $Res Function(ShipmentInfoEntry) _then;

  @override
  $Res call({
    Object? shipmentInfo = freezed,
    Object? alternateTrackNumbers = freezed,
  }) {
    return _then(_value.copyWith(
      shipmentInfo: shipmentInfo == freezed
          ? _value.shipmentInfo
          : shipmentInfo // ignore: cast_nullable_to_non_nullable
              as ShipmentInfo,
      alternateTrackNumbers: alternateTrackNumbers == freezed
          ? _value.alternateTrackNumbers
          : alternateTrackNumbers // ignore: cast_nullable_to_non_nullable
              as List<AlternateTrackNumber>,
    ));
  }
}

/// @nodoc
abstract class _$ShipmentInfoEntryCopyWith<$Res>
    implements $ShipmentInfoEntryCopyWith<$Res> {
  factory _$ShipmentInfoEntryCopyWith(
          _ShipmentInfoEntry value, $Res Function(_ShipmentInfoEntry) then) =
      __$ShipmentInfoEntryCopyWithImpl<$Res>;
  @override
  $Res call(
      {ShipmentInfo shipmentInfo,
      List<AlternateTrackNumber> alternateTrackNumbers});
}

/// @nodoc
class __$ShipmentInfoEntryCopyWithImpl<$Res>
    extends _$ShipmentInfoEntryCopyWithImpl<$Res>
    implements _$ShipmentInfoEntryCopyWith<$Res> {
  __$ShipmentInfoEntryCopyWithImpl(
      _ShipmentInfoEntry _value, $Res Function(_ShipmentInfoEntry) _then)
      : super(_value, (v) => _then(v as _ShipmentInfoEntry));

  @override
  _ShipmentInfoEntry get _value => super._value as _ShipmentInfoEntry;

  @override
  $Res call({
    Object? shipmentInfo = freezed,
    Object? alternateTrackNumbers = freezed,
  }) {
    return _then(_ShipmentInfoEntry(
      shipmentInfo: shipmentInfo == freezed
          ? _value.shipmentInfo
          : shipmentInfo // ignore: cast_nullable_to_non_nullable
              as ShipmentInfo,
      alternateTrackNumbers: alternateTrackNumbers == freezed
          ? _value.alternateTrackNumbers
          : alternateTrackNumbers // ignore: cast_nullable_to_non_nullable
              as List<AlternateTrackNumber>,
    ));
  }
}

/// @nodoc

class _$_ShipmentInfoEntry
    with DiagnosticableTreeMixin
    implements _ShipmentInfoEntry {
  const _$_ShipmentInfoEntry(
      {required this.shipmentInfo, this.alternateTrackNumbers = const []});

  @override
  final ShipmentInfo shipmentInfo;
  @JsonKey(defaultValue: const [])
  @override
  final List<AlternateTrackNumber> alternateTrackNumbers;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShipmentInfoEntry(shipmentInfo: $shipmentInfo, alternateTrackNumbers: $alternateTrackNumbers)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShipmentInfoEntry'))
      ..add(DiagnosticsProperty('shipmentInfo', shipmentInfo))
      ..add(
          DiagnosticsProperty('alternateTrackNumbers', alternateTrackNumbers));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShipmentInfoEntry &&
            (identical(other.shipmentInfo, shipmentInfo) ||
                const DeepCollectionEquality()
                    .equals(other.shipmentInfo, shipmentInfo)) &&
            (identical(other.alternateTrackNumbers, alternateTrackNumbers) ||
                const DeepCollectionEquality().equals(
                    other.alternateTrackNumbers, alternateTrackNumbers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(shipmentInfo) ^
      const DeepCollectionEquality().hash(alternateTrackNumbers);

  @JsonKey(ignore: true)
  @override
  _$ShipmentInfoEntryCopyWith<_ShipmentInfoEntry> get copyWith =>
      __$ShipmentInfoEntryCopyWithImpl<_ShipmentInfoEntry>(this, _$identity);
}

abstract class _ShipmentInfoEntry implements ShipmentInfoEntry {
  const factory _ShipmentInfoEntry(
      {required ShipmentInfo shipmentInfo,
      List<AlternateTrackNumber> alternateTrackNumbers}) = _$_ShipmentInfoEntry;

  @override
  ShipmentInfo get shipmentInfo => throw _privateConstructorUsedError;
  @override
  List<AlternateTrackNumber> get alternateTrackNumbers =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShipmentInfoEntryCopyWith<_ShipmentInfoEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
