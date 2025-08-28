// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parcel_error_banner_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParcelErrorBannerState {
  Set<ParcelErrorBanner> get banners => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<ParcelErrorBanner> banners) show,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Set<ParcelErrorBanner> banners)? show,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<ParcelErrorBanner> banners)? show,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelErrorBannerStateShow value) show,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParcelErrorBannerStateShow value)? show,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelErrorBannerStateShow value)? show,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParcelErrorBannerStateCopyWith<ParcelErrorBannerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelErrorBannerStateCopyWith<$Res> {
  factory $ParcelErrorBannerStateCopyWith(ParcelErrorBannerState value,
          $Res Function(ParcelErrorBannerState) then) =
      _$ParcelErrorBannerStateCopyWithImpl<$Res, ParcelErrorBannerState>;
  @useResult
  $Res call({Set<ParcelErrorBanner> banners});
}

/// @nodoc
class _$ParcelErrorBannerStateCopyWithImpl<$Res,
        $Val extends ParcelErrorBannerState>
    implements $ParcelErrorBannerStateCopyWith<$Res> {
  _$ParcelErrorBannerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banners = null,
  }) {
    return _then(_value.copyWith(
      banners: null == banners
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as Set<ParcelErrorBanner>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParcelErrorBannerStateShowImplCopyWith<$Res>
    implements $ParcelErrorBannerStateCopyWith<$Res> {
  factory _$$ParcelErrorBannerStateShowImplCopyWith(
          _$ParcelErrorBannerStateShowImpl value,
          $Res Function(_$ParcelErrorBannerStateShowImpl) then) =
      __$$ParcelErrorBannerStateShowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Set<ParcelErrorBanner> banners});
}

/// @nodoc
class __$$ParcelErrorBannerStateShowImplCopyWithImpl<$Res>
    extends _$ParcelErrorBannerStateCopyWithImpl<$Res,
        _$ParcelErrorBannerStateShowImpl>
    implements _$$ParcelErrorBannerStateShowImplCopyWith<$Res> {
  __$$ParcelErrorBannerStateShowImplCopyWithImpl(
      _$ParcelErrorBannerStateShowImpl _value,
      $Res Function(_$ParcelErrorBannerStateShowImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banners = null,
  }) {
    return _then(_$ParcelErrorBannerStateShowImpl(
      banners: null == banners
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as Set<ParcelErrorBanner>,
    ));
  }
}

/// @nodoc

class _$ParcelErrorBannerStateShowImpl
    with DiagnosticableTreeMixin
    implements ParcelErrorBannerStateShow {
  const _$ParcelErrorBannerStateShowImpl(
      {required final Set<ParcelErrorBanner> banners})
      : _banners = banners;

  final Set<ParcelErrorBanner> _banners;
  @override
  Set<ParcelErrorBanner> get banners {
    if (_banners is EqualUnmodifiableSetView) return _banners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_banners);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParcelErrorBannerState.show(banners: $banners)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParcelErrorBannerState.show'))
      ..add(DiagnosticsProperty('banners', banners));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelErrorBannerStateShowImpl &&
            const DeepCollectionEquality().equals(other._banners, _banners));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_banners));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParcelErrorBannerStateShowImplCopyWith<_$ParcelErrorBannerStateShowImpl>
      get copyWith => __$$ParcelErrorBannerStateShowImplCopyWithImpl<
          _$ParcelErrorBannerStateShowImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<ParcelErrorBanner> banners) show,
  }) {
    return show(banners);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Set<ParcelErrorBanner> banners)? show,
  }) {
    return show?.call(banners);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<ParcelErrorBanner> banners)? show,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show(banners);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelErrorBannerStateShow value) show,
  }) {
    return show(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParcelErrorBannerStateShow value)? show,
  }) {
    return show?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelErrorBannerStateShow value)? show,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show(this);
    }
    return orElse();
  }
}

abstract class ParcelErrorBannerStateShow implements ParcelErrorBannerState {
  const factory ParcelErrorBannerStateShow(
          {required final Set<ParcelErrorBanner> banners}) =
      _$ParcelErrorBannerStateShowImpl;

