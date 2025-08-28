// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parcels_state.dart';

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
            List<ParcelInfo> receiver,
            List<ParcelInfo> shipper,
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
            List<ParcelInfo> receiver,
            List<ParcelInfo> shipper,
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
            List<ParcelInfo> receiver,
            List<ParcelInfo> shipper,
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

  @JsonKey(ignore: true)
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

class _$ParcelsStateInitialImpl
    with DiagnosticableTreeMixin
    implements ParcelsStateInitial {
  const _$ParcelsStateInitialImpl(
      {required this.filters, this.search, this.sort});

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

  @JsonKey(ignore: true)
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
            List<ParcelInfo> receiver,
            List<ParcelInfo> shipper,
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
            List<ParcelInfo> receiver,
            List<ParcelInfo> shipper,
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
            List<ParcelInfo> receiver,
            List<ParcelInfo> shipper,
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
  @override
  @JsonKey(ignore: true)
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
      {List<ParcelInfo> receiver,
      List<ParcelInfo> shipper,
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiver = null,
    Object? shipper = null,
    Object? archive = null,
    Object? filters = null,
    Object? search = freezed,
    Object? sort = freezed,
  }) {
    return _then(_$ParcelsStateLoadedImpl(
      receiver: null == receiver
          ? _value._receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as List<ParcelInfo>,
      shipper: null == shipper
          ? _value._shipper
          : shipper // ignore: cast_nullable_to_non_nullable
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

class _$ParcelsStateLoadedImpl
    with DiagnosticableTreeMixin
    implements ParcelsStateLoaded {
  const _$ParcelsStateLoadedImpl(
      {required final List<ParcelInfo> receiver,
      required final List<ParcelInfo> shipper,
      required final List<ParcelInfo> archive,
      required this.filters,
      this.search,
      this.sort})
      : _receiver = receiver,
        _shipper = shipper,
        _archive = archive;

  final List<ParcelInfo> _receiver;
  @override
  List<ParcelInfo> get receiver {
    if (_receiver is EqualUnmodifiableListView) return _receiver;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_receiver);
  }

  final List<ParcelInfo> _shipper;
  @override
  List<ParcelInfo> get shipper {
    if (_shipper is EqualUnmodifiableListView) return _shipper;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shipper);
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParcelsState.loaded(receiver: $receiver, shipper: $shipper, archive: $archive, filters: $filters, search: $search, sort: $sort)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParcelsState.loaded'))
      ..add(DiagnosticsProperty('receiver', receiver))
      ..add(DiagnosticsProperty('shipper', shipper))
      ..add(DiagnosticsProperty('archive', archive))
      ..add(DiagnosticsProperty('filters', filters))
      ..add(DiagnosticsProperty('search', search))
      ..add(DiagnosticsProperty('sort', sort));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelsStateLoadedImpl &&
            const DeepCollectionEquality().equals(other._receiver, _receiver) &&
            const DeepCollectionEquality().equals(other._shipper, _shipper) &&
            const DeepCollectionEquality().equals(other._archive, _archive) &&
            const DeepCollectionEquality().equals(other.filters, filters) &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_receiver),
      const DeepCollectionEquality().hash(_shipper),
      const DeepCollectionEquality().hash(_archive),
      const DeepCollectionEquality().hash(filters),
      search,
      sort);

  @JsonKey(ignore: true)
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
            List<ParcelInfo> receiver,
            List<ParcelInfo> shipper,
            List<ParcelInfo> archive,
            ParcelsFilterBatch filters,
            ParcelsFilter? search,
            ParcelsSort? sort)
        loaded,
    required TResult Function(StorageError? error, ParcelsFilterBatch filters,
            ParcelsFilter? search, ParcelsSort? sort)
        loadingFailed,
  }) {
    return loaded(receiver, shipper, archive, filters, search, sort);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ParcelsFilterBatch filters, ParcelsFilter? search,
            ParcelsSort? sort)?
        initial,
    TResult? Function(
            List<ParcelInfo> receiver,
            List<ParcelInfo> shipper,
            List<ParcelInfo> archive,
            ParcelsFilterBatch filters,
            ParcelsFilter? search,
            ParcelsSort? sort)?
        loaded,
    TResult? Function(StorageError? error, ParcelsFilterBatch filters,
            ParcelsFilter? search, ParcelsSort? sort)?
        loadingFailed,
  }) {
    return loaded?.call(receiver, shipper, archive, filters, search, sort);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParcelsFilterBatch filters, ParcelsFilter? search,
            ParcelsSort? sort)?
        initial,
    TResult Function(
            List<ParcelInfo> receiver,
            List<ParcelInfo> shipper,
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
      return loaded(receiver, shipper, archive, filters, search, sort);
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
      {required final List<ParcelInfo> receiver,
      required final List<ParcelInfo> shipper,
      required final List<ParcelInfo> archive,
      required final ParcelsFilterBatch filters,
      final ParcelsFilter? search,
      final ParcelsSort? sort}) = _$ParcelsStateLoadedImpl;

  List<ParcelInfo> get receiver;
  List<ParcelInfo> get shipper;
  List<ParcelInfo> get archive;
  @override
  ParcelsFilterBatch get filters;
  @override
  ParcelsFilter? get search;
  @override
  ParcelsSort? get sort;
  @override
  @JsonKey(ignore: true)
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

class _$ParcelsStateLoadingFailedImpl
    with DiagnosticableTreeMixin
    implements ParcelsStateLoadingFailed {
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

  @JsonKey(ignore: true)
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
            List<ParcelInfo> receiver,
            List<ParcelInfo> shipper,
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
            List<ParcelInfo> receiver,
            List<ParcelInfo> shipper,
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
            List<ParcelInfo> receiver,
            List<ParcelInfo> shipper,
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
  @override
  @JsonKey(ignore: true)
  _$$ParcelsStateLoadingFailedImplCopyWith<_$ParcelsStateLoadingFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
