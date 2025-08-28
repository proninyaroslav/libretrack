// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CrashInfo _$CrashInfoFromJson(Map<String, dynamic> json) {
  return _CrashInfo.fromJson(json);
}

/// @nodoc
mixin _$CrashInfo {
  @ErrorConverter()
  Object get error => throw _privateConstructorUsedError;
  @StackTraceConverter()
  StackTrace? get stackTrace => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CrashInfoCopyWith<CrashInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrashInfoCopyWith<$Res> {
  factory $CrashInfoCopyWith(CrashInfo value, $Res Function(CrashInfo) then) =
      _$CrashInfoCopyWithImpl<$Res, CrashInfo>;
  @useResult
  $Res call(
      {@ErrorConverter() Object error,
      @StackTraceConverter() StackTrace? stackTrace,
      String? message});
}

/// @nodoc
class _$CrashInfoCopyWithImpl<$Res, $Val extends CrashInfo>
    implements $CrashInfoCopyWith<$Res> {
  _$CrashInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      error: null == error ? _value.error : error,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CrashInfoImplCopyWith<$Res>
    implements $CrashInfoCopyWith<$Res> {
  factory _$$CrashInfoImplCopyWith(
          _$CrashInfoImpl value, $Res Function(_$CrashInfoImpl) then) =
      __$$CrashInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@ErrorConverter() Object error,
      @StackTraceConverter() StackTrace? stackTrace,
      String? message});
}

