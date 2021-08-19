// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TrackingNumbersTearOff {
  const _$TrackingNumbersTearOff();

  _TrackingNumbers call({String value = '', TrackingNumbersError? error}) {
    return _TrackingNumbers(
      value: value,
      error: error,
    );
  }
}

/// @nodoc
const $TrackingNumbers = _$TrackingNumbersTearOff();

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
      _$TrackingNumbersCopyWithImpl<$Res>;
  $Res call({String value, TrackingNumbersError? error});

  $TrackingNumbersErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$TrackingNumbersCopyWithImpl<$Res>
    implements $TrackingNumbersCopyWith<$Res> {
  _$TrackingNumbersCopyWithImpl(this._value, this._then);

  final TrackingNumbers _value;
  // ignore: unused_field
  final $Res Function(TrackingNumbers) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as TrackingNumbersError?,
    ));
  }

  @override
  $TrackingNumbersErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $TrackingNumbersErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
abstract class _$TrackingNumbersCopyWith<$Res>
    implements $TrackingNumbersCopyWith<$Res> {
  factory _$TrackingNumbersCopyWith(
          _TrackingNumbers value, $Res Function(_TrackingNumbers) then) =
      __$TrackingNumbersCopyWithImpl<$Res>;
  @override
  $Res call({String value, TrackingNumbersError? error});

  @override
  $TrackingNumbersErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$TrackingNumbersCopyWithImpl<$Res>
    extends _$TrackingNumbersCopyWithImpl<$Res>
    implements _$TrackingNumbersCopyWith<$Res> {
  __$TrackingNumbersCopyWithImpl(
      _TrackingNumbers _value, $Res Function(_TrackingNumbers) _then)
      : super(_value, (v) => _then(v as _TrackingNumbers));

  @override
  _TrackingNumbers get _value => super._value as _TrackingNumbers;

  @override
  $Res call({
    Object? value = freezed,
    Object? error = freezed,
  }) {
    return _then(_TrackingNumbers(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as TrackingNumbersError?,
    ));
  }
}

/// @nodoc

class _$_TrackingNumbers
    with DiagnosticableTreeMixin
    implements _TrackingNumbers {
  const _$_TrackingNumbers({this.value = '', this.error});

  @JsonKey(defaultValue: '')
  @override
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TrackingNumbers &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$TrackingNumbersCopyWith<_TrackingNumbers> get copyWith =>
      __$TrackingNumbersCopyWithImpl<_TrackingNumbers>(this, _$identity);
}

abstract class _TrackingNumbers implements TrackingNumbers {
  const factory _TrackingNumbers({String value, TrackingNumbersError? error}) =
      _$_TrackingNumbers;

  @override
  String get value => throw _privateConstructorUsedError;
  @override
  TrackingNumbersError? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TrackingNumbersCopyWith<_TrackingNumbers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TrackingNumbersErrorTearOff {
  const _$TrackingNumbersErrorTearOff();

  TrackingNumbersErrorEmpty empty() {
    return const TrackingNumbersErrorEmpty();
  }
}

/// @nodoc
const $TrackingNumbersError = _$TrackingNumbersErrorTearOff();

/// @nodoc
mixin _$TrackingNumbersError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
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
    TResult Function(TrackingNumbersErrorEmpty value)? empty,
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
      _$TrackingNumbersErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrackingNumbersErrorCopyWithImpl<$Res>
    implements $TrackingNumbersErrorCopyWith<$Res> {
  _$TrackingNumbersErrorCopyWithImpl(this._value, this._then);

  final TrackingNumbersError _value;
  // ignore: unused_field
  final $Res Function(TrackingNumbersError) _then;
}

/// @nodoc
abstract class $TrackingNumbersErrorEmptyCopyWith<$Res> {
  factory $TrackingNumbersErrorEmptyCopyWith(TrackingNumbersErrorEmpty value,
          $Res Function(TrackingNumbersErrorEmpty) then) =
      _$TrackingNumbersErrorEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrackingNumbersErrorEmptyCopyWithImpl<$Res>
    extends _$TrackingNumbersErrorCopyWithImpl<$Res>
    implements $TrackingNumbersErrorEmptyCopyWith<$Res> {
  _$TrackingNumbersErrorEmptyCopyWithImpl(TrackingNumbersErrorEmpty _value,
      $Res Function(TrackingNumbersErrorEmpty) _then)
      : super(_value, (v) => _then(v as TrackingNumbersErrorEmpty));

  @override
  TrackingNumbersErrorEmpty get _value =>
      super._value as TrackingNumbersErrorEmpty;
}

/// @nodoc

class _$TrackingNumbersErrorEmpty
    with DiagnosticableTreeMixin
    implements TrackingNumbersErrorEmpty {
  const _$TrackingNumbersErrorEmpty();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackingNumbersError.empty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'TrackingNumbersError.empty'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TrackingNumbersErrorEmpty);
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
    TResult Function()? empty,
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
    TResult Function(TrackingNumbersErrorEmpty value)? empty,
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
  const factory TrackingNumbersErrorEmpty() = _$TrackingNumbersErrorEmpty;
}

/// @nodoc
class _$ParcelNamesTearOff {
  const _$ParcelNamesTearOff();

  _ParcelNames call({String value = '', ParcelNamesError? error}) {
    return _ParcelNames(
      value: value,
      error: error,
    );
  }
}

/// @nodoc
const $ParcelNames = _$ParcelNamesTearOff();

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
      _$ParcelNamesCopyWithImpl<$Res>;
  $Res call({String value, ParcelNamesError? error});
}

/// @nodoc
class _$ParcelNamesCopyWithImpl<$Res> implements $ParcelNamesCopyWith<$Res> {
  _$ParcelNamesCopyWithImpl(this._value, this._then);

  final ParcelNames _value;
  // ignore: unused_field
  final $Res Function(ParcelNames) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ParcelNamesError?,
    ));
  }
}

