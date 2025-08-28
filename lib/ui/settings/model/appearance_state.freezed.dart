// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appearance_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppearanceState {
  AppearanceInfo? get info => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppearanceInfo? info) initial,
    required TResult Function(AppearanceInfo info) loaded,
    required TResult Function(AppearanceInfo info) themeChanged,
    required TResult Function(AppearanceInfo info) trackingNotifyChanged,
    required TResult Function(AppearanceInfo info) localeChanged,
    required TResult Function(AppearanceInfo info) trackingErrorNotifyChanged,
    required TResult Function(AppearanceInfo info) trayIconChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppearanceInfo? info)? initial,
    TResult? Function(AppearanceInfo info)? loaded,
    TResult? Function(AppearanceInfo info)? themeChanged,
    TResult? Function(AppearanceInfo info)? trackingNotifyChanged,
    TResult? Function(AppearanceInfo info)? localeChanged,
    TResult? Function(AppearanceInfo info)? trackingErrorNotifyChanged,
    TResult? Function(AppearanceInfo info)? trayIconChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppearanceInfo? info)? initial,
    TResult Function(AppearanceInfo info)? loaded,
    TResult Function(AppearanceInfo info)? themeChanged,
    TResult Function(AppearanceInfo info)? trackingNotifyChanged,
    TResult Function(AppearanceInfo info)? localeChanged,
    TResult Function(AppearanceInfo info)? trackingErrorNotifyChanged,
    TResult Function(AppearanceInfo info)? trayIconChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppearanceStateInitial value) initial,
    required TResult Function(AppearanceStateLoaded value) loaded,
    required TResult Function(AppearanceStateThemeChanged value) themeChanged,
    required TResult Function(AppearanceStateTrackingNotifyChanged value)
        trackingNotifyChanged,
    required TResult Function(AppearanceStateLocaleChanged value) localeChanged,
    required TResult Function(AppearanceStateTrackingErrorNotifyChanged value)
        trackingErrorNotifyChanged,
    required TResult Function(AppearanceStateTrayIconChanged value)
        trayIconChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppearanceStateInitial value)? initial,
    TResult? Function(AppearanceStateLoaded value)? loaded,
    TResult? Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult? Function(AppearanceStateTrackingNotifyChanged value)?
        trackingNotifyChanged,
    TResult? Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult? Function(AppearanceStateTrackingErrorNotifyChanged value)?
        trackingErrorNotifyChanged,
    TResult? Function(AppearanceStateTrayIconChanged value)? trayIconChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppearanceStateInitial value)? initial,
    TResult Function(AppearanceStateLoaded value)? loaded,
    TResult Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult Function(AppearanceStateTrackingNotifyChanged value)?
        trackingNotifyChanged,
    TResult Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult Function(AppearanceStateTrackingErrorNotifyChanged value)?
        trackingErrorNotifyChanged,
    TResult Function(AppearanceStateTrayIconChanged value)? trayIconChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppearanceStateCopyWith<AppearanceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppearanceStateCopyWith<$Res> {
  factory $AppearanceStateCopyWith(
          AppearanceState value, $Res Function(AppearanceState) then) =
      _$AppearanceStateCopyWithImpl<$Res, AppearanceState>;
  @useResult
  $Res call({AppearanceInfo info});

  $AppearanceInfoCopyWith<$Res>? get info;
}

