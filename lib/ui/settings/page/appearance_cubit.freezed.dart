// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'appearance_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppearanceStateTearOff {
  const _$AppearanceStateTearOff();

  AppearanceStateInitial initial(AppearanceInfo info) {
    return AppearanceStateInitial(
      info,
    );
  }

  AppearanceStateThemeChanged themeChanged(AppearanceInfo info) {
    return AppearanceStateThemeChanged(
      info,
    );
  }

  AppearanceStateTrackingNotifyChanged trackingNotifyChanged(
      AppearanceInfo info) {
    return AppearanceStateTrackingNotifyChanged(
      info,
    );
  }

  AppearanceStateLocaleChanged localeChanged(AppearanceInfo info) {
    return AppearanceStateLocaleChanged(
      info,
    );
  }

  AppearanceStateTrackingErrorNotifyChanged trackingErrorNotifyChanged(
      AppearanceInfo info) {
    return AppearanceStateTrackingErrorNotifyChanged(
      info,
    );
  }

  AppearanceStateTrayIconChanged trayIconChanged(AppearanceInfo info) {
    return AppearanceStateTrayIconChanged(
      info,
    );
  }
}

/// @nodoc
const $AppearanceState = _$AppearanceStateTearOff();

/// @nodoc
mixin _$AppearanceState {
  AppearanceInfo get info => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppearanceInfo info) initial,
    required TResult Function(AppearanceInfo info) themeChanged,
    required TResult Function(AppearanceInfo info) trackingNotifyChanged,
    required TResult Function(AppearanceInfo info) localeChanged,
    required TResult Function(AppearanceInfo info) trackingErrorNotifyChanged,
    required TResult Function(AppearanceInfo info) trayIconChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppearanceInfo info)? initial,
    TResult Function(AppearanceInfo info)? themeChanged,
    TResult Function(AppearanceInfo info)? trackingNotifyChanged,
    TResult Function(AppearanceInfo info)? localeChanged,
    TResult Function(AppearanceInfo info)? trackingErrorNotifyChanged,
    TResult Function(AppearanceInfo info)? trayIconChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppearanceInfo info)? initial,
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
    TResult Function(AppearanceStateInitial value)? initial,
    TResult Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult Function(AppearanceStateTrackingNotifyChanged value)?
        trackingNotifyChanged,
    TResult Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult Function(AppearanceStateTrackingErrorNotifyChanged value)?
        trackingErrorNotifyChanged,
    TResult Function(AppearanceStateTrayIconChanged value)? trayIconChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppearanceStateInitial value)? initial,
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
      _$AppearanceStateCopyWithImpl<$Res>;
  $Res call({AppearanceInfo info});

  $AppearanceInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$AppearanceStateCopyWithImpl<$Res>
    implements $AppearanceStateCopyWith<$Res> {
  _$AppearanceStateCopyWithImpl(this._value, this._then);

  final AppearanceState _value;
  // ignore: unused_field
  final $Res Function(AppearanceState) _then;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AppearanceInfo,
    ));
  }

  @override
  $AppearanceInfoCopyWith<$Res> get info {
    return $AppearanceInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class $AppearanceStateInitialCopyWith<$Res>
    implements $AppearanceStateCopyWith<$Res> {
  factory $AppearanceStateInitialCopyWith(AppearanceStateInitial value,
          $Res Function(AppearanceStateInitial) then) =
      _$AppearanceStateInitialCopyWithImpl<$Res>;
  @override
  $Res call({AppearanceInfo info});

  @override
  $AppearanceInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$AppearanceStateInitialCopyWithImpl<$Res>
    extends _$AppearanceStateCopyWithImpl<$Res>
    implements $AppearanceStateInitialCopyWith<$Res> {
  _$AppearanceStateInitialCopyWithImpl(AppearanceStateInitial _value,
      $Res Function(AppearanceStateInitial) _then)
      : super(_value, (v) => _then(v as AppearanceStateInitial));

  @override
  AppearanceStateInitial get _value => super._value as AppearanceStateInitial;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(AppearanceStateInitial(
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AppearanceInfo,
    ));
  }
}

/// @nodoc

class _$AppearanceStateInitial implements AppearanceStateInitial {
  const _$AppearanceStateInitial(this.info);

  @override
  final AppearanceInfo info;

  @override
  String toString() {
    return 'AppearanceState.initial(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppearanceStateInitial &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  $AppearanceStateInitialCopyWith<AppearanceStateInitial> get copyWith =>
      _$AppearanceStateInitialCopyWithImpl<AppearanceStateInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppearanceInfo info) initial,
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
    TResult Function(AppearanceInfo info)? initial,
    TResult Function(AppearanceInfo info)? themeChanged,
    TResult Function(AppearanceInfo info)? trackingNotifyChanged,
    TResult Function(AppearanceInfo info)? localeChanged,
    TResult Function(AppearanceInfo info)? trackingErrorNotifyChanged,
    TResult Function(AppearanceInfo info)? trayIconChanged,
  }) {
    return initial?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppearanceInfo info)? initial,
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
    TResult Function(AppearanceStateInitial value)? initial,
    TResult Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult Function(AppearanceStateTrackingNotifyChanged value)?
        trackingNotifyChanged,
    TResult Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult Function(AppearanceStateTrackingErrorNotifyChanged value)?
        trackingErrorNotifyChanged,
    TResult Function(AppearanceStateTrayIconChanged value)? trayIconChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppearanceStateInitial value)? initial,
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
  const factory AppearanceStateInitial(AppearanceInfo info) =
      _$AppearanceStateInitial;

  @override
  AppearanceInfo get info => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AppearanceStateInitialCopyWith<AppearanceStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppearanceStateThemeChangedCopyWith<$Res>
    implements $AppearanceStateCopyWith<$Res> {
  factory $AppearanceStateThemeChangedCopyWith(
          AppearanceStateThemeChanged value,
          $Res Function(AppearanceStateThemeChanged) then) =
      _$AppearanceStateThemeChangedCopyWithImpl<$Res>;
  @override
  $Res call({AppearanceInfo info});

  @override
  $AppearanceInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$AppearanceStateThemeChangedCopyWithImpl<$Res>
    extends _$AppearanceStateCopyWithImpl<$Res>
    implements $AppearanceStateThemeChangedCopyWith<$Res> {
  _$AppearanceStateThemeChangedCopyWithImpl(AppearanceStateThemeChanged _value,
      $Res Function(AppearanceStateThemeChanged) _then)
      : super(_value, (v) => _then(v as AppearanceStateThemeChanged));

  @override
  AppearanceStateThemeChanged get _value =>
      super._value as AppearanceStateThemeChanged;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(AppearanceStateThemeChanged(
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AppearanceInfo,
    ));
  }
}