  @override
  Set<ParcelErrorBanner> get banners;
  @override
  @JsonKey(ignore: true)
  _$$ParcelErrorBannerStateShowImplCopyWith<_$ParcelErrorBannerStateShowImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ParcelErrorBanner {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hardError,
    required TResult Function() missingAuthData,
    required TResult Function() missingAccount,
    required TResult Function() authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? hardError,
    TResult? Function()? missingAuthData,
    TResult? Function()? missingAccount,
    TResult? Function()? authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hardError,
    TResult Function()? missingAuthData,
    TResult Function()? missingAccount,
    TResult Function()? authError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelErrorBannerHardError value) hardError,
    required TResult Function(ParcelErrorBannerMissingAuthData value)
        missingAuthData,
    required TResult Function(ParcelErrorBannerMissingAccount value)
        missingAccount,
    required TResult Function(ParcelErrorBannerAuth value) authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParcelErrorBannerHardError value)? hardError,
    TResult? Function(ParcelErrorBannerMissingAuthData value)? missingAuthData,
    TResult? Function(ParcelErrorBannerMissingAccount value)? missingAccount,
    TResult? Function(ParcelErrorBannerAuth value)? authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelErrorBannerHardError value)? hardError,
    TResult Function(ParcelErrorBannerMissingAuthData value)? missingAuthData,
    TResult Function(ParcelErrorBannerMissingAccount value)? missingAccount,
    TResult Function(ParcelErrorBannerAuth value)? authError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelErrorBannerCopyWith<$Res> {
  factory $ParcelErrorBannerCopyWith(
          ParcelErrorBanner value, $Res Function(ParcelErrorBanner) then) =
      _$ParcelErrorBannerCopyWithImpl<$Res, ParcelErrorBanner>;
}

/// @nodoc
class _$ParcelErrorBannerCopyWithImpl<$Res, $Val extends ParcelErrorBanner>
    implements $ParcelErrorBannerCopyWith<$Res> {
  _$ParcelErrorBannerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ParcelErrorBannerHardErrorImplCopyWith<$Res> {
  factory _$$ParcelErrorBannerHardErrorImplCopyWith(
          _$ParcelErrorBannerHardErrorImpl value,
          $Res Function(_$ParcelErrorBannerHardErrorImpl) then) =
      __$$ParcelErrorBannerHardErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ParcelErrorBannerHardErrorImplCopyWithImpl<$Res>
    extends _$ParcelErrorBannerCopyWithImpl<$Res,
        _$ParcelErrorBannerHardErrorImpl>
    implements _$$ParcelErrorBannerHardErrorImplCopyWith<$Res> {
  __$$ParcelErrorBannerHardErrorImplCopyWithImpl(
      _$ParcelErrorBannerHardErrorImpl _value,
      $Res Function(_$ParcelErrorBannerHardErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ParcelErrorBannerHardErrorImpl
    with DiagnosticableTreeMixin
    implements ParcelErrorBannerHardError {
  const _$ParcelErrorBannerHardErrorImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParcelErrorBanner.hardError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ParcelErrorBanner.hardError'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelErrorBannerHardErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hardError,
    required TResult Function() missingAuthData,
    required TResult Function() missingAccount,
    required TResult Function() authError,
  }) {
    return hardError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? hardError,
    TResult? Function()? missingAuthData,
    TResult? Function()? missingAccount,
    TResult? Function()? authError,
  }) {
    return hardError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hardError,
    TResult Function()? missingAuthData,
    TResult Function()? missingAccount,
    TResult Function()? authError,
    required TResult orElse(),
  }) {
    if (hardError != null) {
      return hardError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelErrorBannerHardError value) hardError,
    required TResult Function(ParcelErrorBannerMissingAuthData value)
        missingAuthData,
    required TResult Function(ParcelErrorBannerMissingAccount value)
        missingAccount,
    required TResult Function(ParcelErrorBannerAuth value) authError,
  }) {
    return hardError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParcelErrorBannerHardError value)? hardError,
    TResult? Function(ParcelErrorBannerMissingAuthData value)? missingAuthData,
    TResult? Function(ParcelErrorBannerMissingAccount value)? missingAccount,
    TResult? Function(ParcelErrorBannerAuth value)? authError,
  }) {
    return hardError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelErrorBannerHardError value)? hardError,
    TResult Function(ParcelErrorBannerMissingAuthData value)? missingAuthData,
    TResult Function(ParcelErrorBannerMissingAccount value)? missingAccount,
    TResult Function(ParcelErrorBannerAuth value)? authError,
    required TResult orElse(),
  }) {
    if (hardError != null) {
      return hardError(this);
    }
    return orElse();
  }
}

abstract class ParcelErrorBannerHardError implements ParcelErrorBanner {
  const factory ParcelErrorBannerHardError() = _$ParcelErrorBannerHardErrorImpl;
}

