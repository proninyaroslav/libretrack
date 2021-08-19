// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'about_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AboutStateTearOff {
  const _$AboutStateTearOff();

  AboutStateInitial initial() {
    return const AboutStateInitial();
  }

  AboutStateLoading loading() {
    return const AboutStateLoading();
  }

  AboutStateLoaded loaded(
      {required String appName, required String appVersion}) {
    return AboutStateLoaded(
      appName: appName,
      appVersion: appVersion,
    );
  }
}

/// @nodoc
const $AboutState = _$AboutStateTearOff();

/// @nodoc
mixin _$AboutState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String appName, String appVersion) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String appName, String appVersion)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String appName, String appVersion)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AboutStateInitial value) initial,
    required TResult Function(AboutStateLoading value) loading,
    required TResult Function(AboutStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AboutStateInitial value)? initial,
    TResult Function(AboutStateLoading value)? loading,
    TResult Function(AboutStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AboutStateInitial value)? initial,
    TResult Function(AboutStateLoading value)? loading,
    TResult Function(AboutStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutStateCopyWith<$Res> {
  factory $AboutStateCopyWith(
          AboutState value, $Res Function(AboutState) then) =
      _$AboutStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AboutStateCopyWithImpl<$Res> implements $AboutStateCopyWith<$Res> {
  _$AboutStateCopyWithImpl(this._value, this._then);

  final AboutState _value;
  // ignore: unused_field
  final $Res Function(AboutState) _then;
}

/// @nodoc
abstract class $AboutStateInitialCopyWith<$Res> {
  factory $AboutStateInitialCopyWith(
          AboutStateInitial value, $Res Function(AboutStateInitial) then) =
      _$AboutStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$AboutStateInitialCopyWithImpl<$Res>
    extends _$AboutStateCopyWithImpl<$Res>
    implements $AboutStateInitialCopyWith<$Res> {
  _$AboutStateInitialCopyWithImpl(
      AboutStateInitial _value, $Res Function(AboutStateInitial) _then)
      : super(_value, (v) => _then(v as AboutStateInitial));

  @override
  AboutStateInitial get _value => super._value as AboutStateInitial;
}

/// @nodoc

class _$AboutStateInitial implements AboutStateInitial {
  const _$AboutStateInitial();

  @override
  String toString() {
    return 'AboutState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AboutStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String appName, String appVersion) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String appName, String appVersion)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String appName, String appVersion)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AboutStateInitial value) initial,
    required TResult Function(AboutStateLoading value) loading,
    required TResult Function(AboutStateLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AboutStateInitial value)? initial,
    TResult Function(AboutStateLoading value)? loading,
    TResult Function(AboutStateLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AboutStateInitial value)? initial,
    TResult Function(AboutStateLoading value)? loading,
    TResult Function(AboutStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AboutStateInitial implements AboutState {
  const factory AboutStateInitial() = _$AboutStateInitial;
}

/// @nodoc
abstract class $AboutStateLoadingCopyWith<$Res> {
  factory $AboutStateLoadingCopyWith(
          AboutStateLoading value, $Res Function(AboutStateLoading) then) =
      _$AboutStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$AboutStateLoadingCopyWithImpl<$Res>
    extends _$AboutStateCopyWithImpl<$Res>
    implements $AboutStateLoadingCopyWith<$Res> {
  _$AboutStateLoadingCopyWithImpl(
      AboutStateLoading _value, $Res Function(AboutStateLoading) _then)
      : super(_value, (v) => _then(v as AboutStateLoading));

  @override
  AboutStateLoading get _value => super._value as AboutStateLoading;
}

/// @nodoc

class _$AboutStateLoading implements AboutStateLoading {
  const _$AboutStateLoading();

  @override
  String toString() {
    return 'AboutState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AboutStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String appName, String appVersion) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String appName, String appVersion)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String appName, String appVersion)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AboutStateInitial value) initial,
    required TResult Function(AboutStateLoading value) loading,
    required TResult Function(AboutStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AboutStateInitial value)? initial,
    TResult Function(AboutStateLoading value)? loading,
    TResult Function(AboutStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AboutStateInitial value)? initial,
    TResult Function(AboutStateLoading value)? loading,
    TResult Function(AboutStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AboutStateLoading implements AboutState {
  const factory AboutStateLoading() = _$AboutStateLoading;
}

/// @nodoc
abstract class $AboutStateLoadedCopyWith<$Res> {
  factory $AboutStateLoadedCopyWith(
          AboutStateLoaded value, $Res Function(AboutStateLoaded) then) =
      _$AboutStateLoadedCopyWithImpl<$Res>;
  $Res call({String appName, String appVersion});
}

/// @nodoc
class _$AboutStateLoadedCopyWithImpl<$Res>
    extends _$AboutStateCopyWithImpl<$Res>
    implements $AboutStateLoadedCopyWith<$Res> {
  _$AboutStateLoadedCopyWithImpl(
      AboutStateLoaded _value, $Res Function(AboutStateLoaded) _then)
      : super(_value, (v) => _then(v as AboutStateLoaded));

  @override
  AboutStateLoaded get _value => super._value as AboutStateLoaded;

  @override
  $Res call({
    Object? appName = freezed,
    Object? appVersion = freezed,
  }) {
    return _then(AboutStateLoaded(
      appName: appName == freezed
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      appVersion: appVersion == freezed
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AboutStateLoaded implements AboutStateLoaded {
  const _$AboutStateLoaded({required this.appName, required this.appVersion});

  @override
  final String appName;
  @override
  final String appVersion;

  @override
  String toString() {
    return 'AboutState.loaded(appName: $appName, appVersion: $appVersion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AboutStateLoaded &&
            (identical(other.appName, appName) ||
                const DeepCollectionEquality()
                    .equals(other.appName, appName)) &&
            (identical(other.appVersion, appVersion) ||
                const DeepCollectionEquality()
                    .equals(other.appVersion, appVersion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(appName) ^
      const DeepCollectionEquality().hash(appVersion);

  @JsonKey(ignore: true)
  @override
  $AboutStateLoadedCopyWith<AboutStateLoaded> get copyWith =>
      _$AboutStateLoadedCopyWithImpl<AboutStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String appName, String appVersion) loaded,
  }) {
    return loaded(appName, appVersion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String appName, String appVersion)? loaded,
  }) {
    return loaded?.call(appName, appVersion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String appName, String appVersion)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(appName, appVersion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AboutStateInitial value) initial,
    required TResult Function(AboutStateLoading value) loading,
    required TResult Function(AboutStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AboutStateInitial value)? initial,
    TResult Function(AboutStateLoading value)? loading,
    TResult Function(AboutStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AboutStateInitial value)? initial,
    TResult Function(AboutStateLoading value)? loading,
    TResult Function(AboutStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AboutStateLoaded implements AboutState {
  const factory AboutStateLoaded(
      {required String appName,
      required String appVersion}) = _$AboutStateLoaded;

  String get appName => throw _privateConstructorUsedError;
  String get appVersion => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AboutStateLoadedCopyWith<AboutStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