/// @nodoc
class _$AppearanceStateCopyWithImpl<$Res, $Val extends AppearanceState>
    implements $AppearanceStateCopyWith<$Res> {
  _$AppearanceStateCopyWithImpl(this._value, this._then);

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
              as AppearanceInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppearanceInfoCopyWith<$Res>? get info {
    if (_value.info == null) {
      return null;
    }

    return $AppearanceInfoCopyWith<$Res>(_value.info!, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppearanceStateInitialImplCopyWith<$Res>
    implements $AppearanceStateCopyWith<$Res> {
  factory _$$AppearanceStateInitialImplCopyWith(
          _$AppearanceStateInitialImpl value,
          $Res Function(_$AppearanceStateInitialImpl) then) =
      __$$AppearanceStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppearanceInfo? info});

  @override
  $AppearanceInfoCopyWith<$Res>? get info;
}

/// @nodoc
class __$$AppearanceStateInitialImplCopyWithImpl<$Res>
    extends _$AppearanceStateCopyWithImpl<$Res, _$AppearanceStateInitialImpl>
    implements _$$AppearanceStateInitialImplCopyWith<$Res> {
  __$$AppearanceStateInitialImplCopyWithImpl(
      _$AppearanceStateInitialImpl _value,
      $Res Function(_$AppearanceStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(_$AppearanceStateInitialImpl(
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AppearanceInfo?,
    ));
  }
}

/// @nodoc

class _$AppearanceStateInitialImpl
    with DiagnosticableTreeMixin
    implements AppearanceStateInitial {
  const _$AppearanceStateInitialImpl({this.info = null});

  @override
  @JsonKey()
  final AppearanceInfo? info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppearanceState.initial(info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppearanceState.initial'))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppearanceStateInitialImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppearanceStateInitialImplCopyWith<_$AppearanceStateInitialImpl>
      get copyWith => __$$AppearanceStateInitialImplCopyWithImpl<
          _$AppearanceStateInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppearanceInfo? info) initial,
    required TResult Function(AppearanceInfo info) loaded,
    required TResult Function(AppearanceInfo info) themeChanged,
    required TResult Function(AppearanceInfo info) trackingNotifyChanged,
    required TResult Function(AppearanceInfo info) localeChanged,
    required TResult Function(AppearanceInfo info) trackingErrorNotifyChanged,
    required TResult Function(AppearanceInfo info) trayIconChanged,
  }) {
    return initial(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppearanceInfo? info)? initial,
    TResult? Function(AppearanceInfo info)? loaded,
    TResult? Function(AppearanceInfo info)? themeChanged,
    TResult? Function(AppearanceInfo info)? trackingNotifyChanged,
    TResult? Function(AppearanceInfo info)? localeChanged,
    TResult? Function(AppearanceInfo info)? trackingErrorNotifyChanged,
    TResult? Function(AppearanceInfo info)? trayIconChanged,
  }) {
    return initial?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppearanceInfo? info)? initial,
    TResult Function(AppearanceInfo info)? loaded,
    TResult Function(AppearanceInfo info)? themeChanged,
    TResult Function(AppearanceInfo info)? trackingNotifyChanged,
    TResult Function(AppearanceInfo info)? localeChanged,
    TResult Function(AppearanceInfo info)? trackingErrorNotifyChanged,
    TResult Function(AppearanceInfo info)? trayIconChanged,
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
    required TResult Function(AppearanceStateInitial value) initial,
    required TResult Function(AppearanceStateLoaded value) loaded,
    required TResult Function(AppearanceStateThemeChanged value) themeChanged,
    required TResult Function(AppearanceStateTrackingNotifyChanged value)
        trackingNotifyChanged,
    required TResult Function(AppearanceStateLocaleChanged value) localeChanged,
    required TResult Function(AppearanceStateTrackingErrorNotifyChanged value)
        trackingErrorNotifyChanged,
    required TResult Function(AppearanceStateTrayIconChanged value)
        trayIconChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppearanceStateInitial value)? initial,
    TResult? Function(AppearanceStateLoaded value)? loaded,
    TResult? Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult? Function(AppearanceStateTrackingNotifyChanged value)?
        trackingNotifyChanged,
    TResult? Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult? Function(AppearanceStateTrackingErrorNotifyChanged value)?
        trackingErrorNotifyChanged,
    TResult? Function(AppearanceStateTrayIconChanged value)? trayIconChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppearanceStateInitial value)? initial,
    TResult Function(AppearanceStateLoaded value)? loaded,
    TResult Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult Function(AppearanceStateTrackingNotifyChanged value)?
        trackingNotifyChanged,
    TResult Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult Function(AppearanceStateTrackingErrorNotifyChanged value)?
        trackingErrorNotifyChanged,
    TResult Function(AppearanceStateTrayIconChanged value)? trayIconChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AppearanceStateInitial implements AppearanceState {
  const factory AppearanceStateInitial({final AppearanceInfo? info}) =
      _$AppearanceStateInitialImpl;

  @override
  AppearanceInfo? get info;
  @override
  @JsonKey(ignore: true)
  _$$AppearanceStateInitialImplCopyWith<_$AppearanceStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppearanceStateLoadedImplCopyWith<$Res>
    implements $AppearanceStateCopyWith<$Res> {
  factory _$$AppearanceStateLoadedImplCopyWith(
          _$AppearanceStateLoadedImpl value,
          $Res Function(_$AppearanceStateLoadedImpl) then) =
      __$$AppearanceStateLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppearanceInfo info});

  @override
  $AppearanceInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$AppearanceStateLoadedImplCopyWithImpl<$Res>
    extends _$AppearanceStateCopyWithImpl<$Res, _$AppearanceStateLoadedImpl>
    implements _$$AppearanceStateLoadedImplCopyWith<$Res> {
  __$$AppearanceStateLoadedImplCopyWithImpl(_$AppearanceStateLoadedImpl _value,
      $Res Function(_$AppearanceStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$AppearanceStateLoadedImpl(
      null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AppearanceInfo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppearanceInfoCopyWith<$Res> get info {
    return $AppearanceInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc

class _$AppearanceStateLoadedImpl
    with DiagnosticableTreeMixin
    implements AppearanceStateLoaded {
  const _$AppearanceStateLoadedImpl(this.info);

  @override
  final AppearanceInfo info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppearanceState.loaded(info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppearanceState.loaded'))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppearanceStateLoadedImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppearanceStateLoadedImplCopyWith<_$AppearanceStateLoadedImpl>
      get copyWith => __$$AppearanceStateLoadedImplCopyWithImpl<
          _$AppearanceStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppearanceInfo? info) initial,
    required TResult Function(AppearanceInfo info) loaded,
    required TResult Function(AppearanceInfo info) themeChanged,
    required TResult Function(AppearanceInfo info) trackingNotifyChanged,
    required TResult Function(AppearanceInfo info) localeChanged,
    required TResult Function(AppearanceInfo info) trackingErrorNotifyChanged,
    required TResult Function(AppearanceInfo info) trayIconChanged,
  }) {
    return loaded(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppearanceInfo? info)? initial,
    TResult? Function(AppearanceInfo info)? loaded,
    TResult? Function(AppearanceInfo info)? themeChanged,
    TResult? Function(AppearanceInfo info)? trackingNotifyChanged,
    TResult? Function(AppearanceInfo info)? localeChanged,
    TResult? Function(AppearanceInfo info)? trackingErrorNotifyChanged,
    TResult? Function(AppearanceInfo info)? trayIconChanged,
  }) {
    return loaded?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppearanceInfo? info)? initial,
    TResult Function(AppearanceInfo info)? loaded,
    TResult Function(AppearanceInfo info)? themeChanged,
    TResult Function(AppearanceInfo info)? trackingNotifyChanged,
    TResult Function(AppearanceInfo info)? localeChanged,
    TResult Function(AppearanceInfo info)? trackingErrorNotifyChanged,
    TResult Function(AppearanceInfo info)? trayIconChanged,
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
    required TResult Function(AppearanceStateInitial value) initial,
    required TResult Function(AppearanceStateLoaded value) loaded,
    required TResult Function(AppearanceStateThemeChanged value) themeChanged,
    required TResult Function(AppearanceStateTrackingNotifyChanged value)
        trackingNotifyChanged,
    required TResult Function(AppearanceStateLocaleChanged value) localeChanged,
    required TResult Function(AppearanceStateTrackingErrorNotifyChanged value)
        trackingErrorNotifyChanged,
    required TResult Function(AppearanceStateTrayIconChanged value)
        trayIconChanged,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppearanceStateInitial value)? initial,
    TResult? Function(AppearanceStateLoaded value)? loaded,
    TResult? Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult? Function(AppearanceStateTrackingNotifyChanged value)?
        trackingNotifyChanged,
    TResult? Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult? Function(AppearanceStateTrackingErrorNotifyChanged value)?
        trackingErrorNotifyChanged,
    TResult? Function(AppearanceStateTrayIconChanged value)? trayIconChanged,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppearanceStateInitial value)? initial,
    TResult Function(AppearanceStateLoaded value)? loaded,
    TResult Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult Function(AppearanceStateTrackingNotifyChanged value)?
        trackingNotifyChanged,
    TResult Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult Function(AppearanceStateTrackingErrorNotifyChanged value)?
        trackingErrorNotifyChanged,
    TResult Function(AppearanceStateTrayIconChanged value)? trayIconChanged,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AppearanceStateLoaded implements AppearanceState {
  const factory AppearanceStateLoaded(final AppearanceInfo info) =
      _$AppearanceStateLoadedImpl;

  @override
  AppearanceInfo get info;
  @override
  @JsonKey(ignore: true)
  _$$AppearanceStateLoadedImplCopyWith<_$AppearanceStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppearanceStateThemeChangedImplCopyWith<$Res>
    implements $AppearanceStateCopyWith<$Res> {
  factory _$$AppearanceStateThemeChangedImplCopyWith(
          _$AppearanceStateThemeChangedImpl value,
          $Res Function(_$AppearanceStateThemeChangedImpl) then) =
      __$$AppearanceStateThemeChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppearanceInfo info});

  @override
  $AppearanceInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$AppearanceStateThemeChangedImplCopyWithImpl<$Res>
    extends _$AppearanceStateCopyWithImpl<$Res,
        _$AppearanceStateThemeChangedImpl>
    implements _$$AppearanceStateThemeChangedImplCopyWith<$Res> {
  __$$AppearanceStateThemeChangedImplCopyWithImpl(
      _$AppearanceStateThemeChangedImpl _value,
      $Res Function(_$AppearanceStateThemeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$AppearanceStateThemeChangedImpl(
      null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AppearanceInfo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppearanceInfoCopyWith<$Res> get info {
    return $AppearanceInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc

class _$AppearanceStateThemeChangedImpl
    with DiagnosticableTreeMixin
    implements AppearanceStateThemeChanged {
  const _$AppearanceStateThemeChangedImpl(this.info);

  @override
  final AppearanceInfo info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppearanceState.themeChanged(info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppearanceState.themeChanged'))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppearanceStateThemeChangedImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppearanceStateThemeChangedImplCopyWith<_$AppearanceStateThemeChangedImpl>
      get copyWith => __$$AppearanceStateThemeChangedImplCopyWithImpl<
          _$AppearanceStateThemeChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppearanceInfo? info) initial,
    required TResult Function(AppearanceInfo info) loaded,
    required TResult Function(AppearanceInfo info) themeChanged,
    required TResult Function(AppearanceInfo info) trackingNotifyChanged,
    required TResult Function(AppearanceInfo info) localeChanged,
    required TResult Function(AppearanceInfo info) trackingErrorNotifyChanged,
    required TResult Function(AppearanceInfo info) trayIconChanged,
  }) {
    return themeChanged(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppearanceInfo? info)? initial,
    TResult? Function(AppearanceInfo info)? loaded,
    TResult? Function(AppearanceInfo info)? themeChanged,
    TResult? Function(AppearanceInfo info)? trackingNotifyChanged,
    TResult? Function(AppearanceInfo info)? localeChanged,
    TResult? Function(AppearanceInfo info)? trackingErrorNotifyChanged,
    TResult? Function(AppearanceInfo info)? trayIconChanged,
  }) {
    return themeChanged?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppearanceInfo? info)? initial,
    TResult Function(AppearanceInfo info)? loaded,
    TResult Function(AppearanceInfo info)? themeChanged,
    TResult Function(AppearanceInfo info)? trackingNotifyChanged,
    TResult Function(AppearanceInfo info)? localeChanged,
    TResult Function(AppearanceInfo info)? trackingErrorNotifyChanged,
    TResult Function(AppearanceInfo info)? trayIconChanged,
    required TResult orElse(),
  }) {
    if (themeChanged != null) {
      return themeChanged(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppearanceStateInitial value) initial,
    required TResult Function(AppearanceStateLoaded value) loaded,
    required TResult Function(AppearanceStateThemeChanged value) themeChanged,
    required TResult Function(AppearanceStateTrackingNotifyChanged value)
        trackingNotifyChanged,
    required TResult Function(AppearanceStateLocaleChanged value) localeChanged,
    required TResult Function(AppearanceStateTrackingErrorNotifyChanged value)
        trackingErrorNotifyChanged,
    required TResult Function(AppearanceStateTrayIconChanged value)
        trayIconChanged,
  }) {
    return themeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppearanceStateInitial value)? initial,
    TResult? Function(AppearanceStateLoaded value)? loaded,
    TResult? Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult? Function(AppearanceStateTrackingNotifyChanged value)?
        trackingNotifyChanged,
    TResult? Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult? Function(AppearanceStateTrackingErrorNotifyChanged value)?
        trackingErrorNotifyChanged,
    TResult? Function(AppearanceStateTrayIconChanged value)? trayIconChanged,
  }) {
    return themeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppearanceStateInitial value)? initial,
    TResult Function(AppearanceStateLoaded value)? loaded,
    TResult Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult Function(AppearanceStateTrackingNotifyChanged value)?
        trackingNotifyChanged,
    TResult Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult Function(AppearanceStateTrackingErrorNotifyChanged value)?
        trackingErrorNotifyChanged,
    TResult Function(AppearanceStateTrayIconChanged value)? trayIconChanged,
    required TResult orElse(),
  }) {
    if (themeChanged != null) {
      return themeChanged(this);
    }
    return orElse();
  }
}