/// @nodoc

class _$AppearanceStateThemeChanged implements AppearanceStateThemeChanged {
  const _$AppearanceStateThemeChanged(this.info);

  @override
  final AppearanceInfo info;

  @override
  String toString() {
    return 'AppearanceState.themeChanged(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppearanceStateThemeChanged &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  $AppearanceStateThemeChangedCopyWith<AppearanceStateThemeChanged>
      get copyWith => _$AppearanceStateThemeChangedCopyWithImpl<
          AppearanceStateThemeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppearanceInfo info) initial,
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
    TResult Function(AppearanceInfo info)? initial,
    TResult Function(AppearanceInfo info)? themeChanged,
    TResult Function(AppearanceInfo info)? trackingNotifyChanged,
    TResult Function(AppearanceInfo info)? localeChanged,
    TResult Function(AppearanceInfo info)? trackingErrorNotifyChanged,
    TResult Function(AppearanceInfo info)? trayIconChanged,
  }) {
    return themeChanged?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppearanceInfo info)? initial,
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
    TResult Function(AppearanceStateInitial value)? initial,
    TResult Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult Function(AppearanceStateTrackingNotifyChanged value)?
        trackingNotifyChanged,
    TResult Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult Function(AppearanceStateTrackingErrorNotifyChanged value)?
        trackingErrorNotifyChanged,
    TResult Function(AppearanceStateTrayIconChanged value)? trayIconChanged,
  }) {
    return themeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppearanceStateInitial value)? initial,
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
  const factory AppearanceStateThemeChanged(AppearanceInfo info) =
      _$AppearanceStateThemeChanged;

  @override
  AppearanceInfo get info => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AppearanceStateThemeChangedCopyWith<AppearanceStateThemeChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppearanceStateTrackingNotifyChangedCopyWith<$Res>
    implements $AppearanceStateCopyWith<$Res> {
  factory $AppearanceStateTrackingNotifyChangedCopyWith(
          AppearanceStateTrackingNotifyChanged value,
          $Res Function(AppearanceStateTrackingNotifyChanged) then) =
      _$AppearanceStateTrackingNotifyChangedCopyWithImpl<$Res>;
  @override
  $Res call({AppearanceInfo info});

  @override
  $AppearanceInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$AppearanceStateTrackingNotifyChangedCopyWithImpl<$Res>
    extends _$AppearanceStateCopyWithImpl<$Res>
    implements $AppearanceStateTrackingNotifyChangedCopyWith<$Res> {
  _$AppearanceStateTrackingNotifyChangedCopyWithImpl(
      AppearanceStateTrackingNotifyChanged _value,
      $Res Function(AppearanceStateTrackingNotifyChanged) _then)
      : super(_value, (v) => _then(v as AppearanceStateTrackingNotifyChanged));

  @override
  AppearanceStateTrackingNotifyChanged get _value =>
      super._value as AppearanceStateTrackingNotifyChanged;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(AppearanceStateTrackingNotifyChanged(
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AppearanceInfo,
    ));
  }
}

