// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'behavior_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BehaviorState {
  BehaviorInfo? get info => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BehaviorInfo? info) initial,
    required TResult Function(BehaviorInfo info) loaded,
    required TResult Function(BehaviorInfo info) trackingLimitChanged,
    required TResult Function(BehaviorInfo info) autoTrackingChanged,
    required TResult Function(BehaviorInfo info) autoTrackingFreqChanged,
    required TResult Function(BehaviorInfo info) trackingHistorySizeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BehaviorInfo? info)? initial,
    TResult? Function(BehaviorInfo info)? loaded,
    TResult? Function(BehaviorInfo info)? trackingLimitChanged,
    TResult? Function(BehaviorInfo info)? autoTrackingChanged,
    TResult? Function(BehaviorInfo info)? autoTrackingFreqChanged,
    TResult? Function(BehaviorInfo info)? trackingHistorySizeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BehaviorInfo? info)? initial,
    TResult Function(BehaviorInfo info)? loaded,
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
    required TResult Function(BehaviorStateLoaded value) loaded,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BehaviorStateInitial value)? initial,
    TResult? Function(BehaviorStateLoaded value)? loaded,
    TResult? Function(BehaviorStateTrackingLimitChanged value)?
        trackingLimitChanged,
    TResult? Function(BehaviorStateAutoTrackingChanged value)?
        autoTrackingChanged,
    TResult? Function(BehaviorStateAutoTrackingFreqChanged value)?
        autoTrackingFreqChanged,
    TResult? Function(BehaviorStateTrackingHistorySizeChanged value)?
        trackingHistorySizeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BehaviorStateInitial value)? initial,
    TResult Function(BehaviorStateLoaded value)? loaded,
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
      _$BehaviorStateCopyWithImpl<$Res, BehaviorState>;
  @useResult
  $Res call({BehaviorInfo info});

  $BehaviorInfoCopyWith<$Res>? get info;
}