/// @nodoc
class __$$CrashInfoImplCopyWithImpl<$Res>
    extends _$CrashInfoCopyWithImpl<$Res, _$CrashInfoImpl>
    implements _$$CrashInfoImplCopyWith<$Res> {
  __$$CrashInfoImplCopyWithImpl(
      _$CrashInfoImpl _value, $Res Function(_$CrashInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = freezed,
    Object? message = freezed,
  }) {
    return _then(_$CrashInfoImpl(
      error: null == error ? _value.error : error,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CrashInfoImpl implements _CrashInfo {
  const _$CrashInfoImpl(
      {@ErrorConverter() required this.error,
      @StackTraceConverter() this.stackTrace,
      this.message});

  factory _$CrashInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CrashInfoImplFromJson(json);

  @override
  @ErrorConverter()
  final Object error;
  @override
  @StackTraceConverter()
  final StackTrace? stackTrace;
  @override
  final String? message;

  @override
  String toString() {
    return 'CrashInfo(error: $error, stackTrace: $stackTrace, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CrashInfoImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(error), stackTrace, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CrashInfoImplCopyWith<_$CrashInfoImpl> get copyWith =>
      __$$CrashInfoImplCopyWithImpl<_$CrashInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CrashInfoImplToJson(
      this,
    );
  }
}

abstract class _CrashInfo implements CrashInfo {
  const factory _CrashInfo(
      {@ErrorConverter() required final Object error,
      @StackTraceConverter() final StackTrace? stackTrace,
      final String? message}) = _$CrashInfoImpl;

  factory _CrashInfo.fromJson(Map<String, dynamic> json) =
      _$CrashInfoImpl.fromJson;

  @override
  @ErrorConverter()
  Object get error;
  @override
  @StackTraceConverter()
  StackTrace? get stackTrace;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$CrashInfoImplCopyWith<_$CrashInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CrashReport {
  String get email => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  CrashReportData get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CrashReportCopyWith<CrashReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrashReportCopyWith<$Res> {
  factory $CrashReportCopyWith(
          CrashReport value, $Res Function(CrashReport) then) =
      _$CrashReportCopyWithImpl<$Res, CrashReport>;
  @useResult
  $Res call({String email, String subject, CrashReportData data});

  $CrashReportDataCopyWith<$Res> get data;
}

/// @nodoc
class _$CrashReportCopyWithImpl<$Res, $Val extends CrashReport>
    implements $CrashReportCopyWith<$Res> {
  _$CrashReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? subject = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CrashReportData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CrashReportDataCopyWith<$Res> get data {
    return $CrashReportDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CrashReportImplCopyWith<$Res>
    implements $CrashReportCopyWith<$Res> {
  factory _$$CrashReportImplCopyWith(
          _$CrashReportImpl value, $Res Function(_$CrashReportImpl) then) =
      __$$CrashReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String subject, CrashReportData data});

  @override
  $CrashReportDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$CrashReportImplCopyWithImpl<$Res>
    extends _$CrashReportCopyWithImpl<$Res, _$CrashReportImpl>
    implements _$$CrashReportImplCopyWith<$Res> {
  __$$CrashReportImplCopyWithImpl(
      _$CrashReportImpl _value, $Res Function(_$CrashReportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? subject = null,
    Object? data = null,
  }) {
    return _then(_$CrashReportImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CrashReportData,
    ));
  }
}

/// @nodoc

class _$CrashReportImpl implements _CrashReport {
  const _$CrashReportImpl(
      {required this.email, required this.subject, required this.data});

  @override
  final String email;
  @override
  final String subject;
  @override
  final CrashReportData data;

  @override
  String toString() {
    return 'CrashReport(email: $email, subject: $subject, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CrashReportImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, subject, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CrashReportImplCopyWith<_$CrashReportImpl> get copyWith =>
      __$$CrashReportImplCopyWithImpl<_$CrashReportImpl>(this, _$identity);
}

abstract class _CrashReport implements CrashReport {
  const factory _CrashReport(
      {required final String email,
      required final String subject,
      required final CrashReportData data}) = _$CrashReportImpl;

  @override
  String get email;
  @override
  String get subject;
  @override
  CrashReportData get data;
  @override
  @JsonKey(ignore: true)
  _$$CrashReportImplCopyWith<_$CrashReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CrashReportData _$CrashReportDataFromJson(Map<String, dynamic> json) {
  return _CrashReportData.fromJson(json);
}

/// @nodoc
mixin _$CrashReportData {
  @CrashReportIdConverter()
  CrashReportId get reportId => throw _privateConstructorUsedError;
  String get packageName => throw _privateConstructorUsedError;
  String get appName => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get buildNumber => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  String? get stackTrace => throw _privateConstructorUsedError;
  ReportableInfo get deviceInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CrashReportDataCopyWith<CrashReportData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrashReportDataCopyWith<$Res> {
  factory $CrashReportDataCopyWith(
          CrashReportData value, $Res Function(CrashReportData) then) =
      _$CrashReportDataCopyWithImpl<$Res, CrashReportData>;
  @useResult
  $Res call(
      {@CrashReportIdConverter() CrashReportId reportId,
      String packageName,
      String appName,
      String version,
      String buildNumber,
      String error,
      String? comment,
      String? stackTrace,
      ReportableInfo deviceInfo});

  $ReportableInfoCopyWith<$Res> get deviceInfo;
}

/// @nodoc
class _$CrashReportDataCopyWithImpl<$Res, $Val extends CrashReportData>
    implements $CrashReportDataCopyWith<$Res> {
  _$CrashReportDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportId = null,
    Object? packageName = null,
    Object? appName = null,
    Object? version = null,
    Object? buildNumber = null,
    Object? error = null,
    Object? comment = freezed,
    Object? stackTrace = freezed,
    Object? deviceInfo = null,
  }) {
    return _then(_value.copyWith(
      reportId: null == reportId
          ? _value.reportId
          : reportId // ignore: cast_nullable_to_non_nullable
              as CrashReportId,
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildNumber: null == buildNumber
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as ReportableInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReportableInfoCopyWith<$Res> get deviceInfo {
    return $ReportableInfoCopyWith<$Res>(_value.deviceInfo, (value) {
      return _then(_value.copyWith(deviceInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CrashReportDataImplCopyWith<$Res>
    implements $CrashReportDataCopyWith<$Res> {
  factory _$$CrashReportDataImplCopyWith(_$CrashReportDataImpl value,
          $Res Function(_$CrashReportDataImpl) then) =
      __$$CrashReportDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@CrashReportIdConverter() CrashReportId reportId,
      String packageName,
      String appName,
      String version,
      String buildNumber,
      String error,
      String? comment,
      String? stackTrace,
      ReportableInfo deviceInfo});

  @override
  $ReportableInfoCopyWith<$Res> get deviceInfo;
}

/// @nodoc
class __$$CrashReportDataImplCopyWithImpl<$Res>
    extends _$CrashReportDataCopyWithImpl<$Res, _$CrashReportDataImpl>
    implements _$$CrashReportDataImplCopyWith<$Res> {
  __$$CrashReportDataImplCopyWithImpl(
      _$CrashReportDataImpl _value, $Res Function(_$CrashReportDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportId = null,
    Object? packageName = null,
    Object? appName = null,
    Object? version = null,
    Object? buildNumber = null,
    Object? error = null,
    Object? comment = freezed,
    Object? stackTrace = freezed,
    Object? deviceInfo = null,
  }) {
    return _then(_$CrashReportDataImpl(
      reportId: null == reportId
          ? _value.reportId
          : reportId // ignore: cast_nullable_to_non_nullable
              as CrashReportId,
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildNumber: null == buildNumber
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as ReportableInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CrashReportDataImpl implements _CrashReportData {
  const _$CrashReportDataImpl(
      {@CrashReportIdConverter() required this.reportId,
      required this.packageName,
      required this.appName,
      required this.version,
      required this.buildNumber,
      required this.error,
      this.comment,
      this.stackTrace,
      required this.deviceInfo});

  factory _$CrashReportDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CrashReportDataImplFromJson(json);

  @override
  @CrashReportIdConverter()
  final CrashReportId reportId;
  @override
  final String packageName;
  @override
  final String appName;
  @override
  final String version;
  @override
  final String buildNumber;
  @override
  final String error;
  @override
  final String? comment;
  @override
  final String? stackTrace;
  @override
  final ReportableInfo deviceInfo;

  @override
  String toString() {
    return 'CrashReportData(reportId: $reportId, packageName: $packageName, appName: $appName, version: $version, buildNumber: $buildNumber, error: $error, comment: $comment, stackTrace: $stackTrace, deviceInfo: $deviceInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CrashReportDataImpl &&
            (identical(other.reportId, reportId) ||
                other.reportId == reportId) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.buildNumber, buildNumber) ||
                other.buildNumber == buildNumber) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reportId, packageName, appName,
      version, buildNumber, error, comment, stackTrace, deviceInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CrashReportDataImplCopyWith<_$CrashReportDataImpl> get copyWith =>
      __$$CrashReportDataImplCopyWithImpl<_$CrashReportDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CrashReportDataImplToJson(
      this,
    );
  }
}

abstract class _CrashReportData implements CrashReportData {
  const factory _CrashReportData(
      {@CrashReportIdConverter() required final CrashReportId reportId,
      required final String packageName,
      required final String appName,
      required final String version,
      required final String buildNumber,
      required final String error,
      final String? comment,
      final String? stackTrace,
      required final ReportableInfo deviceInfo}) = _$CrashReportDataImpl;

  factory _CrashReportData.fromJson(Map<String, dynamic> json) =
      _$CrashReportDataImpl.fromJson;

  @override
  @CrashReportIdConverter()
  CrashReportId get reportId;
  @override
  String get packageName;
  @override
  String get appName;
  @override
  String get version;
  @override
  String get buildNumber;
  @override
  String get error;
  @override
  String? get comment;
  @override
  String? get stackTrace;
  @override
  ReportableInfo get deviceInfo;
  @override
  @JsonKey(ignore: true)
  _$$CrashReportDataImplCopyWith<_$CrashReportDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CrashReportSendResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() emailUnsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function()? emailUnsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? emailUnsupported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CrashReportSendResultSuccess value) success,
    required TResult Function(CrashReportSendResultEmailUnsupported value)
        emailUnsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CrashReportSendResultSuccess value)? success,
    TResult? Function(CrashReportSendResultEmailUnsupported value)?
        emailUnsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CrashReportSendResultSuccess value)? success,
    TResult Function(CrashReportSendResultEmailUnsupported value)?
        emailUnsupported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrashReportSendResultCopyWith<$Res> {
  factory $CrashReportSendResultCopyWith(CrashReportSendResult value,
          $Res Function(CrashReportSendResult) then) =
      _$CrashReportSendResultCopyWithImpl<$Res, CrashReportSendResult>;
}

/// @nodoc
class _$CrashReportSendResultCopyWithImpl<$Res,
        $Val extends CrashReportSendResult>
    implements $CrashReportSendResultCopyWith<$Res> {
  _$CrashReportSendResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CrashReportSendResultSuccessImplCopyWith<$Res> {
  factory _$$CrashReportSendResultSuccessImplCopyWith(
          _$CrashReportSendResultSuccessImpl value,
          $Res Function(_$CrashReportSendResultSuccessImpl) then) =
      __$$CrashReportSendResultSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CrashReportSendResultSuccessImplCopyWithImpl<$Res>
    extends _$CrashReportSendResultCopyWithImpl<$Res,
        _$CrashReportSendResultSuccessImpl>
    implements _$$CrashReportSendResultSuccessImplCopyWith<$Res> {
  __$$CrashReportSendResultSuccessImplCopyWithImpl(
      _$CrashReportSendResultSuccessImpl _value,
      $Res Function(_$CrashReportSendResultSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CrashReportSendResultSuccessImpl
    implements CrashReportSendResultSuccess {
  const _$CrashReportSendResultSuccessImpl();

  @override
  String toString() {
    return 'CrashReportSendResult.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CrashReportSendResultSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() emailUnsupported,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function()? emailUnsupported,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? emailUnsupported,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CrashReportSendResultSuccess value) success,
    required TResult Function(CrashReportSendResultEmailUnsupported value)
        emailUnsupported,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CrashReportSendResultSuccess value)? success,
    TResult? Function(CrashReportSendResultEmailUnsupported value)?
        emailUnsupported,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CrashReportSendResultSuccess value)? success,
    TResult Function(CrashReportSendResultEmailUnsupported value)?
        emailUnsupported,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CrashReportSendResultSuccess implements CrashReportSendResult {
  const factory CrashReportSendResultSuccess() =
      _$CrashReportSendResultSuccessImpl;
}

/// @nodoc
abstract class _$$CrashReportSendResultEmailUnsupportedImplCopyWith<$Res> {
  factory _$$CrashReportSendResultEmailUnsupportedImplCopyWith(
          _$CrashReportSendResultEmailUnsupportedImpl value,
          $Res Function(_$CrashReportSendResultEmailUnsupportedImpl) then) =
      __$$CrashReportSendResultEmailUnsupportedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CrashReportSendResultEmailUnsupportedImplCopyWithImpl<$Res>
    extends _$CrashReportSendResultCopyWithImpl<$Res,
        _$CrashReportSendResultEmailUnsupportedImpl>
    implements _$$CrashReportSendResultEmailUnsupportedImplCopyWith<$Res> {
  __$$CrashReportSendResultEmailUnsupportedImplCopyWithImpl(
      _$CrashReportSendResultEmailUnsupportedImpl _value,
      $Res Function(_$CrashReportSendResultEmailUnsupportedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CrashReportSendResultEmailUnsupportedImpl
    implements CrashReportSendResultEmailUnsupported {
  const _$CrashReportSendResultEmailUnsupportedImpl();

  @override
  String toString() {
    return 'CrashReportSendResult.emailUnsupported()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CrashReportSendResultEmailUnsupportedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() emailUnsupported,
  }) {
    return emailUnsupported();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function()? emailUnsupported,
  }) {
    return emailUnsupported?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? emailUnsupported,
    required TResult orElse(),
  }) {
    if (emailUnsupported != null) {
      return emailUnsupported();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CrashReportSendResultSuccess value) success,
    required TResult Function(CrashReportSendResultEmailUnsupported value)
        emailUnsupported,
  }) {
    return emailUnsupported(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CrashReportSendResultSuccess value)? success,
    TResult? Function(CrashReportSendResultEmailUnsupported value)?
        emailUnsupported,
  }) {
    return emailUnsupported?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CrashReportSendResultSuccess value)? success,
    TResult Function(CrashReportSendResultEmailUnsupported value)?
        emailUnsupported,
    required TResult orElse(),
  }) {
    if (emailUnsupported != null) {
      return emailUnsupported(this);
    }
    return orElse();
  }
}

abstract class CrashReportSendResultEmailUnsupported
    implements CrashReportSendResult {
  const factory CrashReportSendResultEmailUnsupported() =
      _$CrashReportSendResultEmailUnsupportedImpl;
}

ReportableInfo _$ReportableInfoFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'unknown':
      return UnknownReportableInfo.fromJson(json);
    case 'android':
      return AndroidReportableInfo.fromJson(json);
    case 'iOS':
      return IOSReportableInfo.fromJson(json);
    case 'linux':
      return LinuxReportableInfo.fromJson(json);
    case 'windows':
      return WindowsReportableInfo.fromJson(json);
    case 'macOS':
      return MacOSReportableInfo.fromJson(json);
    case 'web':
      return WebReportableInfo.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ReportableInfo',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ReportableInfo {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)
        android,
    required TResult Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)
        iOS,
    required TResult Function(
            String osName, String kernelVersion, String? osVersion)
        linux,
    required TResult Function(String osVersion) windows,
    required TResult Function(
            String arch, String kernelVersion, String osVersion, String model)
        macOS,
    required TResult Function(
            String browserName, String? platform, String? vendor)
        web,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)?
        android,
    TResult? Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)?
        iOS,
    TResult? Function(String osName, String kernelVersion, String? osVersion)?
        linux,
    TResult? Function(String osVersion)? windows,
    TResult? Function(
            String arch, String kernelVersion, String osVersion, String model)?
        macOS,
    TResult? Function(String browserName, String? platform, String? vendor)?
        web,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)?
        android,
    TResult Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)?
        iOS,
    TResult Function(String osName, String kernelVersion, String? osVersion)?
        linux,
    TResult Function(String osVersion)? windows,
    TResult Function(
            String arch, String kernelVersion, String osVersion, String model)?
        macOS,
    TResult Function(String browserName, String? platform, String? vendor)? web,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownReportableInfo value) unknown,
    required TResult Function(AndroidReportableInfo value) android,
    required TResult Function(IOSReportableInfo value) iOS,
    required TResult Function(LinuxReportableInfo value) linux,
    required TResult Function(WindowsReportableInfo value) windows,
    required TResult Function(MacOSReportableInfo value) macOS,
    required TResult Function(WebReportableInfo value) web,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownReportableInfo value)? unknown,
    TResult? Function(AndroidReportableInfo value)? android,
    TResult? Function(IOSReportableInfo value)? iOS,
    TResult? Function(LinuxReportableInfo value)? linux,
    TResult? Function(WindowsReportableInfo value)? windows,
    TResult? Function(MacOSReportableInfo value)? macOS,
    TResult? Function(WebReportableInfo value)? web,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownReportableInfo value)? unknown,
    TResult Function(AndroidReportableInfo value)? android,
    TResult Function(IOSReportableInfo value)? iOS,
    TResult Function(LinuxReportableInfo value)? linux,
    TResult Function(WindowsReportableInfo value)? windows,
    TResult Function(MacOSReportableInfo value)? macOS,
    TResult Function(WebReportableInfo value)? web,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportableInfoCopyWith<$Res> {
  factory $ReportableInfoCopyWith(
          ReportableInfo value, $Res Function(ReportableInfo) then) =
      _$ReportableInfoCopyWithImpl<$Res, ReportableInfo>;
}

/// @nodoc
class _$ReportableInfoCopyWithImpl<$Res, $Val extends ReportableInfo>
    implements $ReportableInfoCopyWith<$Res> {
  _$ReportableInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnknownReportableInfoImplCopyWith<$Res> {
  factory _$$UnknownReportableInfoImplCopyWith(
          _$UnknownReportableInfoImpl value,
          $Res Function(_$UnknownReportableInfoImpl) then) =
      __$$UnknownReportableInfoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownReportableInfoImplCopyWithImpl<$Res>
    extends _$ReportableInfoCopyWithImpl<$Res, _$UnknownReportableInfoImpl>
    implements _$$UnknownReportableInfoImplCopyWith<$Res> {
  __$$UnknownReportableInfoImplCopyWithImpl(_$UnknownReportableInfoImpl _value,
      $Res Function(_$UnknownReportableInfoImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$UnknownReportableInfoImpl implements UnknownReportableInfo {
  const _$UnknownReportableInfoImpl({final String? $type})
      : $type = $type ?? 'unknown';

  factory _$UnknownReportableInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnknownReportableInfoImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ReportableInfo.unknown()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownReportableInfoImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)
        android,
    required TResult Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)
        iOS,
    required TResult Function(
            String osName, String kernelVersion, String? osVersion)
        linux,
    required TResult Function(String osVersion) windows,
    required TResult Function(
            String arch, String kernelVersion, String osVersion, String model)
        macOS,
    required TResult Function(
            String browserName, String? platform, String? vendor)
        web,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)?
        android,
    TResult? Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)?
        iOS,
    TResult? Function(String osName, String kernelVersion, String? osVersion)?
        linux,
    TResult? Function(String osVersion)? windows,
    TResult? Function(
            String arch, String kernelVersion, String osVersion, String model)?
        macOS,
    TResult? Function(String browserName, String? platform, String? vendor)?
        web,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)?
        android,
    TResult Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)?
        iOS,
    TResult Function(String osName, String kernelVersion, String? osVersion)?
        linux,
    TResult Function(String osVersion)? windows,
    TResult Function(
            String arch, String kernelVersion, String osVersion, String model)?
        macOS,
    TResult Function(String browserName, String? platform, String? vendor)? web,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownReportableInfo value) unknown,
    required TResult Function(AndroidReportableInfo value) android,
    required TResult Function(IOSReportableInfo value) iOS,
    required TResult Function(LinuxReportableInfo value) linux,
    required TResult Function(WindowsReportableInfo value) windows,
    required TResult Function(MacOSReportableInfo value) macOS,
    required TResult Function(WebReportableInfo value) web,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownReportableInfo value)? unknown,
    TResult? Function(AndroidReportableInfo value)? android,
    TResult? Function(IOSReportableInfo value)? iOS,
    TResult? Function(LinuxReportableInfo value)? linux,
    TResult? Function(WindowsReportableInfo value)? windows,
    TResult? Function(MacOSReportableInfo value)? macOS,
    TResult? Function(WebReportableInfo value)? web,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownReportableInfo value)? unknown,
    TResult Function(AndroidReportableInfo value)? android,
    TResult Function(IOSReportableInfo value)? iOS,
    TResult Function(LinuxReportableInfo value)? linux,
    TResult Function(WindowsReportableInfo value)? windows,
    TResult Function(MacOSReportableInfo value)? macOS,
    TResult Function(WebReportableInfo value)? web,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnknownReportableInfoImplToJson(
      this,
    );
  }
}

abstract class UnknownReportableInfo implements ReportableInfo {
  const factory UnknownReportableInfo() = _$UnknownReportableInfoImpl;

  factory UnknownReportableInfo.fromJson(Map<String, dynamic> json) =
      _$UnknownReportableInfoImpl.fromJson;
}

/// @nodoc
abstract class _$$AndroidReportableInfoImplCopyWith<$Res> {
  factory _$$AndroidReportableInfoImplCopyWith(
          _$AndroidReportableInfoImpl value,
          $Res Function(_$AndroidReportableInfoImpl) then) =
      __$$AndroidReportableInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? systemVersion,
      List<String?> supportedAbis,
      String? brand,
      String? device,
      String? model,
      String? hardware,
      String? product});
}

/// @nodoc
class __$$AndroidReportableInfoImplCopyWithImpl<$Res>
    extends _$ReportableInfoCopyWithImpl<$Res, _$AndroidReportableInfoImpl>
    implements _$$AndroidReportableInfoImplCopyWith<$Res> {
  __$$AndroidReportableInfoImplCopyWithImpl(_$AndroidReportableInfoImpl _value,
      $Res Function(_$AndroidReportableInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? systemVersion = freezed,
    Object? supportedAbis = null,
    Object? brand = freezed,
    Object? device = freezed,
    Object? model = freezed,
    Object? hardware = freezed,
    Object? product = freezed,
  }) {
    return _then(_$AndroidReportableInfoImpl(
      systemVersion: freezed == systemVersion
          ? _value.systemVersion
          : systemVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      supportedAbis: null == supportedAbis
          ? _value._supportedAbis
          : supportedAbis // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      device: freezed == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      hardware: freezed == hardware
          ? _value.hardware
          : hardware // ignore: cast_nullable_to_non_nullable
              as String?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AndroidReportableInfoImpl implements AndroidReportableInfo {
  const _$AndroidReportableInfoImpl(
      {this.systemVersion,
      final List<String?> supportedAbis = const [],
      this.brand,
      this.device,
      this.model,
      this.hardware,
      this.product,
      final String? $type})
      : _supportedAbis = supportedAbis,
        $type = $type ?? 'android';

  factory _$AndroidReportableInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AndroidReportableInfoImplFromJson(json);

  @override
  final String? systemVersion;

  /// An ordered list of ABIs supported by this device.
  final List<String?> _supportedAbis;

  /// An ordered list of ABIs supported by this device.
  @override
  @JsonKey()
  List<String?> get supportedAbis {
    if (_supportedAbis is EqualUnmodifiableListView) return _supportedAbis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supportedAbis);
  }

  /// The consumer-visible brand with which
  /// the product/hardware will be associated, if any.
  @override
  final String? brand;

  /// The name of the industrial design.
  @override
  final String? device;

  /// The end-user-visible name for the end product.
  @override
  final String? model;

  /// The name of the hardware (from the kernel command line or /proc).
  @override
  final String? hardware;

  /// The name of the overall product.
  @override
  final String? product;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ReportableInfo.android(systemVersion: $systemVersion, supportedAbis: $supportedAbis, brand: $brand, device: $device, model: $model, hardware: $hardware, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AndroidReportableInfoImpl &&
            (identical(other.systemVersion, systemVersion) ||
                other.systemVersion == systemVersion) &&
            const DeepCollectionEquality()
                .equals(other._supportedAbis, _supportedAbis) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.device, device) || other.device == device) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.hardware, hardware) ||
                other.hardware == hardware) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      systemVersion,
      const DeepCollectionEquality().hash(_supportedAbis),
      brand,
      device,
      model,
      hardware,
      product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AndroidReportableInfoImplCopyWith<_$AndroidReportableInfoImpl>
      get copyWith => __$$AndroidReportableInfoImplCopyWithImpl<
          _$AndroidReportableInfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)
        android,
    required TResult Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)
        iOS,
    required TResult Function(
            String osName, String kernelVersion, String? osVersion)
        linux,
    required TResult Function(String osVersion) windows,
    required TResult Function(
            String arch, String kernelVersion, String osVersion, String model)
        macOS,
    required TResult Function(
            String browserName, String? platform, String? vendor)
        web,
  }) {
    return android(
        systemVersion, supportedAbis, brand, device, model, hardware, product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)?
        android,
    TResult? Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)?
        iOS,
    TResult? Function(String osName, String kernelVersion, String? osVersion)?
        linux,
    TResult? Function(String osVersion)? windows,
    TResult? Function(
            String arch, String kernelVersion, String osVersion, String model)?
        macOS,
    TResult? Function(String browserName, String? platform, String? vendor)?
        web,
  }) {
    return android?.call(
        systemVersion, supportedAbis, brand, device, model, hardware, product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)?
        android,
    TResult Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)?
        iOS,
    TResult Function(String osName, String kernelVersion, String? osVersion)?
        linux,
    TResult Function(String osVersion)? windows,
    TResult Function(
            String arch, String kernelVersion, String osVersion, String model)?
        macOS,
    TResult Function(String browserName, String? platform, String? vendor)? web,
    required TResult orElse(),
  }) {
    if (android != null) {
      return android(systemVersion, supportedAbis, brand, device, model,
          hardware, product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownReportableInfo value) unknown,
    required TResult Function(AndroidReportableInfo value) android,
    required TResult Function(IOSReportableInfo value) iOS,
    required TResult Function(LinuxReportableInfo value) linux,
    required TResult Function(WindowsReportableInfo value) windows,
    required TResult Function(MacOSReportableInfo value) macOS,
    required TResult Function(WebReportableInfo value) web,
  }) {
    return android(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownReportableInfo value)? unknown,
    TResult? Function(AndroidReportableInfo value)? android,
    TResult? Function(IOSReportableInfo value)? iOS,
    TResult? Function(LinuxReportableInfo value)? linux,
    TResult? Function(WindowsReportableInfo value)? windows,
    TResult? Function(MacOSReportableInfo value)? macOS,
    TResult? Function(WebReportableInfo value)? web,
  }) {
    return android?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownReportableInfo value)? unknown,
    TResult Function(AndroidReportableInfo value)? android,
    TResult Function(IOSReportableInfo value)? iOS,
    TResult Function(LinuxReportableInfo value)? linux,
    TResult Function(WindowsReportableInfo value)? windows,
    TResult Function(MacOSReportableInfo value)? macOS,
    TResult Function(WebReportableInfo value)? web,
    required TResult orElse(),
  }) {
    if (android != null) {
      return android(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AndroidReportableInfoImplToJson(
      this,
    );
  }
}

abstract class AndroidReportableInfo implements ReportableInfo {
  const factory AndroidReportableInfo(
      {final String? systemVersion,
      final List<String?> supportedAbis,
      final String? brand,
      final String? device,
      final String? model,
      final String? hardware,
      final String? product}) = _$AndroidReportableInfoImpl;

  factory AndroidReportableInfo.fromJson(Map<String, dynamic> json) =
      _$AndroidReportableInfoImpl.fromJson;

  String? get systemVersion;

  /// An ordered list of ABIs supported by this device.
  List<String?> get supportedAbis;

  /// The consumer-visible brand with which
  /// the product/hardware will be associated, if any.
  String? get brand;

  /// The name of the industrial design.
  String? get device;

  /// The end-user-visible name for the end product.
  String? get model;

  /// The name of the hardware (from the kernel command line or /proc).
  String? get hardware;

  /// The name of the overall product.
  String? get product;
  @JsonKey(ignore: true)
  _$$AndroidReportableInfoImplCopyWith<_$AndroidReportableInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IOSReportableInfoImplCopyWith<$Res> {
  factory _$$IOSReportableInfoImplCopyWith(_$IOSReportableInfoImpl value,
          $Res Function(_$IOSReportableInfoImpl) then) =
      __$$IOSReportableInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? deviceName,
      String? deviceModel,
      String? systemName,
      String? systemVersion});
}