/// @nodoc

class _$AppearanceStateTrackingNotifyChanged
    implements AppearanceStateTrackingNotifyChanged {
  const _$AppearanceStateTrackingNotifyChanged(this.info);

  @override
  final AppearanceInfo info;

  @override
  String toString() {
    return 'AppearanceState.trackingNotifyChanged(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppearanceStateTrackingNotifyChanged &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  $AppearanceStateTrackingNotifyChangedCopyWith<
          AppearanceStateTrackingNotifyChanged>
      get copyWith => _$AppearanceStateTrackingNotifyChangedCopyWithImpl<
          AppearanceStateTrackingNotifyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppearanceInfo info) initial,
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
    TResult Function(AppearanceInfo info)? initial,
    TResult Function(AppearanceInfo info)? themeChanged,
    TResult Function(AppearanceInfo info)? trackingNotifyChanged,
    TResult Function(AppearanceInfo info)? localeChanged,
    TResult Function(AppearanceInfo info)? trackingErrorNotifyChanged,
    TResult Function(AppearanceInfo info)? trayIconChanged,
  }) {
    return trackingNotifyChanged?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppearanceInfo info)? initial,
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
    TResult Function(AppearanceStateInitial value)? initial,
    TResult Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult Function(AppearanceStateTrackingNotifyChanged value)?
        trackingNotifyChanged,
    TResult Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult Function(AppearanceStateTrackingErrorNotifyChanged value)?
        trackingErrorNotifyChanged,
    TResult Function(AppearanceStateTrayIconChanged value)? trayIconChanged,
  }) {
    return trackingNotifyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppearanceStateInitial value)? initial,
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
  const factory AppearanceStateTrackingNotifyChanged(AppearanceInfo info) =
      _$AppearanceStateTrackingNotifyChanged;

  @override
  AppearanceInfo get info => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AppearanceStateTrackingNotifyChangedCopyWith<
          AppearanceStateTrackingNotifyChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppearanceStateLocaleChangedCopyWith<$Res>
    implements $AppearanceStateCopyWith<$Res> {
  factory $AppearanceStateLocaleChangedCopyWith(
          AppearanceStateLocaleChanged value,
          $Res Function(AppearanceStateLocaleChanged) then) =
      _$AppearanceStateLocaleChangedCopyWithImpl<$Res>;
  @override
  $Res call({AppearanceInfo info});

  @override
  $AppearanceInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$AppearanceStateLocaleChangedCopyWithImpl<$Res>
    extends _$AppearanceStateCopyWithImpl<$Res>
    implements $AppearanceStateLocaleChangedCopyWith<$Res> {
  _$AppearanceStateLocaleChangedCopyWithImpl(
      AppearanceStateLocaleChanged _value,
      $Res Function(AppearanceStateLocaleChanged) _then)
      : super(_value, (v) => _then(v as AppearanceStateLocaleChanged));

  @override
  AppearanceStateLocaleChanged get _value =>
      super._value as AppearanceStateLocaleChanged;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(AppearanceStateLocaleChanged(
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AppearanceInfo,
    ));
  }
}

/// @nodoc

class _$AppearanceStateLocaleChanged implements AppearanceStateLocaleChanged {
  const _$AppearanceStateLocaleChanged(this.info);

  @override
  final AppearanceInfo info;

