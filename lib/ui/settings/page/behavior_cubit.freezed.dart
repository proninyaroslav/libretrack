// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'behavior_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BehaviorStateTearOff {
  const _$BehaviorStateTearOff();

  BehaviorStateInitial initial(BehaviorInfo info) {
    return BehaviorStateInitial(
      info,
    );
  }

  BehaviorStateTrackingLimitChanged trackingLimitChanged(BehaviorInfo info) {
    return BehaviorStateTrackingLimitChanged(
      info,
    );
  }

  BehaviorStateAutoTrackingChanged autoTrackingChanged(BehaviorInfo info) {
    return BehaviorStateAutoTrackingChanged(
      info,
    );
  }

  BehaviorStateAutoTrackingFreqChanged autoTrackingFreqChanged(
      BehaviorInfo info) {
    return BehaviorStateAutoTrackingFreqChanged(
      info,
    );
  }

  BehaviorStateTrackingHistorySizeChanged trackingHistorySizeChanged(
      BehaviorInfo info) {
    return BehaviorStateTrackingHistorySizeChanged(
      info,
    );
  }
}

/// @nodoc
const $BehaviorState = _$BehaviorStateTearOff();

/// @nodoc
mixin _$BehaviorState {
  BehaviorInfo get info => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BehaviorInfo info) initial,
    required TResult Function(BehaviorInfo info) trackingLimitChanged,
    required TResult Function(BehaviorInfo info) autoTrackingChanged,
    required TResult Function(BehaviorInfo info) autoTrackingFreqChanged,
    required TResult Function(BehaviorInfo info) trackingHistorySizeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BehaviorInfo info)? initial,
    TResult Function(BehaviorInfo info)? trackingLimitChanged,
    TResult Function(BehaviorInfo info)? autoTrackingChanged,
    TResult Function(BehaviorInfo info)? autoTrackingFreqChanged,
    TResult Function(BehaviorInfo info)? trackingHistorySizeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BehaviorStateInitial value) initial,
    required TResult Function(BehaviorStateTrackingLimitChanged value)
        trackingLimitChanged,
    required TResult Function(BehaviorStateAutoTrackingChanged value)
        autoTrackingChanged,
    required TResult Function(BehaviorStateAutoTrackingFreqChanged value)
        autoTrackingFreqChanged,
    required TResult Function(BehaviorStateTrackingHistorySizeChanged value)
        trackingHistorySizeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BehaviorStateInitial value)? initial,
    TResult Function(BehaviorStateTrackingLimitChanged value)?
        trackingLimitChanged,
    TResult Function(BehaviorStateAutoTrackingChanged value)?
        autoTrackingChanged,
    TResult Function(BehaviorStateAutoTrackingFreqChanged value)?
        autoTrackingFreqChanged,
    TResult Function(BehaviorStateTrackingHistorySizeChanged value)?
        trackingHistorySizeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BehaviorStateCopyWith<BehaviorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BehaviorStateCopyWith<$Res> {
  factory $BehaviorStateCopyWith(
          BehaviorState value, $Res Function(BehaviorState) then) =
      _$BehaviorStateCopyWithImpl<$Res>;
  $Res call({BehaviorInfo info});

  $BehaviorInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$BehaviorStateCopyWithImpl<$Res>
    implements $BehaviorStateCopyWith<$Res> {
  _$BehaviorStateCopyWithImpl(this._value, this._then);

  final BehaviorState _value;
  // ignore: unused_field
  final $Res Function(BehaviorState) _then;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as BehaviorInfo,
    ));
  }

  @override
  $BehaviorInfoCopyWith<$Res> get info {
    return $BehaviorInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class $BehaviorStateInitialCopyWith<$Res>
    implements $BehaviorStateCopyWith<$Res> {
  factory $BehaviorStateInitialCopyWith(BehaviorStateInitial value,
          $Res Function(BehaviorStateInitial) then) =
      _$BehaviorStateInitialCopyWithImpl<$Res>;
  @override
  $Res call({BehaviorInfo info});

  @override
  $BehaviorInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$BehaviorStateInitialCopyWithImpl<$Res>
    extends _$BehaviorStateCopyWithImpl<$Res>
    implements $BehaviorStateInitialCopyWith<$Res> {
  _$BehaviorStateInitialCopyWithImpl(
      BehaviorStateInitial _value, $Res Function(BehaviorStateInitial) _then)
      : super(_value, (v) => _then(v as BehaviorStateInitial));

  @override
  BehaviorStateInitial get _value => super._value as BehaviorStateInitial;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(BehaviorStateInitial(
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as BehaviorInfo,
    ));
  }
}

/// @nodoc

class _$BehaviorStateInitial implements BehaviorStateInitial {
  const _$BehaviorStateInitial(this.info);

  @override
  final BehaviorInfo info;

  @override
  String toString() {
    return 'BehaviorState.initial(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BehaviorStateInitial &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  $BehaviorStateInitialCopyWith<BehaviorStateInitial> get copyWith =>
      _$BehaviorStateInitialCopyWithImpl<BehaviorStateInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BehaviorInfo info) initial,
    required TResult Function(BehaviorInfo info) trackingLimitChanged,
    required TResult Function(BehaviorInfo info) autoTrackingChanged,
    required TResult Function(BehaviorInfo info) autoTrackingFreqChanged,
    required TResult Function(BehaviorInfo info) trackingHistorySizeChanged,
  }) {
    return initial(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BehaviorInfo info)? initial,
    TResult Function(BehaviorInfo info)? trackingLimitChanged,
    TResult Function(BehaviorInfo info)? autoTrackingChanged,
    TResult Function(BehaviorInfo info)? autoTrackingFreqChanged,
    TResult Function(BehaviorInfo info)? trackingHistorySizeChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BehaviorStateInitial value) initial,
    required TResult Function(BehaviorStateTrackingLimitChanged value)
        trackingLimitChanged,
    required TResult Function(BehaviorStateAutoTrackingChanged value)
        autoTrackingChanged,
    required TResult Function(BehaviorStateAutoTrackingFreqChanged value)
        autoTrackingFreqChanged,
    required TResult Function(BehaviorStateTrackingHistorySizeChanged value)
        trackingHistorySizeChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BehaviorStateInitial value)? initial,
    TResult Function(BehaviorStateTrackingLimitChanged value)?
        trackingLimitChanged,
    TResult Function(BehaviorStateAutoTrackingChanged value)?
        autoTrackingChanged,
    TResult Function(BehaviorStateAutoTrackingFreqChanged value)?
        autoTrackingFreqChanged,
    TResult Function(BehaviorStateTrackingHistorySizeChanged value)?
        trackingHistorySizeChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class BehaviorStateInitial implements BehaviorState {
  const factory BehaviorStateInitial(BehaviorInfo info) =
      _$BehaviorStateInitial;

  @override
  BehaviorInfo get info => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $BehaviorStateInitialCopyWith<BehaviorStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BehaviorStateTrackingLimitChangedCopyWith<$Res>
    implements $BehaviorStateCopyWith<$Res> {
  factory $BehaviorStateTrackingLimitChangedCopyWith(
          BehaviorStateTrackingLimitChanged value,
          $Res Function(BehaviorStateTrackingLimitChanged) then) =
      _$BehaviorStateTrackingLimitChangedCopyWithImpl<$Res>;
  @override
  $Res call({BehaviorInfo info});

  @override
  $BehaviorInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$BehaviorStateTrackingLimitChangedCopyWithImpl<$Res>
    extends _$BehaviorStateCopyWithImpl<$Res>
    implements $BehaviorStateTrackingLimitChangedCopyWith<$Res> {
  _$BehaviorStateTrackingLimitChangedCopyWithImpl(
      BehaviorStateTrackingLimitChanged _value,
      $Res Function(BehaviorStateTrackingLimitChanged) _then)
      : super(_value, (v) => _then(v as BehaviorStateTrackingLimitChanged));

  @override
  BehaviorStateTrackingLimitChanged get _value =>
      super._value as BehaviorStateTrackingLimitChanged;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(BehaviorStateTrackingLimitChanged(
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as BehaviorInfo,
    ));
  }
}

/// @nodoc

class _$BehaviorStateTrackingLimitChanged
    implements BehaviorStateTrackingLimitChanged {
  const _$BehaviorStateTrackingLimitChanged(this.info);

  @override
  final BehaviorInfo info;

  @override
  String toString() {
    return 'BehaviorState.trackingLimitChanged(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BehaviorStateTrackingLimitChanged &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  $BehaviorStateTrackingLimitChangedCopyWith<BehaviorStateTrackingLimitChanged>
      get copyWith => _$BehaviorStateTrackingLimitChangedCopyWithImpl<
          BehaviorStateTrackingLimitChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BehaviorInfo info) initial,
    required TResult Function(BehaviorInfo info) trackingLimitChanged,
    required TResult Function(BehaviorInfo info) autoTrackingChanged,
    required TResult Function(BehaviorInfo info) autoTrackingFreqChanged,
    required TResult Function(BehaviorInfo info) trackingHistorySizeChanged,
  }) {
    return trackingLimitChanged(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BehaviorInfo info)? initial,
    TResult Function(BehaviorInfo info)? trackingLimitChanged,
    TResult Function(BehaviorInfo info)? autoTrackingChanged,
    TResult Function(BehaviorInfo info)? autoTrackingFreqChanged,
    TResult Function(BehaviorInfo info)? trackingHistorySizeChanged,
    required TResult orElse(),
  }) {
    if (trackingLimitChanged != null) {
      return trackingLimitChanged(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BehaviorStateInitial value) initial,
    required TResult Function(BehaviorStateTrackingLimitChanged value)
        trackingLimitChanged,
    required TResult Function(BehaviorStateAutoTrackingChanged value)
        autoTrackingChanged,
    required TResult Function(BehaviorStateAutoTrackingFreqChanged value)
        autoTrackingFreqChanged,
    required TResult Function(BehaviorStateTrackingHistorySizeChanged value)
        trackingHistorySizeChanged,
  }) {
    return trackingLimitChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BehaviorStateInitial value)? initial,
    TResult Function(BehaviorStateTrackingLimitChanged value)?
        trackingLimitChanged,
    TResult Function(BehaviorStateAutoTrackingChanged value)?
        autoTrackingChanged,
    TResult Function(BehaviorStateAutoTrackingFreqChanged value)?
        autoTrackingFreqChanged,
    TResult Function(BehaviorStateTrackingHistorySizeChanged value)?
        trackingHistorySizeChanged,
    required TResult orElse(),
  }) {
    if (trackingLimitChanged != null) {
      return trackingLimitChanged(this);
    }
    return orElse();
  }
}

