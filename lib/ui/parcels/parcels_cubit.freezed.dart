// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'parcels_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ParcelsStateTearOff {
  const _$ParcelsStateTearOff();

  ParcelsStateInitial initial(
      {required ParcelsFilterBatch filters,
      ParcelsFilter? search,
      ParcelsSort? sort}) {
    return ParcelsStateInitial(
      filters: filters,
      search: search,
      sort: sort,
    );
  }

  ParcelsStateLoaded loaded(
      {required List<ParcelInfo> active,
      required List<ParcelInfo> archive,
      required ParcelsFilterBatch filters,
      ParcelsFilter? search,
      ParcelsSort? sort}) {
    return ParcelsStateLoaded(
      active: active,
      archive: archive,
      filters: filters,
      search: search,
      sort: sort,
    );
  }

  ParcelsStateLoadingFailed loadingFailed(
      {StorageError? error,
      required ParcelsFilterBatch filters,
      ParcelsFilter? search,
      ParcelsSort? sort}) {
    return ParcelsStateLoadingFailed(
      error: error,
      filters: filters,
      search: search,
      sort: sort,
    );
  }
}

/// @nodoc
const $ParcelsState = _$ParcelsStateTearOff();

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
    TResult Function(ParcelsStateInitial value)? initial,
    TResult Function(ParcelsStateLoaded value)? loaded,
    TResult Function(ParcelsStateLoadingFailed value)? loadingFailed,
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

  @JsonKey(ignore: true)
  $ParcelsStateCopyWith<ParcelsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelsStateCopyWith<$Res> {
  factory $ParcelsStateCopyWith(
          ParcelsState value, $Res Function(ParcelsState) then) =
      _$ParcelsStateCopyWithImpl<$Res>;
  $Res call(
      {ParcelsFilterBatch filters, ParcelsFilter? search, ParcelsSort? sort});

  $ParcelsFilterCopyWith<$Res>? get search;
  $ParcelsSortCopyWith<$Res>? get sort;
}

/// @nodoc
class _$ParcelsStateCopyWithImpl<$Res> implements $ParcelsStateCopyWith<$Res> {
  _$ParcelsStateCopyWithImpl(this._value, this._then);

  final ParcelsState _value;
  // ignore: unused_field
  final $Res Function(ParcelsState) _then;

  @override
  $Res call({
    Object? filters = freezed,
    Object? search = freezed,
    Object? sort = freezed,
  }) {
    return _then(_value.copyWith(
      filters: filters == freezed
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as ParcelsFilterBatch,
      search: search == freezed
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as ParcelsFilter?,
      sort: sort == freezed
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as ParcelsSort?,
    ));
  }

  @override
  $ParcelsFilterCopyWith<$Res>? get search {
    if (_value.search == null) {
      return null;
    }

    return $ParcelsFilterCopyWith<$Res>(_value.search!, (value) {
      return _then(_value.copyWith(search: value));
    });
  }

  @override
  $ParcelsSortCopyWith<$Res>? get sort {
    if (_value.sort == null) {
      return null;
    }

    return $ParcelsSortCopyWith<$Res>(_value.sort!, (value) {
      return _then(_value.copyWith(sort: value));
    });
  }
}

/// @nodoc
abstract class $ParcelsStateInitialCopyWith<$Res>
    implements $ParcelsStateCopyWith<$Res> {
  factory $ParcelsStateInitialCopyWith(
          ParcelsStateInitial value, $Res Function(ParcelsStateInitial) then) =
      _$ParcelsStateInitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {ParcelsFilterBatch filters, ParcelsFilter? search, ParcelsSort? sort});

  @override
  $ParcelsFilterCopyWith<$Res>? get search;
  @override
  $ParcelsSortCopyWith<$Res>? get sort;
}