  @override
  String toString() {
    return 'AppearanceState.localeChanged(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppearanceStateLocaleChanged &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  $AppearanceStateLocaleChangedCopyWith<AppearanceStateLocaleChanged>
      get copyWith => _$AppearanceStateLocaleChangedCopyWithImpl<
          AppearanceStateLocaleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppearanceInfo info) initial,
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
    TResult Function(AppearanceInfo info)? initial,
    TResult Function(AppearanceInfo info)? themeChanged,
    TResult Function(AppearanceInfo info)? trackingNotifyChanged,
    TResult Function(AppearanceInfo info)? localeChanged,
    TResult Function(AppearanceInfo info)? trackingErrorNotifyChanged,
    TResult Function(AppearanceInfo info)? trayIconChanged,
  }) {
    return localeChanged?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppearanceInfo info)? initial,
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
    TResult Function(AppearanceStateInitial value)? initial,
    TResult Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult Function(AppearanceStateTrackingNotifyChanged value)?
        trackingNotifyChanged,
    TResult Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult Function(AppearanceStateTrackingErrorNotifyChanged value)?
        trackingErrorNotifyChanged,
    TResult Function(AppearanceStateTrayIconChanged value)? trayIconChanged,
  }) {
    return localeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppearanceStateInitial value)? initial,
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
  const factory AppearanceStateLocaleChanged(AppearanceInfo info) =
      _$AppearanceStateLocaleChanged;

  @override
  AppearanceInfo get info => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AppearanceStateLocaleChangedCopyWith<AppearanceStateLocaleChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppearanceStateTrackingErrorNotifyChangedCopyWith<$Res>
    implements $AppearanceStateCopyWith<$Res> {
  factory $AppearanceStateTrackingErrorNotifyChangedCopyWith(
          AppearanceStateTrackingErrorNotifyChanged value,
          $Res Function(AppearanceStateTrackingErrorNotifyChanged) then) =
      _$AppearanceStateTrackingErrorNotifyChangedCopyWithImpl<$Res>;
  @override
  $Res call({AppearanceInfo info});

  @override
  $AppearanceInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$AppearanceStateTrackingErrorNotifyChangedCopyWithImpl<$Res>
    extends _$AppearanceStateCopyWithImpl<$Res>
    implements $AppearanceStateTrackingErrorNotifyChangedCopyWith<$Res> {
  _$AppearanceStateTrackingErrorNotifyChangedCopyWithImpl(
      AppearanceStateTrackingErrorNotifyChanged _value,
      $Res Function(AppearanceStateTrackingErrorNotifyChanged) _then)
      : super(_value,
            (v) => _then(v as AppearanceStateTrackingErrorNotifyChanged));

  @override
  AppearanceStateTrackingErrorNotifyChanged get _value =>
      super._value as AppearanceStateTrackingErrorNotifyChanged;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(AppearanceStateTrackingErrorNotifyChanged(
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AppearanceInfo,
    ));
  }
}

/// @nodoc

class _$AppearanceStateTrackingErrorNotifyChanged
    implements AppearanceStateTrackingErrorNotifyChanged {
  const _$AppearanceStateTrackingErrorNotifyChanged(this.info);

  @override
  final AppearanceInfo info;

  @override
  String toString() {
    return 'AppearanceState.trackingErrorNotifyChanged(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppearanceStateTrackingErrorNotifyChanged &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  $AppearanceStateTrackingErrorNotifyChangedCopyWith<
          AppearanceStateTrackingErrorNotifyChanged>
      get copyWith => _$AppearanceStateTrackingErrorNotifyChangedCopyWithImpl<
          AppearanceStateTrackingErrorNotifyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppearanceInfo info) initial,
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
    TResult Function(AppearanceInfo info)? initial,
    TResult Function(AppearanceInfo info)? themeChanged,
    TResult Function(AppearanceInfo info)? trackingNotifyChanged,
    TResult Function(AppearanceInfo info)? localeChanged,
    TResult Function(AppearanceInfo info)? trackingErrorNotifyChanged,
    TResult Function(AppearanceInfo info)? trayIconChanged,
  }) {
    return trackingErrorNotifyChanged?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppearanceInfo info)? initial,
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
    TResult Function(AppearanceStateInitial value)? initial,
    TResult Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult Function(AppearanceStateTrackingNotifyChanged value)?
        trackingNotifyChanged,
    TResult Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult Function(AppearanceStateTrackingErrorNotifyChanged value)?
        trackingErrorNotifyChanged,
    TResult Function(AppearanceStateTrayIconChanged value)? trayIconChanged,
  }) {
    return trackingErrorNotifyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppearanceStateInitial value)? initial,
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
  const factory AppearanceStateTrackingErrorNotifyChanged(AppearanceInfo info) =
      _$AppearanceStateTrackingErrorNotifyChanged;

  @override
  AppearanceInfo get info => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AppearanceStateTrackingErrorNotifyChangedCopyWith<
          AppearanceStateTrackingErrorNotifyChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppearanceStateTrayIconChangedCopyWith<$Res>
    implements $AppearanceStateCopyWith<$Res> {
  factory $AppearanceStateTrayIconChangedCopyWith(
          AppearanceStateTrayIconChanged value,
          $Res Function(AppearanceStateTrayIconChanged) then) =
      _$AppearanceStateTrayIconChangedCopyWithImpl<$Res>;
  @override
  $Res call({AppearanceInfo info});

  @override
  $AppearanceInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$AppearanceStateTrayIconChangedCopyWithImpl<$Res>
    extends _$AppearanceStateCopyWithImpl<$Res>
    implements $AppearanceStateTrayIconChangedCopyWith<$Res> {
  _$AppearanceStateTrayIconChangedCopyWithImpl(
      AppearanceStateTrayIconChanged _value,
      $Res Function(AppearanceStateTrayIconChanged) _then)
      : super(_value, (v) => _then(v as AppearanceStateTrayIconChanged));

  @override
  AppearanceStateTrayIconChanged get _value =>
      super._value as AppearanceStateTrayIconChanged;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(AppearanceStateTrayIconChanged(
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AppearanceInfo,
    ));
  }
}

