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

/// @nodoc
mixin _$TrackingNumbers {
  String get value => throw _privateConstructorUsedError;
  TrackingNumbersError? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrackingNumbersCopyWith<TrackingNumbers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingNumbersCopyWith<$Res> {
  factory $TrackingNumbersCopyWith(
          TrackingNumbers value, $Res Function(TrackingNumbers) then) =
      _$TrackingNumbersCopyWithImpl<$Res, TrackingNumbers>;
  @useResult
  $Res call({String value, TrackingNumbersError? error});

  $TrackingNumbersErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$TrackingNumbersCopyWithImpl<$Res, $Val extends TrackingNumbers>
    implements $TrackingNumbersCopyWith<$Res> {
  _$TrackingNumbersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as TrackingNumbersError?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TrackingNumbersErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $TrackingNumbersErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrackingNumbersImplCopyWith<$Res>
    implements $TrackingNumbersCopyWith<$Res> {
  factory _$$TrackingNumbersImplCopyWith(_$TrackingNumbersImpl value,
          $Res Function(_$TrackingNumbersImpl) then) =
      __$$TrackingNumbersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, TrackingNumbersError? error});

  @override
  $TrackingNumbersErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$TrackingNumbersImplCopyWithImpl<$Res>
    extends _$TrackingNumbersCopyWithImpl<$Res, _$TrackingNumbersImpl>
    implements _$$TrackingNumbersImplCopyWith<$Res> {
  __$$TrackingNumbersImplCopyWithImpl(
      _$TrackingNumbersImpl _value, $Res Function(_$TrackingNumbersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? error = freezed,
  }) {
    return _then(_$TrackingNumbersImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as TrackingNumbersError?,
    ));
  }
}

/// @nodoc

class _$TrackingNumbersImpl
    with DiagnosticableTreeMixin
    implements _TrackingNumbers {
  const _$TrackingNumbersImpl({this.value = '', this.error});

  @override
  @JsonKey()
  final String value;
  @override
  final TrackingNumbersError? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackingNumbers(value: $value, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrackingNumbers'))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingNumbersImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackingNumbersImplCopyWith<_$TrackingNumbersImpl> get copyWith =>
      __$$TrackingNumbersImplCopyWithImpl<_$TrackingNumbersImpl>(
          this, _$identity);
}

abstract class _TrackingNumbers implements TrackingNumbers {
  const factory _TrackingNumbers(
      {final String value,
      final TrackingNumbersError? error}) = _$TrackingNumbersImpl;

  @override
  String get value;
  @override
  TrackingNumbersError? get error;
  @override
  @JsonKey(ignore: true)
  _$$TrackingNumbersImplCopyWith<_$TrackingNumbersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TrackingNumbersError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrackingNumbersErrorEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrackingNumbersErrorEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackingNumbersErrorEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingNumbersErrorCopyWith<$Res> {
  factory $TrackingNumbersErrorCopyWith(TrackingNumbersError value,
          $Res Function(TrackingNumbersError) then) =
      _$TrackingNumbersErrorCopyWithImpl<$Res, TrackingNumbersError>;
}

/// @nodoc
class _$TrackingNumbersErrorCopyWithImpl<$Res,
        $Val extends TrackingNumbersError>
    implements $TrackingNumbersErrorCopyWith<$Res> {
  _$TrackingNumbersErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TrackingNumbersErrorEmptyImplCopyWith<$Res> {
  factory _$$TrackingNumbersErrorEmptyImplCopyWith(
          _$TrackingNumbersErrorEmptyImpl value,
          $Res Function(_$TrackingNumbersErrorEmptyImpl) then) =
      __$$TrackingNumbersErrorEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TrackingNumbersErrorEmptyImplCopyWithImpl<$Res>
    extends _$TrackingNumbersErrorCopyWithImpl<$Res,
        _$TrackingNumbersErrorEmptyImpl>
    implements _$$TrackingNumbersErrorEmptyImplCopyWith<$Res> {
  __$$TrackingNumbersErrorEmptyImplCopyWithImpl(
      _$TrackingNumbersErrorEmptyImpl _value,
      $Res Function(_$TrackingNumbersErrorEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TrackingNumbersErrorEmptyImpl
    with DiagnosticableTreeMixin
    implements TrackingNumbersErrorEmpty {
  const _$TrackingNumbersErrorEmptyImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackingNumbersError.empty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TrackingNumbersError.empty'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingNumbersErrorEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrackingNumbersErrorEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrackingNumbersErrorEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackingNumbersErrorEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class TrackingNumbersErrorEmpty implements TrackingNumbersError {
  const factory TrackingNumbersErrorEmpty() = _$TrackingNumbersErrorEmptyImpl;
}

/// @nodoc
mixin _$ParcelNames {
  String get value => throw _privateConstructorUsedError;
  ParcelNamesError? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParcelNamesCopyWith<ParcelNames> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelNamesCopyWith<$Res> {
  factory $ParcelNamesCopyWith(
          ParcelNames value, $Res Function(ParcelNames) then) =
      _$ParcelNamesCopyWithImpl<$Res, ParcelNames>;
  @useResult
  $Res call({String value, ParcelNamesError? error});
}

/// @nodoc
class _$ParcelNamesCopyWithImpl<$Res, $Val extends ParcelNames>
    implements $ParcelNamesCopyWith<$Res> {
  _$ParcelNamesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ParcelNamesError?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParcelNamesImplCopyWith<$Res>
    implements $ParcelNamesCopyWith<$Res> {
  factory _$$ParcelNamesImplCopyWith(
          _$ParcelNamesImpl value, $Res Function(_$ParcelNamesImpl) then) =
      __$$ParcelNamesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, ParcelNamesError? error});
}

/// @nodoc
class __$$ParcelNamesImplCopyWithImpl<$Res>
    extends _$ParcelNamesCopyWithImpl<$Res, _$ParcelNamesImpl>
    implements _$$ParcelNamesImplCopyWith<$Res> {
  __$$ParcelNamesImplCopyWithImpl(
      _$ParcelNamesImpl _value, $Res Function(_$ParcelNamesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? error = freezed,
  }) {
    return _then(_$ParcelNamesImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ParcelNamesError?,
    ));
  }
}

/// @nodoc

class _$ParcelNamesImpl with DiagnosticableTreeMixin implements _ParcelNames {
  const _$ParcelNamesImpl({this.value = '', this.error});

  @override
  @JsonKey()
  final String value;
  @override
  final ParcelNamesError? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParcelNames(value: $value, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParcelNames'))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelNamesImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParcelNamesImplCopyWith<_$ParcelNamesImpl> get copyWith =>
      __$$ParcelNamesImplCopyWithImpl<_$ParcelNamesImpl>(this, _$identity);
}

abstract class _ParcelNames implements ParcelNames {
  const factory _ParcelNames(
      {final String value, final ParcelNamesError? error}) = _$ParcelNamesImpl;

  @override
  String get value;
  @override
  ParcelNamesError? get error;
  @override
  @JsonKey(ignore: true)
  _$$ParcelNamesImplCopyWith<_$ParcelNamesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TrackingNumbersParseResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> trackList) success,
    required TResult Function(TrackingNumbersError reason) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> trackList)? success,
    TResult? Function(TrackingNumbersError reason)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> trackList)? success,
    TResult Function(TrackingNumbersError reason)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrackingNumbersParseResultSuccess value) success,
    required TResult Function(TrackingNumbersParseResultError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrackingNumbersParseResultSuccess value)? success,
    TResult? Function(TrackingNumbersParseResultError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackingNumbersParseResultSuccess value)? success,
    TResult Function(TrackingNumbersParseResultError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingNumbersParseResultCopyWith<$Res> {
  factory $TrackingNumbersParseResultCopyWith(TrackingNumbersParseResult value,
          $Res Function(TrackingNumbersParseResult) then) =
      _$TrackingNumbersParseResultCopyWithImpl<$Res,
          TrackingNumbersParseResult>;
}

/// @nodoc
class _$TrackingNumbersParseResultCopyWithImpl<$Res,
        $Val extends TrackingNumbersParseResult>
    implements $TrackingNumbersParseResultCopyWith<$Res> {
  _$TrackingNumbersParseResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TrackingNumbersParseResultSuccessImplCopyWith<$Res> {
  factory _$$TrackingNumbersParseResultSuccessImplCopyWith(
          _$TrackingNumbersParseResultSuccessImpl value,
          $Res Function(_$TrackingNumbersParseResultSuccessImpl) then) =
      __$$TrackingNumbersParseResultSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> trackList});
}

/// @nodoc
class __$$TrackingNumbersParseResultSuccessImplCopyWithImpl<$Res>
    extends _$TrackingNumbersParseResultCopyWithImpl<$Res,
        _$TrackingNumbersParseResultSuccessImpl>
    implements _$$TrackingNumbersParseResultSuccessImplCopyWith<$Res> {
  __$$TrackingNumbersParseResultSuccessImplCopyWithImpl(
      _$TrackingNumbersParseResultSuccessImpl _value,
      $Res Function(_$TrackingNumbersParseResultSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackList = null,
  }) {
    return _then(_$TrackingNumbersParseResultSuccessImpl(
      trackList: null == trackList
          ? _value._trackList
          : trackList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$TrackingNumbersParseResultSuccessImpl
    with DiagnosticableTreeMixin
    implements TrackingNumbersParseResultSuccess {
  const _$TrackingNumbersParseResultSuccessImpl(
      {required final List<String> trackList})
      : _trackList = trackList;

  final List<String> _trackList;
  @override
  List<String> get trackList {
    if (_trackList is EqualUnmodifiableListView) return _trackList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trackList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackingNumbersParseResult.success(trackList: $trackList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrackingNumbersParseResult.success'))
      ..add(DiagnosticsProperty('trackList', trackList));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingNumbersParseResultSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._trackList, _trackList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_trackList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackingNumbersParseResultSuccessImplCopyWith<
          _$TrackingNumbersParseResultSuccessImpl>
      get copyWith => __$$TrackingNumbersParseResultSuccessImplCopyWithImpl<
          _$TrackingNumbersParseResultSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> trackList) success,
    required TResult Function(TrackingNumbersError reason) error,
  }) {
    return success(trackList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> trackList)? success,
    TResult? Function(TrackingNumbersError reason)? error,
  }) {
    return success?.call(trackList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> trackList)? success,
    TResult Function(TrackingNumbersError reason)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(trackList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrackingNumbersParseResultSuccess value) success,
    required TResult Function(TrackingNumbersParseResultError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrackingNumbersParseResultSuccess value)? success,
    TResult? Function(TrackingNumbersParseResultError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackingNumbersParseResultSuccess value)? success,
    TResult Function(TrackingNumbersParseResultError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class TrackingNumbersParseResultSuccess
    implements TrackingNumbersParseResult {
  const factory TrackingNumbersParseResultSuccess(
          {required final List<String> trackList}) =
      _$TrackingNumbersParseResultSuccessImpl;

  List<String> get trackList;
  @JsonKey(ignore: true)
  _$$TrackingNumbersParseResultSuccessImplCopyWith<
          _$TrackingNumbersParseResultSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TrackingNumbersParseResultErrorImplCopyWith<$Res> {
  factory _$$TrackingNumbersParseResultErrorImplCopyWith(
          _$TrackingNumbersParseResultErrorImpl value,
          $Res Function(_$TrackingNumbersParseResultErrorImpl) then) =
      __$$TrackingNumbersParseResultErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TrackingNumbersError reason});

  $TrackingNumbersErrorCopyWith<$Res> get reason;
}

/// @nodoc
class __$$TrackingNumbersParseResultErrorImplCopyWithImpl<$Res>
    extends _$TrackingNumbersParseResultCopyWithImpl<$Res,
        _$TrackingNumbersParseResultErrorImpl>
    implements _$$TrackingNumbersParseResultErrorImplCopyWith<$Res> {
  __$$TrackingNumbersParseResultErrorImplCopyWithImpl(
      _$TrackingNumbersParseResultErrorImpl _value,
      $Res Function(_$TrackingNumbersParseResultErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
  }) {
    return _then(_$TrackingNumbersParseResultErrorImpl(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as TrackingNumbersError,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TrackingNumbersErrorCopyWith<$Res> get reason {
    return $TrackingNumbersErrorCopyWith<$Res>(_value.reason, (value) {
      return _then(_value.copyWith(reason: value));
    });
  }
}

/// @nodoc

class _$TrackingNumbersParseResultErrorImpl
    with DiagnosticableTreeMixin
    implements TrackingNumbersParseResultError {
  const _$TrackingNumbersParseResultErrorImpl({required this.reason});

  @override
  final TrackingNumbersError reason;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackingNumbersParseResult.error(reason: $reason)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrackingNumbersParseResult.error'))
      ..add(DiagnosticsProperty('reason', reason));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingNumbersParseResultErrorImpl &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackingNumbersParseResultErrorImplCopyWith<
          _$TrackingNumbersParseResultErrorImpl>
      get copyWith => __$$TrackingNumbersParseResultErrorImplCopyWithImpl<
          _$TrackingNumbersParseResultErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> trackList) success,
    required TResult Function(TrackingNumbersError reason) error,
  }) {
    return error(reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> trackList)? success,
    TResult? Function(TrackingNumbersError reason)? error,
  }) {
    return error?.call(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> trackList)? success,
    TResult Function(TrackingNumbersError reason)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrackingNumbersParseResultSuccess value) success,
    required TResult Function(TrackingNumbersParseResultError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrackingNumbersParseResultSuccess value)? success,
    TResult? Function(TrackingNumbersParseResultError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackingNumbersParseResultSuccess value)? success,
    TResult Function(TrackingNumbersParseResultError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TrackingNumbersParseResultError
    implements TrackingNumbersParseResult {
  const factory TrackingNumbersParseResultError(
          {required final TrackingNumbersError reason}) =
      _$TrackingNumbersParseResultErrorImpl;

  TrackingNumbersError get reason;
  @JsonKey(ignore: true)
  _$$TrackingNumbersParseResultErrorImplCopyWith<
          _$TrackingNumbersParseResultErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ParcelNamesParseResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> namesList) success,
    required TResult Function(ParcelNamesError reason) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> namesList)? success,
    TResult? Function(ParcelNamesError reason)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> namesList)? success,
    TResult Function(ParcelNamesError reason)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelNamesParseResultSuccess value) success,
    required TResult Function(ParcelNamesParseResultError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParcelNamesParseResultSuccess value)? success,
    TResult? Function(ParcelNamesParseResultError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelNamesParseResultSuccess value)? success,
    TResult Function(ParcelNamesParseResultError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelNamesParseResultCopyWith<$Res> {
  factory $ParcelNamesParseResultCopyWith(ParcelNamesParseResult value,
          $Res Function(ParcelNamesParseResult) then) =
      _$ParcelNamesParseResultCopyWithImpl<$Res, ParcelNamesParseResult>;
}

/// @nodoc
class _$ParcelNamesParseResultCopyWithImpl<$Res,
        $Val extends ParcelNamesParseResult>
    implements $ParcelNamesParseResultCopyWith<$Res> {
  _$ParcelNamesParseResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ParcelNamesParseResultSuccessImplCopyWith<$Res> {
  factory _$$ParcelNamesParseResultSuccessImplCopyWith(
          _$ParcelNamesParseResultSuccessImpl value,
          $Res Function(_$ParcelNamesParseResultSuccessImpl) then) =
      __$$ParcelNamesParseResultSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> namesList});
}

/// @nodoc
class __$$ParcelNamesParseResultSuccessImplCopyWithImpl<$Res>
    extends _$ParcelNamesParseResultCopyWithImpl<$Res,
        _$ParcelNamesParseResultSuccessImpl>
    implements _$$ParcelNamesParseResultSuccessImplCopyWith<$Res> {
  __$$ParcelNamesParseResultSuccessImplCopyWithImpl(
      _$ParcelNamesParseResultSuccessImpl _value,
      $Res Function(_$ParcelNamesParseResultSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? namesList = null,
  }) {
    return _then(_$ParcelNamesParseResultSuccessImpl(
      namesList: null == namesList
          ? _value._namesList
          : namesList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$ParcelNamesParseResultSuccessImpl
    with DiagnosticableTreeMixin
    implements ParcelNamesParseResultSuccess {
  const _$ParcelNamesParseResultSuccessImpl(
      {required final List<String> namesList})
      : _namesList = namesList;

  final List<String> _namesList;
  @override
  List<String> get namesList {
    if (_namesList is EqualUnmodifiableListView) return _namesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_namesList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParcelNamesParseResult.success(namesList: $namesList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParcelNamesParseResult.success'))
      ..add(DiagnosticsProperty('namesList', namesList));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelNamesParseResultSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._namesList, _namesList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_namesList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParcelNamesParseResultSuccessImplCopyWith<
          _$ParcelNamesParseResultSuccessImpl>
      get copyWith => __$$ParcelNamesParseResultSuccessImplCopyWithImpl<
          _$ParcelNamesParseResultSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> namesList) success,
    required TResult Function(ParcelNamesError reason) error,
  }) {
    return success(namesList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> namesList)? success,
    TResult? Function(ParcelNamesError reason)? error,
  }) {
    return success?.call(namesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> namesList)? success,
    TResult Function(ParcelNamesError reason)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(namesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelNamesParseResultSuccess value) success,
    required TResult Function(ParcelNamesParseResultError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParcelNamesParseResultSuccess value)? success,
    TResult? Function(ParcelNamesParseResultError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelNamesParseResultSuccess value)? success,
    TResult Function(ParcelNamesParseResultError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ParcelNamesParseResultSuccess implements ParcelNamesParseResult {
  const factory ParcelNamesParseResultSuccess(
          {required final List<String> namesList}) =
      _$ParcelNamesParseResultSuccessImpl;

  List<String> get namesList;
  @JsonKey(ignore: true)
  _$$ParcelNamesParseResultSuccessImplCopyWith<
          _$ParcelNamesParseResultSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParcelNamesParseResultErrorImplCopyWith<$Res> {
  factory _$$ParcelNamesParseResultErrorImplCopyWith(
          _$ParcelNamesParseResultErrorImpl value,
          $Res Function(_$ParcelNamesParseResultErrorImpl) then) =
      __$$ParcelNamesParseResultErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ParcelNamesError reason});
}

/// @nodoc
class __$$ParcelNamesParseResultErrorImplCopyWithImpl<$Res>
    extends _$ParcelNamesParseResultCopyWithImpl<$Res,
        _$ParcelNamesParseResultErrorImpl>
    implements _$$ParcelNamesParseResultErrorImplCopyWith<$Res> {
  __$$ParcelNamesParseResultErrorImplCopyWithImpl(
      _$ParcelNamesParseResultErrorImpl _value,
      $Res Function(_$ParcelNamesParseResultErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
  }) {
    return _then(_$ParcelNamesParseResultErrorImpl(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as ParcelNamesError,
    ));
  }
}

/// @nodoc

class _$ParcelNamesParseResultErrorImpl
    with DiagnosticableTreeMixin
    implements ParcelNamesParseResultError {
  const _$ParcelNamesParseResultErrorImpl({required this.reason});

  @override
  final ParcelNamesError reason;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParcelNamesParseResult.error(reason: $reason)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParcelNamesParseResult.error'))
      ..add(DiagnosticsProperty('reason', reason));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelNamesParseResultErrorImpl &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParcelNamesParseResultErrorImplCopyWith<_$ParcelNamesParseResultErrorImpl>
      get copyWith => __$$ParcelNamesParseResultErrorImplCopyWithImpl<
          _$ParcelNamesParseResultErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> namesList) success,
    required TResult Function(ParcelNamesError reason) error,
  }) {
    return error(reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> namesList)? success,
    TResult? Function(ParcelNamesError reason)? error,
  }) {
    return error?.call(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> namesList)? success,
    TResult Function(ParcelNamesError reason)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelNamesParseResultSuccess value) success,
    required TResult Function(ParcelNamesParseResultError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParcelNamesParseResultSuccess value)? success,
    TResult? Function(ParcelNamesParseResultError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelNamesParseResultSuccess value)? success,
    TResult Function(ParcelNamesParseResultError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ParcelNamesParseResultError implements ParcelNamesParseResult {
  const factory ParcelNamesParseResultError(
          {required final ParcelNamesError reason}) =
      _$ParcelNamesParseResultErrorImpl;

  ParcelNamesError get reason;
  @JsonKey(ignore: true)
  _$$ParcelNamesParseResultErrorImplCopyWith<_$ParcelNamesParseResultErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