abstract class AppearanceStateThemeChanged implements AppearanceState {
  const factory AppearanceStateThemeChanged(final AppearanceInfo info) =
      _$AppearanceStateThemeChangedImpl;

  @override
  AppearanceInfo get info;
  @override
  @JsonKey(ignore: true)
  _$$AppearanceStateThemeChangedImplCopyWith<_$AppearanceStateThemeChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppearanceStateTrackingNotifyChangedImplCopyWith<$Res>
    implements $AppearanceStateCopyWith<$Res> {
  factory _$$AppearanceStateTrackingNotifyChangedImplCopyWith(
          _$AppearanceStateTrackingNotifyChangedImpl value,
          $Res Function(_$AppearanceStateTrackingNotifyChangedImpl) then) =
      __$$AppearanceStateTrackingNotifyChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppearanceInfo info});

  @override
  $AppearanceInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$AppearanceStateTrackingNotifyChangedImplCopyWithImpl<$Res>
    extends _$AppearanceStateCopyWithImpl<$Res,
        _$AppearanceStateTrackingNotifyChangedImpl>
    implements _$$AppearanceStateTrackingNotifyChangedImplCopyWith<$Res> {
  __$$AppearanceStateTrackingNotifyChangedImplCopyWithImpl(
      _$AppearanceStateTrackingNotifyChangedImpl _value,
      $Res Function(_$AppearanceStateTrackingNotifyChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$AppearanceStateTrackingNotifyChangedImpl(
      null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AppearanceInfo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppearanceInfoCopyWith<$Res> get info {
    return $AppearanceInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc

class _$AppearanceStateTrackingNotifyChangedImpl
    with DiagnosticableTreeMixin
    implements AppearanceStateTrackingNotifyChanged {
  const _$AppearanceStateTrackingNotifyChangedImpl(this.info);

  @override
  final AppearanceInfo info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppearanceState.trackingNotifyChanged(info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'AppearanceState.trackingNotifyChanged'))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppearanceStateTrackingNotifyChangedImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppearanceStateTrackingNotifyChangedImplCopyWith<
          _$AppearanceStateTrackingNotifyChangedImpl>
      get copyWith => __$$AppearanceStateTrackingNotifyChangedImplCopyWithImpl<
          _$AppearanceStateTrackingNotifyChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppearanceInfo? info) initial,
    required TResult Function(AppearanceInfo info) loaded,
    required TResult Function(AppearanceInfo info) themeChanged,
    required TResult Function(AppearanceInfo info) trackingNotifyChanged,
    required TResult Function(AppearanceInfo info) localeChanged,
    required TResult Function(AppearanceInfo info) trackingErrorNotifyChanged,
    required TResult Function(AppearanceInfo info) trayIconChanged,
  }) {
    return trackingNotifyChanged(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppearanceInfo? info)? initial,
    TResult? Function(AppearanceInfo info)? loaded,
    TResult? Function(AppearanceInfo info)? themeChanged,
    TResult? Function(AppearanceInfo info)? trackingNotifyChanged,
    TResult? Function(AppearanceInfo info)? localeChanged,
    TResult? Function(AppearanceInfo info)? trackingErrorNotifyChanged,
    TResult? Function(AppearanceInfo info)? trayIconChanged,
  }) {
    return trackingNotifyChanged?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppearanceInfo? info)? initial,
    TResult Function(AppearanceInfo info)? loaded,
    TResult Function(AppearanceInfo info)? themeChanged,
    TResult Function(AppearanceInfo info)? trackingNotifyChanged,
    TResult Function(AppearanceInfo info)? localeChanged,
    TResult Function(AppearanceInfo info)? trackingErrorNotifyChanged,
    TResult Function(AppearanceInfo info)? trayIconChanged,
    required TResult orElse(),
  }) {
    if (trackingNotifyChanged != null) {
      return trackingNotifyChanged(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppearanceStateInitial value) initial,
    required TResult Function(AppearanceStateLoaded value) loaded,
    required TResult Function(AppearanceStateThemeChanged value) themeChanged,
    required TResult Function(AppearanceStateTrackingNotifyChanged value)
        trackingNotifyChanged,
    required TResult Function(AppearanceStateLocaleChanged value) localeChanged,
    required TResult Function(AppearanceStateTrackingErrorNotifyChanged value)
        trackingErrorNotifyChanged,
    required TResult Function(AppearanceStateTrayIconChanged value)
        trayIconChanged,
  }) {
    return trackingNotifyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppearanceStateInitial value)? initial,
    TResult? Function(AppearanceStateLoaded value)? loaded,
    TResult? Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult? Function(AppearanceStateTrackingNotifyChanged value)?
        trackingNotifyChanged,
    TResult? Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult? Function(AppearanceStateTrackingErrorNotifyChanged value)?
        trackingErrorNotifyChanged,
    TResult? Function(AppearanceStateTrayIconChanged value)? trayIconChanged,
  }) {
    return trackingNotifyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppearanceStateInitial value)? initial,
    TResult Function(AppearanceStateLoaded value)? loaded,
    TResult Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult Function(AppearanceStateTrackingNotifyChanged value)?
        trackingNotifyChanged,
    TResult Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult Function(AppearanceStateTrackingErrorNotifyChanged value)?
        trackingErrorNotifyChanged,
    TResult Function(AppearanceStateTrayIconChanged value)? trayIconChanged,
    required TResult orElse(),
  }) {
    if (trackingNotifyChanged != null) {
      return trackingNotifyChanged(this);
    }
    return orElse();
  }
}