/// @nodoc
class __$$IOSReportableInfoImplCopyWithImpl<$Res>
    extends _$ReportableInfoCopyWithImpl<$Res, _$IOSReportableInfoImpl>
    implements _$$IOSReportableInfoImplCopyWith<$Res> {
  __$$IOSReportableInfoImplCopyWithImpl(_$IOSReportableInfoImpl _value,
      $Res Function(_$IOSReportableInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceName = freezed,
    Object? deviceModel = freezed,
    Object? systemName = freezed,
    Object? systemVersion = freezed,
  }) {
    return _then(_$IOSReportableInfoImpl(
      deviceName: freezed == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceModel: freezed == deviceModel
          ? _value.deviceModel
          : deviceModel // ignore: cast_nullable_to_non_nullable
              as String?,
      systemName: freezed == systemName
          ? _value.systemName
          : systemName // ignore: cast_nullable_to_non_nullable
              as String?,
      systemVersion: freezed == systemVersion
          ? _value.systemVersion
          : systemVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IOSReportableInfoImpl implements IOSReportableInfo {
  const _$IOSReportableInfoImpl(
      {this.deviceName,
      this.deviceModel,
      this.systemName,
      this.systemVersion,
      final String? $type})
      : $type = $type ?? 'iOS';

  factory _$IOSReportableInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$IOSReportableInfoImplFromJson(json);

  @override
  final String? deviceName;
  @override
  final String? deviceModel;
  @override
  final String? systemName;
  @override
  final String? systemVersion;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ReportableInfo.iOS(deviceName: $deviceName, deviceModel: $deviceModel, systemName: $systemName, systemVersion: $systemVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IOSReportableInfoImpl &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            (identical(other.deviceModel, deviceModel) ||
                other.deviceModel == deviceModel) &&
            (identical(other.systemName, systemName) ||
                other.systemName == systemName) &&
            (identical(other.systemVersion, systemVersion) ||
                other.systemVersion == systemVersion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, deviceName, deviceModel, systemName, systemVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IOSReportableInfoImplCopyWith<_$IOSReportableInfoImpl> get copyWith =>
      __$$IOSReportableInfoImplCopyWithImpl<_$IOSReportableInfoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)
        android,
    required TResult Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)
        iOS,
    required TResult Function(
            String osName, String kernelVersion, String? osVersion)
        linux,
    required TResult Function(String osVersion) windows,
    required TResult Function(
            String arch, String kernelVersion, String osVersion, String model)
        macOS,
    required TResult Function(
            String browserName, String? platform, String? vendor)
        web,
  }) {
    return iOS(deviceName, deviceModel, systemName, systemVersion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)?
        android,
    TResult? Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)?
        iOS,
    TResult? Function(String osName, String kernelVersion, String? osVersion)?
        linux,
    TResult? Function(String osVersion)? windows,
    TResult? Function(
            String arch, String kernelVersion, String osVersion, String model)?
        macOS,
    TResult? Function(String browserName, String? platform, String? vendor)?
        web,
  }) {
    return iOS?.call(deviceName, deviceModel, systemName, systemVersion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)?
        android,
    TResult Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)?
        iOS,
    TResult Function(String osName, String kernelVersion, String? osVersion)?
        linux,
    TResult Function(String osVersion)? windows,
    TResult Function(
            String arch, String kernelVersion, String osVersion, String model)?
        macOS,
    TResult Function(String browserName, String? platform, String? vendor)? web,
    required TResult orElse(),
  }) {
    if (iOS != null) {
      return iOS(deviceName, deviceModel, systemName, systemVersion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownReportableInfo value) unknown,
    required TResult Function(AndroidReportableInfo value) android,
    required TResult Function(IOSReportableInfo value) iOS,
    required TResult Function(LinuxReportableInfo value) linux,
    required TResult Function(WindowsReportableInfo value) windows,
    required TResult Function(MacOSReportableInfo value) macOS,
    required TResult Function(WebReportableInfo value) web,
  }) {
    return iOS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownReportableInfo value)? unknown,
    TResult? Function(AndroidReportableInfo value)? android,
    TResult? Function(IOSReportableInfo value)? iOS,
    TResult? Function(LinuxReportableInfo value)? linux,
    TResult? Function(WindowsReportableInfo value)? windows,
    TResult? Function(MacOSReportableInfo value)? macOS,
    TResult? Function(WebReportableInfo value)? web,
  }) {
    return iOS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownReportableInfo value)? unknown,
    TResult Function(AndroidReportableInfo value)? android,
    TResult Function(IOSReportableInfo value)? iOS,
    TResult Function(LinuxReportableInfo value)? linux,
    TResult Function(WindowsReportableInfo value)? windows,
    TResult Function(MacOSReportableInfo value)? macOS,
    TResult Function(WebReportableInfo value)? web,
    required TResult orElse(),
  }) {
    if (iOS != null) {
      return iOS(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$IOSReportableInfoImplToJson(
      this,
    );
  }
}

abstract class IOSReportableInfo implements ReportableInfo {
  const factory IOSReportableInfo(
      {final String? deviceName,
      final String? deviceModel,
      final String? systemName,
      final String? systemVersion}) = _$IOSReportableInfoImpl;

  factory IOSReportableInfo.fromJson(Map<String, dynamic> json) =
      _$IOSReportableInfoImpl.fromJson;

  String? get deviceName;
  String? get deviceModel;
  String? get systemName;
  String? get systemVersion;
  @JsonKey(ignore: true)
  _$$IOSReportableInfoImplCopyWith<_$IOSReportableInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LinuxReportableInfoImplCopyWith<$Res> {
  factory _$$LinuxReportableInfoImplCopyWith(_$LinuxReportableInfoImpl value,
          $Res Function(_$LinuxReportableInfoImpl) then) =
      __$$LinuxReportableInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String osName, String kernelVersion, String? osVersion});
}