/// @nodoc
abstract class _$ParcelNamesCopyWith<$Res>
    implements $ParcelNamesCopyWith<$Res> {
  factory _$ParcelNamesCopyWith(
          _ParcelNames value, $Res Function(_ParcelNames) then) =
      __$ParcelNamesCopyWithImpl<$Res>;
  @override
  $Res call({String value, ParcelNamesError? error});
}

/// @nodoc
class __$ParcelNamesCopyWithImpl<$Res> extends _$ParcelNamesCopyWithImpl<$Res>
    implements _$ParcelNamesCopyWith<$Res> {
  __$ParcelNamesCopyWithImpl(
      _ParcelNames _value, $Res Function(_ParcelNames) _then)
      : super(_value, (v) => _then(v as _ParcelNames));

  @override
  _ParcelNames get _value => super._value as _ParcelNames;

  @override
  $Res call({
    Object? value = freezed,
    Object? error = freezed,
  }) {
    return _then(_ParcelNames(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ParcelNamesError?,
    ));
  }
}

/// @nodoc

class _$_ParcelNames with DiagnosticableTreeMixin implements _ParcelNames {
  const _$_ParcelNames({this.value = '', this.error});

  @JsonKey(defaultValue: '')
  @override
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ParcelNames &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$ParcelNamesCopyWith<_ParcelNames> get copyWith =>
      __$ParcelNamesCopyWithImpl<_ParcelNames>(this, _$identity);
}

abstract class _ParcelNames implements ParcelNames {
  const factory _ParcelNames({String value, ParcelNamesError? error}) =
      _$_ParcelNames;

