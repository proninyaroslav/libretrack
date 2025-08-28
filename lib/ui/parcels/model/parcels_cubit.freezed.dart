// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parcels_cubit.dart';

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
    TResult Function(List<ParcelInfo> infoList) $default, {
    required TResult Function(StorageError error) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<ParcelInfo> infoList)? $default, {
    TResult? Function(StorageError error)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ParcelInfo> infoList)? $default, {
    TResult Function(StorageError error)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BuildResultData value) $default, {
    required TResult Function(_BuildResultFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BuildResultData value)? $default, {
    TResult? Function(_BuildResultFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BuildResultData value)? $default, {
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
  $Res call({List<ParcelInfo> infoList});
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
    Object? infoList = null,
  }) {
    return _then(_$BuildResultDataImpl(
      infoList: null == infoList
          ? _value._infoList
          : infoList // ignore: cast_nullable_to_non_nullable
              as List<ParcelInfo>,
    ));
  }
}

/// @nodoc

class _$BuildResultDataImpl implements _BuildResultData {
  const _$BuildResultDataImpl({required final List<ParcelInfo> infoList})
      : _infoList = infoList;

  final List<ParcelInfo> _infoList;
  @override
  List<ParcelInfo> get infoList {
    if (_infoList is EqualUnmodifiableListView) return _infoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_infoList);
  }

  @override
  String toString() {
    return '_BuildResult(infoList: $infoList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuildResultDataImpl &&
            const DeepCollectionEquality().equals(other._infoList, _infoList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_infoList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BuildResultDataImplCopyWith<_$BuildResultDataImpl> get copyWith =>
      __$$BuildResultDataImplCopyWithImpl<_$BuildResultDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ParcelInfo> infoList) $default, {
    required TResult Function(StorageError error) failed,
  }) {
    return $default(infoList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<ParcelInfo> infoList)? $default, {
    TResult? Function(StorageError error)? failed,
  }) {
    return $default?.call(infoList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ParcelInfo> infoList)? $default, {
    TResult Function(StorageError error)? failed,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(infoList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BuildResultData value) $default, {
    required TResult Function(_BuildResultFailed value) failed,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BuildResultData value)? $default, {
    TResult? Function(_BuildResultFailed value)? failed,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BuildResultData value)? $default, {
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
  const factory _BuildResultData({required final List<ParcelInfo> infoList}) =
      _$BuildResultDataImpl;

  List<ParcelInfo> get infoList;
  @JsonKey(ignore: true)
  _$$BuildResultDataImplCopyWith<_$BuildResultDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    TResult Function(List<ParcelInfo> infoList) $default, {
    required TResult Function(StorageError error) failed,
  }) {
    return failed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<ParcelInfo> infoList)? $default, {
    TResult? Function(StorageError error)? failed,
  }) {
    return failed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ParcelInfo> infoList)? $default, {
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
    required TResult Function(_BuildResultFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BuildResultData value)? $default, {
    TResult? Function(_BuildResultFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BuildResultData value)? $default, {
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