/// @nodoc
class _$ParcelsStateInitialCopyWithImpl<$Res>
    extends _$ParcelsStateCopyWithImpl<$Res>
    implements $ParcelsStateInitialCopyWith<$Res> {
  _$ParcelsStateInitialCopyWithImpl(
      ParcelsStateInitial _value, $Res Function(ParcelsStateInitial) _then)
      : super(_value, (v) => _then(v as ParcelsStateInitial));

  @override
  ParcelsStateInitial get _value => super._value as ParcelsStateInitial;

  @override
  $Res call({
    Object? filters = freezed,
    Object? search = freezed,
    Object? sort = freezed,
  }) {
    return _then(ParcelsStateInitial(
      filters: filters == freezed
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as ParcelsFilterBatch,
      search: search == freezed
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as ParcelsFilter?,
      sort: sort == freezed
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as ParcelsSort?,
    ));
  }
}

/// @nodoc

class _$ParcelsStateInitial
    with DiagnosticableTreeMixin
    implements ParcelsStateInitial {
  const _$ParcelsStateInitial({required this.filters, this.search, this.sort});

  @override
  final ParcelsFilterBatch filters;
  @override
  final ParcelsFilter? search;
  @override
  final ParcelsSort? sort;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParcelsState.initial(filters: $filters, search: $search, sort: $sort)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParcelsState.initial'))
      ..add(DiagnosticsProperty('filters', filters))
      ..add(DiagnosticsProperty('search', search))
      ..add(DiagnosticsProperty('sort', sort));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParcelsStateInitial &&
            (identical(other.filters, filters) ||
                const DeepCollectionEquality()
                    .equals(other.filters, filters)) &&
            (identical(other.search, search) ||
                const DeepCollectionEquality().equals(other.search, search)) &&
            (identical(other.sort, sort) ||
                const DeepCollectionEquality().equals(other.sort, sort)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(filters) ^
      const DeepCollectionEquality().hash(search) ^
      const DeepCollectionEquality().hash(sort);

  @JsonKey(ignore: true)
  @override
  $ParcelsStateInitialCopyWith<ParcelsStateInitial> get copyWith =>
      _$ParcelsStateInitialCopyWithImpl<ParcelsStateInitial>(this, _$identity);

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
    TResult Function(ParcelsStateInitial value)? initial,
    TResult Function(ParcelsStateLoaded value)? loaded,
    TResult Function(ParcelsStateLoadingFailed value)? loadingFailed,
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
      {required ParcelsFilterBatch filters,
      ParcelsFilter? search,
      ParcelsSort? sort}) = _$ParcelsStateInitial;

  @override
  ParcelsFilterBatch get filters => throw _privateConstructorUsedError;
  @override
  ParcelsFilter? get search => throw _privateConstructorUsedError;
  @override
  ParcelsSort? get sort => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ParcelsStateInitialCopyWith<ParcelsStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelsStateLoadedCopyWith<$Res>
    implements $ParcelsStateCopyWith<$Res> {
  factory $ParcelsStateLoadedCopyWith(
          ParcelsStateLoaded value, $Res Function(ParcelsStateLoaded) then) =
      _$ParcelsStateLoadedCopyWithImpl<$Res>;
  @override
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
class _$ParcelsStateLoadedCopyWithImpl<$Res>
    extends _$ParcelsStateCopyWithImpl<$Res>
    implements $ParcelsStateLoadedCopyWith<$Res> {
  _$ParcelsStateLoadedCopyWithImpl(
      ParcelsStateLoaded _value, $Res Function(ParcelsStateLoaded) _then)
      : super(_value, (v) => _then(v as ParcelsStateLoaded));

  @override
  ParcelsStateLoaded get _value => super._value as ParcelsStateLoaded;

  @override
  $Res call({
    Object? active = freezed,
    Object? archive = freezed,
    Object? filters = freezed,
    Object? search = freezed,
    Object? sort = freezed,
  }) {
    return _then(ParcelsStateLoaded(
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as List<ParcelInfo>,
      archive: archive == freezed
          ? _value.archive
          : archive // ignore: cast_nullable_to_non_nullable
              as List<ParcelInfo>,
      filters: filters == freezed
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as ParcelsFilterBatch,
      search: search == freezed
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as ParcelsFilter?,
      sort: sort == freezed
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as ParcelsSort?,
    ));
  }
}

/// @nodoc

class _$ParcelsStateLoaded
    with DiagnosticableTreeMixin
    implements ParcelsStateLoaded {
  const _$ParcelsStateLoaded(
      {required this.active,
      required this.archive,
      required this.filters,
      this.search,
      this.sort});

  @override
  final List<ParcelInfo> active;
  @override
  final List<ParcelInfo> archive;
  @override
  final ParcelsFilterBatch filters;
  @override
  final ParcelsFilter? search;
  @override
  final ParcelsSort? sort;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParcelsState.loaded(active: $active, archive: $archive, filters: $filters, search: $search, sort: $sort)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParcelsState.loaded'))
      ..add(DiagnosticsProperty('active', active))
      ..add(DiagnosticsProperty('archive', archive))
      ..add(DiagnosticsProperty('filters', filters))
      ..add(DiagnosticsProperty('search', search))
      ..add(DiagnosticsProperty('sort', sort));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParcelsStateLoaded &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.archive, archive) ||
                const DeepCollectionEquality()
                    .equals(other.archive, archive)) &&
            (identical(other.filters, filters) ||
                const DeepCollectionEquality()
                    .equals(other.filters, filters)) &&
            (identical(other.search, search) ||
                const DeepCollectionEquality().equals(other.search, search)) &&
            (identical(other.sort, sort) ||
                const DeepCollectionEquality().equals(other.sort, sort)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(archive) ^
      const DeepCollectionEquality().hash(filters) ^
      const DeepCollectionEquality().hash(search) ^
      const DeepCollectionEquality().hash(sort);

  @JsonKey(ignore: true)
  @override
  $ParcelsStateLoadedCopyWith<ParcelsStateLoaded> get copyWith =>
      _$ParcelsStateLoadedCopyWithImpl<ParcelsStateLoaded>(this, _$identity);

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
    TResult Function(ParcelsStateInitial value)? initial,
    TResult Function(ParcelsStateLoaded value)? loaded,
    TResult Function(ParcelsStateLoadingFailed value)? loadingFailed,
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
      {required List<ParcelInfo> active,
      required List<ParcelInfo> archive,
      required ParcelsFilterBatch filters,
      ParcelsFilter? search,
      ParcelsSort? sort}) = _$ParcelsStateLoaded;

  List<ParcelInfo> get active => throw _privateConstructorUsedError;
  List<ParcelInfo> get archive => throw _privateConstructorUsedError;
  @override
  ParcelsFilterBatch get filters => throw _privateConstructorUsedError;
  @override
  ParcelsFilter? get search => throw _privateConstructorUsedError;
  @override
  ParcelsSort? get sort => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ParcelsStateLoadedCopyWith<ParcelsStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelsStateLoadingFailedCopyWith<$Res>
    implements $ParcelsStateCopyWith<$Res> {
  factory $ParcelsStateLoadingFailedCopyWith(ParcelsStateLoadingFailed value,
          $Res Function(ParcelsStateLoadingFailed) then) =
      _$ParcelsStateLoadingFailedCopyWithImpl<$Res>;
  @override
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
class _$ParcelsStateLoadingFailedCopyWithImpl<$Res>
    extends _$ParcelsStateCopyWithImpl<$Res>
    implements $ParcelsStateLoadingFailedCopyWith<$Res> {
  _$ParcelsStateLoadingFailedCopyWithImpl(ParcelsStateLoadingFailed _value,
      $Res Function(ParcelsStateLoadingFailed) _then)
      : super(_value, (v) => _then(v as ParcelsStateLoadingFailed));

  @override
  ParcelsStateLoadingFailed get _value =>
      super._value as ParcelsStateLoadingFailed;

  @override
  $Res call({
    Object? error = freezed,
    Object? filters = freezed,
    Object? search = freezed,
    Object? sort = freezed,
  }) {
    return _then(ParcelsStateLoadingFailed(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as StorageError?,
      filters: filters == freezed
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as ParcelsFilterBatch,
      search: search == freezed
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as ParcelsFilter?,
      sort: sort == freezed
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as ParcelsSort?,
    ));
  }

  @override
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

class _$ParcelsStateLoadingFailed
    with DiagnosticableTreeMixin
    implements ParcelsStateLoadingFailed {
  const _$ParcelsStateLoadingFailed(
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParcelsState.loadingFailed(error: $error, filters: $filters, search: $search, sort: $sort)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParcelsState.loadingFailed'))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('filters', filters))
      ..add(DiagnosticsProperty('search', search))
      ..add(DiagnosticsProperty('sort', sort));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParcelsStateLoadingFailed &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.filters, filters) ||
                const DeepCollectionEquality()
                    .equals(other.filters, filters)) &&
            (identical(other.search, search) ||
                const DeepCollectionEquality().equals(other.search, search)) &&
            (identical(other.sort, sort) ||
                const DeepCollectionEquality().equals(other.sort, sort)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(filters) ^
      const DeepCollectionEquality().hash(search) ^
      const DeepCollectionEquality().hash(sort);

  @JsonKey(ignore: true)
  @override
  $ParcelsStateLoadingFailedCopyWith<ParcelsStateLoadingFailed> get copyWith =>
      _$ParcelsStateLoadingFailedCopyWithImpl<ParcelsStateLoadingFailed>(
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
    return loadingFailed(error, filters, search, sort);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
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
    TResult Function(ParcelsStateInitial value)? initial,
    TResult Function(ParcelsStateLoaded value)? loaded,
    TResult Function(ParcelsStateLoadingFailed value)? loadingFailed,
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
      {StorageError? error,
      required ParcelsFilterBatch filters,
      ParcelsFilter? search,
      ParcelsSort? sort}) = _$ParcelsStateLoadingFailed;

  StorageError? get error => throw _privateConstructorUsedError;
  @override
  ParcelsFilterBatch get filters => throw _privateConstructorUsedError;
  @override
  ParcelsFilter? get search => throw _privateConstructorUsedError;
  @override
  ParcelsSort? get sort => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ParcelsStateLoadingFailedCopyWith<ParcelsStateLoadingFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$_BuildResultTearOff {
  const _$_BuildResultTearOff();

  _BuildResultData call({required List<ParcelInfo> infoList}) {
    return _BuildResultData(
      infoList: infoList,
    );
  }

  _BuildResultFailed failed({required StorageError error}) {
    return _BuildResultFailed(
      error: error,
    );
  }
}

/// @nodoc
const _$BuildResult = _$_BuildResultTearOff();

/// @nodoc
mixin _$_BuildResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ParcelInfo> infoList) $default, {
    required TResult Function(StorageError error) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<ParcelInfo> infoList)? $default, {
    TResult Function(StorageError error)? failed,
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
    TResult Function(_BuildResultData value)? $default, {
    TResult Function(_BuildResultFailed value)? failed,
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
      __$BuildResultCopyWithImpl<$Res>;
}

/// @nodoc
class __$BuildResultCopyWithImpl<$Res> implements _$BuildResultCopyWith<$Res> {
  __$BuildResultCopyWithImpl(this._value, this._then);

  final _BuildResult _value;
  // ignore: unused_field
  final $Res Function(_BuildResult) _then;
}

/// @nodoc
abstract class _$BuildResultDataCopyWith<$Res> {
  factory _$BuildResultDataCopyWith(
          _BuildResultData value, $Res Function(_BuildResultData) then) =
      __$BuildResultDataCopyWithImpl<$Res>;
  $Res call({List<ParcelInfo> infoList});
}

/// @nodoc
class __$BuildResultDataCopyWithImpl<$Res>
    extends __$BuildResultCopyWithImpl<$Res>
    implements _$BuildResultDataCopyWith<$Res> {
  __$BuildResultDataCopyWithImpl(
      _BuildResultData _value, $Res Function(_BuildResultData) _then)
      : super(_value, (v) => _then(v as _BuildResultData));

  @override
  _BuildResultData get _value => super._value as _BuildResultData;

  @override
  $Res call({
    Object? infoList = freezed,
  }) {
    return _then(_BuildResultData(
      infoList: infoList == freezed
          ? _value.infoList
          : infoList // ignore: cast_nullable_to_non_nullable
              as List<ParcelInfo>,
    ));
  }
}

/// @nodoc

class _$_BuildResultData
    with DiagnosticableTreeMixin
    implements _BuildResultData {
  const _$_BuildResultData({required this.infoList});

  @override
  final List<ParcelInfo> infoList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return '_BuildResult(infoList: $infoList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', '_BuildResult'))
      ..add(DiagnosticsProperty('infoList', infoList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BuildResultData &&
            (identical(other.infoList, infoList) ||
                const DeepCollectionEquality()
                    .equals(other.infoList, infoList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(infoList);

  @JsonKey(ignore: true)
  @override
  _$BuildResultDataCopyWith<_BuildResultData> get copyWith =>
      __$BuildResultDataCopyWithImpl<_BuildResultData>(this, _$identity);

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
    TResult Function(List<ParcelInfo> infoList)? $default, {
    TResult Function(StorageError error)? failed,
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
    TResult Function(_BuildResultData value)? $default, {
    TResult Function(_BuildResultFailed value)? failed,
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
  const factory _BuildResultData({required List<ParcelInfo> infoList}) =
      _$_BuildResultData;

  List<ParcelInfo> get infoList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$BuildResultDataCopyWith<_BuildResultData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BuildResultFailedCopyWith<$Res> {
  factory _$BuildResultFailedCopyWith(
          _BuildResultFailed value, $Res Function(_BuildResultFailed) then) =
      __$BuildResultFailedCopyWithImpl<$Res>;
  $Res call({StorageError error});

  $StorageErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$BuildResultFailedCopyWithImpl<$Res>
    extends __$BuildResultCopyWithImpl<$Res>
    implements _$BuildResultFailedCopyWith<$Res> {
  __$BuildResultFailedCopyWithImpl(
      _BuildResultFailed _value, $Res Function(_BuildResultFailed) _then)
      : super(_value, (v) => _then(v as _BuildResultFailed));

  @override
  _BuildResultFailed get _value => super._value as _BuildResultFailed;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_BuildResultFailed(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as StorageError,
    ));
  }

  @override
  $StorageErrorCopyWith<$Res> get error {
    return $StorageErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_BuildResultFailed
    with DiagnosticableTreeMixin
    implements _BuildResultFailed {
  const _$_BuildResultFailed({required this.error});

  @override
  final StorageError error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return '_BuildResult.failed(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', '_BuildResult.failed'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BuildResultFailed &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$BuildResultFailedCopyWith<_BuildResultFailed> get copyWith =>
      __$BuildResultFailedCopyWithImpl<_BuildResultFailed>(this, _$identity);

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
    TResult Function(List<ParcelInfo> infoList)? $default, {
    TResult Function(StorageError error)? failed,
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
    TResult Function(_BuildResultData value)? $default, {
    TResult Function(_BuildResultFailed value)? failed,
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
  const factory _BuildResultFailed({required StorageError error}) =
      _$_BuildResultFailed;

  StorageError get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$BuildResultFailedCopyWith<_BuildResultFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