abstract class AppearanceStateTrackingNotifyChanged implements AppearanceState {
  const factory AppearanceStateTrackingNotifyChanged(
      final AppearanceInfo info) = _$AppearanceStateTrackingNotifyChangedImpl;

  @override
  AppearanceInfo get info;
  @override
  @JsonKey(ignore: true)
  _$$AppearanceStateTrackingNotifyChangedImplCopyWith<
          _$AppearanceStateTrackingNotifyChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppearanceStateLocaleChangedImplCopyWith<$Res>
    implements $AppearanceStateCopyWith<$Res> {
  factory _$$AppearanceStateLocaleChangedImplCopyWith(
          _$AppearanceStateLocaleChangedImpl value,
          $Res Function(_$AppearanceStateLocaleChangedImpl) then) =
      __$$AppearanceStateLocaleChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppearanceInfo info});

  @override
  $AppearanceInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$AppearanceStateLocaleChangedImplCopyWithImpl<$Res>
    extends _$AppearanceStateCopyWithImpl<$Res,
        _$AppearanceStateLocaleChangedImpl>
    implements _$$AppearanceStateLocaleChangedImplCopyWith<$Res> {
  __$$AppearanceStateLocaleChangedImplCopyWithImpl(
      _$AppearanceStateLocaleChangedImpl _value,
      $Res Function(_$AppearanceStateLocaleChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$AppearanceStateLocaleChangedImpl(
      null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AppearanceInfo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppearanceInfoCopyWith<$Res> get info {
    return $AppearanceInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc

class _$AppearanceStateLocaleChangedImpl
    with DiagnosticableTreeMixin
    implements AppearanceStateLocaleChanged {
  const _$AppearanceStateLocaleChangedImpl(this.info);

  @override
  final AppearanceInfo info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppearanceState.localeChanged(info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppearanceState.localeChanged'))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppearanceStateLocaleChangedImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppearanceStateLocaleChangedImplCopyWith<
          _$AppearanceStateLocaleChangedImpl>
      get copyWith => __$$AppearanceStateLocaleChangedImplCopyWithImpl<
          _$AppearanceStateLocaleChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppearanceInfo? info) initial,
    required TResult Function(AppearanceInfo info) loaded,
    required TResult Function(AppearanceInfo info) themeChanged,
    required TResult Function(AppearanceInfo info) trackingNotifyChanged,
    required TResult Function(AppearanceInfo info) localeChanged,
    required TResult Function(AppearanceInfo info) trackingErrorNotifyChanged,
    required TResult Function(AppearanceInfo info) trayIconChanged,
  }) {
    return localeChanged(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppearanceInfo? info)? initial,
    TResult? Function(AppearanceInfo info)? loaded,
    TResult? Function(AppearanceInfo info)? themeChanged,
    TResult? Function(AppearanceInfo info)? trackingNotifyChanged,
    TResult? Function(AppearanceInfo info)? localeChanged,
    TResult? Function(AppearanceInfo info)? trackingErrorNotifyChanged,
    TResult? Function(AppearanceInfo info)? trayIconChanged,
  }) {
    return localeChanged?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppearanceInfo? info)? initial,
    TResult Function(AppearanceInfo info)? loaded,
    TResult Function(AppearanceInfo info)? themeChanged,
    TResult Function(AppearanceInfo info)? trackingNotifyChanged,
    TResult Function(AppearanceInfo info)? localeChanged,
    TResult Function(AppearanceInfo info)? trackingErrorNotifyChanged,
    TResult Function(AppearanceInfo info)? trayIconChanged,
    required TResult orElse(),
  }) {
    if (localeChanged != null) {
      return localeChanged(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppearanceStateInitial value) initial,
    required TResult Function(AppearanceStateLoaded value) loaded,
    required TResult Function(AppearanceStateThemeChanged value) themeChanged,
    required TResult Function(AppearanceStateTrackingNotifyChanged value)
        trackingNotifyChanged,
    required TResult Function(AppearanceStateLocaleChanged value) localeChanged,
    required TResult Function(AppearanceStateTrackingErrorNotifyChanged value)
        trackingErrorNotifyChanged,
    required TResult Function(AppearanceStateTrayIconChanged value)
        trayIconChanged,
  }) {
    return localeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppearanceStateInitial value)? initial,
    TResult? Function(AppearanceStateLoaded value)? loaded,
    TResult? Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult? Function(AppearanceStateTrackingNotifyChanged value)?
        trackingNotifyChanged,
    TResult? Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult? Function(AppearanceStateTrackingErrorNotifyChanged value)?
        trackingErrorNotifyChanged,
    TResult? Function(AppearanceStateTrayIconChanged value)? trayIconChanged,
  }) {
    return localeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppearanceStateInitial value)? initial,
    TResult Function(AppearanceStateLoaded value)? loaded,
    TResult Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult Function(AppearanceStateTrackingNotifyChanged value)?
        trackingNotifyChanged,
    TResult Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult Function(AppearanceStateTrackingErrorNotifyChanged value)?
        trackingErrorNotifyChanged,
    TResult Function(AppearanceStateTrayIconChanged value)? trayIconChanged,
    required TResult orElse(),
  }) {
    if (localeChanged != null) {
      return localeChanged(this);
    }
    return orElse();
  }
}

