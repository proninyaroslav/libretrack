// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CrashInfoTearOff {
  const _$CrashInfoTearOff();

  _CrashInfo call(
      {required Object error, StackTrace? stackTrace, String? message}) {
    return _CrashInfo(
      error: error,
      stackTrace: stackTrace,
      message: message,
    );
  }
}

/// @nodoc
const $CrashInfo = _$CrashInfoTearOff();

/// @nodoc
mixin _$CrashInfo {
  Object get error => throw _privateConstructorUsedError;
  StackTrace? get stackTrace => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CrashInfoCopyWith<CrashInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrashInfoCopyWith<$Res> {
  factory $CrashInfoCopyWith(CrashInfo value, $Res Function(CrashInfo) then) =
      _$CrashInfoCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace? stackTrace, String? message});
}

/// @nodoc
class _$CrashInfoCopyWithImpl<$Res> implements $CrashInfoCopyWith<$Res> {
  _$CrashInfoCopyWithImpl(this._value, this._then);

  final CrashInfo _value;
  // ignore: unused_field
  final $Res Function(CrashInfo) _then;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CrashInfoCopyWith<$Res> implements $CrashInfoCopyWith<$Res> {
  factory _$CrashInfoCopyWith(
          _CrashInfo value, $Res Function(_CrashInfo) then) =
      __$CrashInfoCopyWithImpl<$Res>;
  @override
  $Res call({Object error, StackTrace? stackTrace, String? message});
}

/// @nodoc
class __$CrashInfoCopyWithImpl<$Res> extends _$CrashInfoCopyWithImpl<$Res>
    implements _$CrashInfoCopyWith<$Res> {
  __$CrashInfoCopyWithImpl(_CrashInfo _value, $Res Function(_CrashInfo) _then)
      : super(_value, (v) => _then(v as _CrashInfo));

  @override
  _CrashInfo get _value => super._value as _CrashInfo;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? message = freezed,
  }) {
    return _then(_CrashInfo(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CrashInfo implements _CrashInfo {
  const _$_CrashInfo({required this.error, this.stackTrace, this.message});

  @override
  final Object error;
  @override
  final StackTrace? stackTrace;
  @override
  final String? message;

  @override
  String toString() {
    return 'CrashInfo(error: $error, stackTrace: $stackTrace, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CrashInfo &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality()
                    .equals(other.stackTrace, stackTrace)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stackTrace) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$CrashInfoCopyWith<_CrashInfo> get copyWith =>
      __$CrashInfoCopyWithImpl<_CrashInfo>(this, _$identity);
}

abstract class _CrashInfo implements CrashInfo {
  const factory _CrashInfo(
      {required Object error,
      StackTrace? stackTrace,
      String? message}) = _$_CrashInfo;

  @override
  Object get error => throw _privateConstructorUsedError;
  @override
  StackTrace? get stackTrace => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CrashInfoCopyWith<_CrashInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CrashReportTearOff {
  const _$CrashReportTearOff();

  _CrashReport call(
      {required String email,
      required String subject,
      required CrashReportData data}) {
    return _CrashReport(
      email: email,
      subject: subject,
      data: data,
    );
  }
}

/// @nodoc
const $CrashReport = _$CrashReportTearOff();

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
      _$CrashReportCopyWithImpl<$Res>;
  $Res call({String email, String subject, CrashReportData data});

  $CrashReportDataCopyWith<$Res> get data;
}

/// @nodoc
class _$CrashReportCopyWithImpl<$Res> implements $CrashReportCopyWith<$Res> {
  _$CrashReportCopyWithImpl(this._value, this._then);

  final CrashReport _value;
  // ignore: unused_field
  final $Res Function(CrashReport) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? subject = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CrashReportData,
    ));
  }

  @override
  $CrashReportDataCopyWith<$Res> get data {
    return $CrashReportDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$CrashReportCopyWith<$Res>
    implements $CrashReportCopyWith<$Res> {
  factory _$CrashReportCopyWith(
          _CrashReport value, $Res Function(_CrashReport) then) =
      __$CrashReportCopyWithImpl<$Res>;
  @override
  $Res call({String email, String subject, CrashReportData data});

  @override
  $CrashReportDataCopyWith<$Res> get data;
}

/// @nodoc
class __$CrashReportCopyWithImpl<$Res> extends _$CrashReportCopyWithImpl<$Res>
    implements _$CrashReportCopyWith<$Res> {
  __$CrashReportCopyWithImpl(
      _CrashReport _value, $Res Function(_CrashReport) _then)
      : super(_value, (v) => _then(v as _CrashReport));

  @override
  _CrashReport get _value => super._value as _CrashReport;

  @override
  $Res call({
    Object? email = freezed,
    Object? subject = freezed,
    Object? data = freezed,
  }) {
    return _then(_CrashReport(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CrashReportData,
    ));
  }
}

/// @nodoc

class _$_CrashReport implements _CrashReport {
  const _$_CrashReport(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CrashReport &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality()
                    .equals(other.subject, subject)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(subject) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$CrashReportCopyWith<_CrashReport> get copyWith =>
      __$CrashReportCopyWithImpl<_CrashReport>(this, _$identity);
}

abstract class _CrashReport implements CrashReport {
  const factory _CrashReport(
      {required String email,
      required String subject,
      required CrashReportData data}) = _$_CrashReport;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get subject => throw _privateConstructorUsedError;
  @override
  CrashReportData get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CrashReportCopyWith<_CrashReport> get copyWith =>
      throw _privateConstructorUsedError;
}

CrashReportData _$CrashReportDataFromJson(Map<String, dynamic> json) {
  return _CrashReportData.fromJson(json);
}

/// @nodoc
class _$CrashReportDataTearOff {
  const _$CrashReportDataTearOff();

  _CrashReportData call(
      {@CrashReportIdConverter() required CrashReportId reportId,
      required String packageName,
      required String appName,
      required String version,
      required String buildNumber,
      required String error,
      String? comment,
      String? stackTrace,
      required ReportableInfo deviceInfo}) {
    return _CrashReportData(
      reportId: reportId,
      packageName: packageName,
      appName: appName,
      version: version,
      buildNumber: buildNumber,
      error: error,
      comment: comment,
      stackTrace: stackTrace,
      deviceInfo: deviceInfo,
    );
  }

  CrashReportData fromJson(Map<String, Object> json) {
    return CrashReportData.fromJson(json);
  }
}

/// @nodoc
const $CrashReportData = _$CrashReportDataTearOff();

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
      _$CrashReportDataCopyWithImpl<$Res>;
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
class _$CrashReportDataCopyWithImpl<$Res>
    implements $CrashReportDataCopyWith<$Res> {
  _$CrashReportDataCopyWithImpl(this._value, this._then);

  final CrashReportData _value;
  // ignore: unused_field
  final $Res Function(CrashReportData) _then;

  @override
  $Res call({
    Object? reportId = freezed,
    Object? packageName = freezed,
    Object? appName = freezed,
    Object? version = freezed,
    Object? buildNumber = freezed,
    Object? error = freezed,
    Object? comment = freezed,
    Object? stackTrace = freezed,
    Object? deviceInfo = freezed,
  }) {
    return _then(_value.copyWith(
      reportId: reportId == freezed
          ? _value.reportId
          : reportId // ignore: cast_nullable_to_non_nullable
              as CrashReportId,
      packageName: packageName == freezed
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      appName: appName == freezed
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildNumber: buildNumber == freezed
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceInfo: deviceInfo == freezed
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as ReportableInfo,
    ));
  }

  @override
  $ReportableInfoCopyWith<$Res> get deviceInfo {
    return $ReportableInfoCopyWith<$Res>(_value.deviceInfo, (value) {
      return _then(_value.copyWith(deviceInfo: value));
    });
  }
}

/// @nodoc
abstract class _$CrashReportDataCopyWith<$Res>
    implements $CrashReportDataCopyWith<$Res> {
  factory _$CrashReportDataCopyWith(
          _CrashReportData value, $Res Function(_CrashReportData) then) =
      __$CrashReportDataCopyWithImpl<$Res>;
  @override
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
class __$CrashReportDataCopyWithImpl<$Res>
    extends _$CrashReportDataCopyWithImpl<$Res>
    implements _$CrashReportDataCopyWith<$Res> {
  __$CrashReportDataCopyWithImpl(
      _CrashReportData _value, $Res Function(_CrashReportData) _then)
      : super(_value, (v) => _then(v as _CrashReportData));

  @override
  _CrashReportData get _value => super._value as _CrashReportData;

  @override
  $Res call({
    Object? reportId = freezed,
    Object? packageName = freezed,
    Object? appName = freezed,
    Object? version = freezed,
    Object? buildNumber = freezed,
    Object? error = freezed,
    Object? comment = freezed,
    Object? stackTrace = freezed,
    Object? deviceInfo = freezed,
  }) {
    return _then(_CrashReportData(
      reportId: reportId == freezed
          ? _value.reportId
          : reportId // ignore: cast_nullable_to_non_nullable
              as CrashReportId,
      packageName: packageName == freezed
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      appName: appName == freezed
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildNumber: buildNumber == freezed
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceInfo: deviceInfo == freezed
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as ReportableInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CrashReportData implements _CrashReportData {
  const _$_CrashReportData(
      {@CrashReportIdConverter() required this.reportId,
      required this.packageName,
      required this.appName,
      required this.version,
      required this.buildNumber,
      required this.error,
      this.comment,
      this.stackTrace,
      required this.deviceInfo});

  factory _$_CrashReportData.fromJson(Map<String, dynamic> json) =>
      _$_$_CrashReportDataFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CrashReportData &&
            (identical(other.reportId, reportId) ||
                const DeepCollectionEquality()
                    .equals(other.reportId, reportId)) &&
            (identical(other.packageName, packageName) ||
                const DeepCollectionEquality()
                    .equals(other.packageName, packageName)) &&
            (identical(other.appName, appName) ||
                const DeepCollectionEquality()
                    .equals(other.appName, appName)) &&
            (identical(other.version, version) ||
                const DeepCollectionEquality()
                    .equals(other.version, version)) &&
            (identical(other.buildNumber, buildNumber) ||
                const DeepCollectionEquality()
                    .equals(other.buildNumber, buildNumber)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality()
                    .equals(other.stackTrace, stackTrace)) &&
            (identical(other.deviceInfo, deviceInfo) ||
                const DeepCollectionEquality()
                    .equals(other.deviceInfo, deviceInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(reportId) ^
      const DeepCollectionEquality().hash(packageName) ^
      const DeepCollectionEquality().hash(appName) ^
      const DeepCollectionEquality().hash(version) ^
      const DeepCollectionEquality().hash(buildNumber) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(stackTrace) ^
      const DeepCollectionEquality().hash(deviceInfo);

  @JsonKey(ignore: true)
  @override
  _$CrashReportDataCopyWith<_CrashReportData> get copyWith =>
      __$CrashReportDataCopyWithImpl<_CrashReportData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CrashReportDataToJson(this);
  }
}

abstract class _CrashReportData implements CrashReportData {
  const factory _CrashReportData(
      {@CrashReportIdConverter() required CrashReportId reportId,
      required String packageName,
      required String appName,
      required String version,
      required String buildNumber,
      required String error,
      String? comment,
      String? stackTrace,
      required ReportableInfo deviceInfo}) = _$_CrashReportData;

  factory _CrashReportData.fromJson(Map<String, dynamic> json) =
      _$_CrashReportData.fromJson;

  @override
  @CrashReportIdConverter()
  CrashReportId get reportId => throw _privateConstructorUsedError;
  @override
  String get packageName => throw _privateConstructorUsedError;
  @override
  String get appName => throw _privateConstructorUsedError;
  @override
  String get version => throw _privateConstructorUsedError;
  @override
  String get buildNumber => throw _privateConstructorUsedError;
  @override
  String get error => throw _privateConstructorUsedError;
  @override
  String? get comment => throw _privateConstructorUsedError;
  @override
  String? get stackTrace => throw _privateConstructorUsedError;
  @override
  ReportableInfo get deviceInfo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CrashReportDataCopyWith<_CrashReportData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CrashReportSendResultTearOff {
  const _$CrashReportSendResultTearOff();

  CrashReportSendResultSuccess success() {
    return const CrashReportSendResultSuccess();
  }

  CrashReportSendResultEmailUnsupported emailUnsupported() {
    return const CrashReportSendResultEmailUnsupported();
  }
}

/// @nodoc
const $CrashReportSendResult = _$CrashReportSendResultTearOff();

/// @nodoc
mixin _$CrashReportSendResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() emailUnsupported,
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
      _$CrashReportSendResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$CrashReportSendResultCopyWithImpl<$Res>
    implements $CrashReportSendResultCopyWith<$Res> {
  _$CrashReportSendResultCopyWithImpl(this._value, this._then);

  final CrashReportSendResult _value;
  // ignore: unused_field
  final $Res Function(CrashReportSendResult) _then;
}

/// @nodoc
abstract class $CrashReportSendResultSuccessCopyWith<$Res> {
  factory $CrashReportSendResultSuccessCopyWith(
          CrashReportSendResultSuccess value,
          $Res Function(CrashReportSendResultSuccess) then) =
      _$CrashReportSendResultSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$CrashReportSendResultSuccessCopyWithImpl<$Res>
    extends _$CrashReportSendResultCopyWithImpl<$Res>
    implements $CrashReportSendResultSuccessCopyWith<$Res> {
  _$CrashReportSendResultSuccessCopyWithImpl(
      CrashReportSendResultSuccess _value,
      $Res Function(CrashReportSendResultSuccess) _then)
      : super(_value, (v) => _then(v as CrashReportSendResultSuccess));

  @override
  CrashReportSendResultSuccess get _value =>
      super._value as CrashReportSendResultSuccess;
}

/// @nodoc

class _$CrashReportSendResultSuccess implements CrashReportSendResultSuccess {
  const _$CrashReportSendResultSuccess();

  @override
  String toString() {
    return 'CrashReportSendResult.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CrashReportSendResultSuccess);
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
  const factory CrashReportSendResultSuccess() = _$CrashReportSendResultSuccess;
}

/// @nodoc
abstract class $CrashReportSendResultEmailUnsupportedCopyWith<$Res> {
  factory $CrashReportSendResultEmailUnsupportedCopyWith(
          CrashReportSendResultEmailUnsupported value,
          $Res Function(CrashReportSendResultEmailUnsupported) then) =
      _$CrashReportSendResultEmailUnsupportedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CrashReportSendResultEmailUnsupportedCopyWithImpl<$Res>
    extends _$CrashReportSendResultCopyWithImpl<$Res>
    implements $CrashReportSendResultEmailUnsupportedCopyWith<$Res> {
  _$CrashReportSendResultEmailUnsupportedCopyWithImpl(
      CrashReportSendResultEmailUnsupported _value,
      $Res Function(CrashReportSendResultEmailUnsupported) _then)
      : super(_value, (v) => _then(v as CrashReportSendResultEmailUnsupported));

  @override
  CrashReportSendResultEmailUnsupported get _value =>
      super._value as CrashReportSendResultEmailUnsupported;
}

/// @nodoc

class _$CrashReportSendResultEmailUnsupported
    implements CrashReportSendResultEmailUnsupported {
  const _$CrashReportSendResultEmailUnsupported();

  @override
  String toString() {
    return 'CrashReportSendResult.emailUnsupported()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CrashReportSendResultEmailUnsupported);
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
      _$CrashReportSendResultEmailUnsupported;
}

ReportableInfo _$ReportableInfoFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
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
      throw FallThroughError();
  }
}

/// @nodoc
class _$ReportableInfoTearOff {
  const _$ReportableInfoTearOff();

  UnknownReportableInfo unknown() {
    return const UnknownReportableInfo();
  }

  AndroidReportableInfo android(
      {String? systemVersion,
      List<String?> supportedAbis = const [],
      String? brand,
      String? device,
      String? model,
      String? hardware,
      String? product}) {
    return AndroidReportableInfo(
      systemVersion: systemVersion,
      supportedAbis: supportedAbis,
      brand: brand,
      device: device,
      model: model,
      hardware: hardware,
      product: product,
    );
  }

  IOSReportableInfo iOS(
      {String? deviceName,
      String? deviceModel,
      String? systemName,
      String? systemVersion}) {
    return IOSReportableInfo(
      deviceName: deviceName,
      deviceModel: deviceModel,
      systemName: systemName,
      systemVersion: systemVersion,
    );
  }

  LinuxReportableInfo linux(
      {required String osName,
      required String kernelVersion,
      String? osVersion}) {
    return LinuxReportableInfo(
      osName: osName,
      kernelVersion: kernelVersion,
      osVersion: osVersion,
    );
  }

  WindowsReportableInfo windows({required String osVersion}) {
    return WindowsReportableInfo(
      osVersion: osVersion,
    );
  }

  MacOSReportableInfo macOS(
      {required String arch,
      required String kernelVersion,
      required String osVersion,
      required String model}) {
    return MacOSReportableInfo(
      arch: arch,
      kernelVersion: kernelVersion,
      osVersion: osVersion,
      model: model,
    );
  }

  WebReportableInfo web(
      {required String browserName,
      required String platform,
      required String vendor}) {
    return WebReportableInfo(
      browserName: browserName,
      platform: platform,
      vendor: vendor,
    );
  }

  ReportableInfo fromJson(Map<String, Object> json) {
    return ReportableInfo.fromJson(json);
  }
}

/// @nodoc
const $ReportableInfo = _$ReportableInfoTearOff();

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
            String browserName, String platform, String vendor)
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
    TResult Function(String browserName, String platform, String vendor)? web,
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
      _$ReportableInfoCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReportableInfoCopyWithImpl<$Res>
    implements $ReportableInfoCopyWith<$Res> {
  _$ReportableInfoCopyWithImpl(this._value, this._then);

  final ReportableInfo _value;
  // ignore: unused_field
  final $Res Function(ReportableInfo) _then;
}

/// @nodoc
abstract class $UnknownReportableInfoCopyWith<$Res> {
  factory $UnknownReportableInfoCopyWith(UnknownReportableInfo value,
          $Res Function(UnknownReportableInfo) then) =
      _$UnknownReportableInfoCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnknownReportableInfoCopyWithImpl<$Res>
    extends _$ReportableInfoCopyWithImpl<$Res>
    implements $UnknownReportableInfoCopyWith<$Res> {
  _$UnknownReportableInfoCopyWithImpl(
      UnknownReportableInfo _value, $Res Function(UnknownReportableInfo) _then)
      : super(_value, (v) => _then(v as UnknownReportableInfo));

  @override
  UnknownReportableInfo get _value => super._value as UnknownReportableInfo;
}

/// @nodoc
@JsonSerializable()
class _$UnknownReportableInfo implements UnknownReportableInfo {
  const _$UnknownReportableInfo();

  factory _$UnknownReportableInfo.fromJson(Map<String, dynamic> json) =>
      _$_$UnknownReportableInfoFromJson(json);

  @override
  String toString() {
    return 'ReportableInfo.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnknownReportableInfo);
  }

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
            String browserName, String platform, String vendor)
        web,
  }) {
    return unknown();
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
    TResult Function(String browserName, String platform, String vendor)? web,
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
    return _$_$UnknownReportableInfoToJson(this)..['runtimeType'] = 'unknown';
  }
}

abstract class UnknownReportableInfo implements ReportableInfo {
  const factory UnknownReportableInfo() = _$UnknownReportableInfo;

  factory UnknownReportableInfo.fromJson(Map<String, dynamic> json) =
      _$UnknownReportableInfo.fromJson;
}

/// @nodoc
abstract class $AndroidReportableInfoCopyWith<$Res> {
  factory $AndroidReportableInfoCopyWith(AndroidReportableInfo value,
          $Res Function(AndroidReportableInfo) then) =
      _$AndroidReportableInfoCopyWithImpl<$Res>;
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
class _$AndroidReportableInfoCopyWithImpl<$Res>
    extends _$ReportableInfoCopyWithImpl<$Res>
    implements $AndroidReportableInfoCopyWith<$Res> {
  _$AndroidReportableInfoCopyWithImpl(
      AndroidReportableInfo _value, $Res Function(AndroidReportableInfo) _then)
      : super(_value, (v) => _then(v as AndroidReportableInfo));

  @override
  AndroidReportableInfo get _value => super._value as AndroidReportableInfo;

  @override
  $Res call({
    Object? systemVersion = freezed,
    Object? supportedAbis = freezed,
    Object? brand = freezed,
    Object? device = freezed,
    Object? model = freezed,
    Object? hardware = freezed,
    Object? product = freezed,
  }) {
    return _then(AndroidReportableInfo(
      systemVersion: systemVersion == freezed
          ? _value.systemVersion
          : systemVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      supportedAbis: supportedAbis == freezed
          ? _value.supportedAbis
          : supportedAbis // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String?,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      hardware: hardware == freezed
          ? _value.hardware
          : hardware // ignore: cast_nullable_to_non_nullable
              as String?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AndroidReportableInfo implements AndroidReportableInfo {
  const _$AndroidReportableInfo(
      {this.systemVersion,
      this.supportedAbis = const [],
      this.brand,
      this.device,
      this.model,
      this.hardware,
      this.product});

  factory _$AndroidReportableInfo.fromJson(Map<String, dynamic> json) =>
      _$_$AndroidReportableInfoFromJson(json);

  @override
  final String? systemVersion;
  @JsonKey(defaultValue: const [])
  @override

  /// An ordered list of ABIs supported by this device.
  final List<String?> supportedAbis;
  @override

  /// The consumer-visible brand with which
  /// the product/hardware will be associated, if any.
  final String? brand;
  @override

  /// The name of the industrial design.
  final String? device;
  @override

  /// The end-user-visible name for the end product.
  final String? model;
  @override

  /// The name of the hardware (from the kernel command line or /proc).
  final String? hardware;
  @override

  /// The name of the overall product.
  final String? product;

  @override
  String toString() {
    return 'ReportableInfo.android(systemVersion: $systemVersion, supportedAbis: $supportedAbis, brand: $brand, device: $device, model: $model, hardware: $hardware, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AndroidReportableInfo &&
            (identical(other.systemVersion, systemVersion) ||
                const DeepCollectionEquality()
                    .equals(other.systemVersion, systemVersion)) &&
            (identical(other.supportedAbis, supportedAbis) ||
                const DeepCollectionEquality()
                    .equals(other.supportedAbis, supportedAbis)) &&
            (identical(other.brand, brand) ||
                const DeepCollectionEquality().equals(other.brand, brand)) &&
            (identical(other.device, device) ||
                const DeepCollectionEquality().equals(other.device, device)) &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)) &&
            (identical(other.hardware, hardware) ||
                const DeepCollectionEquality()
                    .equals(other.hardware, hardware)) &&
            (identical(other.product, product) ||
                const DeepCollectionEquality().equals(other.product, product)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(systemVersion) ^
      const DeepCollectionEquality().hash(supportedAbis) ^
      const DeepCollectionEquality().hash(brand) ^
      const DeepCollectionEquality().hash(device) ^
      const DeepCollectionEquality().hash(model) ^
      const DeepCollectionEquality().hash(hardware) ^
      const DeepCollectionEquality().hash(product);

  @JsonKey(ignore: true)
  @override
  $AndroidReportableInfoCopyWith<AndroidReportableInfo> get copyWith =>
      _$AndroidReportableInfoCopyWithImpl<AndroidReportableInfo>(
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
            String browserName, String platform, String vendor)
        web,
  }) {
    return android(
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
    TResult Function(String browserName, String platform, String vendor)? web,
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
    return _$_$AndroidReportableInfoToJson(this)..['runtimeType'] = 'android';
  }
}

abstract class AndroidReportableInfo implements ReportableInfo {
  const factory AndroidReportableInfo(
      {String? systemVersion,
      List<String?> supportedAbis,
      String? brand,
      String? device,
      String? model,
      String? hardware,
      String? product}) = _$AndroidReportableInfo;

  factory AndroidReportableInfo.fromJson(Map<String, dynamic> json) =
      _$AndroidReportableInfo.fromJson;

  String? get systemVersion => throw _privateConstructorUsedError;

  /// An ordered list of ABIs supported by this device.
  List<String?> get supportedAbis => throw _privateConstructorUsedError;

  /// The consumer-visible brand with which
  /// the product/hardware will be associated, if any.
  String? get brand => throw _privateConstructorUsedError;

  /// The name of the industrial design.
  String? get device => throw _privateConstructorUsedError;

  /// The end-user-visible name for the end product.
  String? get model => throw _privateConstructorUsedError;

  /// The name of the hardware (from the kernel command line or /proc).
  String? get hardware => throw _privateConstructorUsedError;

  /// The name of the overall product.
  String? get product => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AndroidReportableInfoCopyWith<AndroidReportableInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IOSReportableInfoCopyWith<$Res> {
  factory $IOSReportableInfoCopyWith(
          IOSReportableInfo value, $Res Function(IOSReportableInfo) then) =
      _$IOSReportableInfoCopyWithImpl<$Res>;
  $Res call(
      {String? deviceName,
      String? deviceModel,
      String? systemName,
      String? systemVersion});
}

/// @nodoc
class _$IOSReportableInfoCopyWithImpl<$Res>
    extends _$ReportableInfoCopyWithImpl<$Res>
    implements $IOSReportableInfoCopyWith<$Res> {
  _$IOSReportableInfoCopyWithImpl(
      IOSReportableInfo _value, $Res Function(IOSReportableInfo) _then)
      : super(_value, (v) => _then(v as IOSReportableInfo));

  @override
  IOSReportableInfo get _value => super._value as IOSReportableInfo;

  @override
  $Res call({
    Object? deviceName = freezed,
    Object? deviceModel = freezed,
    Object? systemName = freezed,
    Object? systemVersion = freezed,
  }) {
    return _then(IOSReportableInfo(
      deviceName: deviceName == freezed
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceModel: deviceModel == freezed
          ? _value.deviceModel
          : deviceModel // ignore: cast_nullable_to_non_nullable
              as String?,
      systemName: systemName == freezed
          ? _value.systemName
          : systemName // ignore: cast_nullable_to_non_nullable
              as String?,
      systemVersion: systemVersion == freezed
          ? _value.systemVersion
          : systemVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IOSReportableInfo implements IOSReportableInfo {
  const _$IOSReportableInfo(
      {this.deviceName, this.deviceModel, this.systemName, this.systemVersion});

  factory _$IOSReportableInfo.fromJson(Map<String, dynamic> json) =>
      _$_$IOSReportableInfoFromJson(json);

  @override
  final String? deviceName;
  @override
  final String? deviceModel;
  @override
  final String? systemName;
  @override
  final String? systemVersion;

  @override
  String toString() {
    return 'ReportableInfo.iOS(deviceName: $deviceName, deviceModel: $deviceModel, systemName: $systemName, systemVersion: $systemVersion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IOSReportableInfo &&
            (identical(other.deviceName, deviceName) ||
                const DeepCollectionEquality()
                    .equals(other.deviceName, deviceName)) &&
            (identical(other.deviceModel, deviceModel) ||
                const DeepCollectionEquality()
                    .equals(other.deviceModel, deviceModel)) &&
            (identical(other.systemName, systemName) ||
                const DeepCollectionEquality()
                    .equals(other.systemName, systemName)) &&
            (identical(other.systemVersion, systemVersion) ||
                const DeepCollectionEquality()
                    .equals(other.systemVersion, systemVersion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(deviceName) ^
      const DeepCollectionEquality().hash(deviceModel) ^
      const DeepCollectionEquality().hash(systemName) ^
      const DeepCollectionEquality().hash(systemVersion);

  @JsonKey(ignore: true)
  @override
  $IOSReportableInfoCopyWith<IOSReportableInfo> get copyWith =>
      _$IOSReportableInfoCopyWithImpl<IOSReportableInfo>(this, _$identity);

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
            String browserName, String platform, String vendor)
        web,
  }) {
    return iOS(deviceName, deviceModel, systemName, systemVersion);
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
    TResult Function(String browserName, String platform, String vendor)? web,
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
    return _$_$IOSReportableInfoToJson(this)..['runtimeType'] = 'iOS';
  }
}

abstract class IOSReportableInfo implements ReportableInfo {
  const factory IOSReportableInfo(
      {String? deviceName,
      String? deviceModel,
      String? systemName,
      String? systemVersion}) = _$IOSReportableInfo;

  factory IOSReportableInfo.fromJson(Map<String, dynamic> json) =
      _$IOSReportableInfo.fromJson;

  String? get deviceName => throw _privateConstructorUsedError;
  String? get deviceModel => throw _privateConstructorUsedError;
  String? get systemName => throw _privateConstructorUsedError;
  String? get systemVersion => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IOSReportableInfoCopyWith<IOSReportableInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinuxReportableInfoCopyWith<$Res> {
  factory $LinuxReportableInfoCopyWith(
          LinuxReportableInfo value, $Res Function(LinuxReportableInfo) then) =
      _$LinuxReportableInfoCopyWithImpl<$Res>;
  $Res call({String osName, String kernelVersion, String? osVersion});
}

/// @nodoc
class _$LinuxReportableInfoCopyWithImpl<$Res>
    extends _$ReportableInfoCopyWithImpl<$Res>
    implements $LinuxReportableInfoCopyWith<$Res> {
  _$LinuxReportableInfoCopyWithImpl(
      LinuxReportableInfo _value, $Res Function(LinuxReportableInfo) _then)
      : super(_value, (v) => _then(v as LinuxReportableInfo));

  @override
  LinuxReportableInfo get _value => super._value as LinuxReportableInfo;

  @override
  $Res call({
    Object? osName = freezed,
    Object? kernelVersion = freezed,
    Object? osVersion = freezed,
  }) {
    return _then(LinuxReportableInfo(
      osName: osName == freezed
          ? _value.osName
          : osName // ignore: cast_nullable_to_non_nullable
              as String,
      kernelVersion: kernelVersion == freezed
          ? _value.kernelVersion
          : kernelVersion // ignore: cast_nullable_to_non_nullable
              as String,
      osVersion: osVersion == freezed
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinuxReportableInfo implements LinuxReportableInfo {
  const _$LinuxReportableInfo(
      {required this.osName, required this.kernelVersion, this.osVersion});

  factory _$LinuxReportableInfo.fromJson(Map<String, dynamic> json) =>
      _$_$LinuxReportableInfoFromJson(json);

  @override
  final String osName;
  @override
  final String kernelVersion;
  @override
  final String? osVersion;

  @override
  String toString() {
    return 'ReportableInfo.linux(osName: $osName, kernelVersion: $kernelVersion, osVersion: $osVersion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LinuxReportableInfo &&
            (identical(other.osName, osName) ||
                const DeepCollectionEquality().equals(other.osName, osName)) &&
            (identical(other.kernelVersion, kernelVersion) ||
                const DeepCollectionEquality()
                    .equals(other.kernelVersion, kernelVersion)) &&
            (identical(other.osVersion, osVersion) ||
                const DeepCollectionEquality()
                    .equals(other.osVersion, osVersion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(osName) ^
      const DeepCollectionEquality().hash(kernelVersion) ^
      const DeepCollectionEquality().hash(osVersion);

  @JsonKey(ignore: true)
  @override
  $LinuxReportableInfoCopyWith<LinuxReportableInfo> get copyWith =>
      _$LinuxReportableInfoCopyWithImpl<LinuxReportableInfo>(this, _$identity);

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
            String browserName, String platform, String vendor)
        web,
  }) {
    return linux(osName, kernelVersion, osVersion);
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
    TResult Function(String browserName, String platform, String vendor)? web,
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
    return _$_$LinuxReportableInfoToJson(this)..['runtimeType'] = 'linux';
  }
}

abstract class LinuxReportableInfo implements ReportableInfo {
  const factory LinuxReportableInfo(
      {required String osName,
      required String kernelVersion,
      String? osVersion}) = _$LinuxReportableInfo;

  factory LinuxReportableInfo.fromJson(Map<String, dynamic> json) =
      _$LinuxReportableInfo.fromJson;

  String get osName => throw _privateConstructorUsedError;
  String get kernelVersion => throw _privateConstructorUsedError;
  String? get osVersion => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinuxReportableInfoCopyWith<LinuxReportableInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WindowsReportableInfoCopyWith<$Res> {
  factory $WindowsReportableInfoCopyWith(WindowsReportableInfo value,
          $Res Function(WindowsReportableInfo) then) =
      _$WindowsReportableInfoCopyWithImpl<$Res>;
  $Res call({String osVersion});
}

/// @nodoc
class _$WindowsReportableInfoCopyWithImpl<$Res>
    extends _$ReportableInfoCopyWithImpl<$Res>
    implements $WindowsReportableInfoCopyWith<$Res> {
  _$WindowsReportableInfoCopyWithImpl(
      WindowsReportableInfo _value, $Res Function(WindowsReportableInfo) _then)
      : super(_value, (v) => _then(v as WindowsReportableInfo));

  @override
  WindowsReportableInfo get _value => super._value as WindowsReportableInfo;

  @override
  $Res call({
    Object? osVersion = freezed,
  }) {
    return _then(WindowsReportableInfo(
      osVersion: osVersion == freezed
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WindowsReportableInfo implements WindowsReportableInfo {
  const _$WindowsReportableInfo({required this.osVersion});

  factory _$WindowsReportableInfo.fromJson(Map<String, dynamic> json) =>
      _$_$WindowsReportableInfoFromJson(json);

  @override
  final String osVersion;

  @override
  String toString() {
    return 'ReportableInfo.windows(osVersion: $osVersion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WindowsReportableInfo &&
            (identical(other.osVersion, osVersion) ||
                const DeepCollectionEquality()
                    .equals(other.osVersion, osVersion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(osVersion);

  @JsonKey(ignore: true)
  @override
  $WindowsReportableInfoCopyWith<WindowsReportableInfo> get copyWith =>
      _$WindowsReportableInfoCopyWithImpl<WindowsReportableInfo>(
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
            String browserName, String platform, String vendor)
        web,
  }) {
    return windows(osVersion);
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
    TResult Function(String browserName, String platform, String vendor)? web,
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
    return _$_$WindowsReportableInfoToJson(this)..['runtimeType'] = 'windows';
  }
}

abstract class WindowsReportableInfo implements ReportableInfo {
  const factory WindowsReportableInfo({required String osVersion}) =
      _$WindowsReportableInfo;

  factory WindowsReportableInfo.fromJson(Map<String, dynamic> json) =
      _$WindowsReportableInfo.fromJson;

  String get osVersion => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WindowsReportableInfoCopyWith<WindowsReportableInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MacOSReportableInfoCopyWith<$Res> {
  factory $MacOSReportableInfoCopyWith(
          MacOSReportableInfo value, $Res Function(MacOSReportableInfo) then) =
      _$MacOSReportableInfoCopyWithImpl<$Res>;
  $Res call(
      {String arch, String kernelVersion, String osVersion, String model});
}

/// @nodoc
class _$MacOSReportableInfoCopyWithImpl<$Res>
    extends _$ReportableInfoCopyWithImpl<$Res>
    implements $MacOSReportableInfoCopyWith<$Res> {
  _$MacOSReportableInfoCopyWithImpl(
      MacOSReportableInfo _value, $Res Function(MacOSReportableInfo) _then)
      : super(_value, (v) => _then(v as MacOSReportableInfo));

  @override
  MacOSReportableInfo get _value => super._value as MacOSReportableInfo;

  @override
  $Res call({
    Object? arch = freezed,
    Object? kernelVersion = freezed,
    Object? osVersion = freezed,
    Object? model = freezed,
  }) {
    return _then(MacOSReportableInfo(
      arch: arch == freezed
          ? _value.arch
          : arch // ignore: cast_nullable_to_non_nullable
              as String,
      kernelVersion: kernelVersion == freezed
          ? _value.kernelVersion
          : kernelVersion // ignore: cast_nullable_to_non_nullable
              as String,
      osVersion: osVersion == freezed
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MacOSReportableInfo implements MacOSReportableInfo {
  const _$MacOSReportableInfo(
      {required this.arch,
      required this.kernelVersion,
      required this.osVersion,
      required this.model});

  factory _$MacOSReportableInfo.fromJson(Map<String, dynamic> json) =>
      _$_$MacOSReportableInfoFromJson(json);

  @override
  final String arch;
  @override
  final String kernelVersion;
  @override
  final String osVersion;
  @override
  final String model;

  @override
  String toString() {
    return 'ReportableInfo.macOS(arch: $arch, kernelVersion: $kernelVersion, osVersion: $osVersion, model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MacOSReportableInfo &&
            (identical(other.arch, arch) ||
                const DeepCollectionEquality().equals(other.arch, arch)) &&
            (identical(other.kernelVersion, kernelVersion) ||
                const DeepCollectionEquality()
                    .equals(other.kernelVersion, kernelVersion)) &&
            (identical(other.osVersion, osVersion) ||
                const DeepCollectionEquality()
                    .equals(other.osVersion, osVersion)) &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(arch) ^
      const DeepCollectionEquality().hash(kernelVersion) ^
      const DeepCollectionEquality().hash(osVersion) ^
      const DeepCollectionEquality().hash(model);

  @JsonKey(ignore: true)
  @override
  $MacOSReportableInfoCopyWith<MacOSReportableInfo> get copyWith =>
      _$MacOSReportableInfoCopyWithImpl<MacOSReportableInfo>(this, _$identity);

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
            String browserName, String platform, String vendor)
        web,
  }) {
    return macOS(arch, kernelVersion, osVersion, model);
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
    TResult Function(String browserName, String platform, String vendor)? web,
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
    return _$_$MacOSReportableInfoToJson(this)..['runtimeType'] = 'macOS';
  }
}

abstract class MacOSReportableInfo implements ReportableInfo {
  const factory MacOSReportableInfo(
      {required String arch,
      required String kernelVersion,
      required String osVersion,
      required String model}) = _$MacOSReportableInfo;

  factory MacOSReportableInfo.fromJson(Map<String, dynamic> json) =
      _$MacOSReportableInfo.fromJson;

  String get arch => throw _privateConstructorUsedError;
  String get kernelVersion => throw _privateConstructorUsedError;
  String get osVersion => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MacOSReportableInfoCopyWith<MacOSReportableInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebReportableInfoCopyWith<$Res> {
  factory $WebReportableInfoCopyWith(
          WebReportableInfo value, $Res Function(WebReportableInfo) then) =
      _$WebReportableInfoCopyWithImpl<$Res>;
  $Res call({String browserName, String platform, String vendor});
}

/// @nodoc
class _$WebReportableInfoCopyWithImpl<$Res>
    extends _$ReportableInfoCopyWithImpl<$Res>
    implements $WebReportableInfoCopyWith<$Res> {
  _$WebReportableInfoCopyWithImpl(
      WebReportableInfo _value, $Res Function(WebReportableInfo) _then)
      : super(_value, (v) => _then(v as WebReportableInfo));

  @override
  WebReportableInfo get _value => super._value as WebReportableInfo;

  @override
  $Res call({
    Object? browserName = freezed,
    Object? platform = freezed,
    Object? vendor = freezed,
  }) {
    return _then(WebReportableInfo(
      browserName: browserName == freezed
          ? _value.browserName
          : browserName // ignore: cast_nullable_to_non_nullable
              as String,
      platform: platform == freezed
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      vendor: vendor == freezed
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebReportableInfo implements WebReportableInfo {
  const _$WebReportableInfo(
      {required this.browserName,
      required this.platform,
      required this.vendor});

  factory _$WebReportableInfo.fromJson(Map<String, dynamic> json) =>
      _$_$WebReportableInfoFromJson(json);

  @override
  final String browserName;
  @override

  /// A DOMString identifying the platform on which the browser is running
  final String platform;
  @override

  /// The vendor name of the current browser
  final String vendor;

  @override
  String toString() {
    return 'ReportableInfo.web(browserName: $browserName, platform: $platform, vendor: $vendor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WebReportableInfo &&
            (identical(other.browserName, browserName) ||
                const DeepCollectionEquality()
                    .equals(other.browserName, browserName)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.vendor, vendor) ||
                const DeepCollectionEquality().equals(other.vendor, vendor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(browserName) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(vendor);

  @JsonKey(ignore: true)
  @override
  $WebReportableInfoCopyWith<WebReportableInfo> get copyWith =>
      _$WebReportableInfoCopyWithImpl<WebReportableInfo>(this, _$identity);

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
            String browserName, String platform, String vendor)
        web,
  }) {
    return web(browserName, platform, vendor);
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
    TResult Function(String browserName, String platform, String vendor)? web,
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
    return _$_$WebReportableInfoToJson(this)..['runtimeType'] = 'web';
  }
}

abstract class WebReportableInfo implements ReportableInfo {
  const factory WebReportableInfo(
      {required String browserName,
      required String platform,
      required String vendor}) = _$WebReportableInfo;

  factory WebReportableInfo.fromJson(Map<String, dynamic> json) =
      _$WebReportableInfo.fromJson;

  String get browserName => throw _privateConstructorUsedError;

  /// A DOMString identifying the platform on which the browser is running
  String get platform => throw _privateConstructorUsedError;

  /// The vendor name of the current browser
  String get vendor => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebReportableInfoCopyWith<WebReportableInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