/// @nodoc

class _$AppearanceStateTrayIconChanged
    implements AppearanceStateTrayIconChanged {
  const _$AppearanceStateTrayIconChanged(this.info);

  @override
  final AppearanceInfo info;

  @override
  String toString() {
    return 'AppearanceState.trayIconChanged(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppearanceStateTrayIconChanged &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  $AppearanceStateTrayIconChangedCopyWith<AppearanceStateTrayIconChanged>
      get copyWith => _$AppearanceStateTrayIconChangedCopyWithImpl<
          AppearanceStateTrayIconChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppearanceInfo info) initial,
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
    TResult Function(AppearanceInfo info)? initial,
    TResult Function(AppearanceInfo info)? themeChanged,
    TResult Function(AppearanceInfo info)? trackingNotifyChanged,
    TResult Function(AppearanceInfo info)? localeChanged,
    TResult Function(AppearanceInfo info)? trackingErrorNotifyChanged,
    TResult Function(AppearanceInfo info)? trayIconChanged,
  }) {
    return trayIconChanged?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppearanceInfo info)? initial,
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
    TResult Function(AppearanceStateInitial value)? initial,
    TResult Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult Function(AppearanceStateTrackingNotifyChanged value)?
        trackingNotifyChanged,
    TResult Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult Function(AppearanceStateTrackingErrorNotifyChanged value)?
        trackingErrorNotifyChanged,
    TResult Function(AppearanceStateTrayIconChanged value)? trayIconChanged,
  }) {
    return trayIconChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppearanceStateInitial value)? initial,
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
  const factory AppearanceStateTrayIconChanged(AppearanceInfo info) =
      _$AppearanceStateTrayIconChanged;

  @override
  AppearanceInfo get info => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AppearanceStateTrayIconChangedCopyWith<AppearanceStateTrayIconChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$AppearanceInfoTearOff {
  const _$AppearanceInfoTearOff();

  _AppearanceInfo call(
      {required AppThemeType theme,
      required bool trackingNotify,
      required AppLocaleType locale,
      required bool trackingErrorNotify,
      required bool trayIcon}) {
    return _AppearanceInfo(
      theme: theme,
      trackingNotify: trackingNotify,
      locale: locale,
      trackingErrorNotify: trackingErrorNotify,
      trayIcon: trayIcon,
    );
  }
}