/// @nodoc
class __$$LinuxReportableInfoImplCopyWithImpl<$Res>
    extends _$ReportableInfoCopyWithImpl<$Res, _$LinuxReportableInfoImpl>
    implements _$$LinuxReportableInfoImplCopyWith<$Res> {
  __$$LinuxReportableInfoImplCopyWithImpl(_$LinuxReportableInfoImpl _value,
      $Res Function(_$LinuxReportableInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? osName = null,
    Object? kernelVersion = null,
    Object? osVersion = freezed,
  }) {
    return _then(_$LinuxReportableInfoImpl(
      osName: null == osName
          ? _value.osName
          : osName // ignore: cast_nullable_to_non_nullable
              as String,
      kernelVersion: null == kernelVersion
          ? _value.kernelVersion
          : kernelVersion // ignore: cast_nullable_to_non_nullable
              as String,
      osVersion: freezed == osVersion
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinuxReportableInfoImpl implements LinuxReportableInfo {
  const _$LinuxReportableInfoImpl(
      {required this.osName,
      required this.kernelVersion,
      this.osVersion,
      final String? $type})
      : $type = $type ?? 'linux';

  factory _$LinuxReportableInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinuxReportableInfoImplFromJson(json);

  @override
  final String osName;
  @override
  final String kernelVersion;
  @override
  final String? osVersion;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ReportableInfo.linux(osName: $osName, kernelVersion: $kernelVersion, osVersion: $osVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinuxReportableInfoImpl &&
            (identical(other.osName, osName) || other.osName == osName) &&
            (identical(other.kernelVersion, kernelVersion) ||
                other.kernelVersion == kernelVersion) &&
            (identical(other.osVersion, osVersion) ||
                other.osVersion == osVersion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, osName, kernelVersion, osVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LinuxReportableInfoImplCopyWith<_$LinuxReportableInfoImpl> get copyWith =>
      __$$LinuxReportableInfoImplCopyWithImpl<_$LinuxReportableInfoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)
        android,
    required TResult Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)
        iOS,
    required TResult Function(
            String osName, String kernelVersion, String? osVersion)
        linux,
    required TResult Function(String osVersion) windows,
    required TResult Function(
            String arch, String kernelVersion, String osVersion, String model)
        macOS,
    required TResult Function(
            String browserName, String? platform, String? vendor)
        web,
  }) {
    return linux(osName, kernelVersion, osVersion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)?
        android,
    TResult? Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)?
        iOS,
    TResult? Function(String osName, String kernelVersion, String? osVersion)?
        linux,
    TResult? Function(String osVersion)? windows,
    TResult? Function(
            String arch, String kernelVersion, String osVersion, String model)?
        macOS,
    TResult? Function(String browserName, String? platform, String? vendor)?
        web,
  }) {
    return linux?.call(osName, kernelVersion, osVersion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)?
        android,
    TResult Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)?
        iOS,
    TResult Function(String osName, String kernelVersion, String? osVersion)?
        linux,
    TResult Function(String osVersion)? windows,
    TResult Function(
            String arch, String kernelVersion, String osVersion, String model)?
        macOS,
    TResult Function(String browserName, String? platform, String? vendor)? web,
    required TResult orElse(),
  }) {
    if (linux != null) {
      return linux(osName, kernelVersion, osVersion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownReportableInfo value) unknown,
    required TResult Function(AndroidReportableInfo value) android,
    required TResult Function(IOSReportableInfo value) iOS,
    required TResult Function(LinuxReportableInfo value) linux,
    required TResult Function(WindowsReportableInfo value) windows,
    required TResult Function(MacOSReportableInfo value) macOS,
    required TResult Function(WebReportableInfo value) web,
  }) {
    return linux(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownReportableInfo value)? unknown,
    TResult? Function(AndroidReportableInfo value)? android,
    TResult? Function(IOSReportableInfo value)? iOS,
    TResult? Function(LinuxReportableInfo value)? linux,
    TResult? Function(WindowsReportableInfo value)? windows,
    TResult? Function(MacOSReportableInfo value)? macOS,
    TResult? Function(WebReportableInfo value)? web,
  }) {
    return linux?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownReportableInfo value)? unknown,
    TResult Function(AndroidReportableInfo value)? android,
    TResult Function(IOSReportableInfo value)? iOS,
    TResult Function(LinuxReportableInfo value)? linux,
    TResult Function(WindowsReportableInfo value)? windows,
    TResult Function(MacOSReportableInfo value)? macOS,
    TResult Function(WebReportableInfo value)? web,
    required TResult orElse(),
  }) {
    if (linux != null) {
      return linux(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LinuxReportableInfoImplToJson(
      this,
    );
  }
}

abstract class LinuxReportableInfo implements ReportableInfo {
  const factory LinuxReportableInfo(
      {required final String osName,
      required final String kernelVersion,
      final String? osVersion}) = _$LinuxReportableInfoImpl;

  factory LinuxReportableInfo.fromJson(Map<String, dynamic> json) =
      _$LinuxReportableInfoImpl.fromJson;

  String get osName;
  String get kernelVersion;
  String? get osVersion;
  @JsonKey(ignore: true)
  _$$LinuxReportableInfoImplCopyWith<_$LinuxReportableInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WindowsReportableInfoImplCopyWith<$Res> {
  factory _$$WindowsReportableInfoImplCopyWith(
          _$WindowsReportableInfoImpl value,
          $Res Function(_$WindowsReportableInfoImpl) then) =
      __$$WindowsReportableInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String osVersion});
}

