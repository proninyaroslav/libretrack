// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppState {
  AppThemeType get theme => throw _privateConstructorUsedError;
  AppLocaleType get locale => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppThemeType theme, AppLocaleType locale) initial,
    required TResult Function(AppThemeType theme, AppLocaleType locale) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppThemeType theme, AppLocaleType locale)? initial,
    TResult? Function(AppThemeType theme, AppLocaleType locale)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppThemeType theme, AppLocaleType locale)? initial,
    TResult Function(AppThemeType theme, AppLocaleType locale)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStateInitial value) initial,
    required TResult Function(AppStateChanged value) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStateInitial value)? initial,
    TResult? Function(AppStateChanged value)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateInitial value)? initial,
    TResult Function(AppStateChanged value)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call({AppThemeType theme, AppLocaleType locale});

  $AppThemeTypeCopyWith<$Res> get theme;
  $AppLocaleTypeCopyWith<$Res> get locale;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
    Object? locale = null,
  }) {
    return _then(_value.copyWith(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as AppThemeType,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as AppLocaleType,
    ) as $Val);
  }

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppThemeTypeCopyWith<$Res> get theme {
    return $AppThemeTypeCopyWith<$Res>(_value.theme, (value) {
      return _then(_value.copyWith(theme: value) as $Val);
    });
  }

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppLocaleTypeCopyWith<$Res> get locale {
    return $AppLocaleTypeCopyWith<$Res>(_value.locale, (value) {
      return _then(_value.copyWith(locale: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppStateInitialImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateInitialImplCopyWith(_$AppStateInitialImpl value,
          $Res Function(_$AppStateInitialImpl) then) =
      __$$AppStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppThemeType theme, AppLocaleType locale});

  @override
  $AppThemeTypeCopyWith<$Res> get theme;
  @override
  $AppLocaleTypeCopyWith<$Res> get locale;
}

/// @nodoc
class __$$AppStateInitialImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateInitialImpl>
    implements _$$AppStateInitialImplCopyWith<$Res> {
  __$$AppStateInitialImplCopyWithImpl(
      _$AppStateInitialImpl _value, $Res Function(_$AppStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
    Object? locale = null,
  }) {
    return _then(_$AppStateInitialImpl(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as AppThemeType,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as AppLocaleType,
    ));
  }
}

/// @nodoc

class _$AppStateInitialImpl implements AppStateInitial {
  const _$AppStateInitialImpl({required this.theme, required this.locale});

  @override
  final AppThemeType theme;
  @override
  final AppLocaleType locale;

  @override
  String toString() {
    return 'AppState.initial(theme: $theme, locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateInitialImpl &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme, locale);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateInitialImplCopyWith<_$AppStateInitialImpl> get copyWith =>
      __$$AppStateInitialImplCopyWithImpl<_$AppStateInitialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppThemeType theme, AppLocaleType locale) initial,
    required TResult Function(AppThemeType theme, AppLocaleType locale) changed,
  }) {
    return initial(theme, locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppThemeType theme, AppLocaleType locale)? initial,
    TResult? Function(AppThemeType theme, AppLocaleType locale)? changed,
  }) {
    return initial?.call(theme, locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppThemeType theme, AppLocaleType locale)? initial,
    TResult Function(AppThemeType theme, AppLocaleType locale)? changed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(theme, locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStateInitial value) initial,
    required TResult Function(AppStateChanged value) changed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStateInitial value)? initial,
    TResult? Function(AppStateChanged value)? changed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateInitial value)? initial,
    TResult Function(AppStateChanged value)? changed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AppStateInitial implements AppState {
  const factory AppStateInitial(
      {required final AppThemeType theme,
      required final AppLocaleType locale}) = _$AppStateInitialImpl;

  @override
  AppThemeType get theme;
  @override
  AppLocaleType get locale;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppStateInitialImplCopyWith<_$AppStateInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppStateChangedImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateChangedImplCopyWith(_$AppStateChangedImpl value,
          $Res Function(_$AppStateChangedImpl) then) =
      __$$AppStateChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppThemeType theme, AppLocaleType locale});

  @override
  $AppThemeTypeCopyWith<$Res> get theme;
  @override
  $AppLocaleTypeCopyWith<$Res> get locale;
}

/// @nodoc
class __$$AppStateChangedImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateChangedImpl>
    implements _$$AppStateChangedImplCopyWith<$Res> {
  __$$AppStateChangedImplCopyWithImpl(
      _$AppStateChangedImpl _value, $Res Function(_$AppStateChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
    Object? locale = null,
  }) {
    return _then(_$AppStateChangedImpl(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as AppThemeType,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as AppLocaleType,
    ));
  }
}

/// @nodoc

class _$AppStateChangedImpl implements AppStateChanged {
  const _$AppStateChangedImpl({required this.theme, required this.locale});

  @override
  final AppThemeType theme;
  @override
  final AppLocaleType locale;

  @override
  String toString() {
    return 'AppState.changed(theme: $theme, locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateChangedImpl &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme, locale);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateChangedImplCopyWith<_$AppStateChangedImpl> get copyWith =>
      __$$AppStateChangedImplCopyWithImpl<_$AppStateChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppThemeType theme, AppLocaleType locale) initial,
    required TResult Function(AppThemeType theme, AppLocaleType locale) changed,
  }) {
    return changed(theme, locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppThemeType theme, AppLocaleType locale)? initial,
    TResult? Function(AppThemeType theme, AppLocaleType locale)? changed,
  }) {
    return changed?.call(theme, locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppThemeType theme, AppLocaleType locale)? initial,
    TResult Function(AppThemeType theme, AppLocaleType locale)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(theme, locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStateInitial value) initial,
    required TResult Function(AppStateChanged value) changed,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStateInitial value)? initial,
    TResult? Function(AppStateChanged value)? changed,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateInitial value)? initial,
    TResult Function(AppStateChanged value)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class AppStateChanged implements AppState {
  const factory AppStateChanged(
      {required final AppThemeType theme,
      required final AppLocaleType locale}) = _$AppStateChangedImpl;

  @override
  AppThemeType get theme;
  @override
  AppLocaleType get locale;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppStateChangedImplCopyWith<_$AppStateChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
