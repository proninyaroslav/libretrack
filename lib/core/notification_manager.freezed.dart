// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_manager.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationAction _$NotificationActionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'openParcelDetails':
      return NotificationActionOpenParcelDetails.fromJson(json);
    case 'reportCrash':
      return NotificationActionReportCrash.fromJson(json);
    case 'openParcelsList':
      return NotificationActionOpenParcelsList.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'NotificationAction',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$NotificationAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String trackNumber) openParcelDetails,
    required TResult Function(CrashInfo info) reportCrash,
    required TResult Function() openParcelsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String trackNumber)? openParcelDetails,
    TResult? Function(CrashInfo info)? reportCrash,
    TResult? Function()? openParcelsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String trackNumber)? openParcelDetails,
    TResult Function(CrashInfo info)? reportCrash,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationActionOpenParcelDetails value)?
        openParcelDetails,
    TResult? Function(NotificationActionReportCrash value)? reportCrash,
    TResult? Function(NotificationActionOpenParcelsList value)? openParcelsList,
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
      _$NotificationActionCopyWithImpl<$Res, NotificationAction>;
}

/// @nodoc
class _$NotificationActionCopyWithImpl<$Res, $Val extends NotificationAction>
    implements $NotificationActionCopyWith<$Res> {
  _$NotificationActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NotificationActionOpenParcelDetailsImplCopyWith<$Res> {
  factory _$$NotificationActionOpenParcelDetailsImplCopyWith(
          _$NotificationActionOpenParcelDetailsImpl value,
          $Res Function(_$NotificationActionOpenParcelDetailsImpl) then) =
      __$$NotificationActionOpenParcelDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String trackNumber});
}

/// @nodoc
class __$$NotificationActionOpenParcelDetailsImplCopyWithImpl<$Res>
    extends _$NotificationActionCopyWithImpl<$Res,
        _$NotificationActionOpenParcelDetailsImpl>
    implements _$$NotificationActionOpenParcelDetailsImplCopyWith<$Res> {
  __$$NotificationActionOpenParcelDetailsImplCopyWithImpl(
      _$NotificationActionOpenParcelDetailsImpl _value,
      $Res Function(_$NotificationActionOpenParcelDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackNumber = null,
  }) {
    return _then(_$NotificationActionOpenParcelDetailsImpl(
      trackNumber: null == trackNumber
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationActionOpenParcelDetailsImpl
    implements NotificationActionOpenParcelDetails {
  const _$NotificationActionOpenParcelDetailsImpl(
      {required this.trackNumber, final String? $type})
      : $type = $type ?? 'openParcelDetails';

  factory _$NotificationActionOpenParcelDetailsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$NotificationActionOpenParcelDetailsImplFromJson(json);

  @override
  final String trackNumber;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NotificationAction.openParcelDetails(trackNumber: $trackNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationActionOpenParcelDetailsImpl &&
            (identical(other.trackNumber, trackNumber) ||
                other.trackNumber == trackNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, trackNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationActionOpenParcelDetailsImplCopyWith<
          _$NotificationActionOpenParcelDetailsImpl>
      get copyWith => __$$NotificationActionOpenParcelDetailsImplCopyWithImpl<
          _$NotificationActionOpenParcelDetailsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String trackNumber) openParcelDetails,
    required TResult Function(CrashInfo info) reportCrash,
    required TResult Function() openParcelsList,
  }) {
    return openParcelDetails(trackNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String trackNumber)? openParcelDetails,
    TResult? Function(CrashInfo info)? reportCrash,
    TResult? Function()? openParcelsList,
  }) {
    return openParcelDetails?.call(trackNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String trackNumber)? openParcelDetails,
    TResult Function(CrashInfo info)? reportCrash,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationActionOpenParcelDetails value)?
        openParcelDetails,
    TResult? Function(NotificationActionReportCrash value)? reportCrash,
    TResult? Function(NotificationActionOpenParcelsList value)? openParcelsList,
  }) {
    return openParcelDetails?.call(this);
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
    return _$$NotificationActionOpenParcelDetailsImplToJson(
      this,
    );
  }
}

