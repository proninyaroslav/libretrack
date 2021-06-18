// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'notification_manager.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationAction _$NotificationActionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'openParcelDetails':
      return NotificationActionOpenParcelDetails.fromJson(json);
    case 'reportCrash':
      return NotificationActionReportCrash.fromJson(json);
    case 'openParcelsList':
      return NotificationActionOpenParcelsList.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$NotificationActionTearOff {
  const _$NotificationActionTearOff();

  NotificationActionOpenParcelDetails openParcelDetails(
      {required String trackNumber}) {
    return NotificationActionOpenParcelDetails(
      trackNumber: trackNumber,
    );
  }

  NotificationActionReportCrash reportCrash(
      {@CrashReportIdConverter() required CrashReportId reportId}) {
    return NotificationActionReportCrash(
      reportId: reportId,
    );
  }

  NotificationActionOpenParcelsList openParcelsList() {
    return const NotificationActionOpenParcelsList();
  }

  NotificationAction fromJson(Map<String, Object> json) {
    return NotificationAction.fromJson(json);
  }
}

/// @nodoc
const $NotificationAction = _$NotificationActionTearOff();

/// @nodoc
mixin _$NotificationAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String trackNumber) openParcelDetails,
    required TResult Function(@CrashReportIdConverter() CrashReportId reportId)
        reportCrash,
    required TResult Function() openParcelsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String trackNumber)? openParcelDetails,
    TResult Function(@CrashReportIdConverter() CrashReportId reportId)?
        reportCrash,
    TResult Function()? openParcelsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationActionOpenParcelDetails value)
        openParcelDetails,
    required TResult Function(NotificationActionReportCrash value) reportCrash,
    required TResult Function(NotificationActionOpenParcelsList value)
        openParcelsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationActionOpenParcelDetails value)?
        openParcelDetails,
    TResult Function(NotificationActionReportCrash value)? reportCrash,
    TResult Function(NotificationActionOpenParcelsList value)? openParcelsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationActionCopyWith<$Res> {
  factory $NotificationActionCopyWith(
          NotificationAction value, $Res Function(NotificationAction) then) =
      _$NotificationActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationActionCopyWithImpl<$Res>
    implements $NotificationActionCopyWith<$Res> {
  _$NotificationActionCopyWithImpl(this._value, this._then);

  final NotificationAction _value;
  // ignore: unused_field
  final $Res Function(NotificationAction) _then;
}

/// @nodoc
abstract class $NotificationActionOpenParcelDetailsCopyWith<$Res> {
  factory $NotificationActionOpenParcelDetailsCopyWith(
          NotificationActionOpenParcelDetails value,
          $Res Function(NotificationActionOpenParcelDetails) then) =
      _$NotificationActionOpenParcelDetailsCopyWithImpl<$Res>;
  $Res call({String trackNumber});
}

/// @nodoc
class _$NotificationActionOpenParcelDetailsCopyWithImpl<$Res>
    extends _$NotificationActionCopyWithImpl<$Res>
    implements $NotificationActionOpenParcelDetailsCopyWith<$Res> {
  _$NotificationActionOpenParcelDetailsCopyWithImpl(
      NotificationActionOpenParcelDetails _value,
      $Res Function(NotificationActionOpenParcelDetails) _then)
      : super(_value, (v) => _then(v as NotificationActionOpenParcelDetails));

  @override
  NotificationActionOpenParcelDetails get _value =>
      super._value as NotificationActionOpenParcelDetails;

  @override
  $Res call({
    Object? trackNumber = freezed,
  }) {
    return _then(NotificationActionOpenParcelDetails(
      trackNumber: trackNumber == freezed
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationActionOpenParcelDetails
    implements NotificationActionOpenParcelDetails {
  const _$NotificationActionOpenParcelDetails({required this.trackNumber});

  factory _$NotificationActionOpenParcelDetails.fromJson(
          Map<String, dynamic> json) =>
      _$_$NotificationActionOpenParcelDetailsFromJson(json);

  @override
  final String trackNumber;

  @override
  String toString() {
    return 'NotificationAction.openParcelDetails(trackNumber: $trackNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotificationActionOpenParcelDetails &&
            (identical(other.trackNumber, trackNumber) ||
                const DeepCollectionEquality()
                    .equals(other.trackNumber, trackNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(trackNumber);

  @JsonKey(ignore: true)
  @override
  $NotificationActionOpenParcelDetailsCopyWith<
          NotificationActionOpenParcelDetails>
      get copyWith => _$NotificationActionOpenParcelDetailsCopyWithImpl<
          NotificationActionOpenParcelDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String trackNumber) openParcelDetails,
    required TResult Function(@CrashReportIdConverter() CrashReportId reportId)
        reportCrash,
    required TResult Function() openParcelsList,
  }) {
    return openParcelDetails(trackNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String trackNumber)? openParcelDetails,
    TResult Function(@CrashReportIdConverter() CrashReportId reportId)?
        reportCrash,
    TResult Function()? openParcelsList,
    required TResult orElse(),
  }) {
    if (openParcelDetails != null) {
      return openParcelDetails(trackNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationActionOpenParcelDetails value)
        openParcelDetails,
    required TResult Function(NotificationActionReportCrash value) reportCrash,
    required TResult Function(NotificationActionOpenParcelsList value)
        openParcelsList,
  }) {
    return openParcelDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationActionOpenParcelDetails value)?
        openParcelDetails,
    TResult Function(NotificationActionReportCrash value)? reportCrash,
    TResult Function(NotificationActionOpenParcelsList value)? openParcelsList,
    required TResult orElse(),
  }) {
    if (openParcelDetails != null) {
      return openParcelDetails(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$NotificationActionOpenParcelDetailsToJson(this)
      ..['runtimeType'] = 'openParcelDetails';
  }
}

abstract class NotificationActionOpenParcelDetails
    implements NotificationAction {
  const factory NotificationActionOpenParcelDetails(
      {required String trackNumber}) = _$NotificationActionOpenParcelDetails;

  factory NotificationActionOpenParcelDetails.fromJson(
          Map<String, dynamic> json) =
      _$NotificationActionOpenParcelDetails.fromJson;

  String get trackNumber => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationActionOpenParcelDetailsCopyWith<
          NotificationActionOpenParcelDetails>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationActionReportCrashCopyWith<$Res> {
  factory $NotificationActionReportCrashCopyWith(
          NotificationActionReportCrash value,
          $Res Function(NotificationActionReportCrash) then) =
      _$NotificationActionReportCrashCopyWithImpl<$Res>;
  $Res call({@CrashReportIdConverter() CrashReportId reportId});
}

/// @nodoc
class _$NotificationActionReportCrashCopyWithImpl<$Res>
    extends _$NotificationActionCopyWithImpl<$Res>
    implements $NotificationActionReportCrashCopyWith<$Res> {
  _$NotificationActionReportCrashCopyWithImpl(
      NotificationActionReportCrash _value,
      $Res Function(NotificationActionReportCrash) _then)
      : super(_value, (v) => _then(v as NotificationActionReportCrash));

  @override
  NotificationActionReportCrash get _value =>
      super._value as NotificationActionReportCrash;

  @override
  $Res call({
    Object? reportId = freezed,
  }) {
    return _then(NotificationActionReportCrash(
      reportId: reportId == freezed
          ? _value.reportId
          : reportId // ignore: cast_nullable_to_non_nullable
              as CrashReportId,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationActionReportCrash implements NotificationActionReportCrash {
  const _$NotificationActionReportCrash(
      {@CrashReportIdConverter() required this.reportId});

  factory _$NotificationActionReportCrash.fromJson(Map<String, dynamic> json) =>
      _$_$NotificationActionReportCrashFromJson(json);

  @override
  @CrashReportIdConverter()
  final CrashReportId reportId;

  @override
  String toString() {
    return 'NotificationAction.reportCrash(reportId: $reportId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotificationActionReportCrash &&
            (identical(other.reportId, reportId) ||
                const DeepCollectionEquality()
                    .equals(other.reportId, reportId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reportId);

  @JsonKey(ignore: true)
  @override
  $NotificationActionReportCrashCopyWith<NotificationActionReportCrash>
      get copyWith => _$NotificationActionReportCrashCopyWithImpl<
          NotificationActionReportCrash>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String trackNumber) openParcelDetails,
    required TResult Function(@CrashReportIdConverter() CrashReportId reportId)
        reportCrash,
    required TResult Function() openParcelsList,
  }) {
    return reportCrash(reportId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String trackNumber)? openParcelDetails,
    TResult Function(@CrashReportIdConverter() CrashReportId reportId)?
        reportCrash,
    TResult Function()? openParcelsList,
    required TResult orElse(),
  }) {
    if (reportCrash != null) {
      return reportCrash(reportId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationActionOpenParcelDetails value)
        openParcelDetails,
    required TResult Function(NotificationActionReportCrash value) reportCrash,
    required TResult Function(NotificationActionOpenParcelsList value)
        openParcelsList,
  }) {
    return reportCrash(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationActionOpenParcelDetails value)?
        openParcelDetails,
    TResult Function(NotificationActionReportCrash value)? reportCrash,
    TResult Function(NotificationActionOpenParcelsList value)? openParcelsList,
    required TResult orElse(),
  }) {
    if (reportCrash != null) {
      return reportCrash(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$NotificationActionReportCrashToJson(this)
      ..['runtimeType'] = 'reportCrash';
  }
}

abstract class NotificationActionReportCrash implements NotificationAction {
  const factory NotificationActionReportCrash(
          {@CrashReportIdConverter() required CrashReportId reportId}) =
      _$NotificationActionReportCrash;

  factory NotificationActionReportCrash.fromJson(Map<String, dynamic> json) =
      _$NotificationActionReportCrash.fromJson;

  @CrashReportIdConverter()
  CrashReportId get reportId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationActionReportCrashCopyWith<NotificationActionReportCrash>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationActionOpenParcelsListCopyWith<$Res> {
  factory $NotificationActionOpenParcelsListCopyWith(
          NotificationActionOpenParcelsList value,
          $Res Function(NotificationActionOpenParcelsList) then) =
      _$NotificationActionOpenParcelsListCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationActionOpenParcelsListCopyWithImpl<$Res>
    extends _$NotificationActionCopyWithImpl<$Res>
    implements $NotificationActionOpenParcelsListCopyWith<$Res> {
  _$NotificationActionOpenParcelsListCopyWithImpl(
      NotificationActionOpenParcelsList _value,
      $Res Function(NotificationActionOpenParcelsList) _then)
      : super(_value, (v) => _then(v as NotificationActionOpenParcelsList));

  @override
  NotificationActionOpenParcelsList get _value =>
      super._value as NotificationActionOpenParcelsList;
}

/// @nodoc
@JsonSerializable()
class _$NotificationActionOpenParcelsList
    implements NotificationActionOpenParcelsList {
  const _$NotificationActionOpenParcelsList();

  factory _$NotificationActionOpenParcelsList.fromJson(
          Map<String, dynamic> json) =>
      _$_$NotificationActionOpenParcelsListFromJson(json);

  @override
  String toString() {
    return 'NotificationAction.openParcelsList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotificationActionOpenParcelsList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String trackNumber) openParcelDetails,
    required TResult Function(@CrashReportIdConverter() CrashReportId reportId)
        reportCrash,
    required TResult Function() openParcelsList,
  }) {
    return openParcelsList();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String trackNumber)? openParcelDetails,
    TResult Function(@CrashReportIdConverter() CrashReportId reportId)?
        reportCrash,
    TResult Function()? openParcelsList,
    required TResult orElse(),
  }) {
    if (openParcelsList != null) {
      return openParcelsList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationActionOpenParcelDetails value)
        openParcelDetails,
    required TResult Function(NotificationActionReportCrash value) reportCrash,
    required TResult Function(NotificationActionOpenParcelsList value)
        openParcelsList,
  }) {
    return openParcelsList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationActionOpenParcelDetails value)?
        openParcelDetails,
    TResult Function(NotificationActionReportCrash value)? reportCrash,
    TResult Function(NotificationActionOpenParcelsList value)? openParcelsList,
    required TResult orElse(),
  }) {
    if (openParcelsList != null) {
      return openParcelsList(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$NotificationActionOpenParcelsListToJson(this)
      ..['runtimeType'] = 'openParcelsList';
  }
}

abstract class NotificationActionOpenParcelsList implements NotificationAction {
  const factory NotificationActionOpenParcelsList() =
      _$NotificationActionOpenParcelsList;

  factory NotificationActionOpenParcelsList.fromJson(
      Map<String, dynamic> json) = _$NotificationActionOpenParcelsList.fromJson;
}