/// @nodoc
abstract class _$$ParcelErrorBannerMissingAuthDataImplCopyWith<$Res> {
  factory _$$ParcelErrorBannerMissingAuthDataImplCopyWith(
          _$ParcelErrorBannerMissingAuthDataImpl value,
          $Res Function(_$ParcelErrorBannerMissingAuthDataImpl) then) =
      __$$ParcelErrorBannerMissingAuthDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ParcelErrorBannerMissingAuthDataImplCopyWithImpl<$Res>
    extends _$ParcelErrorBannerCopyWithImpl<$Res,
        _$ParcelErrorBannerMissingAuthDataImpl>
    implements _$$ParcelErrorBannerMissingAuthDataImplCopyWith<$Res> {
  __$$ParcelErrorBannerMissingAuthDataImplCopyWithImpl(
      _$ParcelErrorBannerMissingAuthDataImpl _value,
      $Res Function(_$ParcelErrorBannerMissingAuthDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ParcelErrorBannerMissingAuthDataImpl
    with DiagnosticableTreeMixin
    implements ParcelErrorBannerMissingAuthData {
  const _$ParcelErrorBannerMissingAuthDataImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParcelErrorBanner.missingAuthData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ParcelErrorBanner.missingAuthData'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelErrorBannerMissingAuthDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hardError,
    required TResult Function() missingAuthData,
    required TResult Function() missingAccount,
    required TResult Function() authError,
  }) {
    return missingAuthData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? hardError,
    TResult? Function()? missingAuthData,
    TResult? Function()? missingAccount,
    TResult? Function()? authError,
  }) {
    return missingAuthData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hardError,
    TResult Function()? missingAuthData,
    TResult Function()? missingAccount,
    TResult Function()? authError,
    required TResult orElse(),
  }) {
    if (missingAuthData != null) {
      return missingAuthData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelErrorBannerHardError value) hardError,
    required TResult Function(ParcelErrorBannerMissingAuthData value)
        missingAuthData,
    required TResult Function(ParcelErrorBannerMissingAccount value)
        missingAccount,
    required TResult Function(ParcelErrorBannerAuth value) authError,
  }) {
    return missingAuthData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParcelErrorBannerHardError value)? hardError,
    TResult? Function(ParcelErrorBannerMissingAuthData value)? missingAuthData,
    TResult? Function(ParcelErrorBannerMissingAccount value)? missingAccount,
    TResult? Function(ParcelErrorBannerAuth value)? authError,
  }) {
    return missingAuthData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelErrorBannerHardError value)? hardError,
    TResult Function(ParcelErrorBannerMissingAuthData value)? missingAuthData,
    TResult Function(ParcelErrorBannerMissingAccount value)? missingAccount,
    TResult Function(ParcelErrorBannerAuth value)? authError,
    required TResult orElse(),
  }) {
    if (missingAuthData != null) {
      return missingAuthData(this);
    }
    return orElse();
  }
}

abstract class ParcelErrorBannerMissingAuthData implements ParcelErrorBanner {
  const factory ParcelErrorBannerMissingAuthData() =
      _$ParcelErrorBannerMissingAuthDataImpl;
}