abstract class AppearanceStateLocaleChanged implements AppearanceState {
  const factory AppearanceStateLocaleChanged(final AppearanceInfo info) =
      _$AppearanceStateLocaleChangedImpl;

  @override
  AppearanceInfo get info;
  @override
  @JsonKey(ignore: true)
  _$$AppearanceStateLocaleChangedImplCopyWith<
          _$AppearanceStateLocaleChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppearanceStateTrackingErrorNotifyChangedImplCopyWith<$Res>
    implements $AppearanceStateCopyWith<$Res> {
  factory _$$AppearanceStateTrackingErrorNotifyChangedImplCopyWith(
          _$AppearanceStateTrackingErrorNotifyChangedImpl value,
          $Res Function(_$AppearanceStateTrackingErrorNotifyChangedImpl) then) =
      __$$AppearanceStateTrackingErrorNotifyChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppearanceInfo info});

  @override
  $AppearanceInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$AppearanceStateTrackingErrorNotifyChangedImplCopyWithImpl<$Res>
    extends _$AppearanceStateCopyWithImpl<$Res,
        _$AppearanceStateTrackingErrorNotifyChangedImpl>
    implements _$$AppearanceStateTrackingErrorNotifyChangedImplCopyWith<$Res> {
  __$$AppearanceStateTrackingErrorNotifyChangedImplCopyWithImpl(
      _$AppearanceStateTrackingErrorNotifyChangedImpl _value,
      $Res Function(_$AppearanceStateTrackingErrorNotifyChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$AppearanceStateTrackingErrorNotifyChangedImpl(
      null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AppearanceInfo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppearanceInfoCopyWith<$Res> get info {
    return $AppearanceInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc

class _$AppearanceStateTrackingErrorNotifyChangedImpl
    with DiagnosticableTreeMixin
    implements AppearanceStateTrackingErrorNotifyChanged {
  const _$AppearanceStateTrackingErrorNotifyChangedImpl(this.info);

  @override
  final AppearanceInfo info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppearanceState.trackingErrorNotifyChanged(info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AppearanceState.trackingErrorNotifyChanged'))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppearanceStateTrackingErrorNotifyChangedImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppearanceStateTrackingErrorNotifyChangedImplCopyWith<
          _$AppearanceStateTrackingErrorNotifyChangedImpl>
      get copyWith =>
          __$$AppearanceStateTrackingErrorNotifyChangedImplCopyWithImpl<
                  _$AppearanceStateTrackingErrorNotifyChangedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppearanceInfo? info) initial,
    required TResult Function(AppearanceInfo info) loaded,
    required TResult Function(AppearanceInfo info) themeChanged,
    required TResult Function(AppearanceInfo info) trackingNotifyChanged,
    required TResult Function(AppearanceInfo info) localeChanged,
    required TResult Function(AppearanceInfo info) trackingErrorNotifyChanged,
    required TResult Function(AppearanceInfo info) trayIconChanged,
  }) {
    return trackingErrorNotifyChanged(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppearanceInfo? info)? initial,
    TResult? Function(AppearanceInfo info)? loaded,
    TResult? Function(AppearanceInfo info)? themeChanged,
    TResult? Function(AppearanceInfo info)? trackingNotifyChanged,
    TResult? Function(AppearanceInfo info)? localeChanged,
    TResult? Function(AppearanceInfo info)? trackingErrorNotifyChanged,
    TResult? Function(AppearanceInfo info)? trayIconChanged,
  }) {
    return trackingErrorNotifyChanged?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppearanceInfo? info)? initial,
    TResult Function(AppearanceInfo info)? loaded,
    TResult Function(AppearanceInfo info)? themeChanged,
    TResult Function(AppearanceInfo info)? trackingNotifyChanged,
    TResult Function(AppearanceInfo info)? localeChanged,
    TResult Function(AppearanceInfo info)? trackingErrorNotifyChanged,
    TResult Function(AppearanceInfo info)? trayIconChanged,
    required TResult orElse(),
  }) {
    if (trackingErrorNotifyChanged != null) {
      return trackingErrorNotifyChanged(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppearanceStateInitial value) initial,
    required TResult Function(AppearanceStateLoaded value) loaded,
    required TResult Function(AppearanceStateThemeChanged value) themeChanged,
    required TResult Function(AppearanceStateTrackingNotifyChanged value)
        trackingNotifyChanged,
    required TResult Function(AppearanceStateLocaleChanged value) localeChanged,
    required TResult Function(AppearanceStateTrackingErrorNotifyChanged value)
        trackingErrorNotifyChanged,
    required TResult Function(AppearanceStateTrayIconChanged value)
        trayIconChanged,
  }) {
    return trackingErrorNotifyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppearanceStateInitial value)? initial,
    TResult? Function(AppearanceStateLoaded value)? loaded,
    TResult? Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult? Function(AppearanceStateTrackingNotifyChanged value)?
        trackingNotifyChanged,
    TResult? Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult? Function(AppearanceStateTrackingErrorNotifyChanged value)?
        trackingErrorNotifyChanged,
    TResult? Function(AppearanceStateTrayIconChanged value)? trayIconChanged,
  }) {
    return trackingErrorNotifyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppearanceStateInitial value)? initial,
    TResult Function(AppearanceStateLoaded value)? loaded,
    TResult Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult Function(AppearanceStateTrackingNotifyChanged value)?
        trackingNotifyChanged,
    TResult Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult Function(AppearanceStateTrackingErrorNotifyChanged value)?
        trackingErrorNotifyChanged,
    TResult Function(AppearanceStateTrayIconChanged value)? trayIconChanged,
    required TResult orElse(),
  }) {
    if (trackingErrorNotifyChanged != null) {
      return trackingErrorNotifyChanged(this);
    }
    return orElse();
  }
}