/// @nodoc
const $AppearanceInfo = _$AppearanceInfoTearOff();

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
      _$AppearanceInfoCopyWithImpl<$Res>;
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
class _$AppearanceInfoCopyWithImpl<$Res>
    implements $AppearanceInfoCopyWith<$Res> {
  _$AppearanceInfoCopyWithImpl(this._value, this._then);

  final AppearanceInfo _value;
  // ignore: unused_field
  final $Res Function(AppearanceInfo) _then;

  @override
  $Res call({
    Object? theme = freezed,
    Object? trackingNotify = freezed,
    Object? locale = freezed,
    Object? trackingErrorNotify = freezed,
    Object? trayIcon = freezed,
  }) {
    return _then(_value.copyWith(
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as AppThemeType,
      trackingNotify: trackingNotify == freezed
          ? _value.trackingNotify
          : trackingNotify // ignore: cast_nullable_to_non_nullable
              as bool,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as AppLocaleType,
      trackingErrorNotify: trackingErrorNotify == freezed
          ? _value.trackingErrorNotify
          : trackingErrorNotify // ignore: cast_nullable_to_non_nullable
              as bool,
      trayIcon: trayIcon == freezed
          ? _value.trayIcon
          : trayIcon // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $AppThemeTypeCopyWith<$Res> get theme {
    return $AppThemeTypeCopyWith<$Res>(_value.theme, (value) {
      return _then(_value.copyWith(theme: value));
    });
  }

  @override
  $AppLocaleTypeCopyWith<$Res> get locale {
    return $AppLocaleTypeCopyWith<$Res>(_value.locale, (value) {
      return _then(_value.copyWith(locale: value));
    });
  }
}

/// @nodoc
abstract class _$AppearanceInfoCopyWith<$Res>
    implements $AppearanceInfoCopyWith<$Res> {
  factory _$AppearanceInfoCopyWith(
          _AppearanceInfo value, $Res Function(_AppearanceInfo) then) =
      __$AppearanceInfoCopyWithImpl<$Res>;
  @override
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
class __$AppearanceInfoCopyWithImpl<$Res>
    extends _$AppearanceInfoCopyWithImpl<$Res>
    implements _$AppearanceInfoCopyWith<$Res> {
  __$AppearanceInfoCopyWithImpl(
      _AppearanceInfo _value, $Res Function(_AppearanceInfo) _then)
      : super(_value, (v) => _then(v as _AppearanceInfo));

  @override
  _AppearanceInfo get _value => super._value as _AppearanceInfo;

  @override
  $Res call({
    Object? theme = freezed,
    Object? trackingNotify = freezed,
    Object? locale = freezed,
    Object? trackingErrorNotify = freezed,
    Object? trayIcon = freezed,
  }) {
    return _then(_AppearanceInfo(
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as AppThemeType,
      trackingNotify: trackingNotify == freezed
          ? _value.trackingNotify
          : trackingNotify // ignore: cast_nullable_to_non_nullable
              as bool,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as AppLocaleType,
      trackingErrorNotify: trackingErrorNotify == freezed
          ? _value.trackingErrorNotify
          : trackingErrorNotify // ignore: cast_nullable_to_non_nullable
              as bool,
      trayIcon: trayIcon == freezed
          ? _value.trayIcon
          : trayIcon // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AppearanceInfo implements _AppearanceInfo {
  const _$_AppearanceInfo(
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
  String toString() {
    return 'AppearanceInfo(theme: $theme, trackingNotify: $trackingNotify, locale: $locale, trackingErrorNotify: $trackingErrorNotify, trayIcon: $trayIcon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppearanceInfo &&
            (identical(other.theme, theme) ||
                const DeepCollectionEquality().equals(other.theme, theme)) &&
            (identical(other.trackingNotify, trackingNotify) ||
                const DeepCollectionEquality()
                    .equals(other.trackingNotify, trackingNotify)) &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)) &&
            (identical(other.trackingErrorNotify, trackingErrorNotify) ||
                const DeepCollectionEquality()
                    .equals(other.trackingErrorNotify, trackingErrorNotify)) &&
            (identical(other.trayIcon, trayIcon) ||
                const DeepCollectionEquality()
                    .equals(other.trayIcon, trayIcon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(theme) ^
      const DeepCollectionEquality().hash(trackingNotify) ^
      const DeepCollectionEquality().hash(locale) ^
      const DeepCollectionEquality().hash(trackingErrorNotify) ^
      const DeepCollectionEquality().hash(trayIcon);

  @JsonKey(ignore: true)
  @override
  _$AppearanceInfoCopyWith<_AppearanceInfo> get copyWith =>
      __$AppearanceInfoCopyWithImpl<_AppearanceInfo>(this, _$identity);
}

abstract class _AppearanceInfo implements AppearanceInfo {
  const factory _AppearanceInfo(
      {required AppThemeType theme,
      required bool trackingNotify,
      required AppLocaleType locale,
      required bool trackingErrorNotify,
      required bool trayIcon}) = _$_AppearanceInfo;

  @override
  AppThemeType get theme => throw _privateConstructorUsedError;
  @override
  bool get trackingNotify => throw _privateConstructorUsedError;
  @override
  AppLocaleType get locale => throw _privateConstructorUsedError;
  @override
  bool get trackingErrorNotify => throw _privateConstructorUsedError;
  @override
  bool get trayIcon => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppearanceInfoCopyWith<_AppearanceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