  @override
  String get value => throw _privateConstructorUsedError;
  @override
  ParcelNamesError? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ParcelNamesCopyWith<_ParcelNames> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TrackingNumbersParseResultTearOff {
  const _$TrackingNumbersParseResultTearOff();

  TrackingNumbersParseResultSuccess success({required List<String> trackList}) {
    return TrackingNumbersParseResultSuccess(
      trackList: trackList,
    );
  }

  TrackingNumbersParseResultError error(
      {required TrackingNumbersError reason}) {
    return TrackingNumbersParseResultError(
      reason: reason,
    );
  }
}

/// @nodoc
const $TrackingNumbersParseResult = _$TrackingNumbersParseResultTearOff();

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
    TResult Function(List<String> trackList)? success,
    TResult Function(TrackingNumbersError reason)? error,
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
    TResult Function(TrackingNumbersParseResultSuccess value)? success,
    TResult Function(TrackingNumbersParseResultError value)? error,
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
      _$TrackingNumbersParseResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrackingNumbersParseResultCopyWithImpl<$Res>
    implements $TrackingNumbersParseResultCopyWith<$Res> {
  _$TrackingNumbersParseResultCopyWithImpl(this._value, this._then);

  final TrackingNumbersParseResult _value;
  // ignore: unused_field
  final $Res Function(TrackingNumbersParseResult) _then;
}

/// @nodoc
abstract class $TrackingNumbersParseResultSuccessCopyWith<$Res> {
  factory $TrackingNumbersParseResultSuccessCopyWith(
          TrackingNumbersParseResultSuccess value,
          $Res Function(TrackingNumbersParseResultSuccess) then) =
      _$TrackingNumbersParseResultSuccessCopyWithImpl<$Res>;
  $Res call({List<String> trackList});
}

/// @nodoc
class _$TrackingNumbersParseResultSuccessCopyWithImpl<$Res>
    extends _$TrackingNumbersParseResultCopyWithImpl<$Res>
    implements $TrackingNumbersParseResultSuccessCopyWith<$Res> {
  _$TrackingNumbersParseResultSuccessCopyWithImpl(
      TrackingNumbersParseResultSuccess _value,
      $Res Function(TrackingNumbersParseResultSuccess) _then)
      : super(_value, (v) => _then(v as TrackingNumbersParseResultSuccess));

  @override
  TrackingNumbersParseResultSuccess get _value =>
      super._value as TrackingNumbersParseResultSuccess;

  @override
  $Res call({
    Object? trackList = freezed,
  }) {
    return _then(TrackingNumbersParseResultSuccess(
      trackList: trackList == freezed
          ? _value.trackList
          : trackList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$TrackingNumbersParseResultSuccess
    with DiagnosticableTreeMixin
    implements TrackingNumbersParseResultSuccess {
  const _$TrackingNumbersParseResultSuccess({required this.trackList});

  @override
  final List<String> trackList;

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TrackingNumbersParseResultSuccess &&
            (identical(other.trackList, trackList) ||
                const DeepCollectionEquality()
                    .equals(other.trackList, trackList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(trackList);

  @JsonKey(ignore: true)
  @override
  $TrackingNumbersParseResultSuccessCopyWith<TrackingNumbersParseResultSuccess>
      get copyWith => _$TrackingNumbersParseResultSuccessCopyWithImpl<
          TrackingNumbersParseResultSuccess>(this, _$identity);

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
    TResult Function(List<String> trackList)? success,
    TResult Function(TrackingNumbersError reason)? error,
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
    TResult Function(TrackingNumbersParseResultSuccess value)? success,
    TResult Function(TrackingNumbersParseResultError value)? error,
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
      {required List<String> trackList}) = _$TrackingNumbersParseResultSuccess;

  List<String> get trackList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackingNumbersParseResultSuccessCopyWith<TrackingNumbersParseResultSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingNumbersParseResultErrorCopyWith<$Res> {
  factory $TrackingNumbersParseResultErrorCopyWith(
          TrackingNumbersParseResultError value,
          $Res Function(TrackingNumbersParseResultError) then) =
      _$TrackingNumbersParseResultErrorCopyWithImpl<$Res>;
  $Res call({TrackingNumbersError reason});

  $TrackingNumbersErrorCopyWith<$Res> get reason;
}

/// @nodoc
class _$TrackingNumbersParseResultErrorCopyWithImpl<$Res>
    extends _$TrackingNumbersParseResultCopyWithImpl<$Res>
    implements $TrackingNumbersParseResultErrorCopyWith<$Res> {
  _$TrackingNumbersParseResultErrorCopyWithImpl(
      TrackingNumbersParseResultError _value,
      $Res Function(TrackingNumbersParseResultError) _then)
      : super(_value, (v) => _then(v as TrackingNumbersParseResultError));

  @override
  TrackingNumbersParseResultError get _value =>
      super._value as TrackingNumbersParseResultError;

  @override
  $Res call({
    Object? reason = freezed,
  }) {
    return _then(TrackingNumbersParseResultError(
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as TrackingNumbersError,
    ));
  }

  @override
  $TrackingNumbersErrorCopyWith<$Res> get reason {
    return $TrackingNumbersErrorCopyWith<$Res>(_value.reason, (value) {
      return _then(_value.copyWith(reason: value));
    });
  }
}

/// @nodoc

class _$TrackingNumbersParseResultError
    with DiagnosticableTreeMixin
    implements TrackingNumbersParseResultError {
  const _$TrackingNumbersParseResultError({required this.reason});

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TrackingNumbersParseResultError &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reason);

  @JsonKey(ignore: true)
  @override
  $TrackingNumbersParseResultErrorCopyWith<TrackingNumbersParseResultError>
      get copyWith => _$TrackingNumbersParseResultErrorCopyWithImpl<
          TrackingNumbersParseResultError>(this, _$identity);

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
    TResult Function(List<String> trackList)? success,
    TResult Function(TrackingNumbersError reason)? error,
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
    TResult Function(TrackingNumbersParseResultSuccess value)? success,
    TResult Function(TrackingNumbersParseResultError value)? error,
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
          {required TrackingNumbersError reason}) =
      _$TrackingNumbersParseResultError;

  TrackingNumbersError get reason => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackingNumbersParseResultErrorCopyWith<TrackingNumbersParseResultError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ParcelNamesParseResultTearOff {
  const _$ParcelNamesParseResultTearOff();

  ParcelNamesParseResultSuccess success({required List<String> namesList}) {
    return ParcelNamesParseResultSuccess(
      namesList: namesList,
    );
  }

  ParcelNamesParseResultError error({required ParcelNamesError reason}) {
    return ParcelNamesParseResultError(
      reason: reason,
    );
  }
}

/// @nodoc
const $ParcelNamesParseResult = _$ParcelNamesParseResultTearOff();

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
    TResult Function(List<String> namesList)? success,
    TResult Function(ParcelNamesError reason)? error,
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
    TResult Function(ParcelNamesParseResultSuccess value)? success,
    TResult Function(ParcelNamesParseResultError value)? error,
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
      _$ParcelNamesParseResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParcelNamesParseResultCopyWithImpl<$Res>
    implements $ParcelNamesParseResultCopyWith<$Res> {
  _$ParcelNamesParseResultCopyWithImpl(this._value, this._then);

  final ParcelNamesParseResult _value;
  // ignore: unused_field
  final $Res Function(ParcelNamesParseResult) _then;
}

/// @nodoc
abstract class $ParcelNamesParseResultSuccessCopyWith<$Res> {
  factory $ParcelNamesParseResultSuccessCopyWith(
          ParcelNamesParseResultSuccess value,
          $Res Function(ParcelNamesParseResultSuccess) then) =
      _$ParcelNamesParseResultSuccessCopyWithImpl<$Res>;
  $Res call({List<String> namesList});
}

/// @nodoc
class _$ParcelNamesParseResultSuccessCopyWithImpl<$Res>
    extends _$ParcelNamesParseResultCopyWithImpl<$Res>
    implements $ParcelNamesParseResultSuccessCopyWith<$Res> {
  _$ParcelNamesParseResultSuccessCopyWithImpl(
      ParcelNamesParseResultSuccess _value,
      $Res Function(ParcelNamesParseResultSuccess) _then)
      : super(_value, (v) => _then(v as ParcelNamesParseResultSuccess));

  @override
  ParcelNamesParseResultSuccess get _value =>
      super._value as ParcelNamesParseResultSuccess;

  @override
  $Res call({
    Object? namesList = freezed,
  }) {
    return _then(ParcelNamesParseResultSuccess(
      namesList: namesList == freezed
          ? _value.namesList
          : namesList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$ParcelNamesParseResultSuccess
    with DiagnosticableTreeMixin
    implements ParcelNamesParseResultSuccess {
  const _$ParcelNamesParseResultSuccess({required this.namesList});

  @override
  final List<String> namesList;

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParcelNamesParseResultSuccess &&
            (identical(other.namesList, namesList) ||
                const DeepCollectionEquality()
                    .equals(other.namesList, namesList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(namesList);

  @JsonKey(ignore: true)
  @override
  $ParcelNamesParseResultSuccessCopyWith<ParcelNamesParseResultSuccess>
      get copyWith => _$ParcelNamesParseResultSuccessCopyWithImpl<
          ParcelNamesParseResultSuccess>(this, _$identity);

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
    TResult Function(List<String> namesList)? success,
    TResult Function(ParcelNamesError reason)? error,
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
    TResult Function(ParcelNamesParseResultSuccess value)? success,
    TResult Function(ParcelNamesParseResultError value)? error,
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
      {required List<String> namesList}) = _$ParcelNamesParseResultSuccess;

  List<String> get namesList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParcelNamesParseResultSuccessCopyWith<ParcelNamesParseResultSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelNamesParseResultErrorCopyWith<$Res> {
  factory $ParcelNamesParseResultErrorCopyWith(
          ParcelNamesParseResultError value,
          $Res Function(ParcelNamesParseResultError) then) =
      _$ParcelNamesParseResultErrorCopyWithImpl<$Res>;
  $Res call({ParcelNamesError reason});
}

/// @nodoc
class _$ParcelNamesParseResultErrorCopyWithImpl<$Res>
    extends _$ParcelNamesParseResultCopyWithImpl<$Res>
    implements $ParcelNamesParseResultErrorCopyWith<$Res> {
  _$ParcelNamesParseResultErrorCopyWithImpl(ParcelNamesParseResultError _value,
      $Res Function(ParcelNamesParseResultError) _then)
      : super(_value, (v) => _then(v as ParcelNamesParseResultError));

  @override
  ParcelNamesParseResultError get _value =>
      super._value as ParcelNamesParseResultError;

  @override
  $Res call({
    Object? reason = freezed,
  }) {
    return _then(ParcelNamesParseResultError(
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as ParcelNamesError,
    ));
  }
}

/// @nodoc

class _$ParcelNamesParseResultError
    with DiagnosticableTreeMixin
    implements ParcelNamesParseResultError {
  const _$ParcelNamesParseResultError({required this.reason});

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParcelNamesParseResultError &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reason);

  @JsonKey(ignore: true)
  @override
  $ParcelNamesParseResultErrorCopyWith<ParcelNamesParseResultError>
      get copyWith => _$ParcelNamesParseResultErrorCopyWithImpl<
          ParcelNamesParseResultError>(this, _$identity);

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
    TResult Function(List<String> namesList)? success,
    TResult Function(ParcelNamesError reason)? error,
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
    TResult Function(ParcelNamesParseResultSuccess value)? success,
    TResult Function(ParcelNamesParseResultError value)? error,
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
      {required ParcelNamesError reason}) = _$ParcelNamesParseResultError;

  ParcelNamesError get reason => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParcelNamesParseResultErrorCopyWith<ParcelNamesParseResultError>
      get copyWith => throw _privateConstructorUsedError;
}