/// @nodoc
class __$$WindowsReportableInfoImplCopyWithImpl<$Res>
    extends _$ReportableInfoCopyWithImpl<$Res, _$WindowsReportableInfoImpl>
    implements _$$WindowsReportableInfoImplCopyWith<$Res> {
  __$$WindowsReportableInfoImplCopyWithImpl(_$WindowsReportableInfoImpl _value,
      $Res Function(_$WindowsReportableInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? osVersion = null,
  }) {
    return _then(_$WindowsReportableInfoImpl(
      osVersion: null == osVersion
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WindowsReportableInfoImpl implements WindowsReportableInfo {
  const _$WindowsReportableInfoImpl(
      {required this.osVersion, final String? $type})
      : $type = $type ?? 'windows';

  factory _$WindowsReportableInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WindowsReportableInfoImplFromJson(json);

  @override
  final String osVersion;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ReportableInfo.windows(osVersion: $osVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WindowsReportableInfoImpl &&
            (identical(other.osVersion, osVersion) ||
                other.osVersion == osVersion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, osVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WindowsReportableInfoImplCopyWith<_$WindowsReportableInfoImpl>
      get copyWith => __$$WindowsReportableInfoImplCopyWithImpl<
          _$WindowsReportableInfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)
        android,
    required TResult Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)
        iOS,
    required TResult Function(
            String osName, String kernelVersion, String? osVersion)
        linux,
    required TResult Function(String osVersion) windows,
    required TResult Function(
            String arch, String kernelVersion, String osVersion, String model)
        macOS,
    required TResult Function(
            String browserName, String? platform, String? vendor)
        web,
  }) {
    return windows(osVersion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)?
        android,
    TResult? Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)?
        iOS,
    TResult? Function(String osName, String kernelVersion, String? osVersion)?
        linux,
    TResult? Function(String osVersion)? windows,
    TResult? Function(
            String arch, String kernelVersion, String osVersion, String model)?
        macOS,
    TResult? Function(String browserName, String? platform, String? vendor)?
        web,
  }) {
    return windows?.call(osVersion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)?
        android,
    TResult Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)?
        iOS,
    TResult Function(String osName, String kernelVersion, String? osVersion)?
        linux,
    TResult Function(String osVersion)? windows,
    TResult Function(
            String arch, String kernelVersion, String osVersion, String model)?
        macOS,
    TResult Function(String browserName, String? platform, String? vendor)? web,
    required TResult orElse(),
  }) {
    if (windows != null) {
      return windows(osVersion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownReportableInfo value) unknown,
    required TResult Function(AndroidReportableInfo value) android,
    required TResult Function(IOSReportableInfo value) iOS,
    required TResult Function(LinuxReportableInfo value) linux,
    required TResult Function(WindowsReportableInfo value) windows,
    required TResult Function(MacOSReportableInfo value) macOS,
    required TResult Function(WebReportableInfo value) web,
  }) {
    return windows(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownReportableInfo value)? unknown,
    TResult? Function(AndroidReportableInfo value)? android,
    TResult? Function(IOSReportableInfo value)? iOS,
    TResult? Function(LinuxReportableInfo value)? linux,
    TResult? Function(WindowsReportableInfo value)? windows,
    TResult? Function(MacOSReportableInfo value)? macOS,
    TResult? Function(WebReportableInfo value)? web,
  }) {
    return windows?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownReportableInfo value)? unknown,
    TResult Function(AndroidReportableInfo value)? android,
    TResult Function(IOSReportableInfo value)? iOS,
    TResult Function(LinuxReportableInfo value)? linux,
    TResult Function(WindowsReportableInfo value)? windows,
    TResult Function(MacOSReportableInfo value)? macOS,
    TResult Function(WebReportableInfo value)? web,
    required TResult orElse(),
  }) {
    if (windows != null) {
      return windows(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WindowsReportableInfoImplToJson(
      this,
    );
  }
}

abstract class WindowsReportableInfo implements ReportableInfo {
  const factory WindowsReportableInfo({required final String osVersion}) =
      _$WindowsReportableInfoImpl;

  factory WindowsReportableInfo.fromJson(Map<String, dynamic> json) =
      _$WindowsReportableInfoImpl.fromJson;

  String get osVersion;
  @JsonKey(ignore: true)
  _$$WindowsReportableInfoImplCopyWith<_$WindowsReportableInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MacOSReportableInfoImplCopyWith<$Res> {
  factory _$$MacOSReportableInfoImplCopyWith(_$MacOSReportableInfoImpl value,
          $Res Function(_$MacOSReportableInfoImpl) then) =
      __$$MacOSReportableInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String arch, String kernelVersion, String osVersion, String model});
}