abstract class AppearanceStateTrackingErrorNotifyChanged
    implements AppearanceState {
  const factory AppearanceStateTrackingErrorNotifyChanged(
          final AppearanceInfo info) =
      _$AppearanceStateTrackingErrorNotifyChangedImpl;

  @override
  AppearanceInfo get info;
  @override
  @JsonKey(ignore: true)
  _$$AppearanceStateTrackingErrorNotifyChangedImplCopyWith<
          _$AppearanceStateTrackingErrorNotifyChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppearanceStateTrayIconChangedImplCopyWith<$Res>
    implements $AppearanceStateCopyWith<$Res> {
  factory _$$AppearanceStateTrayIconChangedImplCopyWith(
          _$AppearanceStateTrayIconChangedImpl value,
          $Res Function(_$AppearanceStateTrayIconChangedImpl) then) =
      __$$AppearanceStateTrayIconChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppearanceInfo info});

  @override
  $AppearanceInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$AppearanceStateTrayIconChangedImplCopyWithImpl<$Res>
    extends _$AppearanceStateCopyWithImpl<$Res,
        _$AppearanceStateTrayIconChangedImpl>
    implements _$$AppearanceStateTrayIconChangedImplCopyWith<$Res> {
  __$$AppearanceStateTrayIconChangedImplCopyWithImpl(
      _$AppearanceStateTrayIconChangedImpl _value,
      $Res Function(_$AppearanceStateTrayIconChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$AppearanceStateTrayIconChangedImpl(
      null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AppearanceInfo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppearanceInfoCopyWith<$Res> get info {
    return $AppearanceInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc

class _$AppearanceStateTrayIconChangedImpl
    with DiagnosticableTreeMixin
    implements AppearanceStateTrayIconChanged {
  const _$AppearanceStateTrayIconChangedImpl(this.info);

  @override
  final AppearanceInfo info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppearanceState.trayIconChanged(info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppearanceState.trayIconChanged'))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppearanceStateTrayIconChangedImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppearanceStateTrayIconChangedImplCopyWith<
          _$AppearanceStateTrayIconChangedImpl>
      get copyWith => __$$AppearanceStateTrayIconChangedImplCopyWithImpl<
          _$AppearanceStateTrayIconChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppearanceInfo? info) initial,
    required TResult Function(AppearanceInfo info) loaded,
    required TResult Function(AppearanceInfo info) themeChanged,
    required TResult Function(AppearanceInfo info) trackingNotifyChanged,
    required TResult Function(AppearanceInfo info) localeChanged,
    required TResult Function(AppearanceInfo info) trackingErrorNotifyChanged,
    required TResult Function(AppearanceInfo info) trayIconChanged,
  }) {
    return trayIconChanged(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppearanceInfo? info)? initial,
    TResult? Function(AppearanceInfo info)? loaded,
    TResult? Function(AppearanceInfo info)? themeChanged,
    TResult? Function(AppearanceInfo info)? trackingNotifyChanged,
    TResult? Function(AppearanceInfo info)? localeChanged,
    TResult? Function(AppearanceInfo info)? trackingErrorNotifyChanged,
    TResult? Function(AppearanceInfo info)? trayIconChanged,
  }) {
    return trayIconChanged?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppearanceInfo? info)? initial,
    TResult Function(AppearanceInfo info)? loaded,
    TResult Function(AppearanceInfo info)? themeChanged,
    TResult Function(AppearanceInfo info)? trackingNotifyChanged,
    TResult Function(AppearanceInfo info)? localeChanged,
    TResult Function(AppearanceInfo info)? trackingErrorNotifyChanged,
    TResult Function(AppearanceInfo info)? trayIconChanged,
    required TResult orElse(),
  }) {
    if (trayIconChanged != null) {
      return trayIconChanged(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppearanceStateInitial value) initial,
    required TResult Function(AppearanceStateLoaded value) loaded,
    required TResult Function(AppearanceStateThemeChanged value) themeChanged,
    required TResult Function(AppearanceStateTrackingNotifyChanged value)
        trackingNotifyChanged,
    required TResult Function(AppearanceStateLocaleChanged value) localeChanged,
    required TResult Function(AppearanceStateTrackingErrorNotifyChanged value)
        trackingErrorNotifyChanged,
    required TResult Function(AppearanceStateTrayIconChanged value)
        trayIconChanged,
  }) {
    return trayIconChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppearanceStateInitial value)? initial,
    TResult? Function(AppearanceStateLoaded value)? loaded,
    TResult? Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult? Function(AppearanceStateTrackingNotifyChanged value)?
        trackingNotifyChanged,
    TResult? Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult? Function(AppearanceStateTrackingErrorNotifyChanged value)?
        trackingErrorNotifyChanged,
    TResult? Function(AppearanceStateTrayIconChanged value)? trayIconChanged,
  }) {
    return trayIconChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppearanceStateInitial value)? initial,
    TResult Function(AppearanceStateLoaded value)? loaded,
    TResult Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult Function(AppearanceStateTrackingNotifyChanged value)?
        trackingNotifyChanged,
    TResult Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult Function(AppearanceStateTrackingErrorNotifyChanged value)?
        trackingErrorNotifyChanged,
    TResult Function(AppearanceStateTrayIconChanged value)? trayIconChanged,
    required TResult orElse(),
  }) {
    if (trayIconChanged != null) {
      return trayIconChanged(this);
    }
    return orElse();
  }
}