abstract class BehaviorStateTrackingLimitChanged implements BehaviorState {
  const factory BehaviorStateTrackingLimitChanged(BehaviorInfo info) =
      _$BehaviorStateTrackingLimitChanged;

  @override
  BehaviorInfo get info => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $BehaviorStateTrackingLimitChangedCopyWith<BehaviorStateTrackingLimitChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BehaviorStateAutoTrackingChangedCopyWith<$Res>
    implements $BehaviorStateCopyWith<$Res> {
  factory $BehaviorStateAutoTrackingChangedCopyWith(
          BehaviorStateAutoTrackingChanged value,
          $Res Function(BehaviorStateAutoTrackingChanged) then) =
      _$BehaviorStateAutoTrackingChangedCopyWithImpl<$Res>;
  @override
  $Res call({BehaviorInfo info});

  @override
  $BehaviorInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$BehaviorStateAutoTrackingChangedCopyWithImpl<$Res>
    extends _$BehaviorStateCopyWithImpl<$Res>
    implements $BehaviorStateAutoTrackingChangedCopyWith<$Res> {
  _$BehaviorStateAutoTrackingChangedCopyWithImpl(
      BehaviorStateAutoTrackingChanged _value,
      $Res Function(BehaviorStateAutoTrackingChanged) _then)
      : super(_value, (v) => _then(v as BehaviorStateAutoTrackingChanged));

  @override
  BehaviorStateAutoTrackingChanged get _value =>
      super._value as BehaviorStateAutoTrackingChanged;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(BehaviorStateAutoTrackingChanged(
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as BehaviorInfo,
    ));
  }
}

/// @nodoc

class _$BehaviorStateAutoTrackingChanged
    implements BehaviorStateAutoTrackingChanged {
  const _$BehaviorStateAutoTrackingChanged(this.info);

  @override
  final BehaviorInfo info;

  @override
  String toString() {
    return 'BehaviorState.autoTrackingChanged(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BehaviorStateAutoTrackingChanged &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  $BehaviorStateAutoTrackingChangedCopyWith<BehaviorStateAutoTrackingChanged>
      get copyWith => _$BehaviorStateAutoTrackingChangedCopyWithImpl<
          BehaviorStateAutoTrackingChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BehaviorInfo info) initial,
    required TResult Function(BehaviorInfo info) trackingLimitChanged,
    required TResult Function(BehaviorInfo info) autoTrackingChanged,
    required TResult Function(BehaviorInfo info) autoTrackingFreqChanged,
    required TResult Function(BehaviorInfo info) trackingHistorySizeChanged,
  }) {
    return autoTrackingChanged(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BehaviorInfo info)? initial,
    TResult Function(BehaviorInfo info)? trackingLimitChanged,
    TResult Function(BehaviorInfo info)? autoTrackingChanged,
    TResult Function(BehaviorInfo info)? autoTrackingFreqChanged,
    TResult Function(BehaviorInfo info)? trackingHistorySizeChanged,
    required TResult orElse(),
  }) {
    if (autoTrackingChanged != null) {
      return autoTrackingChanged(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BehaviorStateInitial value) initial,
    required TResult Function(BehaviorStateTrackingLimitChanged value)
        trackingLimitChanged,
    required TResult Function(BehaviorStateAutoTrackingChanged value)
        autoTrackingChanged,
    required TResult Function(BehaviorStateAutoTrackingFreqChanged value)
        autoTrackingFreqChanged,
    required TResult Function(BehaviorStateTrackingHistorySizeChanged value)
        trackingHistorySizeChanged,
  }) {
    return autoTrackingChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BehaviorStateInitial value)? initial,
    TResult Function(BehaviorStateTrackingLimitChanged value)?
        trackingLimitChanged,
    TResult Function(BehaviorStateAutoTrackingChanged value)?
        autoTrackingChanged,
    TResult Function(BehaviorStateAutoTrackingFreqChanged value)?
        autoTrackingFreqChanged,
    TResult Function(BehaviorStateTrackingHistorySizeChanged value)?
        trackingHistorySizeChanged,
    required TResult orElse(),
  }) {
    if (autoTrackingChanged != null) {
      return autoTrackingChanged(this);
    }
    return orElse();
  }
}

