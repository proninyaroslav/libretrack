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
mixin _$ParcelsState {
  ParcelsFilterBatch get filters => throw _privateConstructorUsedError;
  ParcelsFilter? get search => throw _privateConstructorUsedError;
  ParcelsSort? get sort => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParcelsFilterBatch filters, ParcelsFilter? search,
            ParcelsSort? sort)
        initial,
    required TResult Function(
            List<ParcelInfo> active,
            List<ParcelInfo> archive,
            ParcelsFilterBatch filters,
            ParcelsFilter? search,
            ParcelsSort? sort)
        loaded,
    required TResult Function(StorageError? error, ParcelsFilterBatch filters,
            ParcelsFilter? search, ParcelsSort? sort)
        loadingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ParcelsFilterBatch filters, ParcelsFilter? search,
            ParcelsSort? sort)?
        initial,
    TResult? Function(
            List<ParcelInfo> active,
            List<ParcelInfo> archive,
            ParcelsFilterBatch filters,
            ParcelsFilter? search,
            ParcelsSort? sort)?
        loaded,
    TResult? Function(StorageError? error, ParcelsFilterBatch filters,
            ParcelsFilter? search, ParcelsSort? sort)?
        loadingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParcelsFilterBatch filters, ParcelsFilter? search,
            ParcelsSort? sort)?
        initial,
    TResult Function(
            List<ParcelInfo> active,
            List<ParcelInfo> archive,
            ParcelsFilterBatch filters,
            ParcelsFilter? search,
            ParcelsSort? sort)?
        loaded,
    TResult Function(StorageError? error, ParcelsFilterBatch filters,
            ParcelsFilter? search, ParcelsSort? sort)?
        loadingFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsStateInitial value) initial,
    required TResult Function(ParcelsStateLoaded value) loaded,
    required TResult Function(ParcelsStateLoadingFailed value) loadingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParcelsStateInitial value)? initial,
    TResult? Function(ParcelsStateLoaded value)? loaded,
    TResult? Function(ParcelsStateLoadingFailed value)? loadingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsStateInitial value)? initial,
    TResult Function(ParcelsStateLoaded value)? loaded,
    TResult Function(ParcelsStateLoadingFailed value)? loadingFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ParcelsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParcelsStateCopyWith<ParcelsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelsStateCopyWith<$Res> {
  factory $ParcelsStateCopyWith(
          ParcelsState value, $Res Function(ParcelsState) then) =
      _$ParcelsStateCopyWithImpl<$Res, ParcelsState>;
  @useResult
  $Res call(
      {ParcelsFilterBatch filters, ParcelsFilter? search, ParcelsSort? sort});

  $ParcelsFilterCopyWith<$Res>? get search;
  $ParcelsSortCopyWith<$Res>? get sort;
}