/// @nodoc
class _$BehaviorStateCopyWithImpl<$Res, $Val extends BehaviorState>
    implements $BehaviorStateCopyWith<$Res> {
  _$BehaviorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info!
          : info // ignore: cast_nullable_to_non_nullable
              as BehaviorInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BehaviorInfoCopyWith<$Res>? get info {
    if (_value.info == null) {
      return null;
    }

    return $BehaviorInfoCopyWith<$Res>(_value.info!, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BehaviorStateInitialImplCopyWith<$Res>
    implements $BehaviorStateCopyWith<$Res> {
  factory _$$BehaviorStateInitialImplCopyWith(_$BehaviorStateInitialImpl value,
          $Res Function(_$BehaviorStateInitialImpl) then) =
      __$$BehaviorStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BehaviorInfo? info});

  @override
  $BehaviorInfoCopyWith<$Res>? get info;
}

/// @nodoc
class __$$BehaviorStateInitialImplCopyWithImpl<$Res>
    extends _$BehaviorStateCopyWithImpl<$Res, _$BehaviorStateInitialImpl>
    implements _$$BehaviorStateInitialImplCopyWith<$Res> {
  __$$BehaviorStateInitialImplCopyWithImpl(_$BehaviorStateInitialImpl _value,
      $Res Function(_$BehaviorStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(_$BehaviorStateInitialImpl(
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as BehaviorInfo?,
    ));
  }
}

/// @nodoc

class _$BehaviorStateInitialImpl
    with DiagnosticableTreeMixin
    implements BehaviorStateInitial {
  const _$BehaviorStateInitialImpl({this.info = null});

  @override
  @JsonKey()
  final BehaviorInfo? info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BehaviorState.initial(info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BehaviorState.initial'))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BehaviorStateInitialImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BehaviorStateInitialImplCopyWith<_$BehaviorStateInitialImpl>
      get copyWith =>
          __$$BehaviorStateInitialImplCopyWithImpl<_$BehaviorStateInitialImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BehaviorInfo? info) initial,
    required TResult Function(BehaviorInfo info) loaded,
    required TResult Function(BehaviorInfo info) trackingLimitChanged,
    required TResult Function(BehaviorInfo info) autoTrackingChanged,
    required TResult Function(BehaviorInfo info) autoTrackingFreqChanged,
    required TResult Function(BehaviorInfo info) trackingHistorySizeChanged,
  }) {
    return initial(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BehaviorInfo? info)? initial,
    TResult? Function(BehaviorInfo info)? loaded,
    TResult? Function(BehaviorInfo info)? trackingLimitChanged,
    TResult? Function(BehaviorInfo info)? autoTrackingChanged,
    TResult? Function(BehaviorInfo info)? autoTrackingFreqChanged,
    TResult? Function(BehaviorInfo info)? trackingHistorySizeChanged,
  }) {
    return initial?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BehaviorInfo? info)? initial,
    TResult Function(BehaviorInfo info)? loaded,
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
    required TResult Function(BehaviorStateLoaded value) loaded,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BehaviorStateInitial value)? initial,
    TResult? Function(BehaviorStateLoaded value)? loaded,
    TResult? Function(BehaviorStateTrackingLimitChanged value)?
        trackingLimitChanged,
    TResult? Function(BehaviorStateAutoTrackingChanged value)?
        autoTrackingChanged,
    TResult? Function(BehaviorStateAutoTrackingFreqChanged value)?
        autoTrackingFreqChanged,
    TResult? Function(BehaviorStateTrackingHistorySizeChanged value)?
        trackingHistorySizeChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BehaviorStateInitial value)? initial,
    TResult Function(BehaviorStateLoaded value)? loaded,
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
  const factory BehaviorStateInitial({final BehaviorInfo? info}) =
      _$BehaviorStateInitialImpl;

  @override
  BehaviorInfo? get info;
  @override
  @JsonKey(ignore: true)
  _$$BehaviorStateInitialImplCopyWith<_$BehaviorStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BehaviorStateLoadedImplCopyWith<$Res>
    implements $BehaviorStateCopyWith<$Res> {
  factory _$$BehaviorStateLoadedImplCopyWith(_$BehaviorStateLoadedImpl value,
          $Res Function(_$BehaviorStateLoadedImpl) then) =
      __$$BehaviorStateLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BehaviorInfo info});

  @override
  $BehaviorInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$BehaviorStateLoadedImplCopyWithImpl<$Res>
    extends _$BehaviorStateCopyWithImpl<$Res, _$BehaviorStateLoadedImpl>
    implements _$$BehaviorStateLoadedImplCopyWith<$Res> {
  __$$BehaviorStateLoadedImplCopyWithImpl(_$BehaviorStateLoadedImpl _value,
      $Res Function(_$BehaviorStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$BehaviorStateLoadedImpl(
      null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as BehaviorInfo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BehaviorInfoCopyWith<$Res> get info {
    return $BehaviorInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc

class _$BehaviorStateLoadedImpl
    with DiagnosticableTreeMixin
    implements BehaviorStateLoaded {
  const _$BehaviorStateLoadedImpl(this.info);

  @override
  final BehaviorInfo info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BehaviorState.loaded(info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BehaviorState.loaded'))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BehaviorStateLoadedImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BehaviorStateLoadedImplCopyWith<_$BehaviorStateLoadedImpl> get copyWith =>
      __$$BehaviorStateLoadedImplCopyWithImpl<_$BehaviorStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BehaviorInfo? info) initial,
    required TResult Function(BehaviorInfo info) loaded,
    required TResult Function(BehaviorInfo info) trackingLimitChanged,
    required TResult Function(BehaviorInfo info) autoTrackingChanged,
    required TResult Function(BehaviorInfo info) autoTrackingFreqChanged,
    required TResult Function(BehaviorInfo info) trackingHistorySizeChanged,
  }) {
    return loaded(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BehaviorInfo? info)? initial,
    TResult? Function(BehaviorInfo info)? loaded,
    TResult? Function(BehaviorInfo info)? trackingLimitChanged,
    TResult? Function(BehaviorInfo info)? autoTrackingChanged,
    TResult? Function(BehaviorInfo info)? autoTrackingFreqChanged,
    TResult? Function(BehaviorInfo info)? trackingHistorySizeChanged,
  }) {
    return loaded?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BehaviorInfo? info)? initial,
    TResult Function(BehaviorInfo info)? loaded,
    TResult Function(BehaviorInfo info)? trackingLimitChanged,
    TResult Function(BehaviorInfo info)? autoTrackingChanged,
    TResult Function(BehaviorInfo info)? autoTrackingFreqChanged,
    TResult Function(BehaviorInfo info)? trackingHistorySizeChanged,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BehaviorStateInitial value) initial,
    required TResult Function(BehaviorStateLoaded value) loaded,
    required TResult Function(BehaviorStateTrackingLimitChanged value)
        trackingLimitChanged,
    required TResult Function(BehaviorStateAutoTrackingChanged value)
        autoTrackingChanged,
    required TResult Function(BehaviorStateAutoTrackingFreqChanged value)
        autoTrackingFreqChanged,
    required TResult Function(BehaviorStateTrackingHistorySizeChanged value)
        trackingHistorySizeChanged,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BehaviorStateInitial value)? initial,
    TResult? Function(BehaviorStateLoaded value)? loaded,
    TResult? Function(BehaviorStateTrackingLimitChanged value)?
        trackingLimitChanged,
    TResult? Function(BehaviorStateAutoTrackingChanged value)?
        autoTrackingChanged,
    TResult? Function(BehaviorStateAutoTrackingFreqChanged value)?
        autoTrackingFreqChanged,
    TResult? Function(BehaviorStateTrackingHistorySizeChanged value)?
        trackingHistorySizeChanged,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BehaviorStateInitial value)? initial,
    TResult Function(BehaviorStateLoaded value)? loaded,
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
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class BehaviorStateLoaded implements BehaviorState {
  const factory BehaviorStateLoaded(final BehaviorInfo info) =
      _$BehaviorStateLoadedImpl;

  @override
  BehaviorInfo get info;
  @override
  @JsonKey(ignore: true)
  _$$BehaviorStateLoadedImplCopyWith<_$BehaviorStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BehaviorStateTrackingLimitChangedImplCopyWith<$Res>
    implements $BehaviorStateCopyWith<$Res> {
  factory _$$BehaviorStateTrackingLimitChangedImplCopyWith(
          _$BehaviorStateTrackingLimitChangedImpl value,
          $Res Function(_$BehaviorStateTrackingLimitChangedImpl) then) =
      __$$BehaviorStateTrackingLimitChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BehaviorInfo info});

  @override
  $BehaviorInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$BehaviorStateTrackingLimitChangedImplCopyWithImpl<$Res>
    extends _$BehaviorStateCopyWithImpl<$Res,
        _$BehaviorStateTrackingLimitChangedImpl>
    implements _$$BehaviorStateTrackingLimitChangedImplCopyWith<$Res> {
  __$$BehaviorStateTrackingLimitChangedImplCopyWithImpl(
      _$BehaviorStateTrackingLimitChangedImpl _value,
      $Res Function(_$BehaviorStateTrackingLimitChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$BehaviorStateTrackingLimitChangedImpl(
      null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as BehaviorInfo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BehaviorInfoCopyWith<$Res> get info {
    return $BehaviorInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc

class _$BehaviorStateTrackingLimitChangedImpl
    with DiagnosticableTreeMixin
    implements BehaviorStateTrackingLimitChanged {
  const _$BehaviorStateTrackingLimitChangedImpl(this.info);

  @override
  final BehaviorInfo info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BehaviorState.trackingLimitChanged(info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BehaviorState.trackingLimitChanged'))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BehaviorStateTrackingLimitChangedImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BehaviorStateTrackingLimitChangedImplCopyWith<
          _$BehaviorStateTrackingLimitChangedImpl>
      get copyWith => __$$BehaviorStateTrackingLimitChangedImplCopyWithImpl<
          _$BehaviorStateTrackingLimitChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BehaviorInfo? info) initial,
    required TResult Function(BehaviorInfo info) loaded,
    required TResult Function(BehaviorInfo info) trackingLimitChanged,
    required TResult Function(BehaviorInfo info) autoTrackingChanged,
    required TResult Function(BehaviorInfo info) autoTrackingFreqChanged,
    required TResult Function(BehaviorInfo info) trackingHistorySizeChanged,
  }) {
    return trackingLimitChanged(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BehaviorInfo? info)? initial,
    TResult? Function(BehaviorInfo info)? loaded,
    TResult? Function(BehaviorInfo info)? trackingLimitChanged,
    TResult? Function(BehaviorInfo info)? autoTrackingChanged,
    TResult? Function(BehaviorInfo info)? autoTrackingFreqChanged,
    TResult? Function(BehaviorInfo info)? trackingHistorySizeChanged,
  }) {
    return trackingLimitChanged?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BehaviorInfo? info)? initial,
    TResult Function(BehaviorInfo info)? loaded,
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
    required TResult Function(BehaviorStateLoaded value) loaded,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BehaviorStateInitial value)? initial,
    TResult? Function(BehaviorStateLoaded value)? loaded,
    TResult? Function(BehaviorStateTrackingLimitChanged value)?
        trackingLimitChanged,
    TResult? Function(BehaviorStateAutoTrackingChanged value)?
        autoTrackingChanged,
    TResult? Function(BehaviorStateAutoTrackingFreqChanged value)?
        autoTrackingFreqChanged,
    TResult? Function(BehaviorStateTrackingHistorySizeChanged value)?
        trackingHistorySizeChanged,
  }) {
    return trackingLimitChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BehaviorStateInitial value)? initial,
    TResult Function(BehaviorStateLoaded value)? loaded,
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
  const factory BehaviorStateTrackingLimitChanged(final BehaviorInfo info) =
      _$BehaviorStateTrackingLimitChangedImpl;

  @override
  BehaviorInfo get info;
  @override
  @JsonKey(ignore: true)
  _$$BehaviorStateTrackingLimitChangedImplCopyWith<
          _$BehaviorStateTrackingLimitChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BehaviorStateAutoTrackingChangedImplCopyWith<$Res>
    implements $BehaviorStateCopyWith<$Res> {
  factory _$$BehaviorStateAutoTrackingChangedImplCopyWith(
          _$BehaviorStateAutoTrackingChangedImpl value,
          $Res Function(_$BehaviorStateAutoTrackingChangedImpl) then) =
      __$$BehaviorStateAutoTrackingChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BehaviorInfo info});

  @override
  $BehaviorInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$BehaviorStateAutoTrackingChangedImplCopyWithImpl<$Res>
    extends _$BehaviorStateCopyWithImpl<$Res,
        _$BehaviorStateAutoTrackingChangedImpl>
    implements _$$BehaviorStateAutoTrackingChangedImplCopyWith<$Res> {
  __$$BehaviorStateAutoTrackingChangedImplCopyWithImpl(
      _$BehaviorStateAutoTrackingChangedImpl _value,
      $Res Function(_$BehaviorStateAutoTrackingChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$BehaviorStateAutoTrackingChangedImpl(
      null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as BehaviorInfo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BehaviorInfoCopyWith<$Res> get info {
    return $BehaviorInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc

class _$BehaviorStateAutoTrackingChangedImpl
    with DiagnosticableTreeMixin
    implements BehaviorStateAutoTrackingChanged {
  const _$BehaviorStateAutoTrackingChangedImpl(this.info);

  @override
  final BehaviorInfo info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BehaviorState.autoTrackingChanged(info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BehaviorState.autoTrackingChanged'))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BehaviorStateAutoTrackingChangedImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BehaviorStateAutoTrackingChangedImplCopyWith<
          _$BehaviorStateAutoTrackingChangedImpl>
      get copyWith => __$$BehaviorStateAutoTrackingChangedImplCopyWithImpl<
          _$BehaviorStateAutoTrackingChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BehaviorInfo? info) initial,
    required TResult Function(BehaviorInfo info) loaded,
    required TResult Function(BehaviorInfo info) trackingLimitChanged,
    required TResult Function(BehaviorInfo info) autoTrackingChanged,
    required TResult Function(BehaviorInfo info) autoTrackingFreqChanged,
    required TResult Function(BehaviorInfo info) trackingHistorySizeChanged,
  }) {
    return autoTrackingChanged(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BehaviorInfo? info)? initial,
    TResult? Function(BehaviorInfo info)? loaded,
    TResult? Function(BehaviorInfo info)? trackingLimitChanged,
    TResult? Function(BehaviorInfo info)? autoTrackingChanged,
    TResult? Function(BehaviorInfo info)? autoTrackingFreqChanged,
    TResult? Function(BehaviorInfo info)? trackingHistorySizeChanged,
  }) {
    return autoTrackingChanged?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BehaviorInfo? info)? initial,
    TResult Function(BehaviorInfo info)? loaded,
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
    required TResult Function(BehaviorStateLoaded value) loaded,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BehaviorStateInitial value)? initial,
    TResult? Function(BehaviorStateLoaded value)? loaded,
    TResult? Function(BehaviorStateTrackingLimitChanged value)?
        trackingLimitChanged,
    TResult? Function(BehaviorStateAutoTrackingChanged value)?
        autoTrackingChanged,
    TResult? Function(BehaviorStateAutoTrackingFreqChanged value)?
        autoTrackingFreqChanged,
    TResult? Function(BehaviorStateTrackingHistorySizeChanged value)?
        trackingHistorySizeChanged,
  }) {
    return autoTrackingChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BehaviorStateInitial value)? initial,
    TResult Function(BehaviorStateLoaded value)? loaded,
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
  const factory BehaviorStateAutoTrackingChanged(final BehaviorInfo info) =
      _$BehaviorStateAutoTrackingChangedImpl;

  @override
  BehaviorInfo get info;
  @override
  @JsonKey(ignore: true)
  _$$BehaviorStateAutoTrackingChangedImplCopyWith<
          _$BehaviorStateAutoTrackingChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BehaviorStateAutoTrackingFreqChangedImplCopyWith<$Res>
    implements $BehaviorStateCopyWith<$Res> {
  factory _$$BehaviorStateAutoTrackingFreqChangedImplCopyWith(
          _$BehaviorStateAutoTrackingFreqChangedImpl value,
          $Res Function(_$BehaviorStateAutoTrackingFreqChangedImpl) then) =
      __$$BehaviorStateAutoTrackingFreqChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BehaviorInfo info});

  @override
  $BehaviorInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$BehaviorStateAutoTrackingFreqChangedImplCopyWithImpl<$Res>
    extends _$BehaviorStateCopyWithImpl<$Res,
        _$BehaviorStateAutoTrackingFreqChangedImpl>
    implements _$$BehaviorStateAutoTrackingFreqChangedImplCopyWith<$Res> {
  __$$BehaviorStateAutoTrackingFreqChangedImplCopyWithImpl(
      _$BehaviorStateAutoTrackingFreqChangedImpl _value,
      $Res Function(_$BehaviorStateAutoTrackingFreqChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$BehaviorStateAutoTrackingFreqChangedImpl(
      null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as BehaviorInfo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BehaviorInfoCopyWith<$Res> get info {
    return $BehaviorInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc

class _$BehaviorStateAutoTrackingFreqChangedImpl
    with DiagnosticableTreeMixin
    implements BehaviorStateAutoTrackingFreqChanged {
  const _$BehaviorStateAutoTrackingFreqChangedImpl(this.info);

  @override
  final BehaviorInfo info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BehaviorState.autoTrackingFreqChanged(info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'BehaviorState.autoTrackingFreqChanged'))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BehaviorStateAutoTrackingFreqChangedImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BehaviorStateAutoTrackingFreqChangedImplCopyWith<
          _$BehaviorStateAutoTrackingFreqChangedImpl>
      get copyWith => __$$BehaviorStateAutoTrackingFreqChangedImplCopyWithImpl<
          _$BehaviorStateAutoTrackingFreqChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BehaviorInfo? info) initial,
    required TResult Function(BehaviorInfo info) loaded,
    required TResult Function(BehaviorInfo info) trackingLimitChanged,
    required TResult Function(BehaviorInfo info) autoTrackingChanged,
    required TResult Function(BehaviorInfo info) autoTrackingFreqChanged,
    required TResult Function(BehaviorInfo info) trackingHistorySizeChanged,
  }) {
    return autoTrackingFreqChanged(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BehaviorInfo? info)? initial,
    TResult? Function(BehaviorInfo info)? loaded,
    TResult? Function(BehaviorInfo info)? trackingLimitChanged,
    TResult? Function(BehaviorInfo info)? autoTrackingChanged,
    TResult? Function(BehaviorInfo info)? autoTrackingFreqChanged,
    TResult? Function(BehaviorInfo info)? trackingHistorySizeChanged,
  }) {
    return autoTrackingFreqChanged?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BehaviorInfo? info)? initial,
    TResult Function(BehaviorInfo info)? loaded,
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
    required TResult Function(BehaviorStateLoaded value) loaded,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BehaviorStateInitial value)? initial,
    TResult? Function(BehaviorStateLoaded value)? loaded,
    TResult? Function(BehaviorStateTrackingLimitChanged value)?
        trackingLimitChanged,
    TResult? Function(BehaviorStateAutoTrackingChanged value)?
        autoTrackingChanged,
    TResult? Function(BehaviorStateAutoTrackingFreqChanged value)?
        autoTrackingFreqChanged,
    TResult? Function(BehaviorStateTrackingHistorySizeChanged value)?
        trackingHistorySizeChanged,
  }) {
    return autoTrackingFreqChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BehaviorStateInitial value)? initial,
    TResult Function(BehaviorStateLoaded value)? loaded,
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
  const factory BehaviorStateAutoTrackingFreqChanged(final BehaviorInfo info) =
      _$BehaviorStateAutoTrackingFreqChangedImpl;

  @override
  BehaviorInfo get info;
  @override
  @JsonKey(ignore: true)
  _$$BehaviorStateAutoTrackingFreqChangedImplCopyWith<
          _$BehaviorStateAutoTrackingFreqChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BehaviorStateTrackingHistorySizeChangedImplCopyWith<$Res>
    implements $BehaviorStateCopyWith<$Res> {
  factory _$$BehaviorStateTrackingHistorySizeChangedImplCopyWith(
          _$BehaviorStateTrackingHistorySizeChangedImpl value,
          $Res Function(_$BehaviorStateTrackingHistorySizeChangedImpl) then) =
      __$$BehaviorStateTrackingHistorySizeChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BehaviorInfo info});

  @override
  $BehaviorInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$BehaviorStateTrackingHistorySizeChangedImplCopyWithImpl<$Res>
    extends _$BehaviorStateCopyWithImpl<$Res,
        _$BehaviorStateTrackingHistorySizeChangedImpl>
    implements _$$BehaviorStateTrackingHistorySizeChangedImplCopyWith<$Res> {
  __$$BehaviorStateTrackingHistorySizeChangedImplCopyWithImpl(
      _$BehaviorStateTrackingHistorySizeChangedImpl _value,
      $Res Function(_$BehaviorStateTrackingHistorySizeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$BehaviorStateTrackingHistorySizeChangedImpl(
      null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as BehaviorInfo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BehaviorInfoCopyWith<$Res> get info {
    return $BehaviorInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc

class _$BehaviorStateTrackingHistorySizeChangedImpl
    with DiagnosticableTreeMixin
    implements BehaviorStateTrackingHistorySizeChanged {
  const _$BehaviorStateTrackingHistorySizeChangedImpl(this.info);

  @override
  final BehaviorInfo info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BehaviorState.trackingHistorySizeChanged(info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'BehaviorState.trackingHistorySizeChanged'))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BehaviorStateTrackingHistorySizeChangedImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BehaviorStateTrackingHistorySizeChangedImplCopyWith<
          _$BehaviorStateTrackingHistorySizeChangedImpl>
      get copyWith =>
          __$$BehaviorStateTrackingHistorySizeChangedImplCopyWithImpl<
              _$BehaviorStateTrackingHistorySizeChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BehaviorInfo? info) initial,
    required TResult Function(BehaviorInfo info) loaded,
    required TResult Function(BehaviorInfo info) trackingLimitChanged,
    required TResult Function(BehaviorInfo info) autoTrackingChanged,
    required TResult Function(BehaviorInfo info) autoTrackingFreqChanged,
    required TResult Function(BehaviorInfo info) trackingHistorySizeChanged,
  }) {
    return trackingHistorySizeChanged(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BehaviorInfo? info)? initial,
    TResult? Function(BehaviorInfo info)? loaded,
    TResult? Function(BehaviorInfo info)? trackingLimitChanged,
    TResult? Function(BehaviorInfo info)? autoTrackingChanged,
    TResult? Function(BehaviorInfo info)? autoTrackingFreqChanged,
    TResult? Function(BehaviorInfo info)? trackingHistorySizeChanged,
  }) {
    return trackingHistorySizeChanged?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BehaviorInfo? info)? initial,
    TResult Function(BehaviorInfo info)? loaded,
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
    required TResult Function(BehaviorStateLoaded value) loaded,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BehaviorStateInitial value)? initial,
    TResult? Function(BehaviorStateLoaded value)? loaded,
    TResult? Function(BehaviorStateTrackingLimitChanged value)?
        trackingLimitChanged,
    TResult? Function(BehaviorStateAutoTrackingChanged value)?
        autoTrackingChanged,
    TResult? Function(BehaviorStateAutoTrackingFreqChanged value)?
        autoTrackingFreqChanged,
    TResult? Function(BehaviorStateTrackingHistorySizeChanged value)?
        trackingHistorySizeChanged,
  }) {
    return trackingHistorySizeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BehaviorStateInitial value)? initial,
    TResult Function(BehaviorStateLoaded value)? loaded,
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
  const factory BehaviorStateTrackingHistorySizeChanged(
      final BehaviorInfo info) = _$BehaviorStateTrackingHistorySizeChangedImpl;

  @override
  BehaviorInfo get info;
  @override
  @JsonKey(ignore: true)
  _$$BehaviorStateTrackingHistorySizeChangedImplCopyWith<
          _$BehaviorStateTrackingHistorySizeChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

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
      _$BehaviorInfoCopyWithImpl<$Res, BehaviorInfo>;
  @useResult
  $Res call(
      {TrackingFreqLimit trackingLimit,
      bool autoTracking,
      AutoTrackingFreq autoTrackingFreq,
      int trackingHistorySize});

  $TrackingFreqLimitCopyWith<$Res> get trackingLimit;
  $AutoTrackingFreqCopyWith<$Res> get autoTrackingFreq;
}