abstract class BehaviorStateAutoTrackingChanged implements BehaviorState {
  const factory BehaviorStateAutoTrackingChanged(BehaviorInfo info) =
      _$BehaviorStateAutoTrackingChanged;

  @override
  BehaviorInfo get info => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $BehaviorStateAutoTrackingChangedCopyWith<BehaviorStateAutoTrackingChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BehaviorStateAutoTrackingFreqChangedCopyWith<$Res>
    implements $BehaviorStateCopyWith<$Res> {
  factory $BehaviorStateAutoTrackingFreqChangedCopyWith(
          BehaviorStateAutoTrackingFreqChanged value,
          $Res Function(BehaviorStateAutoTrackingFreqChanged) then) =
      _$BehaviorStateAutoTrackingFreqChangedCopyWithImpl<$Res>;
  @override
  $Res call({BehaviorInfo info});

  @override
  $BehaviorInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$BehaviorStateAutoTrackingFreqChangedCopyWithImpl<$Res>
    extends _$BehaviorStateCopyWithImpl<$Res>
    implements $BehaviorStateAutoTrackingFreqChangedCopyWith<$Res> {
  _$BehaviorStateAutoTrackingFreqChangedCopyWithImpl(
      BehaviorStateAutoTrackingFreqChanged _value,
      $Res Function(BehaviorStateAutoTrackingFreqChanged) _then)
      : super(_value, (v) => _then(v as BehaviorStateAutoTrackingFreqChanged));

  @override
  BehaviorStateAutoTrackingFreqChanged get _value =>
      super._value as BehaviorStateAutoTrackingFreqChanged;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(BehaviorStateAutoTrackingFreqChanged(
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as BehaviorInfo,
    ));
  }
}

/// @nodoc

class _$BehaviorStateAutoTrackingFreqChanged
    implements BehaviorStateAutoTrackingFreqChanged {
  const _$BehaviorStateAutoTrackingFreqChanged(this.info);

  @override
  final BehaviorInfo info;

  @override
  String toString() {
    return 'BehaviorState.autoTrackingFreqChanged(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BehaviorStateAutoTrackingFreqChanged &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  $BehaviorStateAutoTrackingFreqChangedCopyWith<
          BehaviorStateAutoTrackingFreqChanged>
      get copyWith => _$BehaviorStateAutoTrackingFreqChangedCopyWithImpl<
          BehaviorStateAutoTrackingFreqChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BehaviorInfo info) initial,
    required TResult Function(BehaviorInfo info) trackingLimitChanged,
    required TResult Function(BehaviorInfo info) autoTrackingChanged,
    required TResult Function(BehaviorInfo info) autoTrackingFreqChanged,
    required TResult Function(BehaviorInfo info) trackingHistorySizeChanged,
  }) {
    return autoTrackingFreqChanged(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BehaviorInfo info)? initial,
    TResult Function(BehaviorInfo info)? trackingLimitChanged,
    TResult Function(BehaviorInfo info)? autoTrackingChanged,
    TResult Function(BehaviorInfo info)? autoTrackingFreqChanged,
    TResult Function(BehaviorInfo info)? trackingHistorySizeChanged,
    required TResult orElse(),
  }) {
    if (autoTrackingFreqChanged != null) {
      return autoTrackingFreqChanged(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BehaviorStateInitial value) initial,
    required TResult Function(BehaviorStateTrackingLimitChanged value)
        trackingLimitChanged,
    required TResult Function(BehaviorStateAutoTrackingChanged value)
        autoTrackingChanged,
    required TResult Function(BehaviorStateAutoTrackingFreqChanged value)
        autoTrackingFreqChanged,
    required TResult Function(BehaviorStateTrackingHistorySizeChanged value)
        trackingHistorySizeChanged,
  }) {
    return autoTrackingFreqChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BehaviorStateInitial value)? initial,
    TResult Function(BehaviorStateTrackingLimitChanged value)?
        trackingLimitChanged,
    TResult Function(BehaviorStateAutoTrackingChanged value)?
        autoTrackingChanged,
    TResult Function(BehaviorStateAutoTrackingFreqChanged value)?
        autoTrackingFreqChanged,
    TResult Function(BehaviorStateTrackingHistorySizeChanged value)?
        trackingHistorySizeChanged,
    required TResult orElse(),
  }) {
    if (autoTrackingFreqChanged != null) {
      return autoTrackingFreqChanged(this);
    }
    return orElse();
  }
}