/// @nodoc
class __$$MacOSReportableInfoImplCopyWithImpl<$Res>
    extends _$ReportableInfoCopyWithImpl<$Res, _$MacOSReportableInfoImpl>
    implements _$$MacOSReportableInfoImplCopyWith<$Res> {
  __$$MacOSReportableInfoImplCopyWithImpl(_$MacOSReportableInfoImpl _value,
      $Res Function(_$MacOSReportableInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arch = null,
    Object? kernelVersion = null,
    Object? osVersion = null,
    Object? model = null,
  }) {
    return _then(_$MacOSReportableInfoImpl(
      arch: null == arch
          ? _value.arch
          : arch // ignore: cast_nullable_to_non_nullable
              as String,
      kernelVersion: null == kernelVersion
          ? _value.kernelVersion
          : kernelVersion // ignore: cast_nullable_to_non_nullable
              as String,
      osVersion: null == osVersion
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MacOSReportableInfoImpl implements MacOSReportableInfo {
  const _$MacOSReportableInfoImpl(
      {required this.arch,
      required this.kernelVersion,
      required this.osVersion,
      required this.model,
      final String? $type})
      : $type = $type ?? 'macOS';

  factory _$MacOSReportableInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MacOSReportableInfoImplFromJson(json);

  @override
  final String arch;
  @override
  final String kernelVersion;
  @override
  final String osVersion;
  @override
  final String model;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ReportableInfo.macOS(arch: $arch, kernelVersion: $kernelVersion, osVersion: $osVersion, model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MacOSReportableInfoImpl &&
            (identical(other.arch, arch) || other.arch == arch) &&
            (identical(other.kernelVersion, kernelVersion) ||
                other.kernelVersion == kernelVersion) &&
            (identical(other.osVersion, osVersion) ||
                other.osVersion == osVersion) &&
            (identical(other.model, model) || other.model == model));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, arch, kernelVersion, osVersion, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MacOSReportableInfoImplCopyWith<_$MacOSReportableInfoImpl> get copyWith =>
      __$$MacOSReportableInfoImplCopyWithImpl<_$MacOSReportableInfoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)
        android,
    required TResult Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)
        iOS,
    required TResult Function(
            String osName, String kernelVersion, String? osVersion)
        linux,
    required TResult Function(String osVersion) windows,
    required TResult Function(
            String arch, String kernelVersion, String osVersion, String model)
        macOS,
    required TResult Function(
            String browserName, String? platform, String? vendor)
        web,
  }) {
    return macOS(arch, kernelVersion, osVersion, model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)?
        android,
    TResult? Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)?
        iOS,
    TResult? Function(String osName, String kernelVersion, String? osVersion)?
        linux,
    TResult? Function(String osVersion)? windows,
    TResult? Function(
            String arch, String kernelVersion, String osVersion, String model)?
        macOS,
    TResult? Function(String browserName, String? platform, String? vendor)?
        web,
  }) {
    return macOS?.call(arch, kernelVersion, osVersion, model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)?
        android,
    TResult Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)?
        iOS,
    TResult Function(String osName, String kernelVersion, String? osVersion)?
        linux,
    TResult Function(String osVersion)? windows,
    TResult Function(
            String arch, String kernelVersion, String osVersion, String model)?
        macOS,
    TResult Function(String browserName, String? platform, String? vendor)? web,
    required TResult orElse(),
  }) {
    if (macOS != null) {
      return macOS(arch, kernelVersion, osVersion, model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownReportableInfo value) unknown,
    required TResult Function(AndroidReportableInfo value) android,
    required TResult Function(IOSReportableInfo value) iOS,
    required TResult Function(LinuxReportableInfo value) linux,
    required TResult Function(WindowsReportableInfo value) windows,
    required TResult Function(MacOSReportableInfo value) macOS,
    required TResult Function(WebReportableInfo value) web,
  }) {
    return macOS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownReportableInfo value)? unknown,
    TResult? Function(AndroidReportableInfo value)? android,
    TResult? Function(IOSReportableInfo value)? iOS,
    TResult? Function(LinuxReportableInfo value)? linux,
    TResult? Function(WindowsReportableInfo value)? windows,
    TResult? Function(MacOSReportableInfo value)? macOS,
    TResult? Function(WebReportableInfo value)? web,
  }) {
    return macOS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownReportableInfo value)? unknown,
    TResult Function(AndroidReportableInfo value)? android,
    TResult Function(IOSReportableInfo value)? iOS,
    TResult Function(LinuxReportableInfo value)? linux,
    TResult Function(WindowsReportableInfo value)? windows,
    TResult Function(MacOSReportableInfo value)? macOS,
    TResult Function(WebReportableInfo value)? web,
    required TResult orElse(),
  }) {
    if (macOS != null) {
      return macOS(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MacOSReportableInfoImplToJson(
      this,
    );
  }
}

abstract class MacOSReportableInfo implements ReportableInfo {
  const factory MacOSReportableInfo(
      {required final String arch,
      required final String kernelVersion,
      required final String osVersion,
      required final String model}) = _$MacOSReportableInfoImpl;

  factory MacOSReportableInfo.fromJson(Map<String, dynamic> json) =
      _$MacOSReportableInfoImpl.fromJson;

  String get arch;
  String get kernelVersion;
  String get osVersion;
  String get model;
  @JsonKey(ignore: true)
  _$$MacOSReportableInfoImplCopyWith<_$MacOSReportableInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WebReportableInfoImplCopyWith<$Res> {
  factory _$$WebReportableInfoImplCopyWith(_$WebReportableInfoImpl value,
          $Res Function(_$WebReportableInfoImpl) then) =
      __$$WebReportableInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String browserName, String? platform, String? vendor});
}