/// @nodoc
class _$BehaviorInfoCopyWithImpl<$Res, $Val extends BehaviorInfo>
    implements $BehaviorInfoCopyWith<$Res> {
  _$BehaviorInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackingLimit = null,
    Object? autoTracking = null,
    Object? autoTrackingFreq = null,
    Object? trackingHistorySize = null,
  }) {
    return _then(_value.copyWith(
      trackingLimit: null == trackingLimit
          ? _value.trackingLimit
          : trackingLimit // ignore: cast_nullable_to_non_nullable
              as TrackingFreqLimit,
      autoTracking: null == autoTracking
          ? _value.autoTracking
          : autoTracking // ignore: cast_nullable_to_non_nullable
              as bool,
      autoTrackingFreq: null == autoTrackingFreq
          ? _value.autoTrackingFreq
          : autoTrackingFreq // ignore: cast_nullable_to_non_nullable
              as AutoTrackingFreq,
      trackingHistorySize: null == trackingHistorySize
          ? _value.trackingHistorySize
          : trackingHistorySize // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TrackingFreqLimitCopyWith<$Res> get trackingLimit {
    return $TrackingFreqLimitCopyWith<$Res>(_value.trackingLimit, (value) {
      return _then(_value.copyWith(trackingLimit: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AutoTrackingFreqCopyWith<$Res> get autoTrackingFreq {
    return $AutoTrackingFreqCopyWith<$Res>(_value.autoTrackingFreq, (value) {
      return _then(_value.copyWith(autoTrackingFreq: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BehaviorInfoImplCopyWith<$Res>
    implements $BehaviorInfoCopyWith<$Res> {
  factory _$$BehaviorInfoImplCopyWith(
          _$BehaviorInfoImpl value, $Res Function(_$BehaviorInfoImpl) then) =
      __$$BehaviorInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$BehaviorInfoImplCopyWithImpl<$Res>
    extends _$BehaviorInfoCopyWithImpl<$Res, _$BehaviorInfoImpl>
    implements _$$BehaviorInfoImplCopyWith<$Res> {
  __$$BehaviorInfoImplCopyWithImpl(
      _$BehaviorInfoImpl _value, $Res Function(_$BehaviorInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackingLimit = null,
    Object? autoTracking = null,
    Object? autoTrackingFreq = null,
    Object? trackingHistorySize = null,
  }) {
    return _then(_$BehaviorInfoImpl(
      trackingLimit: null == trackingLimit
          ? _value.trackingLimit
          : trackingLimit // ignore: cast_nullable_to_non_nullable
              as TrackingFreqLimit,
      autoTracking: null == autoTracking
          ? _value.autoTracking
          : autoTracking // ignore: cast_nullable_to_non_nullable
              as bool,
      autoTrackingFreq: null == autoTrackingFreq
          ? _value.autoTrackingFreq
          : autoTrackingFreq // ignore: cast_nullable_to_non_nullable
              as AutoTrackingFreq,
      trackingHistorySize: null == trackingHistorySize
          ? _value.trackingHistorySize
          : trackingHistorySize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BehaviorInfoImpl with DiagnosticableTreeMixin implements _BehaviorInfo {
  const _$BehaviorInfoImpl(
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BehaviorInfo(trackingLimit: $trackingLimit, autoTracking: $autoTracking, autoTrackingFreq: $autoTrackingFreq, trackingHistorySize: $trackingHistorySize)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BehaviorInfo'))
      ..add(DiagnosticsProperty('trackingLimit', trackingLimit))
      ..add(DiagnosticsProperty('autoTracking', autoTracking))
      ..add(DiagnosticsProperty('autoTrackingFreq', autoTrackingFreq))
      ..add(DiagnosticsProperty('trackingHistorySize', trackingHistorySize));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BehaviorInfoImpl &&
            (identical(other.trackingLimit, trackingLimit) ||
                other.trackingLimit == trackingLimit) &&
            (identical(other.autoTracking, autoTracking) ||
                other.autoTracking == autoTracking) &&
            (identical(other.autoTrackingFreq, autoTrackingFreq) ||
                other.autoTrackingFreq == autoTrackingFreq) &&
            (identical(other.trackingHistorySize, trackingHistorySize) ||
                other.trackingHistorySize == trackingHistorySize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trackingLimit, autoTracking,
      autoTrackingFreq, trackingHistorySize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BehaviorInfoImplCopyWith<_$BehaviorInfoImpl> get copyWith =>
      __$$BehaviorInfoImplCopyWithImpl<_$BehaviorInfoImpl>(this, _$identity);
}

abstract class _BehaviorInfo implements BehaviorInfo {
  const factory _BehaviorInfo(
      {required final TrackingFreqLimit trackingLimit,
      required final bool autoTracking,
      required final AutoTrackingFreq autoTrackingFreq,
      required final int trackingHistorySize}) = _$BehaviorInfoImpl;

  @override
  TrackingFreqLimit get trackingLimit;
  @override
  bool get autoTracking;
  @override
  AutoTrackingFreq get autoTrackingFreq;
  @override
  int get trackingHistorySize;
  @override
  @JsonKey(ignore: true)
  _$$BehaviorInfoImplCopyWith<_$BehaviorInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