abstract class AppearanceStateTrayIconChanged implements AppearanceState {
  const factory AppearanceStateTrayIconChanged(final AppearanceInfo info) =
      _$AppearanceStateTrayIconChangedImpl;

  @override
  AppearanceInfo get info;
  @override
  @JsonKey(ignore: true)
  _$$AppearanceStateTrayIconChangedImplCopyWith<
          _$AppearanceStateTrayIconChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppearanceInfo {
  AppThemeType get theme => throw _privateConstructorUsedError;
  bool get trackingNotify => throw _privateConstructorUsedError;
  AppLocaleType get locale => throw _privateConstructorUsedError;
  bool get trackingErrorNotify => throw _privateConstructorUsedError;
  bool get trayIcon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppearanceInfoCopyWith<AppearanceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppearanceInfoCopyWith<$Res> {
  factory $AppearanceInfoCopyWith(
          AppearanceInfo value, $Res Function(AppearanceInfo) then) =
      _$AppearanceInfoCopyWithImpl<$Res, AppearanceInfo>;
  @useResult
  $Res call(
      {AppThemeType theme,
      bool trackingNotify,
      AppLocaleType locale,
      bool trackingErrorNotify,
      bool trayIcon});

  $AppThemeTypeCopyWith<$Res> get theme;
  $AppLocaleTypeCopyWith<$Res> get locale;
}

/// @nodoc
class _$AppearanceInfoCopyWithImpl<$Res, $Val extends AppearanceInfo>
    implements $AppearanceInfoCopyWith<$Res> {
  _$AppearanceInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
    Object? trackingNotify = null,
    Object? locale = null,
    Object? trackingErrorNotify = null,
    Object? trayIcon = null,
  }) {
    return _then(_value.copyWith(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as AppThemeType,
      trackingNotify: null == trackingNotify
          ? _value.trackingNotify
          : trackingNotify // ignore: cast_nullable_to_non_nullable
              as bool,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as AppLocaleType,
      trackingErrorNotify: null == trackingErrorNotify
          ? _value.trackingErrorNotify
          : trackingErrorNotify // ignore: cast_nullable_to_non_nullable
              as bool,
      trayIcon: null == trayIcon
          ? _value.trayIcon
          : trayIcon // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppThemeTypeCopyWith<$Res> get theme {
    return $AppThemeTypeCopyWith<$Res>(_value.theme, (value) {
      return _then(_value.copyWith(theme: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppLocaleTypeCopyWith<$Res> get locale {
    return $AppLocaleTypeCopyWith<$Res>(_value.locale, (value) {
      return _then(_value.copyWith(locale: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppearanceInfoImplCopyWith<$Res>
    implements $AppearanceInfoCopyWith<$Res> {
  factory _$$AppearanceInfoImplCopyWith(_$AppearanceInfoImpl value,
          $Res Function(_$AppearanceInfoImpl) then) =
      __$$AppearanceInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppThemeType theme,
      bool trackingNotify,
      AppLocaleType locale,
      bool trackingErrorNotify,
      bool trayIcon});

  @override
  $AppThemeTypeCopyWith<$Res> get theme;
  @override
  $AppLocaleTypeCopyWith<$Res> get locale;
}

/// @nodoc
class __$$AppearanceInfoImplCopyWithImpl<$Res>
    extends _$AppearanceInfoCopyWithImpl<$Res, _$AppearanceInfoImpl>
    implements _$$AppearanceInfoImplCopyWith<$Res> {
  __$$AppearanceInfoImplCopyWithImpl(
      _$AppearanceInfoImpl _value, $Res Function(_$AppearanceInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
    Object? trackingNotify = null,
    Object? locale = null,
    Object? trackingErrorNotify = null,
    Object? trayIcon = null,
  }) {
    return _then(_$AppearanceInfoImpl(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as AppThemeType,
      trackingNotify: null == trackingNotify
          ? _value.trackingNotify
          : trackingNotify // ignore: cast_nullable_to_non_nullable
              as bool,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as AppLocaleType,
      trackingErrorNotify: null == trackingErrorNotify
          ? _value.trackingErrorNotify
          : trackingErrorNotify // ignore: cast_nullable_to_non_nullable
              as bool,
      trayIcon: null == trayIcon
          ? _value.trayIcon
          : trayIcon // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AppearanceInfoImpl
    with DiagnosticableTreeMixin
    implements _AppearanceInfo {
  const _$AppearanceInfoImpl(
      {required this.theme,
      required this.trackingNotify,
      required this.locale,
      required this.trackingErrorNotify,
      required this.trayIcon});

  @override
  final AppThemeType theme;
  @override
  final bool trackingNotify;
  @override
  final AppLocaleType locale;
  @override
  final bool trackingErrorNotify;
  @override
  final bool trayIcon;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppearanceInfo(theme: $theme, trackingNotify: $trackingNotify, locale: $locale, trackingErrorNotify: $trackingErrorNotify, trayIcon: $trayIcon)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppearanceInfo'))
      ..add(DiagnosticsProperty('theme', theme))
      ..add(DiagnosticsProperty('trackingNotify', trackingNotify))
      ..add(DiagnosticsProperty('locale', locale))
      ..add(DiagnosticsProperty('trackingErrorNotify', trackingErrorNotify))
      ..add(DiagnosticsProperty('trayIcon', trayIcon));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppearanceInfoImpl &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.trackingNotify, trackingNotify) ||
                other.trackingNotify == trackingNotify) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.trackingErrorNotify, trackingErrorNotify) ||
                other.trackingErrorNotify == trackingErrorNotify) &&
            (identical(other.trayIcon, trayIcon) ||
                other.trayIcon == trayIcon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme, trackingNotify, locale,
      trackingErrorNotify, trayIcon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppearanceInfoImplCopyWith<_$AppearanceInfoImpl> get copyWith =>
      __$$AppearanceInfoImplCopyWithImpl<_$AppearanceInfoImpl>(
          this, _$identity);
}

abstract class _AppearanceInfo implements AppearanceInfo {
  const factory _AppearanceInfo(
      {required final AppThemeType theme,
      required final bool trackingNotify,
      required final AppLocaleType locale,
      required final bool trackingErrorNotify,
      required final bool trayIcon}) = _$AppearanceInfoImpl;

  @override
  AppThemeType get theme;
  @override
  bool get trackingNotify;
  @override
  AppLocaleType get locale;
  @override
  bool get trackingErrorNotify;
  @override
  bool get trayIcon;
  @override
  @JsonKey(ignore: true)
  _$$AppearanceInfoImplCopyWith<_$AppearanceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