abstract class BehaviorStateAutoTrackingFreqChanged implements BehaviorState {
  const factory BehaviorStateAutoTrackingFreqChanged(BehaviorInfo info) =
      _$BehaviorStateAutoTrackingFreqChanged;

  @override
  BehaviorInfo get info => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $BehaviorStateAutoTrackingFreqChangedCopyWith<
          BehaviorStateAutoTrackingFreqChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BehaviorStateTrackingHistorySizeChangedCopyWith<$Res>
    implements $BehaviorStateCopyWith<$Res> {
  factory $BehaviorStateTrackingHistorySizeChangedCopyWith(
          BehaviorStateTrackingHistorySizeChanged value,
          $Res Function(BehaviorStateTrackingHistorySizeChanged) then) =
      _$BehaviorStateTrackingHistorySizeChangedCopyWithImpl<$Res>;
  @override
  $Res call({BehaviorInfo info});

  @override
  $BehaviorInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$BehaviorStateTrackingHistorySizeChangedCopyWithImpl<$Res>
    extends _$BehaviorStateCopyWithImpl<$Res>
    implements $BehaviorStateTrackingHistorySizeChangedCopyWith<$Res> {
  _$BehaviorStateTrackingHistorySizeChangedCopyWithImpl(
      BehaviorStateTrackingHistorySizeChanged _value,
      $Res Function(BehaviorStateTrackingHistorySizeChanged) _then)
      : super(
            _value, (v) => _then(v as BehaviorStateTrackingHistorySizeChanged));

  @override
  BehaviorStateTrackingHistorySizeChanged get _value =>
      super._value as BehaviorStateTrackingHistorySizeChanged;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(BehaviorStateTrackingHistorySizeChanged(
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as BehaviorInfo,
    ));
  }
}

/// @nodoc

class _$BehaviorStateTrackingHistorySizeChanged
    implements BehaviorStateTrackingHistorySizeChanged {
  const _$BehaviorStateTrackingHistorySizeChanged(this.info);

  @override
  final BehaviorInfo info;

  @override
  String toString() {
    return 'BehaviorState.trackingHistorySizeChanged(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BehaviorStateTrackingHistorySizeChanged &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  $BehaviorStateTrackingHistorySizeChangedCopyWith<
          BehaviorStateTrackingHistorySizeChanged>
      get copyWith => _$BehaviorStateTrackingHistorySizeChangedCopyWithImpl<
          BehaviorStateTrackingHistorySizeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BehaviorInfo info) initial,
    required TResult Function(BehaviorInfo info) trackingLimitChanged,
    required TResult Function(BehaviorInfo info) autoTrackingChanged,
    required TResult Function(BehaviorInfo info) autoTrackingFreqChanged,
    required TResult Function(BehaviorInfo info) trackingHistorySizeChanged,
  }) {
    return trackingHistorySizeChanged(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BehaviorInfo info)? initial,
    TResult Function(BehaviorInfo info)? trackingLimitChanged,
    TResult Function(BehaviorInfo info)? autoTrackingChanged,
    TResult Function(BehaviorInfo info)? autoTrackingFreqChanged,
    TResult Function(BehaviorInfo info)? trackingHistorySizeChanged,
    required TResult orElse(),
  }) {
    if (trackingHistorySizeChanged != null) {
      return trackingHistorySizeChanged(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BehaviorStateInitial value) initial,
    required TResult Function(BehaviorStateTrackingLimitChanged value)
        trackingLimitChanged,
    required TResult Function(BehaviorStateAutoTrackingChanged value)
        autoTrackingChanged,
    required TResult Function(BehaviorStateAutoTrackingFreqChanged value)
        autoTrackingFreqChanged,
    required TResult Function(BehaviorStateTrackingHistorySizeChanged value)
        trackingHistorySizeChanged,
  }) {
    return trackingHistorySizeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BehaviorStateInitial value)? initial,
    TResult Function(BehaviorStateTrackingLimitChanged value)?
        trackingLimitChanged,
    TResult Function(BehaviorStateAutoTrackingChanged value)?
        autoTrackingChanged,
    TResult Function(BehaviorStateAutoTrackingFreqChanged value)?
        autoTrackingFreqChanged,
    TResult Function(BehaviorStateTrackingHistorySizeChanged value)?
        trackingHistorySizeChanged,
    required TResult orElse(),
  }) {
    if (trackingHistorySizeChanged != null) {
      return trackingHistorySizeChanged(this);
    }
    return orElse();
  }
}

