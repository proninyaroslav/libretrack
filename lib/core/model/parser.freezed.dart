// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'parser.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ParseResultTearOff {
  const _$ParseResultTearOff();

  ParseResultData call(
      {required ShipmentInfo info,
      required List<ShipmentActivityInfo> activity,
      List<String>? alternateTracks}) {
    return ParseResultData(
      info: info,
      activity: activity,
      alternateTracks: alternateTracks,
    );
  }

  ParseResultNoInfo noInfo() {
    return const ParseResultNoInfo();
  }

  ParseResultError error(ParseError error) {
    return ParseResultError(
      error,
    );
  }
}

/// @nodoc
const $ParseResult = _$ParseResultTearOff();

/// @nodoc
mixin _$ParseResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ShipmentInfo info, List<ShipmentActivityInfo> activity,
            List<String>? alternateTracks)
        $default, {
    required TResult Function() noInfo,
    required TResult Function(ParseError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(ShipmentInfo info, List<ShipmentActivityInfo> activity,
            List<String>? alternateTracks)?
        $default, {
    TResult Function()? noInfo,
    TResult Function(ParseError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ShipmentInfo info, List<ShipmentActivityInfo> activity,
            List<String>? alternateTracks)?
        $default, {
    TResult Function()? noInfo,
    TResult Function(ParseError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ParseResultData value) $default, {
    required TResult Function(ParseResultNoInfo value) noInfo,
    required TResult Function(ParseResultError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ParseResultData value)? $default, {
    TResult Function(ParseResultNoInfo value)? noInfo,
    TResult Function(ParseResultError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ParseResultData value)? $default, {
    TResult Function(ParseResultNoInfo value)? noInfo,
    TResult Function(ParseResultError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParseResultCopyWith<$Res> {
  factory $ParseResultCopyWith(
          ParseResult value, $Res Function(ParseResult) then) =
      _$ParseResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParseResultCopyWithImpl<$Res> implements $ParseResultCopyWith<$Res> {
  _$ParseResultCopyWithImpl(this._value, this._then);

  final ParseResult _value;
  // ignore: unused_field
  final $Res Function(ParseResult) _then;
}

/// @nodoc
abstract class $ParseResultDataCopyWith<$Res> {
  factory $ParseResultDataCopyWith(
          ParseResultData value, $Res Function(ParseResultData) then) =
      _$ParseResultDataCopyWithImpl<$Res>;
  $Res call(
      {ShipmentInfo info,
      List<ShipmentActivityInfo> activity,
      List<String>? alternateTracks});
}

/// @nodoc
class _$ParseResultDataCopyWithImpl<$Res>
    extends _$ParseResultCopyWithImpl<$Res>
    implements $ParseResultDataCopyWith<$Res> {
  _$ParseResultDataCopyWithImpl(
      ParseResultData _value, $Res Function(ParseResultData) _then)
      : super(_value, (v) => _then(v as ParseResultData));

  @override
  ParseResultData get _value => super._value as ParseResultData;

  @override
  $Res call({
    Object? info = freezed,
    Object? activity = freezed,
    Object? alternateTracks = freezed,
  }) {
    return _then(ParseResultData(
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

class _$ParseResultData
    with DiagnosticableTreeMixin
    implements ParseResultData {
  const _$ParseResultData(
      {required this.info, required this.activity, this.alternateTracks});

  @override
  final ShipmentInfo info;
  @override
  final List<ShipmentActivityInfo> activity;
  @override
  final List<String>? alternateTracks;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParseResult(info: $info, activity: $activity, alternateTracks: $alternateTracks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParseResult'))
      ..add(DiagnosticsProperty('info', info))
      ..add(DiagnosticsProperty('activity', activity))
      ..add(DiagnosticsProperty('alternateTracks', alternateTracks));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParseResultData &&
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
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(activity) ^
      const DeepCollectionEquality().hash(alternateTracks);

  @JsonKey(ignore: true)
  @override
  $ParseResultDataCopyWith<ParseResultData> get copyWith =>
      _$ParseResultDataCopyWithImpl<ParseResultData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ShipmentInfo info, List<ShipmentActivityInfo> activity,
            List<String>? alternateTracks)
        $default, {
    required TResult Function() noInfo,
    required TResult Function(ParseError error) error,
  }) {
    return $default(info, activity, alternateTracks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(ShipmentInfo info, List<ShipmentActivityInfo> activity,
            List<String>? alternateTracks)?
        $default, {
    TResult Function()? noInfo,
    TResult Function(ParseError error)? error,
  }) {
    return $default?.call(info, activity, alternateTracks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ShipmentInfo info, List<ShipmentActivityInfo> activity,
            List<String>? alternateTracks)?
        $default, {
    TResult Function()? noInfo,
    TResult Function(ParseError error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(info, activity, alternateTracks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ParseResultData value) $default, {
    required TResult Function(ParseResultNoInfo value) noInfo,
    required TResult Function(ParseResultError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ParseResultData value)? $default, {
    TResult Function(ParseResultNoInfo value)? noInfo,
    TResult Function(ParseResultError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ParseResultData value)? $default, {
    TResult Function(ParseResultNoInfo value)? noInfo,
    TResult Function(ParseResultError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ParseResultData implements ParseResult {
  const factory ParseResultData(
      {required ShipmentInfo info,
      required List<ShipmentActivityInfo> activity,
      List<String>? alternateTracks}) = _$ParseResultData;

  ShipmentInfo get info => throw _privateConstructorUsedError;
  List<ShipmentActivityInfo> get activity => throw _privateConstructorUsedError;
  List<String>? get alternateTracks => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParseResultDataCopyWith<ParseResultData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParseResultNoInfoCopyWith<$Res> {
  factory $ParseResultNoInfoCopyWith(
          ParseResultNoInfo value, $Res Function(ParseResultNoInfo) then) =
      _$ParseResultNoInfoCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParseResultNoInfoCopyWithImpl<$Res>
    extends _$ParseResultCopyWithImpl<$Res>
    implements $ParseResultNoInfoCopyWith<$Res> {
  _$ParseResultNoInfoCopyWithImpl(
      ParseResultNoInfo _value, $Res Function(ParseResultNoInfo) _then)
      : super(_value, (v) => _then(v as ParseResultNoInfo));

  @override
  ParseResultNoInfo get _value => super._value as ParseResultNoInfo;
}

/// @nodoc

class _$ParseResultNoInfo
    with DiagnosticableTreeMixin
    implements ParseResultNoInfo {
  const _$ParseResultNoInfo();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParseResult.noInfo()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ParseResult.noInfo'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ParseResultNoInfo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ShipmentInfo info, List<ShipmentActivityInfo> activity,
            List<String>? alternateTracks)
        $default, {
    required TResult Function() noInfo,
    required TResult Function(ParseError error) error,
  }) {
    return noInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(ShipmentInfo info, List<ShipmentActivityInfo> activity,
            List<String>? alternateTracks)?
        $default, {
    TResult Function()? noInfo,
    TResult Function(ParseError error)? error,
  }) {
    return noInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ShipmentInfo info, List<ShipmentActivityInfo> activity,
            List<String>? alternateTracks)?
        $default, {
    TResult Function()? noInfo,
    TResult Function(ParseError error)? error,
    required TResult orElse(),
  }) {
    if (noInfo != null) {
      return noInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ParseResultData value) $default, {
    required TResult Function(ParseResultNoInfo value) noInfo,
    required TResult Function(ParseResultError value) error,
  }) {
    return noInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ParseResultData value)? $default, {
    TResult Function(ParseResultNoInfo value)? noInfo,
    TResult Function(ParseResultError value)? error,
  }) {
    return noInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ParseResultData value)? $default, {
    TResult Function(ParseResultNoInfo value)? noInfo,
    TResult Function(ParseResultError value)? error,
    required TResult orElse(),
  }) {
    if (noInfo != null) {
      return noInfo(this);
    }
    return orElse();
  }
}

abstract class ParseResultNoInfo implements ParseResult {
  const factory ParseResultNoInfo() = _$ParseResultNoInfo;
}

/// @nodoc
abstract class $ParseResultErrorCopyWith<$Res> {
  factory $ParseResultErrorCopyWith(
          ParseResultError value, $Res Function(ParseResultError) then) =
      _$ParseResultErrorCopyWithImpl<$Res>;
  $Res call({ParseError error});

  $ParseErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$ParseResultErrorCopyWithImpl<$Res>
    extends _$ParseResultCopyWithImpl<$Res>
    implements $ParseResultErrorCopyWith<$Res> {
  _$ParseResultErrorCopyWithImpl(
      ParseResultError _value, $Res Function(ParseResultError) _then)
      : super(_value, (v) => _then(v as ParseResultError));

  @override
  ParseResultError get _value => super._value as ParseResultError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(ParseResultError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ParseError,
    ));
  }

  @override
  $ParseErrorCopyWith<$Res> get error {
    return $ParseErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$ParseResultError
    with DiagnosticableTreeMixin
    implements ParseResultError {
  const _$ParseResultError(this.error);

  @override
  final ParseError error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParseResult.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParseResult.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParseResultError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $ParseResultErrorCopyWith<ParseResultError> get copyWith =>
      _$ParseResultErrorCopyWithImpl<ParseResultError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ShipmentInfo info, List<ShipmentActivityInfo> activity,
            List<String>? alternateTracks)
        $default, {
    required TResult Function() noInfo,
    required TResult Function(ParseError error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(ShipmentInfo info, List<ShipmentActivityInfo> activity,
            List<String>? alternateTracks)?
        $default, {
    TResult Function()? noInfo,
    TResult Function(ParseError error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ShipmentInfo info, List<ShipmentActivityInfo> activity,
            List<String>? alternateTracks)?
        $default, {
    TResult Function()? noInfo,
    TResult Function(ParseError error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ParseResultData value) $default, {
    required TResult Function(ParseResultNoInfo value) noInfo,
    required TResult Function(ParseResultError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ParseResultData value)? $default, {
    TResult Function(ParseResultNoInfo value)? noInfo,
    TResult Function(ParseResultError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ParseResultData value)? $default, {
    TResult Function(ParseResultNoInfo value)? noInfo,
    TResult Function(ParseResultError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ParseResultError implements ParseResult {
  const factory ParseResultError(ParseError error) = _$ParseResultError;

  ParseError get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParseResultErrorCopyWith<ParseResultError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ParseErrorTearOff {
  const _$ParseErrorTearOff();

  ParseErrorFormat format(String message) {
    return ParseErrorFormat(
      message,
    );
  }

  ParseErrorServiceTemporary serviceTemporary({String? code, String? message}) {
    return ParseErrorServiceTemporary(
      code: code,
      message: message,
    );
  }

  ParseErrorServiceHard serviceHard({String? code, String? message}) {
    return ParseErrorServiceHard(
      code: code,
      message: message,
    );
  }

  ParseErrorAuth auth({String? code, String? message}) {
    return ParseErrorAuth(
      code: code,
      message: message,
    );
  }

  ParseErrorBadRequest badRequest({String? code, String? message}) {
    return ParseErrorBadRequest(
      code: code,
      message: message,
    );
  }

  ParseErrorInvalidTrackNumber invalidTrackNumber() {
    return const ParseErrorInvalidTrackNumber();
  }
}

/// @nodoc
const $ParseError = _$ParseErrorTearOff();

/// @nodoc
mixin _$ParseError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) format,
    required TResult Function(String? code, String? message) serviceTemporary,
    required TResult Function(String? code, String? message) serviceHard,
    required TResult Function(String? code, String? message) auth,
    required TResult Function(String? code, String? message) badRequest,
    required TResult Function() invalidTrackNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? format,
    TResult Function(String? code, String? message)? serviceTemporary,
    TResult Function(String? code, String? message)? serviceHard,
    TResult Function(String? code, String? message)? auth,
    TResult Function(String? code, String? message)? badRequest,
    TResult Function()? invalidTrackNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? format,
    TResult Function(String? code, String? message)? serviceTemporary,
    TResult Function(String? code, String? message)? serviceHard,
    TResult Function(String? code, String? message)? auth,
    TResult Function(String? code, String? message)? badRequest,
    TResult Function()? invalidTrackNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParseErrorFormat value) format,
    required TResult Function(ParseErrorServiceTemporary value)
        serviceTemporary,
    required TResult Function(ParseErrorServiceHard value) serviceHard,
    required TResult Function(ParseErrorAuth value) auth,
    required TResult Function(ParseErrorBadRequest value) badRequest,
    required TResult Function(ParseErrorInvalidTrackNumber value)
        invalidTrackNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ParseErrorFormat value)? format,
    TResult Function(ParseErrorServiceTemporary value)? serviceTemporary,
    TResult Function(ParseErrorServiceHard value)? serviceHard,
    TResult Function(ParseErrorAuth value)? auth,
    TResult Function(ParseErrorBadRequest value)? badRequest,
    TResult Function(ParseErrorInvalidTrackNumber value)? invalidTrackNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParseErrorFormat value)? format,
    TResult Function(ParseErrorServiceTemporary value)? serviceTemporary,
    TResult Function(ParseErrorServiceHard value)? serviceHard,
    TResult Function(ParseErrorAuth value)? auth,
    TResult Function(ParseErrorBadRequest value)? badRequest,
    TResult Function(ParseErrorInvalidTrackNumber value)? invalidTrackNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParseErrorCopyWith<$Res> {
  factory $ParseErrorCopyWith(
          ParseError value, $Res Function(ParseError) then) =
      _$ParseErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParseErrorCopyWithImpl<$Res> implements $ParseErrorCopyWith<$Res> {
  _$ParseErrorCopyWithImpl(this._value, this._then);

  final ParseError _value;
  // ignore: unused_field
  final $Res Function(ParseError) _then;
}

/// @nodoc
abstract class $ParseErrorFormatCopyWith<$Res> {
  factory $ParseErrorFormatCopyWith(
          ParseErrorFormat value, $Res Function(ParseErrorFormat) then) =
      _$ParseErrorFormatCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ParseErrorFormatCopyWithImpl<$Res>
    extends _$ParseErrorCopyWithImpl<$Res>
    implements $ParseErrorFormatCopyWith<$Res> {
  _$ParseErrorFormatCopyWithImpl(
      ParseErrorFormat _value, $Res Function(ParseErrorFormat) _then)
      : super(_value, (v) => _then(v as ParseErrorFormat));

  @override
  ParseErrorFormat get _value => super._value as ParseErrorFormat;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ParseErrorFormat(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ParseErrorFormat
    with DiagnosticableTreeMixin
    implements ParseErrorFormat {
  const _$ParseErrorFormat(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParseError.format(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParseError.format'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParseErrorFormat &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ParseErrorFormatCopyWith<ParseErrorFormat> get copyWith =>
      _$ParseErrorFormatCopyWithImpl<ParseErrorFormat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) format,
    required TResult Function(String? code, String? message) serviceTemporary,
    required TResult Function(String? code, String? message) serviceHard,
    required TResult Function(String? code, String? message) auth,
    required TResult Function(String? code, String? message) badRequest,
    required TResult Function() invalidTrackNumber,
  }) {
    return format(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? format,
    TResult Function(String? code, String? message)? serviceTemporary,
    TResult Function(String? code, String? message)? serviceHard,
    TResult Function(String? code, String? message)? auth,
    TResult Function(String? code, String? message)? badRequest,
    TResult Function()? invalidTrackNumber,
  }) {
    return format?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? format,
    TResult Function(String? code, String? message)? serviceTemporary,
    TResult Function(String? code, String? message)? serviceHard,
    TResult Function(String? code, String? message)? auth,
    TResult Function(String? code, String? message)? badRequest,
    TResult Function()? invalidTrackNumber,
    required TResult orElse(),
  }) {
    if (format != null) {
      return format(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParseErrorFormat value) format,
    required TResult Function(ParseErrorServiceTemporary value)
        serviceTemporary,
    required TResult Function(ParseErrorServiceHard value) serviceHard,
    required TResult Function(ParseErrorAuth value) auth,
    required TResult Function(ParseErrorBadRequest value) badRequest,
    required TResult Function(ParseErrorInvalidTrackNumber value)
        invalidTrackNumber,
  }) {
    return format(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ParseErrorFormat value)? format,
    TResult Function(ParseErrorServiceTemporary value)? serviceTemporary,
    TResult Function(ParseErrorServiceHard value)? serviceHard,
    TResult Function(ParseErrorAuth value)? auth,
    TResult Function(ParseErrorBadRequest value)? badRequest,
    TResult Function(ParseErrorInvalidTrackNumber value)? invalidTrackNumber,
  }) {
    return format?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParseErrorFormat value)? format,
    TResult Function(ParseErrorServiceTemporary value)? serviceTemporary,
    TResult Function(ParseErrorServiceHard value)? serviceHard,
    TResult Function(ParseErrorAuth value)? auth,
    TResult Function(ParseErrorBadRequest value)? badRequest,
    TResult Function(ParseErrorInvalidTrackNumber value)? invalidTrackNumber,
    required TResult orElse(),
  }) {
    if (format != null) {
      return format(this);
    }
    return orElse();
  }
}

abstract class ParseErrorFormat implements ParseError {
  const factory ParseErrorFormat(String message) = _$ParseErrorFormat;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParseErrorFormatCopyWith<ParseErrorFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParseErrorServiceTemporaryCopyWith<$Res> {
  factory $ParseErrorServiceTemporaryCopyWith(ParseErrorServiceTemporary value,
          $Res Function(ParseErrorServiceTemporary) then) =
      _$ParseErrorServiceTemporaryCopyWithImpl<$Res>;
  $Res call({String? code, String? message});
}

/// @nodoc
class _$ParseErrorServiceTemporaryCopyWithImpl<$Res>
    extends _$ParseErrorCopyWithImpl<$Res>
    implements $ParseErrorServiceTemporaryCopyWith<$Res> {
  _$ParseErrorServiceTemporaryCopyWithImpl(ParseErrorServiceTemporary _value,
      $Res Function(ParseErrorServiceTemporary) _then)
      : super(_value, (v) => _then(v as ParseErrorServiceTemporary));

  @override
  ParseErrorServiceTemporary get _value =>
      super._value as ParseErrorServiceTemporary;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(ParseErrorServiceTemporary(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ParseErrorServiceTemporary
    with DiagnosticableTreeMixin
    implements ParseErrorServiceTemporary {
  const _$ParseErrorServiceTemporary({this.code, this.message});

  @override
  final String? code;
  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParseError.serviceTemporary(code: $code, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParseError.serviceTemporary'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParseErrorServiceTemporary &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ParseErrorServiceTemporaryCopyWith<ParseErrorServiceTemporary>
      get copyWith =>
          _$ParseErrorServiceTemporaryCopyWithImpl<ParseErrorServiceTemporary>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) format,
    required TResult Function(String? code, String? message) serviceTemporary,
    required TResult Function(String? code, String? message) serviceHard,
    required TResult Function(String? code, String? message) auth,
    required TResult Function(String? code, String? message) badRequest,
    required TResult Function() invalidTrackNumber,
  }) {
    return serviceTemporary(code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? format,
    TResult Function(String? code, String? message)? serviceTemporary,
    TResult Function(String? code, String? message)? serviceHard,
    TResult Function(String? code, String? message)? auth,
    TResult Function(String? code, String? message)? badRequest,
    TResult Function()? invalidTrackNumber,
  }) {
    return serviceTemporary?.call(code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? format,
    TResult Function(String? code, String? message)? serviceTemporary,
    TResult Function(String? code, String? message)? serviceHard,
    TResult Function(String? code, String? message)? auth,
    TResult Function(String? code, String? message)? badRequest,
    TResult Function()? invalidTrackNumber,
    required TResult orElse(),
  }) {
    if (serviceTemporary != null) {
      return serviceTemporary(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParseErrorFormat value) format,
    required TResult Function(ParseErrorServiceTemporary value)
        serviceTemporary,
    required TResult Function(ParseErrorServiceHard value) serviceHard,
    required TResult Function(ParseErrorAuth value) auth,
    required TResult Function(ParseErrorBadRequest value) badRequest,
    required TResult Function(ParseErrorInvalidTrackNumber value)
        invalidTrackNumber,
  }) {
    return serviceTemporary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ParseErrorFormat value)? format,
    TResult Function(ParseErrorServiceTemporary value)? serviceTemporary,
    TResult Function(ParseErrorServiceHard value)? serviceHard,
    TResult Function(ParseErrorAuth value)? auth,
    TResult Function(ParseErrorBadRequest value)? badRequest,
    TResult Function(ParseErrorInvalidTrackNumber value)? invalidTrackNumber,
  }) {
    return serviceTemporary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParseErrorFormat value)? format,
    TResult Function(ParseErrorServiceTemporary value)? serviceTemporary,
    TResult Function(ParseErrorServiceHard value)? serviceHard,
    TResult Function(ParseErrorAuth value)? auth,
    TResult Function(ParseErrorBadRequest value)? badRequest,
    TResult Function(ParseErrorInvalidTrackNumber value)? invalidTrackNumber,
    required TResult orElse(),
  }) {
    if (serviceTemporary != null) {
      return serviceTemporary(this);
    }
    return orElse();
  }
}

abstract class ParseErrorServiceTemporary implements ParseError {
  const factory ParseErrorServiceTemporary({String? code, String? message}) =
      _$ParseErrorServiceTemporary;

  String? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParseErrorServiceTemporaryCopyWith<ParseErrorServiceTemporary>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParseErrorServiceHardCopyWith<$Res> {
  factory $ParseErrorServiceHardCopyWith(ParseErrorServiceHard value,
          $Res Function(ParseErrorServiceHard) then) =
      _$ParseErrorServiceHardCopyWithImpl<$Res>;
  $Res call({String? code, String? message});
}

/// @nodoc
class _$ParseErrorServiceHardCopyWithImpl<$Res>
    extends _$ParseErrorCopyWithImpl<$Res>
    implements $ParseErrorServiceHardCopyWith<$Res> {
  _$ParseErrorServiceHardCopyWithImpl(
      ParseErrorServiceHard _value, $Res Function(ParseErrorServiceHard) _then)
      : super(_value, (v) => _then(v as ParseErrorServiceHard));

  @override
  ParseErrorServiceHard get _value => super._value as ParseErrorServiceHard;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(ParseErrorServiceHard(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ParseErrorServiceHard
    with DiagnosticableTreeMixin
    implements ParseErrorServiceHard {
  const _$ParseErrorServiceHard({this.code, this.message});

  @override
  final String? code;
  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParseError.serviceHard(code: $code, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParseError.serviceHard'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParseErrorServiceHard &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ParseErrorServiceHardCopyWith<ParseErrorServiceHard> get copyWith =>
      _$ParseErrorServiceHardCopyWithImpl<ParseErrorServiceHard>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) format,
    required TResult Function(String? code, String? message) serviceTemporary,
    required TResult Function(String? code, String? message) serviceHard,
    required TResult Function(String? code, String? message) auth,
    required TResult Function(String? code, String? message) badRequest,
    required TResult Function() invalidTrackNumber,
  }) {
    return serviceHard(code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? format,
    TResult Function(String? code, String? message)? serviceTemporary,
    TResult Function(String? code, String? message)? serviceHard,
    TResult Function(String? code, String? message)? auth,
    TResult Function(String? code, String? message)? badRequest,
    TResult Function()? invalidTrackNumber,
  }) {
    return serviceHard?.call(code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? format,
    TResult Function(String? code, String? message)? serviceTemporary,
    TResult Function(String? code, String? message)? serviceHard,
    TResult Function(String? code, String? message)? auth,
    TResult Function(String? code, String? message)? badRequest,
    TResult Function()? invalidTrackNumber,
    required TResult orElse(),
  }) {
    if (serviceHard != null) {
      return serviceHard(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParseErrorFormat value) format,
    required TResult Function(ParseErrorServiceTemporary value)
        serviceTemporary,
    required TResult Function(ParseErrorServiceHard value) serviceHard,
    required TResult Function(ParseErrorAuth value) auth,
    required TResult Function(ParseErrorBadRequest value) badRequest,
    required TResult Function(ParseErrorInvalidTrackNumber value)
        invalidTrackNumber,
  }) {
    return serviceHard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ParseErrorFormat value)? format,
    TResult Function(ParseErrorServiceTemporary value)? serviceTemporary,
    TResult Function(ParseErrorServiceHard value)? serviceHard,
    TResult Function(ParseErrorAuth value)? auth,
    TResult Function(ParseErrorBadRequest value)? badRequest,
    TResult Function(ParseErrorInvalidTrackNumber value)? invalidTrackNumber,
  }) {
    return serviceHard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParseErrorFormat value)? format,
    TResult Function(ParseErrorServiceTemporary value)? serviceTemporary,
    TResult Function(ParseErrorServiceHard value)? serviceHard,
    TResult Function(ParseErrorAuth value)? auth,
    TResult Function(ParseErrorBadRequest value)? badRequest,
    TResult Function(ParseErrorInvalidTrackNumber value)? invalidTrackNumber,
    required TResult orElse(),
  }) {
    if (serviceHard != null) {
      return serviceHard(this);
    }
    return orElse();
  }
}

abstract class ParseErrorServiceHard implements ParseError {
  const factory ParseErrorServiceHard({String? code, String? message}) =
      _$ParseErrorServiceHard;

  String? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParseErrorServiceHardCopyWith<ParseErrorServiceHard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParseErrorAuthCopyWith<$Res> {
  factory $ParseErrorAuthCopyWith(
          ParseErrorAuth value, $Res Function(ParseErrorAuth) then) =
      _$ParseErrorAuthCopyWithImpl<$Res>;
  $Res call({String? code, String? message});
}

/// @nodoc
class _$ParseErrorAuthCopyWithImpl<$Res> extends _$ParseErrorCopyWithImpl<$Res>
    implements $ParseErrorAuthCopyWith<$Res> {
  _$ParseErrorAuthCopyWithImpl(
      ParseErrorAuth _value, $Res Function(ParseErrorAuth) _then)
      : super(_value, (v) => _then(v as ParseErrorAuth));

  @override
  ParseErrorAuth get _value => super._value as ParseErrorAuth;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(ParseErrorAuth(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ParseErrorAuth with DiagnosticableTreeMixin implements ParseErrorAuth {
  const _$ParseErrorAuth({this.code, this.message});

  @override
  final String? code;
  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParseError.auth(code: $code, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParseError.auth'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParseErrorAuth &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ParseErrorAuthCopyWith<ParseErrorAuth> get copyWith =>
      _$ParseErrorAuthCopyWithImpl<ParseErrorAuth>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) format,
    required TResult Function(String? code, String? message) serviceTemporary,
    required TResult Function(String? code, String? message) serviceHard,
    required TResult Function(String? code, String? message) auth,
    required TResult Function(String? code, String? message) badRequest,
    required TResult Function() invalidTrackNumber,
  }) {
    return auth(code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? format,
    TResult Function(String? code, String? message)? serviceTemporary,
    TResult Function(String? code, String? message)? serviceHard,
    TResult Function(String? code, String? message)? auth,
    TResult Function(String? code, String? message)? badRequest,
    TResult Function()? invalidTrackNumber,
  }) {
    return auth?.call(code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? format,
    TResult Function(String? code, String? message)? serviceTemporary,
    TResult Function(String? code, String? message)? serviceHard,
    TResult Function(String? code, String? message)? auth,
    TResult Function(String? code, String? message)? badRequest,
    TResult Function()? invalidTrackNumber,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParseErrorFormat value) format,
    required TResult Function(ParseErrorServiceTemporary value)
        serviceTemporary,
    required TResult Function(ParseErrorServiceHard value) serviceHard,
    required TResult Function(ParseErrorAuth value) auth,
    required TResult Function(ParseErrorBadRequest value) badRequest,
    required TResult Function(ParseErrorInvalidTrackNumber value)
        invalidTrackNumber,
  }) {
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ParseErrorFormat value)? format,
    TResult Function(ParseErrorServiceTemporary value)? serviceTemporary,
    TResult Function(ParseErrorServiceHard value)? serviceHard,
    TResult Function(ParseErrorAuth value)? auth,
    TResult Function(ParseErrorBadRequest value)? badRequest,
    TResult Function(ParseErrorInvalidTrackNumber value)? invalidTrackNumber,
  }) {
    return auth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParseErrorFormat value)? format,
    TResult Function(ParseErrorServiceTemporary value)? serviceTemporary,
    TResult Function(ParseErrorServiceHard value)? serviceHard,
    TResult Function(ParseErrorAuth value)? auth,
    TResult Function(ParseErrorBadRequest value)? badRequest,
    TResult Function(ParseErrorInvalidTrackNumber value)? invalidTrackNumber,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }
}

abstract class ParseErrorAuth implements ParseError {
  const factory ParseErrorAuth({String? code, String? message}) =
      _$ParseErrorAuth;

  String? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParseErrorAuthCopyWith<ParseErrorAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParseErrorBadRequestCopyWith<$Res> {
  factory $ParseErrorBadRequestCopyWith(ParseErrorBadRequest value,
          $Res Function(ParseErrorBadRequest) then) =
      _$ParseErrorBadRequestCopyWithImpl<$Res>;
  $Res call({String? code, String? message});
}

/// @nodoc
class _$ParseErrorBadRequestCopyWithImpl<$Res>
    extends _$ParseErrorCopyWithImpl<$Res>
    implements $ParseErrorBadRequestCopyWith<$Res> {
  _$ParseErrorBadRequestCopyWithImpl(
      ParseErrorBadRequest _value, $Res Function(ParseErrorBadRequest) _then)
      : super(_value, (v) => _then(v as ParseErrorBadRequest));

  @override
  ParseErrorBadRequest get _value => super._value as ParseErrorBadRequest;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(ParseErrorBadRequest(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ParseErrorBadRequest
    with DiagnosticableTreeMixin
    implements ParseErrorBadRequest {
  const _$ParseErrorBadRequest({this.code, this.message});

  @override
  final String? code;
  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParseError.badRequest(code: $code, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParseError.badRequest'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParseErrorBadRequest &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ParseErrorBadRequestCopyWith<ParseErrorBadRequest> get copyWith =>
      _$ParseErrorBadRequestCopyWithImpl<ParseErrorBadRequest>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) format,
    required TResult Function(String? code, String? message) serviceTemporary,
    required TResult Function(String? code, String? message) serviceHard,
    required TResult Function(String? code, String? message) auth,
    required TResult Function(String? code, String? message) badRequest,
    required TResult Function() invalidTrackNumber,
  }) {
    return badRequest(code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? format,
    TResult Function(String? code, String? message)? serviceTemporary,
    TResult Function(String? code, String? message)? serviceHard,
    TResult Function(String? code, String? message)? auth,
    TResult Function(String? code, String? message)? badRequest,
    TResult Function()? invalidTrackNumber,
  }) {
    return badRequest?.call(code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? format,
    TResult Function(String? code, String? message)? serviceTemporary,
    TResult Function(String? code, String? message)? serviceHard,
    TResult Function(String? code, String? message)? auth,
    TResult Function(String? code, String? message)? badRequest,
    TResult Function()? invalidTrackNumber,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParseErrorFormat value) format,
    required TResult Function(ParseErrorServiceTemporary value)
        serviceTemporary,
    required TResult Function(ParseErrorServiceHard value) serviceHard,
    required TResult Function(ParseErrorAuth value) auth,
    required TResult Function(ParseErrorBadRequest value) badRequest,
    required TResult Function(ParseErrorInvalidTrackNumber value)
        invalidTrackNumber,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ParseErrorFormat value)? format,
    TResult Function(ParseErrorServiceTemporary value)? serviceTemporary,
    TResult Function(ParseErrorServiceHard value)? serviceHard,
    TResult Function(ParseErrorAuth value)? auth,
    TResult Function(ParseErrorBadRequest value)? badRequest,
    TResult Function(ParseErrorInvalidTrackNumber value)? invalidTrackNumber,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParseErrorFormat value)? format,
    TResult Function(ParseErrorServiceTemporary value)? serviceTemporary,
    TResult Function(ParseErrorServiceHard value)? serviceHard,
    TResult Function(ParseErrorAuth value)? auth,
    TResult Function(ParseErrorBadRequest value)? badRequest,
    TResult Function(ParseErrorInvalidTrackNumber value)? invalidTrackNumber,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class ParseErrorBadRequest implements ParseError {
  const factory ParseErrorBadRequest({String? code, String? message}) =
      _$ParseErrorBadRequest;

  String? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParseErrorBadRequestCopyWith<ParseErrorBadRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParseErrorInvalidTrackNumberCopyWith<$Res> {
  factory $ParseErrorInvalidTrackNumberCopyWith(
          ParseErrorInvalidTrackNumber value,
          $Res Function(ParseErrorInvalidTrackNumber) then) =
      _$ParseErrorInvalidTrackNumberCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParseErrorInvalidTrackNumberCopyWithImpl<$Res>
    extends _$ParseErrorCopyWithImpl<$Res>
    implements $ParseErrorInvalidTrackNumberCopyWith<$Res> {
  _$ParseErrorInvalidTrackNumberCopyWithImpl(
      ParseErrorInvalidTrackNumber _value,
      $Res Function(ParseErrorInvalidTrackNumber) _then)
      : super(_value, (v) => _then(v as ParseErrorInvalidTrackNumber));

  @override
  ParseErrorInvalidTrackNumber get _value =>
      super._value as ParseErrorInvalidTrackNumber;
}

/// @nodoc

class _$ParseErrorInvalidTrackNumber
    with DiagnosticableTreeMixin
    implements ParseErrorInvalidTrackNumber {
  const _$ParseErrorInvalidTrackNumber();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParseError.invalidTrackNumber()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParseError.invalidTrackNumber'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ParseErrorInvalidTrackNumber);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) format,
    required TResult Function(String? code, String? message) serviceTemporary,
    required TResult Function(String? code, String? message) serviceHard,
    required TResult Function(String? code, String? message) auth,
    required TResult Function(String? code, String? message) badRequest,
    required TResult Function() invalidTrackNumber,
  }) {
    return invalidTrackNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? format,
    TResult Function(String? code, String? message)? serviceTemporary,
    TResult Function(String? code, String? message)? serviceHard,
    TResult Function(String? code, String? message)? auth,
    TResult Function(String? code, String? message)? badRequest,
    TResult Function()? invalidTrackNumber,
  }) {
    return invalidTrackNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? format,
    TResult Function(String? code, String? message)? serviceTemporary,
    TResult Function(String? code, String? message)? serviceHard,
    TResult Function(String? code, String? message)? auth,
    TResult Function(String? code, String? message)? badRequest,
    TResult Function()? invalidTrackNumber,
    required TResult orElse(),
  }) {
    if (invalidTrackNumber != null) {
      return invalidTrackNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParseErrorFormat value) format,
    required TResult Function(ParseErrorServiceTemporary value)
        serviceTemporary,
    required TResult Function(ParseErrorServiceHard value) serviceHard,
    required TResult Function(ParseErrorAuth value) auth,
    required TResult Function(ParseErrorBadRequest value) badRequest,
    required TResult Function(ParseErrorInvalidTrackNumber value)
        invalidTrackNumber,
  }) {
    return invalidTrackNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ParseErrorFormat value)? format,
    TResult Function(ParseErrorServiceTemporary value)? serviceTemporary,
    TResult Function(ParseErrorServiceHard value)? serviceHard,
    TResult Function(ParseErrorAuth value)? auth,
    TResult Function(ParseErrorBadRequest value)? badRequest,
    TResult Function(ParseErrorInvalidTrackNumber value)? invalidTrackNumber,
  }) {
    return invalidTrackNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParseErrorFormat value)? format,
    TResult Function(ParseErrorServiceTemporary value)? serviceTemporary,
    TResult Function(ParseErrorServiceHard value)? serviceHard,
    TResult Function(ParseErrorAuth value)? auth,
    TResult Function(ParseErrorBadRequest value)? badRequest,
    TResult Function(ParseErrorInvalidTrackNumber value)? invalidTrackNumber,
    required TResult orElse(),
  }) {
    if (invalidTrackNumber != null) {
      return invalidTrackNumber(this);
    }
    return orElse();
  }
}

abstract class ParseErrorInvalidTrackNumber implements ParseError {
  const factory ParseErrorInvalidTrackNumber() = _$ParseErrorInvalidTrackNumber;
}