/// @nodoc
class _$ParcelsStateCopyWithImpl<$Res, $Val extends ParcelsState>
    implements $ParcelsStateCopyWith<$Res> {
  _$ParcelsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParcelsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
    Object? search = freezed,
    Object? sort = freezed,
  }) {
    return _then(_value.copyWith(
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as ParcelsFilterBatch,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as ParcelsFilter?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as ParcelsSort?,
    ) as $Val);
  }

  /// Create a copy of ParcelsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParcelsFilterCopyWith<$Res>? get search {
    if (_value.search == null) {
      return null;
    }

    return $ParcelsFilterCopyWith<$Res>(_value.search!, (value) {
      return _then(_value.copyWith(search: value) as $Val);
    });
  }

  /// Create a copy of ParcelsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParcelsSortCopyWith<$Res>? get sort {
    if (_value.sort == null) {
      return null;
    }

    return $ParcelsSortCopyWith<$Res>(_value.sort!, (value) {
      return _then(_value.copyWith(sort: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ParcelsStateInitialImplCopyWith<$Res>
    implements $ParcelsStateCopyWith<$Res> {
  factory _$$ParcelsStateInitialImplCopyWith(_$ParcelsStateInitialImpl value,
          $Res Function(_$ParcelsStateInitialImpl) then) =
      __$$ParcelsStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ParcelsFilterBatch filters, ParcelsFilter? search, ParcelsSort? sort});

  @override
  $ParcelsFilterCopyWith<$Res>? get search;
  @override
  $ParcelsSortCopyWith<$Res>? get sort;
}

/// @nodoc
class __$$ParcelsStateInitialImplCopyWithImpl<$Res>
    extends _$ParcelsStateCopyWithImpl<$Res, _$ParcelsStateInitialImpl>
    implements _$$ParcelsStateInitialImplCopyWith<$Res> {
  __$$ParcelsStateInitialImplCopyWithImpl(_$ParcelsStateInitialImpl _value,
      $Res Function(_$ParcelsStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParcelsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
    Object? search = freezed,
    Object? sort = freezed,
  }) {
    return _then(_$ParcelsStateInitialImpl(
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as ParcelsFilterBatch,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as ParcelsFilter?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as ParcelsSort?,
    ));
  }
}

/// @nodoc

class _$ParcelsStateInitialImpl implements ParcelsStateInitial {
  const _$ParcelsStateInitialImpl(
      {required this.filters, this.search, this.sort});

  @override
  final ParcelsFilterBatch filters;
  @override
  final ParcelsFilter? search;
  @override
  final ParcelsSort? sort;

  @override
  String toString() {
    return 'ParcelsState.initial(filters: $filters, search: $search, sort: $sort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelsStateInitialImpl &&
            const DeepCollectionEquality().equals(other.filters, filters) &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(filters), search, sort);

  /// Create a copy of ParcelsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParcelsStateInitialImplCopyWith<_$ParcelsStateInitialImpl> get copyWith =>
      __$$ParcelsStateInitialImplCopyWithImpl<_$ParcelsStateInitialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParcelsFilterBatch filters, ParcelsFilter? search,
            ParcelsSort? sort)
        initial,
    required TResult Function(
            List<ParcelInfo> active,
            List<ParcelInfo> archive,
            ParcelsFilterBatch filters,
            ParcelsFilter? search,
            ParcelsSort? sort)
        loaded,
    required TResult Function(StorageError? error, ParcelsFilterBatch filters,
            ParcelsFilter? search, ParcelsSort? sort)
        loadingFailed,
  }) {
    return initial(filters, search, sort);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ParcelsFilterBatch filters, ParcelsFilter? search,
            ParcelsSort? sort)?
        initial,
    TResult? Function(
            List<ParcelInfo> active,
            List<ParcelInfo> archive,
            ParcelsFilterBatch filters,
            ParcelsFilter? search,
            ParcelsSort? sort)?
        loaded,
    TResult? Function(StorageError? error, ParcelsFilterBatch filters,
            ParcelsFilter? search, ParcelsSort? sort)?
        loadingFailed,
  }) {
    return initial?.call(filters, search, sort);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParcelsFilterBatch filters, ParcelsFilter? search,
            ParcelsSort? sort)?
        initial,
    TResult Function(
            List<ParcelInfo> active,
            List<ParcelInfo> archive,
            ParcelsFilterBatch filters,
            ParcelsFilter? search,
            ParcelsSort? sort)?
        loaded,
    TResult Function(StorageError? error, ParcelsFilterBatch filters,
            ParcelsFilter? search, ParcelsSort? sort)?
        loadingFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(filters, search, sort);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsStateInitial value) initial,
    required TResult Function(ParcelsStateLoaded value) loaded,
    required TResult Function(ParcelsStateLoadingFailed value) loadingFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParcelsStateInitial value)? initial,
    TResult? Function(ParcelsStateLoaded value)? loaded,
    TResult? Function(ParcelsStateLoadingFailed value)? loadingFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsStateInitial value)? initial,
    TResult Function(ParcelsStateLoaded value)? loaded,
    TResult Function(ParcelsStateLoadingFailed value)? loadingFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ParcelsStateInitial implements ParcelsState {
  const factory ParcelsStateInitial(
      {required final ParcelsFilterBatch filters,
      final ParcelsFilter? search,
      final ParcelsSort? sort}) = _$ParcelsStateInitialImpl;

  @override
  ParcelsFilterBatch get filters;
  @override
  ParcelsFilter? get search;
  @override
  ParcelsSort? get sort;

  /// Create a copy of ParcelsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParcelsStateInitialImplCopyWith<_$ParcelsStateInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParcelsStateLoadedImplCopyWith<$Res>
    implements $ParcelsStateCopyWith<$Res> {
  factory _$$ParcelsStateLoadedImplCopyWith(_$ParcelsStateLoadedImpl value,
          $Res Function(_$ParcelsStateLoadedImpl) then) =
      __$$ParcelsStateLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ParcelInfo> active,
      List<ParcelInfo> archive,
      ParcelsFilterBatch filters,
      ParcelsFilter? search,
      ParcelsSort? sort});

  @override
  $ParcelsFilterCopyWith<$Res>? get search;
  @override
  $ParcelsSortCopyWith<$Res>? get sort;
}