abstract class BehaviorStateTrackingHistorySizeChanged
    implements BehaviorState {
  const factory BehaviorStateTrackingHistorySizeChanged(BehaviorInfo info) =
      _$BehaviorStateTrackingHistorySizeChanged;

  @override
  BehaviorInfo get info => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $BehaviorStateTrackingHistorySizeChangedCopyWith<
          BehaviorStateTrackingHistorySizeChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$BehaviorInfoTearOff {
  const _$BehaviorInfoTearOff();

  _BehaviorInfo call(
      {required TrackingFreqLimit trackingLimit,
      required bool autoTracking,
      required AutoTrackingFreq autoTrackingFreq,
      required int trackingHistorySize}) {
    return _BehaviorInfo(
      trackingLimit: trackingLimit,
      autoTracking: autoTracking,
      autoTrackingFreq: autoTrackingFreq,
      trackingHistorySize: trackingHistorySize,
    );
  }
}

/// @nodoc
const $BehaviorInfo = _$BehaviorInfoTearOff();

/// @nodoc
mixin _$BehaviorInfo {
  TrackingFreqLimit get trackingLimit => throw _privateConstructorUsedError;
  bool get autoTracking => throw _privateConstructorUsedError;
  AutoTrackingFreq get autoTrackingFreq => throw _privateConstructorUsedError;
  int get trackingHistorySize => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BehaviorInfoCopyWith<BehaviorInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BehaviorInfoCopyWith<$Res> {
  factory $BehaviorInfoCopyWith(
          BehaviorInfo value, $Res Function(BehaviorInfo) then) =
      _$BehaviorInfoCopyWithImpl<$Res>;
  $Res call(
      {TrackingFreqLimit trackingLimit,
      bool autoTracking,
      AutoTrackingFreq autoTrackingFreq,
      int trackingHistorySize});

  $TrackingFreqLimitCopyWith<$Res> get trackingLimit;
  $AutoTrackingFreqCopyWith<$Res> get autoTrackingFreq;
}

/// @nodoc
class _$BehaviorInfoCopyWithImpl<$Res> implements $BehaviorInfoCopyWith<$Res> {
  _$BehaviorInfoCopyWithImpl(this._value, this._then);

  final BehaviorInfo _value;
  // ignore: unused_field
  final $Res Function(BehaviorInfo) _then;

  @override
  $Res call({
    Object? trackingLimit = freezed,
    Object? autoTracking = freezed,
    Object? autoTrackingFreq = freezed,
    Object? trackingHistorySize = freezed,
  }) {
    return _then(_value.copyWith(
      trackingLimit: trackingLimit == freezed
          ? _value.trackingLimit
          : trackingLimit // ignore: cast_nullable_to_non_nullable
              as TrackingFreqLimit,
      autoTracking: autoTracking == freezed
          ? _value.autoTracking
          : autoTracking // ignore: cast_nullable_to_non_nullable
              as bool,
      autoTrackingFreq: autoTrackingFreq == freezed
          ? _value.autoTrackingFreq
          : autoTrackingFreq // ignore: cast_nullable_to_non_nullable
              as AutoTrackingFreq,
      trackingHistorySize: trackingHistorySize == freezed
          ? _value.trackingHistorySize
          : trackingHistorySize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $TrackingFreqLimitCopyWith<$Res> get trackingLimit {
    return $TrackingFreqLimitCopyWith<$Res>(_value.trackingLimit, (value) {
      return _then(_value.copyWith(trackingLimit: value));
    });
  }

  @override
  $AutoTrackingFreqCopyWith<$Res> get autoTrackingFreq {
    return $AutoTrackingFreqCopyWith<$Res>(_value.autoTrackingFreq, (value) {
      return _then(_value.copyWith(autoTrackingFreq: value));
    });
  }
}

/// @nodoc
abstract class _$BehaviorInfoCopyWith<$Res>
    implements $BehaviorInfoCopyWith<$Res> {
  factory _$BehaviorInfoCopyWith(
          _BehaviorInfo value, $Res Function(_BehaviorInfo) then) =
      __$BehaviorInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {TrackingFreqLimit trackingLimit,
      bool autoTracking,
      AutoTrackingFreq autoTrackingFreq,
      int trackingHistorySize});

  @override
  $TrackingFreqLimitCopyWith<$Res> get trackingLimit;
  @override
  $AutoTrackingFreqCopyWith<$Res> get autoTrackingFreq;
}

/// @nodoc
class __$BehaviorInfoCopyWithImpl<$Res> extends _$BehaviorInfoCopyWithImpl<$Res>
    implements _$BehaviorInfoCopyWith<$Res> {
  __$BehaviorInfoCopyWithImpl(
      _BehaviorInfo _value, $Res Function(_BehaviorInfo) _then)
      : super(_value, (v) => _then(v as _BehaviorInfo));

  @override
  _BehaviorInfo get _value => super._value as _BehaviorInfo;

  @override
  $Res call({
    Object? trackingLimit = freezed,
    Object? autoTracking = freezed,
    Object? autoTrackingFreq = freezed,
    Object? trackingHistorySize = freezed,
  }) {
    return _then(_BehaviorInfo(
      trackingLimit: trackingLimit == freezed
          ? _value.trackingLimit
          : trackingLimit // ignore: cast_nullable_to_non_nullable
              as TrackingFreqLimit,
      autoTracking: autoTracking == freezed
          ? _value.autoTracking
          : autoTracking // ignore: cast_nullable_to_non_nullable
              as bool,
      autoTrackingFreq: autoTrackingFreq == freezed
          ? _value.autoTrackingFreq
          : autoTrackingFreq // ignore: cast_nullable_to_non_nullable
              as AutoTrackingFreq,
      trackingHistorySize: trackingHistorySize == freezed
          ? _value.trackingHistorySize
          : trackingHistorySize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BehaviorInfo implements _BehaviorInfo {
  const _$_BehaviorInfo(
      {required this.trackingLimit,
      required this.autoTracking,
      required this.autoTrackingFreq,
      required this.trackingHistorySize});

  @override
  final TrackingFreqLimit trackingLimit;
  @override
  final bool autoTracking;
  @override
  final AutoTrackingFreq autoTrackingFreq;
  @override
  final int trackingHistorySize;

  @override
  String toString() {
    return 'BehaviorInfo(trackingLimit: $trackingLimit, autoTracking: $autoTracking, autoTrackingFreq: $autoTrackingFreq, trackingHistorySize: $trackingHistorySize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BehaviorInfo &&
            (identical(other.trackingLimit, trackingLimit) ||
                const DeepCollectionEquality()
                    .equals(other.trackingLimit, trackingLimit)) &&
            (identical(other.autoTracking, autoTracking) ||
                const DeepCollectionEquality()
                    .equals(other.autoTracking, autoTracking)) &&
            (identical(other.autoTrackingFreq, autoTrackingFreq) ||
                const DeepCollectionEquality()
                    .equals(other.autoTrackingFreq, autoTrackingFreq)) &&
            (identical(other.trackingHistorySize, trackingHistorySize) ||
                const DeepCollectionEquality()
                    .equals(other.trackingHistorySize, trackingHistorySize)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(trackingLimit) ^
      const DeepCollectionEquality().hash(autoTracking) ^
      const DeepCollectionEquality().hash(autoTrackingFreq) ^
      const DeepCollectionEquality().hash(trackingHistorySize);

  @JsonKey(ignore: true)
  @override
  _$BehaviorInfoCopyWith<_BehaviorInfo> get copyWith =>
      __$BehaviorInfoCopyWithImpl<_BehaviorInfo>(this, _$identity);
}

abstract class _BehaviorInfo implements BehaviorInfo {
  const factory _BehaviorInfo(
      {required TrackingFreqLimit trackingLimit,
      required bool autoTracking,
      required AutoTrackingFreq autoTrackingFreq,
      required int trackingHistorySize}) = _$_BehaviorInfo;

  @override
  TrackingFreqLimit get trackingLimit => throw _privateConstructorUsedError;
  @override
  bool get autoTracking => throw _privateConstructorUsedError;
  @override
  AutoTrackingFreq get autoTrackingFreq => throw _privateConstructorUsedError;
  @override
  int get trackingHistorySize => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BehaviorInfoCopyWith<_BehaviorInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