/// @nodoc
abstract class _$$ParcelErrorBannerMissingAccountImplCopyWith<$Res> {
  factory _$$ParcelErrorBannerMissingAccountImplCopyWith(
          _$ParcelErrorBannerMissingAccountImpl value,
          $Res Function(_$ParcelErrorBannerMissingAccountImpl) then) =
      __$$ParcelErrorBannerMissingAccountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ParcelErrorBannerMissingAccountImplCopyWithImpl<$Res>
    extends _$ParcelErrorBannerCopyWithImpl<$Res,
        _$ParcelErrorBannerMissingAccountImpl>
    implements _$$ParcelErrorBannerMissingAccountImplCopyWith<$Res> {
  __$$ParcelErrorBannerMissingAccountImplCopyWithImpl(
      _$ParcelErrorBannerMissingAccountImpl _value,
      $Res Function(_$ParcelErrorBannerMissingAccountImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ParcelErrorBannerMissingAccountImpl
    with DiagnosticableTreeMixin
    implements ParcelErrorBannerMissingAccount {
  const _$ParcelErrorBannerMissingAccountImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParcelErrorBanner.missingAccount()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ParcelErrorBanner.missingAccount'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelErrorBannerMissingAccountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hardError,
    required TResult Function() missingAuthData,
    required TResult Function() missingAccount,
    required TResult Function() authError,
  }) {
    return missingAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? hardError,
    TResult? Function()? missingAuthData,
    TResult? Function()? missingAccount,
    TResult? Function()? authError,
  }) {
    return missingAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hardError,
    TResult Function()? missingAuthData,
    TResult Function()? missingAccount,
    TResult Function()? authError,
    required TResult orElse(),
  }) {
    if (missingAccount != null) {
      return missingAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelErrorBannerHardError value) hardError,
    required TResult Function(ParcelErrorBannerMissingAuthData value)
        missingAuthData,
    required TResult Function(ParcelErrorBannerMissingAccount value)
        missingAccount,
    required TResult Function(ParcelErrorBannerAuth value) authError,
  }) {
    return missingAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParcelErrorBannerHardError value)? hardError,
    TResult? Function(ParcelErrorBannerMissingAuthData value)? missingAuthData,
    TResult? Function(ParcelErrorBannerMissingAccount value)? missingAccount,
    TResult? Function(ParcelErrorBannerAuth value)? authError,
  }) {
    return missingAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelErrorBannerHardError value)? hardError,
    TResult Function(ParcelErrorBannerMissingAuthData value)? missingAuthData,
    TResult Function(ParcelErrorBannerMissingAccount value)? missingAccount,
    TResult Function(ParcelErrorBannerAuth value)? authError,
    required TResult orElse(),
  }) {
    if (missingAccount != null) {
      return missingAccount(this);
    }
    return orElse();
  }
}

abstract class ParcelErrorBannerMissingAccount implements ParcelErrorBanner {
  const factory ParcelErrorBannerMissingAccount() =
      _$ParcelErrorBannerMissingAccountImpl;
}

/// @nodoc
abstract class _$$ParcelErrorBannerAuthImplCopyWith<$Res> {
  factory _$$ParcelErrorBannerAuthImplCopyWith(
          _$ParcelErrorBannerAuthImpl value,
          $Res Function(_$ParcelErrorBannerAuthImpl) then) =
      __$$ParcelErrorBannerAuthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ParcelErrorBannerAuthImplCopyWithImpl<$Res>
    extends _$ParcelErrorBannerCopyWithImpl<$Res, _$ParcelErrorBannerAuthImpl>
    implements _$$ParcelErrorBannerAuthImplCopyWith<$Res> {
  __$$ParcelErrorBannerAuthImplCopyWithImpl(_$ParcelErrorBannerAuthImpl _value,
      $Res Function(_$ParcelErrorBannerAuthImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ParcelErrorBannerAuthImpl
    with DiagnosticableTreeMixin
    implements ParcelErrorBannerAuth {
  const _$ParcelErrorBannerAuthImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParcelErrorBanner.authError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ParcelErrorBanner.authError'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelErrorBannerAuthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hardError,
    required TResult Function() missingAuthData,
    required TResult Function() missingAccount,
    required TResult Function() authError,
  }) {
    return authError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? hardError,
    TResult? Function()? missingAuthData,
    TResult? Function()? missingAccount,
    TResult? Function()? authError,
  }) {
    return authError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hardError,
    TResult Function()? missingAuthData,
    TResult Function()? missingAccount,
    TResult Function()? authError,
    required TResult orElse(),
  }) {
    if (authError != null) {
      return authError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelErrorBannerHardError value) hardError,
    required TResult Function(ParcelErrorBannerMissingAuthData value)
        missingAuthData,
    required TResult Function(ParcelErrorBannerMissingAccount value)
        missingAccount,
    required TResult Function(ParcelErrorBannerAuth value) authError,
  }) {
    return authError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParcelErrorBannerHardError value)? hardError,
    TResult? Function(ParcelErrorBannerMissingAuthData value)? missingAuthData,
    TResult? Function(ParcelErrorBannerMissingAccount value)? missingAccount,
    TResult? Function(ParcelErrorBannerAuth value)? authError,
  }) {
    return authError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelErrorBannerHardError value)? hardError,
    TResult Function(ParcelErrorBannerMissingAuthData value)? missingAuthData,
    TResult Function(ParcelErrorBannerMissingAccount value)? missingAccount,
    TResult Function(ParcelErrorBannerAuth value)? authError,
    required TResult orElse(),
  }) {
    if (authError != null) {
      return authError(this);
    }
    return orElse();
  }
}

abstract class ParcelErrorBannerAuth implements ParcelErrorBanner {
  const factory ParcelErrorBannerAuth() = _$ParcelErrorBannerAuthImpl;
}