/// @nodoc
class __$$ParcelsStateLoadedImplCopyWithImpl<$Res>
    extends _$ParcelsStateCopyWithImpl<$Res, _$ParcelsStateLoadedImpl>
    implements _$$ParcelsStateLoadedImplCopyWith<$Res> {
  __$$ParcelsStateLoadedImplCopyWithImpl(_$ParcelsStateLoadedImpl _value,
      $Res Function(_$ParcelsStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParcelsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = null,
    Object? archive = null,
    Object? filters = null,
    Object? search = freezed,
    Object? sort = freezed,
  }) {
    return _then(_$ParcelsStateLoadedImpl(
      active: null == active
          ? _value._active
          : active // ignore: cast_nullable_to_non_nullable
              as List<ParcelInfo>,
      archive: null == archive
          ? _value._archive
          : archive // ignore: cast_nullable_to_non_nullable
              as List<ParcelInfo>,
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as ParcelsFilterBatch,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as ParcelsFilter?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as ParcelsSort?,
    ));
  }
}

/// @nodoc

class _$ParcelsStateLoadedImpl implements ParcelsStateLoaded {
  const _$ParcelsStateLoadedImpl(
      {required final List<ParcelInfo> active,
      required final List<ParcelInfo> archive,
      required this.filters,
      this.search,
      this.sort})
      : _active = active,
        _archive = archive;