/// @nodoc
class __$$WebReportableInfoImplCopyWithImpl<$Res>
    extends _$ReportableInfoCopyWithImpl<$Res, _$WebReportableInfoImpl>
    implements _$$WebReportableInfoImplCopyWith<$Res> {
  __$$WebReportableInfoImplCopyWithImpl(_$WebReportableInfoImpl _value,
      $Res Function(_$WebReportableInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? browserName = null,
    Object? platform = freezed,
    Object? vendor = freezed,
  }) {
    return _then(_$WebReportableInfoImpl(
      browserName: null == browserName
          ? _value.browserName
          : browserName // ignore: cast_nullable_to_non_nullable
              as String,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      vendor: freezed == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebReportableInfoImpl implements WebReportableInfo {
  const _$WebReportableInfoImpl(
      {required this.browserName,
      this.platform,
      this.vendor,
      final String? $type})
      : $type = $type ?? 'web';

  factory _$WebReportableInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebReportableInfoImplFromJson(json);

  @override
  final String browserName;

  /// A DOMString identifying the platform on which the browser is running
  @override
  final String? platform;

  /// The vendor name of the current browser
  @override
  final String? vendor;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ReportableInfo.web(browserName: $browserName, platform: $platform, vendor: $vendor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebReportableInfoImpl &&
            (identical(other.browserName, browserName) ||
                other.browserName == browserName) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.vendor, vendor) || other.vendor == vendor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, browserName, platform, vendor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WebReportableInfoImplCopyWith<_$WebReportableInfoImpl> get copyWith =>
      __$$WebReportableInfoImplCopyWithImpl<_$WebReportableInfoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)
        android,
    required TResult Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)
        iOS,
    required TResult Function(
            String osName, String kernelVersion, String? osVersion)
        linux,
    required TResult Function(String osVersion) windows,
    required TResult Function(
            String arch, String kernelVersion, String osVersion, String model)
        macOS,
    required TResult Function(
            String browserName, String? platform, String? vendor)
        web,
  }) {
    return web(browserName, platform, vendor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)?
        android,
    TResult? Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)?
        iOS,
    TResult? Function(String osName, String kernelVersion, String? osVersion)?
        linux,
    TResult? Function(String osVersion)? windows,
    TResult? Function(
            String arch, String kernelVersion, String osVersion, String model)?
        macOS,
    TResult? Function(String browserName, String? platform, String? vendor)?
        web,
  }) {
    return web?.call(browserName, platform, vendor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(
            String? systemVersion,
            List<String?> supportedAbis,
            String? brand,
            String? device,
            String? model,
            String? hardware,
            String? product)?
        android,
    TResult Function(String? deviceName, String? deviceModel,
            String? systemName, String? systemVersion)?
        iOS,
    TResult Function(String osName, String kernelVersion, String? osVersion)?
        linux,
    TResult Function(String osVersion)? windows,
    TResult Function(
            String arch, String kernelVersion, String osVersion, String model)?
        macOS,
    TResult Function(String browserName, String? platform, String? vendor)? web,
    required TResult orElse(),
  }) {
    if (web != null) {
      return web(browserName, platform, vendor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownReportableInfo value) unknown,
    required TResult Function(AndroidReportableInfo value) android,
    required TResult Function(IOSReportableInfo value) iOS,
    required TResult Function(LinuxReportableInfo value) linux,
    required TResult Function(WindowsReportableInfo value) windows,
    required TResult Function(MacOSReportableInfo value) macOS,
    required TResult Function(WebReportableInfo value) web,
  }) {
    return web(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownReportableInfo value)? unknown,
    TResult? Function(AndroidReportableInfo value)? android,
    TResult? Function(IOSReportableInfo value)? iOS,
    TResult? Function(LinuxReportableInfo value)? linux,
    TResult? Function(WindowsReportableInfo value)? windows,
    TResult? Function(MacOSReportableInfo value)? macOS,
    TResult? Function(WebReportableInfo value)? web,
  }) {
    return web?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownReportableInfo value)? unknown,
    TResult Function(AndroidReportableInfo value)? android,
    TResult Function(IOSReportableInfo value)? iOS,
    TResult Function(LinuxReportableInfo value)? linux,
    TResult Function(WindowsReportableInfo value)? windows,
    TResult Function(MacOSReportableInfo value)? macOS,
    TResult Function(WebReportableInfo value)? web,
    required TResult orElse(),
  }) {
    if (web != null) {
      return web(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WebReportableInfoImplToJson(
      this,
    );
  }
}

abstract class WebReportableInfo implements ReportableInfo {
  const factory WebReportableInfo(
      {required final String browserName,
      final String? platform,
      final String? vendor}) = _$WebReportableInfoImpl;

  factory WebReportableInfo.fromJson(Map<String, dynamic> json) =
      _$WebReportableInfoImpl.fromJson;

  String get browserName;

  /// A DOMString identifying the platform on which the browser is running
  String? get platform;

  /// The vendor name of the current browser
  String? get vendor;
  @JsonKey(ignore: true)
  _$$WebReportableInfoImplCopyWith<_$WebReportableInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