abstract class NotificationActionOpenParcelDetails
    implements NotificationAction {
  const factory NotificationActionOpenParcelDetails(
          {required final String trackNumber}) =
      _$NotificationActionOpenParcelDetailsImpl;

  factory NotificationActionOpenParcelDetails.fromJson(
          Map<String, dynamic> json) =
      _$NotificationActionOpenParcelDetailsImpl.fromJson;

  String get trackNumber;
  @JsonKey(ignore: true)
  _$$NotificationActionOpenParcelDetailsImplCopyWith<
          _$NotificationActionOpenParcelDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotificationActionReportCrashImplCopyWith<$Res> {
  factory _$$NotificationActionReportCrashImplCopyWith(
          _$NotificationActionReportCrashImpl value,
          $Res Function(_$NotificationActionReportCrashImpl) then) =
      __$$NotificationActionReportCrashImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CrashInfo info});

  $CrashInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$NotificationActionReportCrashImplCopyWithImpl<$Res>
    extends _$NotificationActionCopyWithImpl<$Res,
        _$NotificationActionReportCrashImpl>
    implements _$$NotificationActionReportCrashImplCopyWith<$Res> {
  __$$NotificationActionReportCrashImplCopyWithImpl(
      _$NotificationActionReportCrashImpl _value,
      $Res Function(_$NotificationActionReportCrashImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$NotificationActionReportCrashImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as CrashInfo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CrashInfoCopyWith<$Res> get info {
    return $CrashInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationActionReportCrashImpl
    implements NotificationActionReportCrash {
  const _$NotificationActionReportCrashImpl(
      {required this.info, final String? $type})
      : $type = $type ?? 'reportCrash';

  factory _$NotificationActionReportCrashImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$NotificationActionReportCrashImplFromJson(json);

  @override
  final CrashInfo info;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NotificationAction.reportCrash(info: $info)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationActionReportCrashImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationActionReportCrashImplCopyWith<
          _$NotificationActionReportCrashImpl>
      get copyWith => __$$NotificationActionReportCrashImplCopyWithImpl<
          _$NotificationActionReportCrashImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String trackNumber) openParcelDetails,
    required TResult Function(CrashInfo info) reportCrash,
    required TResult Function() openParcelsList,
  }) {
    return reportCrash(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String trackNumber)? openParcelDetails,
    TResult? Function(CrashInfo info)? reportCrash,
    TResult? Function()? openParcelsList,
  }) {
    return reportCrash?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String trackNumber)? openParcelDetails,
    TResult Function(CrashInfo info)? reportCrash,
    TResult Function()? openParcelsList,
    required TResult orElse(),
  }) {
    if (reportCrash != null) {
      return reportCrash(info);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationActionOpenParcelDetails value)?
        openParcelDetails,
    TResult? Function(NotificationActionReportCrash value)? reportCrash,
    TResult? Function(NotificationActionOpenParcelsList value)? openParcelsList,
  }) {
    return reportCrash?.call(this);
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
    return _$$NotificationActionReportCrashImplToJson(
      this,
    );
  }
}

abstract class NotificationActionReportCrash implements NotificationAction {
  const factory NotificationActionReportCrash({required final CrashInfo info}) =
      _$NotificationActionReportCrashImpl;

  factory NotificationActionReportCrash.fromJson(Map<String, dynamic> json) =
      _$NotificationActionReportCrashImpl.fromJson;

  CrashInfo get info;
  @JsonKey(ignore: true)
  _$$NotificationActionReportCrashImplCopyWith<
          _$NotificationActionReportCrashImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotificationActionOpenParcelsListImplCopyWith<$Res> {
  factory _$$NotificationActionOpenParcelsListImplCopyWith(
          _$NotificationActionOpenParcelsListImpl value,
          $Res Function(_$NotificationActionOpenParcelsListImpl) then) =
      __$$NotificationActionOpenParcelsListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotificationActionOpenParcelsListImplCopyWithImpl<$Res>
    extends _$NotificationActionCopyWithImpl<$Res,
        _$NotificationActionOpenParcelsListImpl>
    implements _$$NotificationActionOpenParcelsListImplCopyWith<$Res> {
  __$$NotificationActionOpenParcelsListImplCopyWithImpl(
      _$NotificationActionOpenParcelsListImpl _value,
      $Res Function(_$NotificationActionOpenParcelsListImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$NotificationActionOpenParcelsListImpl
    implements NotificationActionOpenParcelsList {
  const _$NotificationActionOpenParcelsListImpl({final String? $type})
      : $type = $type ?? 'openParcelsList';

  factory _$NotificationActionOpenParcelsListImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$NotificationActionOpenParcelsListImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NotificationAction.openParcelsList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationActionOpenParcelsListImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String trackNumber) openParcelDetails,
    required TResult Function(CrashInfo info) reportCrash,
    required TResult Function() openParcelsList,
  }) {
    return openParcelsList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String trackNumber)? openParcelDetails,
    TResult? Function(CrashInfo info)? reportCrash,
    TResult? Function()? openParcelsList,
  }) {
    return openParcelsList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String trackNumber)? openParcelDetails,
    TResult Function(CrashInfo info)? reportCrash,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationActionOpenParcelDetails value)?
        openParcelDetails,
    TResult? Function(NotificationActionReportCrash value)? reportCrash,
    TResult? Function(NotificationActionOpenParcelsList value)? openParcelsList,
  }) {
    return openParcelsList?.call(this);
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
    return _$$NotificationActionOpenParcelsListImplToJson(
      this,
    );
  }
}

abstract class NotificationActionOpenParcelsList implements NotificationAction {
  const factory NotificationActionOpenParcelsList() =
      _$NotificationActionOpenParcelsListImpl;

  factory NotificationActionOpenParcelsList.fromJson(
          Map<String, dynamic> json) =
      _$NotificationActionOpenParcelsListImpl.fromJson;
}
