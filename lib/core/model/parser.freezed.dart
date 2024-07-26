// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parser.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
    TResult? Function(ShipmentInfo info, List<ShipmentActivityInfo> activity,
            List<String>? alternateTracks)?
        $default, {
    TResult? Function()? noInfo,
    TResult? Function(ParseError error)? error,
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
    TResult? Function(ParseResultData value)? $default, {
    TResult? Function(ParseResultNoInfo value)? noInfo,
    TResult? Function(ParseResultError value)? error,
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
      _$ParseResultCopyWithImpl<$Res, ParseResult>;
}

/// @nodoc
class _$ParseResultCopyWithImpl<$Res, $Val extends ParseResult>
    implements $ParseResultCopyWith<$Res> {
  _$ParseResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ParseResultDataImplCopyWith<$Res> {
  factory _$$ParseResultDataImplCopyWith(_$ParseResultDataImpl value,
          $Res Function(_$ParseResultDataImpl) then) =
      __$$ParseResultDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {ShipmentInfo info,
      List<ShipmentActivityInfo> activity,
      List<String>? alternateTracks});
}

/// @nodoc
class __$$ParseResultDataImplCopyWithImpl<$Res>
    extends _$ParseResultCopyWithImpl<$Res, _$ParseResultDataImpl>
    implements _$$ParseResultDataImplCopyWith<$Res> {
  __$$ParseResultDataImplCopyWithImpl(
      _$ParseResultDataImpl _value, $Res Function(_$ParseResultDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? activity = null,
    Object? alternateTracks = freezed,
  }) {
    return _then(_$ParseResultDataImpl(
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

class _$ParseResultDataImpl
    with DiagnosticableTreeMixin
    implements ParseResultData {
  const _$ParseResultDataImpl(
      {required this.info,
      required final List<ShipmentActivityInfo> activity,
      final List<String>? alternateTracks})
      : _activity = activity,
        _alternateTracks = alternateTracks;

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParseResultDataImpl &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other._activity, _activity) &&
            const DeepCollectionEquality()
                .equals(other._alternateTracks, _alternateTracks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      info,
      const DeepCollectionEquality().hash(_activity),
      const DeepCollectionEquality().hash(_alternateTracks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParseResultDataImplCopyWith<_$ParseResultDataImpl> get copyWith =>
      __$$ParseResultDataImplCopyWithImpl<_$ParseResultDataImpl>(
          this, _$identity);

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
    TResult? Function(ShipmentInfo info, List<ShipmentActivityInfo> activity,
            List<String>? alternateTracks)?
        $default, {
    TResult? Function()? noInfo,
    TResult? Function(ParseError error)? error,
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
    TResult? Function(ParseResultData value)? $default, {
    TResult? Function(ParseResultNoInfo value)? noInfo,
    TResult? Function(ParseResultError value)? error,
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
      {required final ShipmentInfo info,
      required final List<ShipmentActivityInfo> activity,
      final List<String>? alternateTracks}) = _$ParseResultDataImpl;

  ShipmentInfo get info;
  List<ShipmentActivityInfo> get activity;
  List<String>? get alternateTracks;
  @JsonKey(ignore: true)
  _$$ParseResultDataImplCopyWith<_$ParseResultDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParseResultNoInfoImplCopyWith<$Res> {
  factory _$$ParseResultNoInfoImplCopyWith(_$ParseResultNoInfoImpl value,
          $Res Function(_$ParseResultNoInfoImpl) then) =
      __$$ParseResultNoInfoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ParseResultNoInfoImplCopyWithImpl<$Res>
    extends _$ParseResultCopyWithImpl<$Res, _$ParseResultNoInfoImpl>
    implements _$$ParseResultNoInfoImplCopyWith<$Res> {
  __$$ParseResultNoInfoImplCopyWithImpl(_$ParseResultNoInfoImpl _value,
      $Res Function(_$ParseResultNoInfoImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ParseResultNoInfoImpl
    with DiagnosticableTreeMixin
    implements ParseResultNoInfo {
  const _$ParseResultNoInfoImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParseResult.noInfo()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ParseResult.noInfo'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ParseResultNoInfoImpl);
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
    TResult? Function(ShipmentInfo info, List<ShipmentActivityInfo> activity,
            List<String>? alternateTracks)?
        $default, {
    TResult? Function()? noInfo,
    TResult? Function(ParseError error)? error,
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
    TResult? Function(ParseResultData value)? $default, {
    TResult? Function(ParseResultNoInfo value)? noInfo,
    TResult? Function(ParseResultError value)? error,
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
  const factory ParseResultNoInfo() = _$ParseResultNoInfoImpl;
}

/// @nodoc
abstract class _$$ParseResultErrorImplCopyWith<$Res> {
  factory _$$ParseResultErrorImplCopyWith(_$ParseResultErrorImpl value,
          $Res Function(_$ParseResultErrorImpl) then) =
      __$$ParseResultErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ParseError error});

  $ParseErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$ParseResultErrorImplCopyWithImpl<$Res>
    extends _$ParseResultCopyWithImpl<$Res, _$ParseResultErrorImpl>
    implements _$$ParseResultErrorImplCopyWith<$Res> {
  __$$ParseResultErrorImplCopyWithImpl(_$ParseResultErrorImpl _value,
      $Res Function(_$ParseResultErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ParseResultErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ParseError,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ParseErrorCopyWith<$Res> get error {
    return $ParseErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$ParseResultErrorImpl
    with DiagnosticableTreeMixin
    implements ParseResultError {
  const _$ParseResultErrorImpl(this.error);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParseResultErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParseResultErrorImplCopyWith<_$ParseResultErrorImpl> get copyWith =>
      __$$ParseResultErrorImplCopyWithImpl<_$ParseResultErrorImpl>(
          this, _$identity);

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
    TResult? Function(ShipmentInfo info, List<ShipmentActivityInfo> activity,
            List<String>? alternateTracks)?
        $default, {
    TResult? Function()? noInfo,
    TResult? Function(ParseError error)? error,
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
    TResult? Function(ParseResultData value)? $default, {
    TResult? Function(ParseResultNoInfo value)? noInfo,
    TResult? Function(ParseResultError value)? error,
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
  const factory ParseResultError(final ParseError error) =
      _$ParseResultErrorImpl;

  ParseError get error;
  @JsonKey(ignore: true)
  _$$ParseResultErrorImplCopyWith<_$ParseResultErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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
    TResult? Function(String message)? format,
    TResult? Function(String? code, String? message)? serviceTemporary,
    TResult? Function(String? code, String? message)? serviceHard,
    TResult? Function(String? code, String? message)? auth,
    TResult? Function(String? code, String? message)? badRequest,
    TResult? Function()? invalidTrackNumber,
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
    TResult? Function(ParseErrorFormat value)? format,
    TResult? Function(ParseErrorServiceTemporary value)? serviceTemporary,
    TResult? Function(ParseErrorServiceHard value)? serviceHard,
    TResult? Function(ParseErrorAuth value)? auth,
    TResult? Function(ParseErrorBadRequest value)? badRequest,
    TResult? Function(ParseErrorInvalidTrackNumber value)? invalidTrackNumber,
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
      _$ParseErrorCopyWithImpl<$Res, ParseError>;
}

/// @nodoc
class _$ParseErrorCopyWithImpl<$Res, $Val extends ParseError>
    implements $ParseErrorCopyWith<$Res> {
  _$ParseErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ParseErrorFormatImplCopyWith<$Res> {
  factory _$$ParseErrorFormatImplCopyWith(_$ParseErrorFormatImpl value,
          $Res Function(_$ParseErrorFormatImpl) then) =
      __$$ParseErrorFormatImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ParseErrorFormatImplCopyWithImpl<$Res>
    extends _$ParseErrorCopyWithImpl<$Res, _$ParseErrorFormatImpl>
    implements _$$ParseErrorFormatImplCopyWith<$Res> {
  __$$ParseErrorFormatImplCopyWithImpl(_$ParseErrorFormatImpl _value,
      $Res Function(_$ParseErrorFormatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ParseErrorFormatImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ParseErrorFormatImpl
    with DiagnosticableTreeMixin
    implements ParseErrorFormat {
  const _$ParseErrorFormatImpl(this.message);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParseErrorFormatImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParseErrorFormatImplCopyWith<_$ParseErrorFormatImpl> get copyWith =>
      __$$ParseErrorFormatImplCopyWithImpl<_$ParseErrorFormatImpl>(
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
    return format(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? format,
    TResult? Function(String? code, String? message)? serviceTemporary,
    TResult? Function(String? code, String? message)? serviceHard,
    TResult? Function(String? code, String? message)? auth,
    TResult? Function(String? code, String? message)? badRequest,
    TResult? Function()? invalidTrackNumber,
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
    TResult? Function(ParseErrorFormat value)? format,
    TResult? Function(ParseErrorServiceTemporary value)? serviceTemporary,
    TResult? Function(ParseErrorServiceHard value)? serviceHard,
    TResult? Function(ParseErrorAuth value)? auth,
    TResult? Function(ParseErrorBadRequest value)? badRequest,
    TResult? Function(ParseErrorInvalidTrackNumber value)? invalidTrackNumber,
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
  const factory ParseErrorFormat(final String message) = _$ParseErrorFormatImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ParseErrorFormatImplCopyWith<_$ParseErrorFormatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParseErrorServiceTemporaryImplCopyWith<$Res> {
  factory _$$ParseErrorServiceTemporaryImplCopyWith(
          _$ParseErrorServiceTemporaryImpl value,
          $Res Function(_$ParseErrorServiceTemporaryImpl) then) =
      __$$ParseErrorServiceTemporaryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? code, String? message});
}

/// @nodoc
class __$$ParseErrorServiceTemporaryImplCopyWithImpl<$Res>
    extends _$ParseErrorCopyWithImpl<$Res, _$ParseErrorServiceTemporaryImpl>
    implements _$$ParseErrorServiceTemporaryImplCopyWith<$Res> {
  __$$ParseErrorServiceTemporaryImplCopyWithImpl(
      _$ParseErrorServiceTemporaryImpl _value,
      $Res Function(_$ParseErrorServiceTemporaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ParseErrorServiceTemporaryImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ParseErrorServiceTemporaryImpl
    with DiagnosticableTreeMixin
    implements ParseErrorServiceTemporary {
  const _$ParseErrorServiceTemporaryImpl({this.code, this.message});

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParseErrorServiceTemporaryImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParseErrorServiceTemporaryImplCopyWith<_$ParseErrorServiceTemporaryImpl>
      get copyWith => __$$ParseErrorServiceTemporaryImplCopyWithImpl<
          _$ParseErrorServiceTemporaryImpl>(this, _$identity);

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
    TResult? Function(String message)? format,
    TResult? Function(String? code, String? message)? serviceTemporary,
    TResult? Function(String? code, String? message)? serviceHard,
    TResult? Function(String? code, String? message)? auth,
    TResult? Function(String? code, String? message)? badRequest,
    TResult? Function()? invalidTrackNumber,
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
    TResult? Function(ParseErrorFormat value)? format,
    TResult? Function(ParseErrorServiceTemporary value)? serviceTemporary,
    TResult? Function(ParseErrorServiceHard value)? serviceHard,
    TResult? Function(ParseErrorAuth value)? auth,
    TResult? Function(ParseErrorBadRequest value)? badRequest,
    TResult? Function(ParseErrorInvalidTrackNumber value)? invalidTrackNumber,
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
  const factory ParseErrorServiceTemporary(
      {final String? code,
      final String? message}) = _$ParseErrorServiceTemporaryImpl;

  String? get code;
  String? get message;
  @JsonKey(ignore: true)
  _$$ParseErrorServiceTemporaryImplCopyWith<_$ParseErrorServiceTemporaryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParseErrorServiceHardImplCopyWith<$Res> {
  factory _$$ParseErrorServiceHardImplCopyWith(
          _$ParseErrorServiceHardImpl value,
          $Res Function(_$ParseErrorServiceHardImpl) then) =
      __$$ParseErrorServiceHardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? code, String? message});
}

/// @nodoc
class __$$ParseErrorServiceHardImplCopyWithImpl<$Res>
    extends _$ParseErrorCopyWithImpl<$Res, _$ParseErrorServiceHardImpl>
    implements _$$ParseErrorServiceHardImplCopyWith<$Res> {
  __$$ParseErrorServiceHardImplCopyWithImpl(_$ParseErrorServiceHardImpl _value,
      $Res Function(_$ParseErrorServiceHardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ParseErrorServiceHardImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ParseErrorServiceHardImpl
    with DiagnosticableTreeMixin
    implements ParseErrorServiceHard {
  const _$ParseErrorServiceHardImpl({this.code, this.message});

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParseErrorServiceHardImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParseErrorServiceHardImplCopyWith<_$ParseErrorServiceHardImpl>
      get copyWith => __$$ParseErrorServiceHardImplCopyWithImpl<
          _$ParseErrorServiceHardImpl>(this, _$identity);

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
    TResult? Function(String message)? format,
    TResult? Function(String? code, String? message)? serviceTemporary,
    TResult? Function(String? code, String? message)? serviceHard,
    TResult? Function(String? code, String? message)? auth,
    TResult? Function(String? code, String? message)? badRequest,
    TResult? Function()? invalidTrackNumber,
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
    TResult? Function(ParseErrorFormat value)? format,
    TResult? Function(ParseErrorServiceTemporary value)? serviceTemporary,
    TResult? Function(ParseErrorServiceHard value)? serviceHard,
    TResult? Function(ParseErrorAuth value)? auth,
    TResult? Function(ParseErrorBadRequest value)? badRequest,
    TResult? Function(ParseErrorInvalidTrackNumber value)? invalidTrackNumber,
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
  const factory ParseErrorServiceHard(
      {final String? code,
      final String? message}) = _$ParseErrorServiceHardImpl;

  String? get code;
  String? get message;
  @JsonKey(ignore: true)
  _$$ParseErrorServiceHardImplCopyWith<_$ParseErrorServiceHardImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParseErrorAuthImplCopyWith<$Res> {
  factory _$$ParseErrorAuthImplCopyWith(_$ParseErrorAuthImpl value,
          $Res Function(_$ParseErrorAuthImpl) then) =
      __$$ParseErrorAuthImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? code, String? message});
}

/// @nodoc
class __$$ParseErrorAuthImplCopyWithImpl<$Res>
    extends _$ParseErrorCopyWithImpl<$Res, _$ParseErrorAuthImpl>
    implements _$$ParseErrorAuthImplCopyWith<$Res> {
  __$$ParseErrorAuthImplCopyWithImpl(
      _$ParseErrorAuthImpl _value, $Res Function(_$ParseErrorAuthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ParseErrorAuthImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ParseErrorAuthImpl
    with DiagnosticableTreeMixin
    implements ParseErrorAuth {
  const _$ParseErrorAuthImpl({this.code, this.message});

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParseErrorAuthImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParseErrorAuthImplCopyWith<_$ParseErrorAuthImpl> get copyWith =>
      __$$ParseErrorAuthImplCopyWithImpl<_$ParseErrorAuthImpl>(
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
    return auth(code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? format,
    TResult? Function(String? code, String? message)? serviceTemporary,
    TResult? Function(String? code, String? message)? serviceHard,
    TResult? Function(String? code, String? message)? auth,
    TResult? Function(String? code, String? message)? badRequest,
    TResult? Function()? invalidTrackNumber,
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
    TResult? Function(ParseErrorFormat value)? format,
    TResult? Function(ParseErrorServiceTemporary value)? serviceTemporary,
    TResult? Function(ParseErrorServiceHard value)? serviceHard,
    TResult? Function(ParseErrorAuth value)? auth,
    TResult? Function(ParseErrorBadRequest value)? badRequest,
    TResult? Function(ParseErrorInvalidTrackNumber value)? invalidTrackNumber,
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
  const factory ParseErrorAuth({final String? code, final String? message}) =
      _$ParseErrorAuthImpl;

  String? get code;
  String? get message;
  @JsonKey(ignore: true)
  _$$ParseErrorAuthImplCopyWith<_$ParseErrorAuthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParseErrorBadRequestImplCopyWith<$Res> {
  factory _$$ParseErrorBadRequestImplCopyWith(_$ParseErrorBadRequestImpl value,
          $Res Function(_$ParseErrorBadRequestImpl) then) =
      __$$ParseErrorBadRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? code, String? message});
}

/// @nodoc
class __$$ParseErrorBadRequestImplCopyWithImpl<$Res>
    extends _$ParseErrorCopyWithImpl<$Res, _$ParseErrorBadRequestImpl>
    implements _$$ParseErrorBadRequestImplCopyWith<$Res> {
  __$$ParseErrorBadRequestImplCopyWithImpl(_$ParseErrorBadRequestImpl _value,
      $Res Function(_$ParseErrorBadRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ParseErrorBadRequestImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ParseErrorBadRequestImpl
    with DiagnosticableTreeMixin
    implements ParseErrorBadRequest {
  const _$ParseErrorBadRequestImpl({this.code, this.message});

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParseErrorBadRequestImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParseErrorBadRequestImplCopyWith<_$ParseErrorBadRequestImpl>
      get copyWith =>
          __$$ParseErrorBadRequestImplCopyWithImpl<_$ParseErrorBadRequestImpl>(
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
    TResult? Function(String message)? format,
    TResult? Function(String? code, String? message)? serviceTemporary,
    TResult? Function(String? code, String? message)? serviceHard,
    TResult? Function(String? code, String? message)? auth,
    TResult? Function(String? code, String? message)? badRequest,
    TResult? Function()? invalidTrackNumber,
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
    TResult? Function(ParseErrorFormat value)? format,
    TResult? Function(ParseErrorServiceTemporary value)? serviceTemporary,
    TResult? Function(ParseErrorServiceHard value)? serviceHard,
    TResult? Function(ParseErrorAuth value)? auth,
    TResult? Function(ParseErrorBadRequest value)? badRequest,
    TResult? Function(ParseErrorInvalidTrackNumber value)? invalidTrackNumber,
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
  const factory ParseErrorBadRequest(
      {final String? code, final String? message}) = _$ParseErrorBadRequestImpl;

  String? get code;
  String? get message;
  @JsonKey(ignore: true)
  _$$ParseErrorBadRequestImplCopyWith<_$ParseErrorBadRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParseErrorInvalidTrackNumberImplCopyWith<$Res> {
  factory _$$ParseErrorInvalidTrackNumberImplCopyWith(
          _$ParseErrorInvalidTrackNumberImpl value,
          $Res Function(_$ParseErrorInvalidTrackNumberImpl) then) =
      __$$ParseErrorInvalidTrackNumberImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ParseErrorInvalidTrackNumberImplCopyWithImpl<$Res>
    extends _$ParseErrorCopyWithImpl<$Res, _$ParseErrorInvalidTrackNumberImpl>
    implements _$$ParseErrorInvalidTrackNumberImplCopyWith<$Res> {
  __$$ParseErrorInvalidTrackNumberImplCopyWithImpl(
      _$ParseErrorInvalidTrackNumberImpl _value,
      $Res Function(_$ParseErrorInvalidTrackNumberImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ParseErrorInvalidTrackNumberImpl
    with DiagnosticableTreeMixin
    implements ParseErrorInvalidTrackNumber {
  const _$ParseErrorInvalidTrackNumberImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParseError.invalidTrackNumber()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ParseError.invalidTrackNumber'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParseErrorInvalidTrackNumberImpl);
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
    TResult? Function(String message)? format,
    TResult? Function(String? code, String? message)? serviceTemporary,
    TResult? Function(String? code, String? message)? serviceHard,
    TResult? Function(String? code, String? message)? auth,
    TResult? Function(String? code, String? message)? badRequest,
    TResult? Function()? invalidTrackNumber,
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
    TResult? Function(ParseErrorFormat value)? format,
    TResult? Function(ParseErrorServiceTemporary value)? serviceTemporary,
    TResult? Function(ParseErrorServiceHard value)? serviceHard,
    TResult? Function(ParseErrorAuth value)? auth,
    TResult? Function(ParseErrorBadRequest value)? badRequest,
    TResult? Function(ParseErrorInvalidTrackNumber value)? invalidTrackNumber,
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
  const factory ParseErrorInvalidTrackNumber() =
      _$ParseErrorInvalidTrackNumberImpl;
}