  final List<ParcelInfo> _active;
  @override
  List<ParcelInfo> get active {
    if (_active is EqualUnmodifiableListView) return _active;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_active);
  }

  final List<ParcelInfo> _archive;
  @override
  List<ParcelInfo> get archive {
    if (_archive is EqualUnmodifiableListView) return _archive;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_archive);
  }

  @override
  final ParcelsFilterBatch filters;
  @override
  final ParcelsFilter? search;
  @override
  final ParcelsSort? sort;

  @override
  String toString() {
    return 'ParcelsState.loaded(active: $active, archive: $archive, filters: $filters, search: $search, sort: $sort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelsStateLoadedImpl &&
            const DeepCollectionEquality().equals(other._active, _active) &&
            const DeepCollectionEquality().equals(other._archive, _archive) &&
            const DeepCollectionEquality().equals(other.filters, filters) &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_active),
      const DeepCollectionEquality().hash(_archive),
      const DeepCollectionEquality().hash(filters),
      search,
      sort);

  /// Create a copy of ParcelsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParcelsStateLoadedImplCopyWith<_$ParcelsStateLoadedImpl> get copyWith =>
      __$$ParcelsStateLoadedImplCopyWithImpl<_$ParcelsStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParcelsFilterBatch filters, ParcelsFilter? search,
            ParcelsSort? sort)
        initial,
    required TResult Function(
            List<ParcelInfo> active,
            List<ParcelInfo> archive,
            ParcelsFilterBatch filters,
            ParcelsFilter? search,
            ParcelsSort? sort)
        loaded,
    required TResult Function(StorageError? error, ParcelsFilterBatch filters,
            ParcelsFilter? search, ParcelsSort? sort)
        loadingFailed,
  }) {
    return loaded(active, archive, filters, search, sort);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ParcelsFilterBatch filters, ParcelsFilter? search,
            ParcelsSort? sort)?
        initial,
    TResult? Function(
            List<ParcelInfo> active,
            List<ParcelInfo> archive,
            ParcelsFilterBatch filters,
            ParcelsFilter? search,
            ParcelsSort? sort)?
        loaded,
    TResult? Function(StorageError? error, ParcelsFilterBatch filters,
            ParcelsFilter? search, ParcelsSort? sort)?
        loadingFailed,
  }) {
    return loaded?.call(active, archive, filters, search, sort);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParcelsFilterBatch filters, ParcelsFilter? search,
            ParcelsSort? sort)?
        initial,
    TResult Function(
            List<ParcelInfo> active,
            List<ParcelInfo> archive,
            ParcelsFilterBatch filters,
            ParcelsFilter? search,
            ParcelsSort? sort)?
        loaded,
    TResult Function(StorageError? error, ParcelsFilterBatch filters,
            ParcelsFilter? search, ParcelsSort? sort)?
        loadingFailed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(active, archive, filters, search, sort);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsStateInitial value) initial,
    required TResult Function(ParcelsStateLoaded value) loaded,
    required TResult Function(ParcelsStateLoadingFailed value) loadingFailed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParcelsStateInitial value)? initial,
    TResult? Function(ParcelsStateLoaded value)? loaded,
    TResult? Function(ParcelsStateLoadingFailed value)? loadingFailed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsStateInitial value)? initial,
    TResult Function(ParcelsStateLoaded value)? loaded,
    TResult Function(ParcelsStateLoadingFailed value)? loadingFailed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ParcelsStateLoaded implements ParcelsState {
  const factory ParcelsStateLoaded(
      {required final List<ParcelInfo> active,
      required final List<ParcelInfo> archive,
      required final ParcelsFilterBatch filters,
      final ParcelsFilter? search,
      final ParcelsSort? sort}) = _$ParcelsStateLoadedImpl;

  List<ParcelInfo> get active;
  List<ParcelInfo> get archive;
  @override
  ParcelsFilterBatch get filters;
  @override
  ParcelsFilter? get search;
  @override
  ParcelsSort? get sort;

  /// Create a copy of ParcelsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParcelsStateLoadedImplCopyWith<_$ParcelsStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParcelsStateLoadingFailedImplCopyWith<$Res>
    implements $ParcelsStateCopyWith<$Res> {
  factory _$$ParcelsStateLoadingFailedImplCopyWith(
          _$ParcelsStateLoadingFailedImpl value,
          $Res Function(_$ParcelsStateLoadingFailedImpl) then) =
      __$$ParcelsStateLoadingFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StorageError? error,
      ParcelsFilterBatch filters,
      ParcelsFilter? search,
      ParcelsSort? sort});

  $StorageErrorCopyWith<$Res>? get error;
  @override
  $ParcelsFilterCopyWith<$Res>? get search;
  @override
  $ParcelsSortCopyWith<$Res>? get sort;
}

