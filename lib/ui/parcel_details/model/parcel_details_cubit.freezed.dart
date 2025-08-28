// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parcel_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BuildResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ParcelInfo info) $default, {
    required TResult Function() notFound,
    required TResult Function(StorageError error) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(ParcelInfo info)? $default, {
    TResult? Function()? notFound,
    TResult? Function(StorageError error)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ParcelInfo info)? $default, {
    TResult Function()? notFound,
    TResult Function(StorageError error)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BuildResultData value) $default, {
    required TResult Function(_BuildResultNotFound value) notFound,
    required TResult Function(_BuildResultFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BuildResultData value)? $default, {
    TResult? Function(_BuildResultNotFound value)? notFound,
    TResult? Function(_BuildResultFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BuildResultData value)? $default, {
    TResult Function(_BuildResultNotFound value)? notFound,
    TResult Function(_BuildResultFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BuildResultCopyWith<$Res> {
  factory _$BuildResultCopyWith(
          _BuildResult value, $Res Function(_BuildResult) then) =
      __$BuildResultCopyWithImpl<$Res, _BuildResult>;
}

/// @nodoc
class __$BuildResultCopyWithImpl<$Res, $Val extends _BuildResult>
    implements _$BuildResultCopyWith<$Res> {
  __$BuildResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BuildResultDataImplCopyWith<$Res> {
  factory _$$BuildResultDataImplCopyWith(_$BuildResultDataImpl value,
          $Res Function(_$BuildResultDataImpl) then) =
      __$$BuildResultDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ParcelInfo info});

  $ParcelInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$BuildResultDataImplCopyWithImpl<$Res>
    extends __$BuildResultCopyWithImpl<$Res, _$BuildResultDataImpl>
    implements _$$BuildResultDataImplCopyWith<$Res> {
  __$$BuildResultDataImplCopyWithImpl(
      _$BuildResultDataImpl _value, $Res Function(_$BuildResultDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$BuildResultDataImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as ParcelInfo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ParcelInfoCopyWith<$Res> get info {
    return $ParcelInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc

class _$BuildResultDataImpl implements _BuildResultData {
  const _$BuildResultDataImpl({required this.info});

  @override
  final ParcelInfo info;

  @override
  String toString() {
    return '_BuildResult(info: $info)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuildResultDataImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BuildResultDataImplCopyWith<_$BuildResultDataImpl> get copyWith =>
      __$$BuildResultDataImplCopyWithImpl<_$BuildResultDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ParcelInfo info) $default, {
    required TResult Function() notFound,
    required TResult Function(StorageError error) failed,
  }) {
    return $default(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(ParcelInfo info)? $default, {
    TResult? Function()? notFound,
    TResult? Function(StorageError error)? failed,
  }) {
    return $default?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ParcelInfo info)? $default, {
    TResult Function()? notFound,
    TResult Function(StorageError error)? failed,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BuildResultData value) $default, {
    required TResult Function(_BuildResultNotFound value) notFound,
    required TResult Function(_BuildResultFailed value) failed,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BuildResultData value)? $default, {
    TResult? Function(_BuildResultNotFound value)? notFound,
    TResult? Function(_BuildResultFailed value)? failed,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BuildResultData value)? $default, {
    TResult Function(_BuildResultNotFound value)? notFound,
    TResult Function(_BuildResultFailed value)? failed,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _BuildResultData implements _BuildResult {
  const factory _BuildResultData({required final ParcelInfo info}) =
      _$BuildResultDataImpl;

  ParcelInfo get info;
  @JsonKey(ignore: true)
  _$$BuildResultDataImplCopyWith<_$BuildResultDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BuildResultNotFoundImplCopyWith<$Res> {
  factory _$$BuildResultNotFoundImplCopyWith(_$BuildResultNotFoundImpl value,
          $Res Function(_$BuildResultNotFoundImpl) then) =
      __$$BuildResultNotFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BuildResultNotFoundImplCopyWithImpl<$Res>
    extends __$BuildResultCopyWithImpl<$Res, _$BuildResultNotFoundImpl>
    implements _$$BuildResultNotFoundImplCopyWith<$Res> {
  __$$BuildResultNotFoundImplCopyWithImpl(_$BuildResultNotFoundImpl _value,
      $Res Function(_$BuildResultNotFoundImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BuildResultNotFoundImpl implements _BuildResultNotFound {
  const _$BuildResultNotFoundImpl();

  @override
  String toString() {
    return '_BuildResult.notFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuildResultNotFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ParcelInfo info) $default, {
    required TResult Function() notFound,
    required TResult Function(StorageError error) failed,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(ParcelInfo info)? $default, {
    TResult? Function()? notFound,
    TResult? Function(StorageError error)? failed,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ParcelInfo info)? $default, {
    TResult Function()? notFound,
    TResult Function(StorageError error)? failed,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BuildResultData value) $default, {
    required TResult Function(_BuildResultNotFound value) notFound,
    required TResult Function(_BuildResultFailed value) failed,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BuildResultData value)? $default, {
    TResult? Function(_BuildResultNotFound value)? notFound,
    TResult? Function(_BuildResultFailed value)? failed,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BuildResultData value)? $default, {
    TResult Function(_BuildResultNotFound value)? notFound,
    TResult Function(_BuildResultFailed value)? failed,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _BuildResultNotFound implements _BuildResult {
  const factory _BuildResultNotFound() = _$BuildResultNotFoundImpl;
}

/// @nodoc
abstract class _$$BuildResultFailedImplCopyWith<$Res> {
  factory _$$BuildResultFailedImplCopyWith(_$BuildResultFailedImpl value,
          $Res Function(_$BuildResultFailedImpl) then) =
      __$$BuildResultFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StorageError error});

  $StorageErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$BuildResultFailedImplCopyWithImpl<$Res>
    extends __$BuildResultCopyWithImpl<$Res, _$BuildResultFailedImpl>
    implements _$$BuildResultFailedImplCopyWith<$Res> {
  __$$BuildResultFailedImplCopyWithImpl(_$BuildResultFailedImpl _value,
      $Res Function(_$BuildResultFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$BuildResultFailedImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as StorageError,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StorageErrorCopyWith<$Res> get error {
    return $StorageErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$BuildResultFailedImpl implements _BuildResultFailed {
  const _$BuildResultFailedImpl({required this.error});

  @override
  final StorageError error;

  @override
  String toString() {
    return '_BuildResult.failed(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuildResultFailedImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BuildResultFailedImplCopyWith<_$BuildResultFailedImpl> get copyWith =>
      __$$BuildResultFailedImplCopyWithImpl<_$BuildResultFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ParcelInfo info) $default, {
    required TResult Function() notFound,
    required TResult Function(StorageError error) failed,
  }) {
    return failed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(ParcelInfo info)? $default, {
    TResult? Function()? notFound,
    TResult? Function(StorageError error)? failed,
  }) {
    return failed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ParcelInfo info)? $default, {
    TResult Function()? notFound,
    TResult Function(StorageError error)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BuildResultData value) $default, {
    required TResult Function(_BuildResultNotFound value) notFound,
    required TResult Function(_BuildResultFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BuildResultData value)? $default, {
    TResult? Function(_BuildResultNotFound value)? notFound,
    TResult? Function(_BuildResultFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BuildResultData value)? $default, {
    TResult Function(_BuildResultNotFound value)? notFound,
    TResult Function(_BuildResultFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _BuildResultFailed implements _BuildResult {
  const factory _BuildResultFailed({required final StorageError error}) =
      _$BuildResultFailedImpl;

  StorageError get error;
  @JsonKey(ignore: true)
  _$$BuildResultFailedImplCopyWith<_$BuildResultFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