/// @nodoc
class __$$ParcelsStateLoadingFailedImplCopyWithImpl<$Res>
    extends _$ParcelsStateCopyWithImpl<$Res, _$ParcelsStateLoadingFailedImpl>
    implements _$$ParcelsStateLoadingFailedImplCopyWith<$Res> {
  __$$ParcelsStateLoadingFailedImplCopyWithImpl(
      _$ParcelsStateLoadingFailedImpl _value,
      $Res Function(_$ParcelsStateLoadingFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParcelsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? filters = null,
    Object? search = freezed,
    Object? sort = freezed,
  }) {
    return _then(_$ParcelsStateLoadingFailedImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as StorageError?,
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as ParcelsFilterBatch,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as ParcelsFilter?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as ParcelsSort?,
    ));
  }

  /// Create a copy of ParcelsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StorageErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $StorageErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$ParcelsStateLoadingFailedImpl implements ParcelsStateLoadingFailed {
  const _$ParcelsStateLoadingFailedImpl(
      {this.error, required this.filters, this.search, this.sort});

  @override
  final StorageError? error;
  @override
  final ParcelsFilterBatch filters;
  @override
  final ParcelsFilter? search;
  @override
  final ParcelsSort? sort;

  @override
  String toString() {
    return 'ParcelsState.loadingFailed(error: $error, filters: $filters, search: $search, sort: $sort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelsStateLoadingFailedImpl &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other.filters, filters) &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error,
      const DeepCollectionEquality().hash(filters), search, sort);

  /// Create a copy of ParcelsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParcelsStateLoadingFailedImplCopyWith<_$ParcelsStateLoadingFailedImpl>
      get copyWith => __$$ParcelsStateLoadingFailedImplCopyWithImpl<
          _$ParcelsStateLoadingFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParcelsFilterBatch filters, ParcelsFilter? search,
            ParcelsSort? sort)
        initial,
    required TResult Function(
            List<ParcelInfo> active,
            List<ParcelInfo> archive,
            ParcelsFilterBatch filters,
            ParcelsFilter? search,
            ParcelsSort? sort)
        loaded,
    required TResult Function(StorageError? error, ParcelsFilterBatch filters,
            ParcelsFilter? search, ParcelsSort? sort)
        loadingFailed,
  }) {
    return loadingFailed(error, filters, search, sort);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ParcelsFilterBatch filters, ParcelsFilter? search,
            ParcelsSort? sort)?
        initial,
    TResult? Function(
            List<ParcelInfo> active,
            List<ParcelInfo> archive,
            ParcelsFilterBatch filters,
            ParcelsFilter? search,
            ParcelsSort? sort)?
        loaded,
    TResult? Function(StorageError? error, ParcelsFilterBatch filters,
            ParcelsFilter? search, ParcelsSort? sort)?
        loadingFailed,
  }) {
    return loadingFailed?.call(error, filters, search, sort);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParcelsFilterBatch filters, ParcelsFilter? search,
            ParcelsSort? sort)?
        initial,
    TResult Function(
            List<ParcelInfo> active,
            List<ParcelInfo> archive,
            ParcelsFilterBatch filters,
            ParcelsFilter? search,
            ParcelsSort? sort)?
        loaded,
    TResult Function(StorageError? error, ParcelsFilterBatch filters,
            ParcelsFilter? search, ParcelsSort? sort)?
        loadingFailed,
    required TResult orElse(),
  }) {
    if (loadingFailed != null) {
      return loadingFailed(error, filters, search, sort);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsStateInitial value) initial,
    required TResult Function(ParcelsStateLoaded value) loaded,
    required TResult Function(ParcelsStateLoadingFailed value) loadingFailed,
  }) {
    return loadingFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParcelsStateInitial value)? initial,
    TResult? Function(ParcelsStateLoaded value)? loaded,
    TResult? Function(ParcelsStateLoadingFailed value)? loadingFailed,
  }) {
    return loadingFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsStateInitial value)? initial,
    TResult Function(ParcelsStateLoaded value)? loaded,
    TResult Function(ParcelsStateLoadingFailed value)? loadingFailed,
    required TResult orElse(),
  }) {
    if (loadingFailed != null) {
      return loadingFailed(this);
    }
    return orElse();
  }
}

abstract class ParcelsStateLoadingFailed implements ParcelsState {
  const factory ParcelsStateLoadingFailed(
      {final StorageError? error,
      required final ParcelsFilterBatch filters,
      final ParcelsFilter? search,
      final ParcelsSort? sort}) = _$ParcelsStateLoadingFailedImpl;

  StorageError? get error;
  @override
  ParcelsFilterBatch get filters;
  @override
  ParcelsFilter? get search;
  @override
  ParcelsSort? get sort;

  /// Create a copy of ParcelsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParcelsStateLoadingFailedImplCopyWith<_$ParcelsStateLoadingFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

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

  /// Create a copy of _BuildResult
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of _BuildResult
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of _BuildResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of _BuildResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of _BuildResult
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of _BuildResult
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of _BuildResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of _BuildResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BuildResultFailedImplCopyWith<_$BuildResultFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
