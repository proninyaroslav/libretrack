// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ParcelsSort _$ParcelsSortFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'alphabetically':
      return ParcelsSortAlphabetically.fromJson(json);
    case 'activityDate':
      return ParcelsSortActivityDate.fromJson(json);
    case 'dateAdded':
      return ParcelsSortDateAdded.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ParcelsSort',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ParcelsSort {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isDesc) alphabetically,
    required TResult Function(bool oldestFirst) activityDate,
    required TResult Function(bool oldestFirst) dateAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isDesc)? alphabetically,
    TResult? Function(bool oldestFirst)? activityDate,
    TResult? Function(bool oldestFirst)? dateAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isDesc)? alphabetically,
    TResult Function(bool oldestFirst)? activityDate,
    TResult Function(bool oldestFirst)? dateAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsSortAlphabetically value) alphabetically,
    required TResult Function(ParcelsSortActivityDate value) activityDate,
    required TResult Function(ParcelsSortDateAdded value) dateAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParcelsSortAlphabetically value)? alphabetically,
    TResult? Function(ParcelsSortActivityDate value)? activityDate,
    TResult? Function(ParcelsSortDateAdded value)? dateAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsSortAlphabetically value)? alphabetically,
    TResult Function(ParcelsSortActivityDate value)? activityDate,
    TResult Function(ParcelsSortDateAdded value)? dateAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelsSortCopyWith<$Res> {
  factory $ParcelsSortCopyWith(
          ParcelsSort value, $Res Function(ParcelsSort) then) =
      _$ParcelsSortCopyWithImpl<$Res, ParcelsSort>;
}

/// @nodoc
class _$ParcelsSortCopyWithImpl<$Res, $Val extends ParcelsSort>
    implements $ParcelsSortCopyWith<$Res> {
  _$ParcelsSortCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ParcelsSortAlphabeticallyImplCopyWith<$Res> {
  factory _$$ParcelsSortAlphabeticallyImplCopyWith(
          _$ParcelsSortAlphabeticallyImpl value,
          $Res Function(_$ParcelsSortAlphabeticallyImpl) then) =
      __$$ParcelsSortAlphabeticallyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isDesc});
}

/// @nodoc
class __$$ParcelsSortAlphabeticallyImplCopyWithImpl<$Res>
    extends _$ParcelsSortCopyWithImpl<$Res, _$ParcelsSortAlphabeticallyImpl>
    implements _$$ParcelsSortAlphabeticallyImplCopyWith<$Res> {
  __$$ParcelsSortAlphabeticallyImplCopyWithImpl(
      _$ParcelsSortAlphabeticallyImpl _value,
      $Res Function(_$ParcelsSortAlphabeticallyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDesc = null,
  }) {
    return _then(_$ParcelsSortAlphabeticallyImpl(
      isDesc: null == isDesc
          ? _value.isDesc
          : isDesc // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParcelsSortAlphabeticallyImpl implements ParcelsSortAlphabetically {
  const _$ParcelsSortAlphabeticallyImpl(
      {this.isDesc = false, final String? $type})
      : $type = $type ?? 'alphabetically';

  factory _$ParcelsSortAlphabeticallyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParcelsSortAlphabeticallyImplFromJson(json);

  @override
  @JsonKey()
  final bool isDesc;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ParcelsSort.alphabetically(isDesc: $isDesc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelsSortAlphabeticallyImpl &&
            (identical(other.isDesc, isDesc) || other.isDesc == isDesc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isDesc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParcelsSortAlphabeticallyImplCopyWith<_$ParcelsSortAlphabeticallyImpl>
      get copyWith => __$$ParcelsSortAlphabeticallyImplCopyWithImpl<
          _$ParcelsSortAlphabeticallyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isDesc) alphabetically,
    required TResult Function(bool oldestFirst) activityDate,
    required TResult Function(bool oldestFirst) dateAdded,
  }) {
    return alphabetically(isDesc);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isDesc)? alphabetically,
    TResult? Function(bool oldestFirst)? activityDate,
    TResult? Function(bool oldestFirst)? dateAdded,
  }) {
    return alphabetically?.call(isDesc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isDesc)? alphabetically,
    TResult Function(bool oldestFirst)? activityDate,
    TResult Function(bool oldestFirst)? dateAdded,
    required TResult orElse(),
  }) {
    if (alphabetically != null) {
      return alphabetically(isDesc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsSortAlphabetically value) alphabetically,
    required TResult Function(ParcelsSortActivityDate value) activityDate,
    required TResult Function(ParcelsSortDateAdded value) dateAdded,
  }) {
    return alphabetically(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParcelsSortAlphabetically value)? alphabetically,
    TResult? Function(ParcelsSortActivityDate value)? activityDate,
    TResult? Function(ParcelsSortDateAdded value)? dateAdded,
  }) {
    return alphabetically?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsSortAlphabetically value)? alphabetically,
    TResult Function(ParcelsSortActivityDate value)? activityDate,
    TResult Function(ParcelsSortDateAdded value)? dateAdded,
    required TResult orElse(),
  }) {
    if (alphabetically != null) {
      return alphabetically(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ParcelsSortAlphabeticallyImplToJson(
      this,
    );
  }
}

abstract class ParcelsSortAlphabetically implements ParcelsSort {
  const factory ParcelsSortAlphabetically({final bool isDesc}) =
      _$ParcelsSortAlphabeticallyImpl;

  factory ParcelsSortAlphabetically.fromJson(Map<String, dynamic> json) =
      _$ParcelsSortAlphabeticallyImpl.fromJson;

  bool get isDesc;
  @JsonKey(ignore: true)
  _$$ParcelsSortAlphabeticallyImplCopyWith<_$ParcelsSortAlphabeticallyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParcelsSortActivityDateImplCopyWith<$Res> {
  factory _$$ParcelsSortActivityDateImplCopyWith(
          _$ParcelsSortActivityDateImpl value,
          $Res Function(_$ParcelsSortActivityDateImpl) then) =
      __$$ParcelsSortActivityDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool oldestFirst});
}

/// @nodoc
class __$$ParcelsSortActivityDateImplCopyWithImpl<$Res>
    extends _$ParcelsSortCopyWithImpl<$Res, _$ParcelsSortActivityDateImpl>
    implements _$$ParcelsSortActivityDateImplCopyWith<$Res> {
  __$$ParcelsSortActivityDateImplCopyWithImpl(
      _$ParcelsSortActivityDateImpl _value,
      $Res Function(_$ParcelsSortActivityDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldestFirst = null,
  }) {
    return _then(_$ParcelsSortActivityDateImpl(
      oldestFirst: null == oldestFirst
          ? _value.oldestFirst
          : oldestFirst // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParcelsSortActivityDateImpl implements ParcelsSortActivityDate {
  const _$ParcelsSortActivityDateImpl(
      {this.oldestFirst = false, final String? $type})
      : $type = $type ?? 'activityDate';

  factory _$ParcelsSortActivityDateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParcelsSortActivityDateImplFromJson(json);

  @override
  @JsonKey()
  final bool oldestFirst;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ParcelsSort.activityDate(oldestFirst: $oldestFirst)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelsSortActivityDateImpl &&
            (identical(other.oldestFirst, oldestFirst) ||
                other.oldestFirst == oldestFirst));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, oldestFirst);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParcelsSortActivityDateImplCopyWith<_$ParcelsSortActivityDateImpl>
      get copyWith => __$$ParcelsSortActivityDateImplCopyWithImpl<
          _$ParcelsSortActivityDateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isDesc) alphabetically,
    required TResult Function(bool oldestFirst) activityDate,
    required TResult Function(bool oldestFirst) dateAdded,
  }) {
    return activityDate(oldestFirst);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isDesc)? alphabetically,
    TResult? Function(bool oldestFirst)? activityDate,
    TResult? Function(bool oldestFirst)? dateAdded,
  }) {
    return activityDate?.call(oldestFirst);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isDesc)? alphabetically,
    TResult Function(bool oldestFirst)? activityDate,
    TResult Function(bool oldestFirst)? dateAdded,
    required TResult orElse(),
  }) {
    if (activityDate != null) {
      return activityDate(oldestFirst);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsSortAlphabetically value) alphabetically,
    required TResult Function(ParcelsSortActivityDate value) activityDate,
    required TResult Function(ParcelsSortDateAdded value) dateAdded,
  }) {
    return activityDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParcelsSortAlphabetically value)? alphabetically,
    TResult? Function(ParcelsSortActivityDate value)? activityDate,
    TResult? Function(ParcelsSortDateAdded value)? dateAdded,
  }) {
    return activityDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsSortAlphabetically value)? alphabetically,
    TResult Function(ParcelsSortActivityDate value)? activityDate,
    TResult Function(ParcelsSortDateAdded value)? dateAdded,
    required TResult orElse(),
  }) {
    if (activityDate != null) {
      return activityDate(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ParcelsSortActivityDateImplToJson(
      this,
    );
  }
}

abstract class ParcelsSortActivityDate implements ParcelsSort {
  const factory ParcelsSortActivityDate({final bool oldestFirst}) =
      _$ParcelsSortActivityDateImpl;

  factory ParcelsSortActivityDate.fromJson(Map<String, dynamic> json) =
      _$ParcelsSortActivityDateImpl.fromJson;

  bool get oldestFirst;
  @JsonKey(ignore: true)
  _$$ParcelsSortActivityDateImplCopyWith<_$ParcelsSortActivityDateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParcelsSortDateAddedImplCopyWith<$Res> {
  factory _$$ParcelsSortDateAddedImplCopyWith(_$ParcelsSortDateAddedImpl value,
          $Res Function(_$ParcelsSortDateAddedImpl) then) =
      __$$ParcelsSortDateAddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool oldestFirst});
}

/// @nodoc
class __$$ParcelsSortDateAddedImplCopyWithImpl<$Res>
    extends _$ParcelsSortCopyWithImpl<$Res, _$ParcelsSortDateAddedImpl>
    implements _$$ParcelsSortDateAddedImplCopyWith<$Res> {
  __$$ParcelsSortDateAddedImplCopyWithImpl(_$ParcelsSortDateAddedImpl _value,
      $Res Function(_$ParcelsSortDateAddedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldestFirst = null,
  }) {
    return _then(_$ParcelsSortDateAddedImpl(
      oldestFirst: null == oldestFirst
          ? _value.oldestFirst
          : oldestFirst // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParcelsSortDateAddedImpl implements ParcelsSortDateAdded {
  const _$ParcelsSortDateAddedImpl(
      {this.oldestFirst = false, final String? $type})
      : $type = $type ?? 'dateAdded';

  factory _$ParcelsSortDateAddedImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParcelsSortDateAddedImplFromJson(json);

  @override
  @JsonKey()
  final bool oldestFirst;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ParcelsSort.dateAdded(oldestFirst: $oldestFirst)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelsSortDateAddedImpl &&
            (identical(other.oldestFirst, oldestFirst) ||
                other.oldestFirst == oldestFirst));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, oldestFirst);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParcelsSortDateAddedImplCopyWith<_$ParcelsSortDateAddedImpl>
      get copyWith =>
          __$$ParcelsSortDateAddedImplCopyWithImpl<_$ParcelsSortDateAddedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isDesc) alphabetically,
    required TResult Function(bool oldestFirst) activityDate,
    required TResult Function(bool oldestFirst) dateAdded,
  }) {
    return dateAdded(oldestFirst);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isDesc)? alphabetically,
    TResult? Function(bool oldestFirst)? activityDate,
    TResult? Function(bool oldestFirst)? dateAdded,
  }) {
    return dateAdded?.call(oldestFirst);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isDesc)? alphabetically,
    TResult Function(bool oldestFirst)? activityDate,
    TResult Function(bool oldestFirst)? dateAdded,
    required TResult orElse(),
  }) {
    if (dateAdded != null) {
      return dateAdded(oldestFirst);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsSortAlphabetically value) alphabetically,
    required TResult Function(ParcelsSortActivityDate value) activityDate,
    required TResult Function(ParcelsSortDateAdded value) dateAdded,
  }) {
    return dateAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParcelsSortAlphabetically value)? alphabetically,
    TResult? Function(ParcelsSortActivityDate value)? activityDate,
    TResult? Function(ParcelsSortDateAdded value)? dateAdded,
  }) {
    return dateAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsSortAlphabetically value)? alphabetically,
    TResult Function(ParcelsSortActivityDate value)? activityDate,
    TResult Function(ParcelsSortDateAdded value)? dateAdded,
    required TResult orElse(),
  }) {
    if (dateAdded != null) {
      return dateAdded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ParcelsSortDateAddedImplToJson(
      this,
    );
  }
}

abstract class ParcelsSortDateAdded implements ParcelsSort {
  const factory ParcelsSortDateAdded({final bool oldestFirst}) =
      _$ParcelsSortDateAddedImpl;

  factory ParcelsSortDateAdded.fromJson(Map<String, dynamic> json) =
      _$ParcelsSortDateAddedImpl.fromJson;

  bool get oldestFirst;
  @JsonKey(ignore: true)
  _$$ParcelsSortDateAddedImplCopyWith<_$ParcelsSortDateAddedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ParcelsFilter _$ParcelsFilterFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'search':
      return ParcelsFilterSearch.fromJson(json);
    case 'receiver':
      return ParcelsFilterReceiver.fromJson(json);
    case 'shipper':
      return ParcelsFilterShipper.fromJson(json);
    case 'archive':
      return ParcelsFilterArchive.fromJson(json);
    case 'status':
      return ParcelsFilterStatus.fromJson(json);
    case 'newInfo':
      return ParcelsFilterNewInfo.fromJson(json);
    case 'error':
      return ParcelsFilterError.fromJson(json);
    case 'postalService':
      return ParcelsFilterPostalService.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ParcelsFilter',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ParcelsFilter {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) search,
    required TResult Function() receiver,
    required TResult Function() shipper,
    required TResult Function() archive,
    required TResult Function(ShipmentStatusType? statusType) status,
    required TResult Function() newInfo,
    required TResult Function() error,
    required TResult Function(PostalServiceType? serviceType) postalService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? search,
    TResult? Function()? receiver,
    TResult? Function()? shipper,
    TResult? Function()? archive,
    TResult? Function(ShipmentStatusType? statusType)? status,
    TResult? Function()? newInfo,
    TResult? Function()? error,
    TResult? Function(PostalServiceType? serviceType)? postalService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? search,
    TResult Function()? receiver,
    TResult Function()? shipper,
    TResult Function()? archive,
    TResult Function(ShipmentStatusType? statusType)? status,
    TResult Function()? newInfo,
    TResult Function()? error,
    TResult Function(PostalServiceType? serviceType)? postalService,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsFilterSearch value) search,
    required TResult Function(ParcelsFilterReceiver value) receiver,
    required TResult Function(ParcelsFilterShipper value) shipper,
    required TResult Function(ParcelsFilterArchive value) archive,
    required TResult Function(ParcelsFilterStatus value) status,
    required TResult Function(ParcelsFilterNewInfo value) newInfo,
    required TResult Function(ParcelsFilterError value) error,
    required TResult Function(ParcelsFilterPostalService value) postalService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParcelsFilterSearch value)? search,
    TResult? Function(ParcelsFilterReceiver value)? receiver,
    TResult? Function(ParcelsFilterShipper value)? shipper,
    TResult? Function(ParcelsFilterArchive value)? archive,
    TResult? Function(ParcelsFilterStatus value)? status,
    TResult? Function(ParcelsFilterNewInfo value)? newInfo,
    TResult? Function(ParcelsFilterError value)? error,
    TResult? Function(ParcelsFilterPostalService value)? postalService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsFilterSearch value)? search,
    TResult Function(ParcelsFilterReceiver value)? receiver,
    TResult Function(ParcelsFilterShipper value)? shipper,
    TResult Function(ParcelsFilterArchive value)? archive,
    TResult Function(ParcelsFilterStatus value)? status,
    TResult Function(ParcelsFilterNewInfo value)? newInfo,
    TResult Function(ParcelsFilterError value)? error,
    TResult Function(ParcelsFilterPostalService value)? postalService,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelsFilterCopyWith<$Res> {
  factory $ParcelsFilterCopyWith(
          ParcelsFilter value, $Res Function(ParcelsFilter) then) =
      _$ParcelsFilterCopyWithImpl<$Res, ParcelsFilter>;
}

/// @nodoc
class _$ParcelsFilterCopyWithImpl<$Res, $Val extends ParcelsFilter>
    implements $ParcelsFilterCopyWith<$Res> {
  _$ParcelsFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ParcelsFilterSearchImplCopyWith<$Res> {
  factory _$$ParcelsFilterSearchImplCopyWith(_$ParcelsFilterSearchImpl value,
          $Res Function(_$ParcelsFilterSearchImpl) then) =
      __$$ParcelsFilterSearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$ParcelsFilterSearchImplCopyWithImpl<$Res>
    extends _$ParcelsFilterCopyWithImpl<$Res, _$ParcelsFilterSearchImpl>
    implements _$$ParcelsFilterSearchImplCopyWith<$Res> {
  __$$ParcelsFilterSearchImplCopyWithImpl(_$ParcelsFilterSearchImpl _value,
      $Res Function(_$ParcelsFilterSearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$ParcelsFilterSearchImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParcelsFilterSearchImpl implements ParcelsFilterSearch {
  const _$ParcelsFilterSearchImpl({this.query, final String? $type})
      : $type = $type ?? 'search';

  factory _$ParcelsFilterSearchImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParcelsFilterSearchImplFromJson(json);

  @override
  final String? query;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ParcelsFilter.search(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelsFilterSearchImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParcelsFilterSearchImplCopyWith<_$ParcelsFilterSearchImpl> get copyWith =>
      __$$ParcelsFilterSearchImplCopyWithImpl<_$ParcelsFilterSearchImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) search,
    required TResult Function() receiver,
    required TResult Function() shipper,
    required TResult Function() archive,
    required TResult Function(ShipmentStatusType? statusType) status,
    required TResult Function() newInfo,
    required TResult Function() error,
    required TResult Function(PostalServiceType? serviceType) postalService,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? search,
    TResult? Function()? receiver,
    TResult? Function()? shipper,
    TResult? Function()? archive,
    TResult? Function(ShipmentStatusType? statusType)? status,
    TResult? Function()? newInfo,
    TResult? Function()? error,
    TResult? Function(PostalServiceType? serviceType)? postalService,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? search,
    TResult Function()? receiver,
    TResult Function()? shipper,
    TResult Function()? archive,
    TResult Function(ShipmentStatusType? statusType)? status,
    TResult Function()? newInfo,
    TResult Function()? error,
    TResult Function(PostalServiceType? serviceType)? postalService,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsFilterSearch value) search,
    required TResult Function(ParcelsFilterReceiver value) receiver,
    required TResult Function(ParcelsFilterShipper value) shipper,
    required TResult Function(ParcelsFilterArchive value) archive,
    required TResult Function(ParcelsFilterStatus value) status,
    required TResult Function(ParcelsFilterNewInfo value) newInfo,
    required TResult Function(ParcelsFilterError value) error,
    required TResult Function(ParcelsFilterPostalService value) postalService,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParcelsFilterSearch value)? search,
    TResult? Function(ParcelsFilterReceiver value)? receiver,
    TResult? Function(ParcelsFilterShipper value)? shipper,
    TResult? Function(ParcelsFilterArchive value)? archive,
    TResult? Function(ParcelsFilterStatus value)? status,
    TResult? Function(ParcelsFilterNewInfo value)? newInfo,
    TResult? Function(ParcelsFilterError value)? error,
    TResult? Function(ParcelsFilterPostalService value)? postalService,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsFilterSearch value)? search,
    TResult Function(ParcelsFilterReceiver value)? receiver,
    TResult Function(ParcelsFilterShipper value)? shipper,
    TResult Function(ParcelsFilterArchive value)? archive,
    TResult Function(ParcelsFilterStatus value)? status,
    TResult Function(ParcelsFilterNewInfo value)? newInfo,
    TResult Function(ParcelsFilterError value)? error,
    TResult Function(ParcelsFilterPostalService value)? postalService,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ParcelsFilterSearchImplToJson(
      this,
    );
  }
}

abstract class ParcelsFilterSearch implements ParcelsFilter {
  const factory ParcelsFilterSearch({final String? query}) =
      _$ParcelsFilterSearchImpl;

  factory ParcelsFilterSearch.fromJson(Map<String, dynamic> json) =
      _$ParcelsFilterSearchImpl.fromJson;

  String? get query;
  @JsonKey(ignore: true)
  _$$ParcelsFilterSearchImplCopyWith<_$ParcelsFilterSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParcelsFilterReceiverImplCopyWith<$Res> {
  factory _$$ParcelsFilterReceiverImplCopyWith(
          _$ParcelsFilterReceiverImpl value,
          $Res Function(_$ParcelsFilterReceiverImpl) then) =
      __$$ParcelsFilterReceiverImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ParcelsFilterReceiverImplCopyWithImpl<$Res>
    extends _$ParcelsFilterCopyWithImpl<$Res, _$ParcelsFilterReceiverImpl>
    implements _$$ParcelsFilterReceiverImplCopyWith<$Res> {
  __$$ParcelsFilterReceiverImplCopyWithImpl(_$ParcelsFilterReceiverImpl _value,
      $Res Function(_$ParcelsFilterReceiverImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ParcelsFilterReceiverImpl implements ParcelsFilterReceiver {
  const _$ParcelsFilterReceiverImpl({final String? $type})
      : $type = $type ?? 'receiver';

  factory _$ParcelsFilterReceiverImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParcelsFilterReceiverImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ParcelsFilter.receiver()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelsFilterReceiverImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) search,
    required TResult Function() receiver,
    required TResult Function() shipper,
    required TResult Function() archive,
    required TResult Function(ShipmentStatusType? statusType) status,
    required TResult Function() newInfo,
    required TResult Function() error,
    required TResult Function(PostalServiceType? serviceType) postalService,
  }) {
    return receiver();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? search,
    TResult? Function()? receiver,
    TResult? Function()? shipper,
    TResult? Function()? archive,
    TResult? Function(ShipmentStatusType? statusType)? status,
    TResult? Function()? newInfo,
    TResult? Function()? error,
    TResult? Function(PostalServiceType? serviceType)? postalService,
  }) {
    return receiver?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? search,
    TResult Function()? receiver,
    TResult Function()? shipper,
    TResult Function()? archive,
    TResult Function(ShipmentStatusType? statusType)? status,
    TResult Function()? newInfo,
    TResult Function()? error,
    TResult Function(PostalServiceType? serviceType)? postalService,
    required TResult orElse(),
  }) {
    if (receiver != null) {
      return receiver();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsFilterSearch value) search,
    required TResult Function(ParcelsFilterReceiver value) receiver,
    required TResult Function(ParcelsFilterShipper value) shipper,
    required TResult Function(ParcelsFilterArchive value) archive,
    required TResult Function(ParcelsFilterStatus value) status,
    required TResult Function(ParcelsFilterNewInfo value) newInfo,
    required TResult Function(ParcelsFilterError value) error,
    required TResult Function(ParcelsFilterPostalService value) postalService,
  }) {
    return receiver(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParcelsFilterSearch value)? search,
    TResult? Function(ParcelsFilterReceiver value)? receiver,
    TResult? Function(ParcelsFilterShipper value)? shipper,
    TResult? Function(ParcelsFilterArchive value)? archive,
    TResult? Function(ParcelsFilterStatus value)? status,
    TResult? Function(ParcelsFilterNewInfo value)? newInfo,
    TResult? Function(ParcelsFilterError value)? error,
    TResult? Function(ParcelsFilterPostalService value)? postalService,
  }) {
    return receiver?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsFilterSearch value)? search,
    TResult Function(ParcelsFilterReceiver value)? receiver,
    TResult Function(ParcelsFilterShipper value)? shipper,
    TResult Function(ParcelsFilterArchive value)? archive,
    TResult Function(ParcelsFilterStatus value)? status,
    TResult Function(ParcelsFilterNewInfo value)? newInfo,
    TResult Function(ParcelsFilterError value)? error,
    TResult Function(ParcelsFilterPostalService value)? postalService,
    required TResult orElse(),
  }) {
    if (receiver != null) {
      return receiver(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ParcelsFilterReceiverImplToJson(
      this,
    );
  }
}

abstract class ParcelsFilterReceiver implements ParcelsFilter {
  const factory ParcelsFilterReceiver() = _$ParcelsFilterReceiverImpl;

  factory ParcelsFilterReceiver.fromJson(Map<String, dynamic> json) =
      _$ParcelsFilterReceiverImpl.fromJson;
}

/// @nodoc
abstract class _$$ParcelsFilterShipperImplCopyWith<$Res> {
  factory _$$ParcelsFilterShipperImplCopyWith(_$ParcelsFilterShipperImpl value,
          $Res Function(_$ParcelsFilterShipperImpl) then) =
      __$$ParcelsFilterShipperImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ParcelsFilterShipperImplCopyWithImpl<$Res>
    extends _$ParcelsFilterCopyWithImpl<$Res, _$ParcelsFilterShipperImpl>
    implements _$$ParcelsFilterShipperImplCopyWith<$Res> {
  __$$ParcelsFilterShipperImplCopyWithImpl(_$ParcelsFilterShipperImpl _value,
      $Res Function(_$ParcelsFilterShipperImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ParcelsFilterShipperImpl implements ParcelsFilterShipper {
  const _$ParcelsFilterShipperImpl({final String? $type})
      : $type = $type ?? 'shipper';

  factory _$ParcelsFilterShipperImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParcelsFilterShipperImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ParcelsFilter.shipper()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelsFilterShipperImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) search,
    required TResult Function() receiver,
    required TResult Function() shipper,
    required TResult Function() archive,
    required TResult Function(ShipmentStatusType? statusType) status,
    required TResult Function() newInfo,
    required TResult Function() error,
    required TResult Function(PostalServiceType? serviceType) postalService,
  }) {
    return shipper();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? search,
    TResult? Function()? receiver,
    TResult? Function()? shipper,
    TResult? Function()? archive,
    TResult? Function(ShipmentStatusType? statusType)? status,
    TResult? Function()? newInfo,
    TResult? Function()? error,
    TResult? Function(PostalServiceType? serviceType)? postalService,
  }) {
    return shipper?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? search,
    TResult Function()? receiver,
    TResult Function()? shipper,
    TResult Function()? archive,
    TResult Function(ShipmentStatusType? statusType)? status,
    TResult Function()? newInfo,
    TResult Function()? error,
    TResult Function(PostalServiceType? serviceType)? postalService,
    required TResult orElse(),
  }) {
    if (shipper != null) {
      return shipper();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsFilterSearch value) search,
    required TResult Function(ParcelsFilterReceiver value) receiver,
    required TResult Function(ParcelsFilterShipper value) shipper,
    required TResult Function(ParcelsFilterArchive value) archive,
    required TResult Function(ParcelsFilterStatus value) status,
    required TResult Function(ParcelsFilterNewInfo value) newInfo,
    required TResult Function(ParcelsFilterError value) error,
    required TResult Function(ParcelsFilterPostalService value) postalService,
  }) {
    return shipper(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParcelsFilterSearch value)? search,
    TResult? Function(ParcelsFilterReceiver value)? receiver,
    TResult? Function(ParcelsFilterShipper value)? shipper,
    TResult? Function(ParcelsFilterArchive value)? archive,
    TResult? Function(ParcelsFilterStatus value)? status,
    TResult? Function(ParcelsFilterNewInfo value)? newInfo,
    TResult? Function(ParcelsFilterError value)? error,
    TResult? Function(ParcelsFilterPostalService value)? postalService,
  }) {
    return shipper?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsFilterSearch value)? search,
    TResult Function(ParcelsFilterReceiver value)? receiver,
    TResult Function(ParcelsFilterShipper value)? shipper,
    TResult Function(ParcelsFilterArchive value)? archive,
    TResult Function(ParcelsFilterStatus value)? status,
    TResult Function(ParcelsFilterNewInfo value)? newInfo,
    TResult Function(ParcelsFilterError value)? error,
    TResult Function(ParcelsFilterPostalService value)? postalService,
    required TResult orElse(),
  }) {
    if (shipper != null) {
      return shipper(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ParcelsFilterShipperImplToJson(
      this,
    );
  }
}

abstract class ParcelsFilterShipper implements ParcelsFilter {
  const factory ParcelsFilterShipper() = _$ParcelsFilterShipperImpl;

  factory ParcelsFilterShipper.fromJson(Map<String, dynamic> json) =
      _$ParcelsFilterShipperImpl.fromJson;
}

/// @nodoc
abstract class _$$ParcelsFilterArchiveImplCopyWith<$Res> {
  factory _$$ParcelsFilterArchiveImplCopyWith(_$ParcelsFilterArchiveImpl value,
          $Res Function(_$ParcelsFilterArchiveImpl) then) =
      __$$ParcelsFilterArchiveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ParcelsFilterArchiveImplCopyWithImpl<$Res>
    extends _$ParcelsFilterCopyWithImpl<$Res, _$ParcelsFilterArchiveImpl>
    implements _$$ParcelsFilterArchiveImplCopyWith<$Res> {
  __$$ParcelsFilterArchiveImplCopyWithImpl(_$ParcelsFilterArchiveImpl _value,
      $Res Function(_$ParcelsFilterArchiveImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ParcelsFilterArchiveImpl implements ParcelsFilterArchive {
  const _$ParcelsFilterArchiveImpl({final String? $type})
      : $type = $type ?? 'archive';

  factory _$ParcelsFilterArchiveImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParcelsFilterArchiveImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ParcelsFilter.archive()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelsFilterArchiveImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) search,
    required TResult Function() receiver,
    required TResult Function() shipper,
    required TResult Function() archive,
    required TResult Function(ShipmentStatusType? statusType) status,
    required TResult Function() newInfo,
    required TResult Function() error,
    required TResult Function(PostalServiceType? serviceType) postalService,
  }) {
    return archive();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? search,
    TResult? Function()? receiver,
    TResult? Function()? shipper,
    TResult? Function()? archive,
    TResult? Function(ShipmentStatusType? statusType)? status,
    TResult? Function()? newInfo,
    TResult? Function()? error,
    TResult? Function(PostalServiceType? serviceType)? postalService,
  }) {
    return archive?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? search,
    TResult Function()? receiver,
    TResult Function()? shipper,
    TResult Function()? archive,
    TResult Function(ShipmentStatusType? statusType)? status,
    TResult Function()? newInfo,
    TResult Function()? error,
    TResult Function(PostalServiceType? serviceType)? postalService,
    required TResult orElse(),
  }) {
    if (archive != null) {
      return archive();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsFilterSearch value) search,
    required TResult Function(ParcelsFilterReceiver value) receiver,
    required TResult Function(ParcelsFilterShipper value) shipper,
    required TResult Function(ParcelsFilterArchive value) archive,
    required TResult Function(ParcelsFilterStatus value) status,
    required TResult Function(ParcelsFilterNewInfo value) newInfo,
    required TResult Function(ParcelsFilterError value) error,
    required TResult Function(ParcelsFilterPostalService value) postalService,
  }) {
    return archive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParcelsFilterSearch value)? search,
    TResult? Function(ParcelsFilterReceiver value)? receiver,
    TResult? Function(ParcelsFilterShipper value)? shipper,
    TResult? Function(ParcelsFilterArchive value)? archive,
    TResult? Function(ParcelsFilterStatus value)? status,
    TResult? Function(ParcelsFilterNewInfo value)? newInfo,
    TResult? Function(ParcelsFilterError value)? error,
    TResult? Function(ParcelsFilterPostalService value)? postalService,
  }) {
    return archive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsFilterSearch value)? search,
    TResult Function(ParcelsFilterReceiver value)? receiver,
    TResult Function(ParcelsFilterShipper value)? shipper,
    TResult Function(ParcelsFilterArchive value)? archive,
    TResult Function(ParcelsFilterStatus value)? status,
    TResult Function(ParcelsFilterNewInfo value)? newInfo,
    TResult Function(ParcelsFilterError value)? error,
    TResult Function(ParcelsFilterPostalService value)? postalService,
    required TResult orElse(),
  }) {
    if (archive != null) {
      return archive(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ParcelsFilterArchiveImplToJson(
      this,
    );
  }
}

abstract class ParcelsFilterArchive implements ParcelsFilter {
  const factory ParcelsFilterArchive() = _$ParcelsFilterArchiveImpl;

  factory ParcelsFilterArchive.fromJson(Map<String, dynamic> json) =
      _$ParcelsFilterArchiveImpl.fromJson;
}

/// @nodoc
abstract class _$$ParcelsFilterStatusImplCopyWith<$Res> {
  factory _$$ParcelsFilterStatusImplCopyWith(_$ParcelsFilterStatusImpl value,
          $Res Function(_$ParcelsFilterStatusImpl) then) =
      __$$ParcelsFilterStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ShipmentStatusType? statusType});
}

/// @nodoc
class __$$ParcelsFilterStatusImplCopyWithImpl<$Res>
    extends _$ParcelsFilterCopyWithImpl<$Res, _$ParcelsFilterStatusImpl>
    implements _$$ParcelsFilterStatusImplCopyWith<$Res> {
  __$$ParcelsFilterStatusImplCopyWithImpl(_$ParcelsFilterStatusImpl _value,
      $Res Function(_$ParcelsFilterStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusType = freezed,
  }) {
    return _then(_$ParcelsFilterStatusImpl(
      statusType: freezed == statusType
          ? _value.statusType
          : statusType // ignore: cast_nullable_to_non_nullable
              as ShipmentStatusType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParcelsFilterStatusImpl implements ParcelsFilterStatus {
  const _$ParcelsFilterStatusImpl({this.statusType, final String? $type})
      : $type = $type ?? 'status';

  factory _$ParcelsFilterStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParcelsFilterStatusImplFromJson(json);

  @override
  final ShipmentStatusType? statusType;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ParcelsFilter.status(statusType: $statusType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelsFilterStatusImpl &&
            (identical(other.statusType, statusType) ||
                other.statusType == statusType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, statusType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParcelsFilterStatusImplCopyWith<_$ParcelsFilterStatusImpl> get copyWith =>
      __$$ParcelsFilterStatusImplCopyWithImpl<_$ParcelsFilterStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) search,
    required TResult Function() receiver,
    required TResult Function() shipper,
    required TResult Function() archive,
    required TResult Function(ShipmentStatusType? statusType) status,
    required TResult Function() newInfo,
    required TResult Function() error,
    required TResult Function(PostalServiceType? serviceType) postalService,
  }) {
    return status(statusType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? search,
    TResult? Function()? receiver,
    TResult? Function()? shipper,
    TResult? Function()? archive,
    TResult? Function(ShipmentStatusType? statusType)? status,
    TResult? Function()? newInfo,
    TResult? Function()? error,
    TResult? Function(PostalServiceType? serviceType)? postalService,
  }) {
    return status?.call(statusType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? search,
    TResult Function()? receiver,
    TResult Function()? shipper,
    TResult Function()? archive,
    TResult Function(ShipmentStatusType? statusType)? status,
    TResult Function()? newInfo,
    TResult Function()? error,
    TResult Function(PostalServiceType? serviceType)? postalService,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(statusType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsFilterSearch value) search,
    required TResult Function(ParcelsFilterReceiver value) receiver,
    required TResult Function(ParcelsFilterShipper value) shipper,
    required TResult Function(ParcelsFilterArchive value) archive,
    required TResult Function(ParcelsFilterStatus value) status,
    required TResult Function(ParcelsFilterNewInfo value) newInfo,
    required TResult Function(ParcelsFilterError value) error,
    required TResult Function(ParcelsFilterPostalService value) postalService,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParcelsFilterSearch value)? search,
    TResult? Function(ParcelsFilterReceiver value)? receiver,
    TResult? Function(ParcelsFilterShipper value)? shipper,
    TResult? Function(ParcelsFilterArchive value)? archive,
    TResult? Function(ParcelsFilterStatus value)? status,
    TResult? Function(ParcelsFilterNewInfo value)? newInfo,
    TResult? Function(ParcelsFilterError value)? error,
    TResult? Function(ParcelsFilterPostalService value)? postalService,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsFilterSearch value)? search,
    TResult Function(ParcelsFilterReceiver value)? receiver,
    TResult Function(ParcelsFilterShipper value)? shipper,
    TResult Function(ParcelsFilterArchive value)? archive,
    TResult Function(ParcelsFilterStatus value)? status,
    TResult Function(ParcelsFilterNewInfo value)? newInfo,
    TResult Function(ParcelsFilterError value)? error,
    TResult Function(ParcelsFilterPostalService value)? postalService,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ParcelsFilterStatusImplToJson(
      this,
    );
  }
}

abstract class ParcelsFilterStatus implements ParcelsFilter {
  const factory ParcelsFilterStatus({final ShipmentStatusType? statusType}) =
      _$ParcelsFilterStatusImpl;

  factory ParcelsFilterStatus.fromJson(Map<String, dynamic> json) =
      _$ParcelsFilterStatusImpl.fromJson;

  ShipmentStatusType? get statusType;
  @JsonKey(ignore: true)
  _$$ParcelsFilterStatusImplCopyWith<_$ParcelsFilterStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParcelsFilterNewInfoImplCopyWith<$Res> {
  factory _$$ParcelsFilterNewInfoImplCopyWith(_$ParcelsFilterNewInfoImpl value,
          $Res Function(_$ParcelsFilterNewInfoImpl) then) =
      __$$ParcelsFilterNewInfoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ParcelsFilterNewInfoImplCopyWithImpl<$Res>
    extends _$ParcelsFilterCopyWithImpl<$Res, _$ParcelsFilterNewInfoImpl>
    implements _$$ParcelsFilterNewInfoImplCopyWith<$Res> {
  __$$ParcelsFilterNewInfoImplCopyWithImpl(_$ParcelsFilterNewInfoImpl _value,
      $Res Function(_$ParcelsFilterNewInfoImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ParcelsFilterNewInfoImpl implements ParcelsFilterNewInfo {
  const _$ParcelsFilterNewInfoImpl({final String? $type})
      : $type = $type ?? 'newInfo';

  factory _$ParcelsFilterNewInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParcelsFilterNewInfoImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ParcelsFilter.newInfo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelsFilterNewInfoImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) search,
    required TResult Function() receiver,
    required TResult Function() shipper,
    required TResult Function() archive,
    required TResult Function(ShipmentStatusType? statusType) status,
    required TResult Function() newInfo,
    required TResult Function() error,
    required TResult Function(PostalServiceType? serviceType) postalService,
  }) {
    return newInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? search,
    TResult? Function()? receiver,
    TResult? Function()? shipper,
    TResult? Function()? archive,
    TResult? Function(ShipmentStatusType? statusType)? status,
    TResult? Function()? newInfo,
    TResult? Function()? error,
    TResult? Function(PostalServiceType? serviceType)? postalService,
  }) {
    return newInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? search,
    TResult Function()? receiver,
    TResult Function()? shipper,
    TResult Function()? archive,
    TResult Function(ShipmentStatusType? statusType)? status,
    TResult Function()? newInfo,
    TResult Function()? error,
    TResult Function(PostalServiceType? serviceType)? postalService,
    required TResult orElse(),
  }) {
    if (newInfo != null) {
      return newInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsFilterSearch value) search,
    required TResult Function(ParcelsFilterReceiver value) receiver,
    required TResult Function(ParcelsFilterShipper value) shipper,
    required TResult Function(ParcelsFilterArchive value) archive,
    required TResult Function(ParcelsFilterStatus value) status,
    required TResult Function(ParcelsFilterNewInfo value) newInfo,
    required TResult Function(ParcelsFilterError value) error,
    required TResult Function(ParcelsFilterPostalService value) postalService,
  }) {
    return newInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParcelsFilterSearch value)? search,
    TResult? Function(ParcelsFilterReceiver value)? receiver,
    TResult? Function(ParcelsFilterShipper value)? shipper,
    TResult? Function(ParcelsFilterArchive value)? archive,
    TResult? Function(ParcelsFilterStatus value)? status,
    TResult? Function(ParcelsFilterNewInfo value)? newInfo,
    TResult? Function(ParcelsFilterError value)? error,
    TResult? Function(ParcelsFilterPostalService value)? postalService,
  }) {
    return newInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsFilterSearch value)? search,
    TResult Function(ParcelsFilterReceiver value)? receiver,
    TResult Function(ParcelsFilterShipper value)? shipper,
    TResult Function(ParcelsFilterArchive value)? archive,
    TResult Function(ParcelsFilterStatus value)? status,
    TResult Function(ParcelsFilterNewInfo value)? newInfo,
    TResult Function(ParcelsFilterError value)? error,
    TResult Function(ParcelsFilterPostalService value)? postalService,
    required TResult orElse(),
  }) {
    if (newInfo != null) {
      return newInfo(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ParcelsFilterNewInfoImplToJson(
      this,
    );
  }
}

abstract class ParcelsFilterNewInfo implements ParcelsFilter {
  const factory ParcelsFilterNewInfo() = _$ParcelsFilterNewInfoImpl;

  factory ParcelsFilterNewInfo.fromJson(Map<String, dynamic> json) =
      _$ParcelsFilterNewInfoImpl.fromJson;
}

/// @nodoc
abstract class _$$ParcelsFilterErrorImplCopyWith<$Res> {
  factory _$$ParcelsFilterErrorImplCopyWith(_$ParcelsFilterErrorImpl value,
          $Res Function(_$ParcelsFilterErrorImpl) then) =
      __$$ParcelsFilterErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ParcelsFilterErrorImplCopyWithImpl<$Res>
    extends _$ParcelsFilterCopyWithImpl<$Res, _$ParcelsFilterErrorImpl>
    implements _$$ParcelsFilterErrorImplCopyWith<$Res> {
  __$$ParcelsFilterErrorImplCopyWithImpl(_$ParcelsFilterErrorImpl _value,
      $Res Function(_$ParcelsFilterErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ParcelsFilterErrorImpl implements ParcelsFilterError {
  const _$ParcelsFilterErrorImpl({final String? $type})
      : $type = $type ?? 'error';

  factory _$ParcelsFilterErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParcelsFilterErrorImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ParcelsFilter.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ParcelsFilterErrorImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) search,
    required TResult Function() receiver,
    required TResult Function() shipper,
    required TResult Function() archive,
    required TResult Function(ShipmentStatusType? statusType) status,
    required TResult Function() newInfo,
    required TResult Function() error,
    required TResult Function(PostalServiceType? serviceType) postalService,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? search,
    TResult? Function()? receiver,
    TResult? Function()? shipper,
    TResult? Function()? archive,
    TResult? Function(ShipmentStatusType? statusType)? status,
    TResult? Function()? newInfo,
    TResult? Function()? error,
    TResult? Function(PostalServiceType? serviceType)? postalService,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? search,
    TResult Function()? receiver,
    TResult Function()? shipper,
    TResult Function()? archive,
    TResult Function(ShipmentStatusType? statusType)? status,
    TResult Function()? newInfo,
    TResult Function()? error,
    TResult Function(PostalServiceType? serviceType)? postalService,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsFilterSearch value) search,
    required TResult Function(ParcelsFilterReceiver value) receiver,
    required TResult Function(ParcelsFilterShipper value) shipper,
    required TResult Function(ParcelsFilterArchive value) archive,
    required TResult Function(ParcelsFilterStatus value) status,
    required TResult Function(ParcelsFilterNewInfo value) newInfo,
    required TResult Function(ParcelsFilterError value) error,
    required TResult Function(ParcelsFilterPostalService value) postalService,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParcelsFilterSearch value)? search,
    TResult? Function(ParcelsFilterReceiver value)? receiver,
    TResult? Function(ParcelsFilterShipper value)? shipper,
    TResult? Function(ParcelsFilterArchive value)? archive,
    TResult? Function(ParcelsFilterStatus value)? status,
    TResult? Function(ParcelsFilterNewInfo value)? newInfo,
    TResult? Function(ParcelsFilterError value)? error,
    TResult? Function(ParcelsFilterPostalService value)? postalService,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsFilterSearch value)? search,
    TResult Function(ParcelsFilterReceiver value)? receiver,
    TResult Function(ParcelsFilterShipper value)? shipper,
    TResult Function(ParcelsFilterArchive value)? archive,
    TResult Function(ParcelsFilterStatus value)? status,
    TResult Function(ParcelsFilterNewInfo value)? newInfo,
    TResult Function(ParcelsFilterError value)? error,
    TResult Function(ParcelsFilterPostalService value)? postalService,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ParcelsFilterErrorImplToJson(
      this,
    );
  }
}

abstract class ParcelsFilterError implements ParcelsFilter {
  const factory ParcelsFilterError() = _$ParcelsFilterErrorImpl;

  factory ParcelsFilterError.fromJson(Map<String, dynamic> json) =
      _$ParcelsFilterErrorImpl.fromJson;
}

/// @nodoc
abstract class _$$ParcelsFilterPostalServiceImplCopyWith<$Res> {
  factory _$$ParcelsFilterPostalServiceImplCopyWith(
          _$ParcelsFilterPostalServiceImpl value,
          $Res Function(_$ParcelsFilterPostalServiceImpl) then) =
      __$$ParcelsFilterPostalServiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PostalServiceType? serviceType});
}

/// @nodoc
class __$$ParcelsFilterPostalServiceImplCopyWithImpl<$Res>
    extends _$ParcelsFilterCopyWithImpl<$Res, _$ParcelsFilterPostalServiceImpl>
    implements _$$ParcelsFilterPostalServiceImplCopyWith<$Res> {
  __$$ParcelsFilterPostalServiceImplCopyWithImpl(
      _$ParcelsFilterPostalServiceImpl _value,
      $Res Function(_$ParcelsFilterPostalServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceType = freezed,
  }) {
    return _then(_$ParcelsFilterPostalServiceImpl(
      serviceType: freezed == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as PostalServiceType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParcelsFilterPostalServiceImpl implements ParcelsFilterPostalService {
  const _$ParcelsFilterPostalServiceImpl(
      {this.serviceType, final String? $type})
      : $type = $type ?? 'postalService';

  factory _$ParcelsFilterPostalServiceImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ParcelsFilterPostalServiceImplFromJson(json);

  @override
  final PostalServiceType? serviceType;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ParcelsFilter.postalService(serviceType: $serviceType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelsFilterPostalServiceImpl &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, serviceType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParcelsFilterPostalServiceImplCopyWith<_$ParcelsFilterPostalServiceImpl>
      get copyWith => __$$ParcelsFilterPostalServiceImplCopyWithImpl<
          _$ParcelsFilterPostalServiceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) search,
    required TResult Function() receiver,
    required TResult Function() shipper,
    required TResult Function() archive,
    required TResult Function(ShipmentStatusType? statusType) status,
    required TResult Function() newInfo,
    required TResult Function() error,
    required TResult Function(PostalServiceType? serviceType) postalService,
  }) {
    return postalService(serviceType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? search,
    TResult? Function()? receiver,
    TResult? Function()? shipper,
    TResult? Function()? archive,
    TResult? Function(ShipmentStatusType? statusType)? status,
    TResult? Function()? newInfo,
    TResult? Function()? error,
    TResult? Function(PostalServiceType? serviceType)? postalService,
  }) {
    return postalService?.call(serviceType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? search,
    TResult Function()? receiver,
    TResult Function()? shipper,
    TResult Function()? archive,
    TResult Function(ShipmentStatusType? statusType)? status,
    TResult Function()? newInfo,
    TResult Function()? error,
    TResult Function(PostalServiceType? serviceType)? postalService,
    required TResult orElse(),
  }) {
    if (postalService != null) {
      return postalService(serviceType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsFilterSearch value) search,
    required TResult Function(ParcelsFilterReceiver value) receiver,
    required TResult Function(ParcelsFilterShipper value) shipper,
    required TResult Function(ParcelsFilterArchive value) archive,
    required TResult Function(ParcelsFilterStatus value) status,
    required TResult Function(ParcelsFilterNewInfo value) newInfo,
    required TResult Function(ParcelsFilterError value) error,
    required TResult Function(ParcelsFilterPostalService value) postalService,
  }) {
    return postalService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParcelsFilterSearch value)? search,
    TResult? Function(ParcelsFilterReceiver value)? receiver,
    TResult? Function(ParcelsFilterShipper value)? shipper,
    TResult? Function(ParcelsFilterArchive value)? archive,
    TResult? Function(ParcelsFilterStatus value)? status,
    TResult? Function(ParcelsFilterNewInfo value)? newInfo,
    TResult? Function(ParcelsFilterError value)? error,
    TResult? Function(ParcelsFilterPostalService value)? postalService,
  }) {
    return postalService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsFilterSearch value)? search,
    TResult Function(ParcelsFilterReceiver value)? receiver,
    TResult Function(ParcelsFilterShipper value)? shipper,
    TResult Function(ParcelsFilterArchive value)? archive,
    TResult Function(ParcelsFilterStatus value)? status,
    TResult Function(ParcelsFilterNewInfo value)? newInfo,
    TResult Function(ParcelsFilterError value)? error,
    TResult Function(ParcelsFilterPostalService value)? postalService,
    required TResult orElse(),
  }) {
    if (postalService != null) {
      return postalService(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ParcelsFilterPostalServiceImplToJson(
      this,
    );
  }
}

abstract class ParcelsFilterPostalService implements ParcelsFilter {
  const factory ParcelsFilterPostalService(
          {final PostalServiceType? serviceType}) =
      _$ParcelsFilterPostalServiceImpl;

  factory ParcelsFilterPostalService.fromJson(Map<String, dynamic> json) =
      _$ParcelsFilterPostalServiceImpl.fromJson;

  PostalServiceType? get serviceType;
  @JsonKey(ignore: true)
  _$$ParcelsFilterPostalServiceImplCopyWith<_$ParcelsFilterPostalServiceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AppThemeType _$AppThemeTypeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'light':
      return AppThemeTypeLight.fromJson(json);
    case 'dark':
      return AppThemeTypeDark.fromJson(json);
    case 'system':
      return AppThemeTypeSystem.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AppThemeType',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AppThemeType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() light,
    required TResult Function() dark,
    required TResult Function() system,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? light,
    TResult? Function()? dark,
    TResult? Function()? system,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? light,
    TResult Function()? dark,
    TResult Function()? system,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppThemeTypeLight value) light,
    required TResult Function(AppThemeTypeDark value) dark,
    required TResult Function(AppThemeTypeSystem value) system,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppThemeTypeLight value)? light,
    TResult? Function(AppThemeTypeDark value)? dark,
    TResult? Function(AppThemeTypeSystem value)? system,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppThemeTypeLight value)? light,
    TResult Function(AppThemeTypeDark value)? dark,
    TResult Function(AppThemeTypeSystem value)? system,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppThemeTypeCopyWith<$Res> {
  factory $AppThemeTypeCopyWith(
          AppThemeType value, $Res Function(AppThemeType) then) =
      _$AppThemeTypeCopyWithImpl<$Res, AppThemeType>;
}

/// @nodoc
class _$AppThemeTypeCopyWithImpl<$Res, $Val extends AppThemeType>
    implements $AppThemeTypeCopyWith<$Res> {
  _$AppThemeTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppThemeTypeLightImplCopyWith<$Res> {
  factory _$$AppThemeTypeLightImplCopyWith(_$AppThemeTypeLightImpl value,
          $Res Function(_$AppThemeTypeLightImpl) then) =
      __$$AppThemeTypeLightImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppThemeTypeLightImplCopyWithImpl<$Res>
    extends _$AppThemeTypeCopyWithImpl<$Res, _$AppThemeTypeLightImpl>
    implements _$$AppThemeTypeLightImplCopyWith<$Res> {
  __$$AppThemeTypeLightImplCopyWithImpl(_$AppThemeTypeLightImpl _value,
      $Res Function(_$AppThemeTypeLightImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AppThemeTypeLightImpl implements AppThemeTypeLight {
  const _$AppThemeTypeLightImpl({final String? $type})
      : $type = $type ?? 'light';

  factory _$AppThemeTypeLightImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppThemeTypeLightImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppThemeType.light()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppThemeTypeLightImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() light,
    required TResult Function() dark,
    required TResult Function() system,
  }) {
    return light();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? light,
    TResult? Function()? dark,
    TResult? Function()? system,
  }) {
    return light?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? light,
    TResult Function()? dark,
    TResult Function()? system,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppThemeTypeLight value) light,
    required TResult Function(AppThemeTypeDark value) dark,
    required TResult Function(AppThemeTypeSystem value) system,
  }) {
    return light(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppThemeTypeLight value)? light,
    TResult? Function(AppThemeTypeDark value)? dark,
    TResult? Function(AppThemeTypeSystem value)? system,
  }) {
    return light?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppThemeTypeLight value)? light,
    TResult Function(AppThemeTypeDark value)? dark,
    TResult Function(AppThemeTypeSystem value)? system,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AppThemeTypeLightImplToJson(
      this,
    );
  }
}

abstract class AppThemeTypeLight implements AppThemeType {
  const factory AppThemeTypeLight() = _$AppThemeTypeLightImpl;

  factory AppThemeTypeLight.fromJson(Map<String, dynamic> json) =
      _$AppThemeTypeLightImpl.fromJson;
}

/// @nodoc
abstract class _$$AppThemeTypeDarkImplCopyWith<$Res> {
  factory _$$AppThemeTypeDarkImplCopyWith(_$AppThemeTypeDarkImpl value,
          $Res Function(_$AppThemeTypeDarkImpl) then) =
      __$$AppThemeTypeDarkImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppThemeTypeDarkImplCopyWithImpl<$Res>
    extends _$AppThemeTypeCopyWithImpl<$Res, _$AppThemeTypeDarkImpl>
    implements _$$AppThemeTypeDarkImplCopyWith<$Res> {
  __$$AppThemeTypeDarkImplCopyWithImpl(_$AppThemeTypeDarkImpl _value,
      $Res Function(_$AppThemeTypeDarkImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AppThemeTypeDarkImpl implements AppThemeTypeDark {
  const _$AppThemeTypeDarkImpl({final String? $type}) : $type = $type ?? 'dark';

  factory _$AppThemeTypeDarkImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppThemeTypeDarkImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppThemeType.dark()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppThemeTypeDarkImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() light,
    required TResult Function() dark,
    required TResult Function() system,
  }) {
    return dark();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? light,
    TResult? Function()? dark,
    TResult? Function()? system,
  }) {
    return dark?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? light,
    TResult Function()? dark,
    TResult Function()? system,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppThemeTypeLight value) light,
    required TResult Function(AppThemeTypeDark value) dark,
    required TResult Function(AppThemeTypeSystem value) system,
  }) {
    return dark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppThemeTypeLight value)? light,
    TResult? Function(AppThemeTypeDark value)? dark,
    TResult? Function(AppThemeTypeSystem value)? system,
  }) {
    return dark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppThemeTypeLight value)? light,
    TResult Function(AppThemeTypeDark value)? dark,
    TResult Function(AppThemeTypeSystem value)? system,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AppThemeTypeDarkImplToJson(
      this,
    );
  }
}

abstract class AppThemeTypeDark implements AppThemeType {
  const factory AppThemeTypeDark() = _$AppThemeTypeDarkImpl;

  factory AppThemeTypeDark.fromJson(Map<String, dynamic> json) =
      _$AppThemeTypeDarkImpl.fromJson;
}

/// @nodoc
abstract class _$$AppThemeTypeSystemImplCopyWith<$Res> {
  factory _$$AppThemeTypeSystemImplCopyWith(_$AppThemeTypeSystemImpl value,
          $Res Function(_$AppThemeTypeSystemImpl) then) =
      __$$AppThemeTypeSystemImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppThemeTypeSystemImplCopyWithImpl<$Res>
    extends _$AppThemeTypeCopyWithImpl<$Res, _$AppThemeTypeSystemImpl>
    implements _$$AppThemeTypeSystemImplCopyWith<$Res> {
  __$$AppThemeTypeSystemImplCopyWithImpl(_$AppThemeTypeSystemImpl _value,
      $Res Function(_$AppThemeTypeSystemImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AppThemeTypeSystemImpl implements AppThemeTypeSystem {
  const _$AppThemeTypeSystemImpl({final String? $type})
      : $type = $type ?? 'system';

  factory _$AppThemeTypeSystemImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppThemeTypeSystemImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppThemeType.system()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppThemeTypeSystemImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() light,
    required TResult Function() dark,
    required TResult Function() system,
  }) {
    return system();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? light,
    TResult? Function()? dark,
    TResult? Function()? system,
  }) {
    return system?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? light,
    TResult Function()? dark,
    TResult Function()? system,
    required TResult orElse(),
  }) {
    if (system != null) {
      return system();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppThemeTypeLight value) light,
    required TResult Function(AppThemeTypeDark value) dark,
    required TResult Function(AppThemeTypeSystem value) system,
  }) {
    return system(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppThemeTypeLight value)? light,
    TResult? Function(AppThemeTypeDark value)? dark,
    TResult? Function(AppThemeTypeSystem value)? system,
  }) {
    return system?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppThemeTypeLight value)? light,
    TResult Function(AppThemeTypeDark value)? dark,
    TResult Function(AppThemeTypeSystem value)? system,
    required TResult orElse(),
  }) {
    if (system != null) {
      return system(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AppThemeTypeSystemImplToJson(
      this,
    );
  }
}

abstract class AppThemeTypeSystem implements AppThemeType {
  const factory AppThemeTypeSystem() = _$AppThemeTypeSystemImpl;

  factory AppThemeTypeSystem.fromJson(Map<String, dynamic> json) =
      _$AppThemeTypeSystemImpl.fromJson;
}

AppLocaleType _$AppLocaleTypeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'system':
      return AppLocaleTypeSystem.fromJson(json);
    case 'inner':
      return AppLocaleTypeInner.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AppLocaleType',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AppLocaleType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() system,
    required TResult Function(Locale locale) inner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? system,
    TResult? Function(Locale locale)? inner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? system,
    TResult Function(Locale locale)? inner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLocaleTypeSystem value) system,
    required TResult Function(AppLocaleTypeInner value) inner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLocaleTypeSystem value)? system,
    TResult? Function(AppLocaleTypeInner value)? inner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLocaleTypeSystem value)? system,
    TResult Function(AppLocaleTypeInner value)? inner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppLocaleTypeCopyWith<$Res> {
  factory $AppLocaleTypeCopyWith(
          AppLocaleType value, $Res Function(AppLocaleType) then) =
      _$AppLocaleTypeCopyWithImpl<$Res, AppLocaleType>;
}

/// @nodoc
class _$AppLocaleTypeCopyWithImpl<$Res, $Val extends AppLocaleType>
    implements $AppLocaleTypeCopyWith<$Res> {
  _$AppLocaleTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppLocaleTypeSystemImplCopyWith<$Res> {
  factory _$$AppLocaleTypeSystemImplCopyWith(_$AppLocaleTypeSystemImpl value,
          $Res Function(_$AppLocaleTypeSystemImpl) then) =
      __$$AppLocaleTypeSystemImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppLocaleTypeSystemImplCopyWithImpl<$Res>
    extends _$AppLocaleTypeCopyWithImpl<$Res, _$AppLocaleTypeSystemImpl>
    implements _$$AppLocaleTypeSystemImplCopyWith<$Res> {
  __$$AppLocaleTypeSystemImplCopyWithImpl(_$AppLocaleTypeSystemImpl _value,
      $Res Function(_$AppLocaleTypeSystemImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AppLocaleTypeSystemImpl implements AppLocaleTypeSystem {
  const _$AppLocaleTypeSystemImpl({final String? $type})
      : $type = $type ?? 'system';

  factory _$AppLocaleTypeSystemImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppLocaleTypeSystemImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppLocaleType.system()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppLocaleTypeSystemImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() system,
    required TResult Function(Locale locale) inner,
  }) {
    return system();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? system,
    TResult? Function(Locale locale)? inner,
  }) {
    return system?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? system,
    TResult Function(Locale locale)? inner,
    required TResult orElse(),
  }) {
    if (system != null) {
      return system();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLocaleTypeSystem value) system,
    required TResult Function(AppLocaleTypeInner value) inner,
  }) {
    return system(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLocaleTypeSystem value)? system,
    TResult? Function(AppLocaleTypeInner value)? inner,
  }) {
    return system?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLocaleTypeSystem value)? system,
    TResult Function(AppLocaleTypeInner value)? inner,
    required TResult orElse(),
  }) {
    if (system != null) {
      return system(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AppLocaleTypeSystemImplToJson(
      this,
    );
  }
}

abstract class AppLocaleTypeSystem implements AppLocaleType {
  const factory AppLocaleTypeSystem() = _$AppLocaleTypeSystemImpl;

  factory AppLocaleTypeSystem.fromJson(Map<String, dynamic> json) =
      _$AppLocaleTypeSystemImpl.fromJson;
}

/// @nodoc
abstract class _$$AppLocaleTypeInnerImplCopyWith<$Res> {
  factory _$$AppLocaleTypeInnerImplCopyWith(_$AppLocaleTypeInnerImpl value,
          $Res Function(_$AppLocaleTypeInnerImpl) then) =
      __$$AppLocaleTypeInnerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Locale locale});

  $LocaleCopyWith<$Res> get locale;
}

/// @nodoc
class __$$AppLocaleTypeInnerImplCopyWithImpl<$Res>
    extends _$AppLocaleTypeCopyWithImpl<$Res, _$AppLocaleTypeInnerImpl>
    implements _$$AppLocaleTypeInnerImplCopyWith<$Res> {
  __$$AppLocaleTypeInnerImplCopyWithImpl(_$AppLocaleTypeInnerImpl _value,
      $Res Function(_$AppLocaleTypeInnerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$AppLocaleTypeInnerImpl(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LocaleCopyWith<$Res> get locale {
    return $LocaleCopyWith<$Res>(_value.locale, (value) {
      return _then(_value.copyWith(locale: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$AppLocaleTypeInnerImpl implements AppLocaleTypeInner {
  const _$AppLocaleTypeInnerImpl({required this.locale, final String? $type})
      : $type = $type ?? 'inner';

  factory _$AppLocaleTypeInnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppLocaleTypeInnerImplFromJson(json);

  @override
  final Locale locale;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppLocaleType.inner(locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppLocaleTypeInnerImpl &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppLocaleTypeInnerImplCopyWith<_$AppLocaleTypeInnerImpl> get copyWith =>
      __$$AppLocaleTypeInnerImplCopyWithImpl<_$AppLocaleTypeInnerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() system,
    required TResult Function(Locale locale) inner,
  }) {
    return inner(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? system,
    TResult? Function(Locale locale)? inner,
  }) {
    return inner?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? system,
    TResult Function(Locale locale)? inner,
    required TResult orElse(),
  }) {
    if (inner != null) {
      return inner(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLocaleTypeSystem value) system,
    required TResult Function(AppLocaleTypeInner value) inner,
  }) {
    return inner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLocaleTypeSystem value)? system,
    TResult? Function(AppLocaleTypeInner value)? inner,
  }) {
    return inner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLocaleTypeSystem value)? system,
    TResult Function(AppLocaleTypeInner value)? inner,
    required TResult orElse(),
  }) {
    if (inner != null) {
      return inner(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AppLocaleTypeInnerImplToJson(
      this,
    );
  }
}

abstract class AppLocaleTypeInner implements AppLocaleType {
  const factory AppLocaleTypeInner({required final Locale locale}) =
      _$AppLocaleTypeInnerImpl;

  factory AppLocaleTypeInner.fromJson(Map<String, dynamic> json) =
      _$AppLocaleTypeInnerImpl.fromJson;

  Locale get locale;
  @JsonKey(ignore: true)
  _$$AppLocaleTypeInnerImplCopyWith<_$AppLocaleTypeInnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TrackingFreqLimit _$TrackingFreqLimitFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'fifteenMin':
      return TrackingFreqLimitFifteenMin.fromJson(json);
    case 'thirtyMin':
      return TrackingFreqLimitThirtyMin.fromJson(json);
    case 'fortyFiveMin':
      return TrackingFreqLimitFortyFiveMin.fromJson(json);
    case 'oneHour':
      return TrackingFreqLimitOneHour.fromJson(json);
    case 'unlimited':
      return TrackingFreqLimitUnlimited.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'TrackingFreqLimit',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$TrackingFreqLimit {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fifteenMin,
    required TResult Function() thirtyMin,
    required TResult Function() fortyFiveMin,
    required TResult Function() oneHour,
    required TResult Function() unlimited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fifteenMin,
    TResult? Function()? thirtyMin,
    TResult? Function()? fortyFiveMin,
    TResult? Function()? oneHour,
    TResult? Function()? unlimited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fifteenMin,
    TResult Function()? thirtyMin,
    TResult Function()? fortyFiveMin,
    TResult Function()? oneHour,
    TResult Function()? unlimited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrackingFreqLimitFifteenMin value) fifteenMin,
    required TResult Function(TrackingFreqLimitThirtyMin value) thirtyMin,
    required TResult Function(TrackingFreqLimitFortyFiveMin value) fortyFiveMin,
    required TResult Function(TrackingFreqLimitOneHour value) oneHour,
    required TResult Function(TrackingFreqLimitUnlimited value) unlimited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrackingFreqLimitFifteenMin value)? fifteenMin,
    TResult? Function(TrackingFreqLimitThirtyMin value)? thirtyMin,
    TResult? Function(TrackingFreqLimitFortyFiveMin value)? fortyFiveMin,
    TResult? Function(TrackingFreqLimitOneHour value)? oneHour,
    TResult? Function(TrackingFreqLimitUnlimited value)? unlimited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackingFreqLimitFifteenMin value)? fifteenMin,
    TResult Function(TrackingFreqLimitThirtyMin value)? thirtyMin,
    TResult Function(TrackingFreqLimitFortyFiveMin value)? fortyFiveMin,
    TResult Function(TrackingFreqLimitOneHour value)? oneHour,
    TResult Function(TrackingFreqLimitUnlimited value)? unlimited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingFreqLimitCopyWith<$Res> {
  factory $TrackingFreqLimitCopyWith(
          TrackingFreqLimit value, $Res Function(TrackingFreqLimit) then) =
      _$TrackingFreqLimitCopyWithImpl<$Res, TrackingFreqLimit>;
}

/// @nodoc
class _$TrackingFreqLimitCopyWithImpl<$Res, $Val extends TrackingFreqLimit>
    implements $TrackingFreqLimitCopyWith<$Res> {
  _$TrackingFreqLimitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TrackingFreqLimitFifteenMinImplCopyWith<$Res> {
  factory _$$TrackingFreqLimitFifteenMinImplCopyWith(
          _$TrackingFreqLimitFifteenMinImpl value,
          $Res Function(_$TrackingFreqLimitFifteenMinImpl) then) =
      __$$TrackingFreqLimitFifteenMinImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TrackingFreqLimitFifteenMinImplCopyWithImpl<$Res>
    extends _$TrackingFreqLimitCopyWithImpl<$Res,
        _$TrackingFreqLimitFifteenMinImpl>
    implements _$$TrackingFreqLimitFifteenMinImplCopyWith<$Res> {
  __$$TrackingFreqLimitFifteenMinImplCopyWithImpl(
      _$TrackingFreqLimitFifteenMinImpl _value,
      $Res Function(_$TrackingFreqLimitFifteenMinImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$TrackingFreqLimitFifteenMinImpl implements TrackingFreqLimitFifteenMin {
  const _$TrackingFreqLimitFifteenMinImpl({final String? $type})
      : $type = $type ?? 'fifteenMin';

  factory _$TrackingFreqLimitFifteenMinImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TrackingFreqLimitFifteenMinImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TrackingFreqLimit.fifteenMin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingFreqLimitFifteenMinImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fifteenMin,
    required TResult Function() thirtyMin,
    required TResult Function() fortyFiveMin,
    required TResult Function() oneHour,
    required TResult Function() unlimited,
  }) {
    return fifteenMin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fifteenMin,
    TResult? Function()? thirtyMin,
    TResult? Function()? fortyFiveMin,
    TResult? Function()? oneHour,
    TResult? Function()? unlimited,
  }) {
    return fifteenMin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fifteenMin,
    TResult Function()? thirtyMin,
    TResult Function()? fortyFiveMin,
    TResult Function()? oneHour,
    TResult Function()? unlimited,
    required TResult orElse(),
  }) {
    if (fifteenMin != null) {
      return fifteenMin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrackingFreqLimitFifteenMin value) fifteenMin,
    required TResult Function(TrackingFreqLimitThirtyMin value) thirtyMin,
    required TResult Function(TrackingFreqLimitFortyFiveMin value) fortyFiveMin,
    required TResult Function(TrackingFreqLimitOneHour value) oneHour,
    required TResult Function(TrackingFreqLimitUnlimited value) unlimited,
  }) {
    return fifteenMin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrackingFreqLimitFifteenMin value)? fifteenMin,
    TResult? Function(TrackingFreqLimitThirtyMin value)? thirtyMin,
    TResult? Function(TrackingFreqLimitFortyFiveMin value)? fortyFiveMin,
    TResult? Function(TrackingFreqLimitOneHour value)? oneHour,
    TResult? Function(TrackingFreqLimitUnlimited value)? unlimited,
  }) {
    return fifteenMin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackingFreqLimitFifteenMin value)? fifteenMin,
    TResult Function(TrackingFreqLimitThirtyMin value)? thirtyMin,
    TResult Function(TrackingFreqLimitFortyFiveMin value)? fortyFiveMin,
    TResult Function(TrackingFreqLimitOneHour value)? oneHour,
    TResult Function(TrackingFreqLimitUnlimited value)? unlimited,
    required TResult orElse(),
  }) {
    if (fifteenMin != null) {
      return fifteenMin(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackingFreqLimitFifteenMinImplToJson(
      this,
    );
  }
}

abstract class TrackingFreqLimitFifteenMin implements TrackingFreqLimit {
  const factory TrackingFreqLimitFifteenMin() =
      _$TrackingFreqLimitFifteenMinImpl;

  factory TrackingFreqLimitFifteenMin.fromJson(Map<String, dynamic> json) =
      _$TrackingFreqLimitFifteenMinImpl.fromJson;
}

/// @nodoc
abstract class _$$TrackingFreqLimitThirtyMinImplCopyWith<$Res> {
  factory _$$TrackingFreqLimitThirtyMinImplCopyWith(
          _$TrackingFreqLimitThirtyMinImpl value,
          $Res Function(_$TrackingFreqLimitThirtyMinImpl) then) =
      __$$TrackingFreqLimitThirtyMinImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TrackingFreqLimitThirtyMinImplCopyWithImpl<$Res>
    extends _$TrackingFreqLimitCopyWithImpl<$Res,
        _$TrackingFreqLimitThirtyMinImpl>
    implements _$$TrackingFreqLimitThirtyMinImplCopyWith<$Res> {
  __$$TrackingFreqLimitThirtyMinImplCopyWithImpl(
      _$TrackingFreqLimitThirtyMinImpl _value,
      $Res Function(_$TrackingFreqLimitThirtyMinImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$TrackingFreqLimitThirtyMinImpl implements TrackingFreqLimitThirtyMin {
  const _$TrackingFreqLimitThirtyMinImpl({final String? $type})
      : $type = $type ?? 'thirtyMin';

  factory _$TrackingFreqLimitThirtyMinImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TrackingFreqLimitThirtyMinImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TrackingFreqLimit.thirtyMin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingFreqLimitThirtyMinImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fifteenMin,
    required TResult Function() thirtyMin,
    required TResult Function() fortyFiveMin,
    required TResult Function() oneHour,
    required TResult Function() unlimited,
  }) {
    return thirtyMin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fifteenMin,
    TResult? Function()? thirtyMin,
    TResult? Function()? fortyFiveMin,
    TResult? Function()? oneHour,
    TResult? Function()? unlimited,
  }) {
    return thirtyMin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fifteenMin,
    TResult Function()? thirtyMin,
    TResult Function()? fortyFiveMin,
    TResult Function()? oneHour,
    TResult Function()? unlimited,
    required TResult orElse(),
  }) {
    if (thirtyMin != null) {
      return thirtyMin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrackingFreqLimitFifteenMin value) fifteenMin,
    required TResult Function(TrackingFreqLimitThirtyMin value) thirtyMin,
    required TResult Function(TrackingFreqLimitFortyFiveMin value) fortyFiveMin,
    required TResult Function(TrackingFreqLimitOneHour value) oneHour,
    required TResult Function(TrackingFreqLimitUnlimited value) unlimited,
  }) {
    return thirtyMin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrackingFreqLimitFifteenMin value)? fifteenMin,
    TResult? Function(TrackingFreqLimitThirtyMin value)? thirtyMin,
    TResult? Function(TrackingFreqLimitFortyFiveMin value)? fortyFiveMin,
    TResult? Function(TrackingFreqLimitOneHour value)? oneHour,
    TResult? Function(TrackingFreqLimitUnlimited value)? unlimited,
  }) {
    return thirtyMin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackingFreqLimitFifteenMin value)? fifteenMin,
    TResult Function(TrackingFreqLimitThirtyMin value)? thirtyMin,
    TResult Function(TrackingFreqLimitFortyFiveMin value)? fortyFiveMin,
    TResult Function(TrackingFreqLimitOneHour value)? oneHour,
    TResult Function(TrackingFreqLimitUnlimited value)? unlimited,
    required TResult orElse(),
  }) {
    if (thirtyMin != null) {
      return thirtyMin(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackingFreqLimitThirtyMinImplToJson(
      this,
    );
  }
}

abstract class TrackingFreqLimitThirtyMin implements TrackingFreqLimit {
  const factory TrackingFreqLimitThirtyMin() = _$TrackingFreqLimitThirtyMinImpl;

  factory TrackingFreqLimitThirtyMin.fromJson(Map<String, dynamic> json) =
      _$TrackingFreqLimitThirtyMinImpl.fromJson;
}

/// @nodoc
abstract class _$$TrackingFreqLimitFortyFiveMinImplCopyWith<$Res> {
  factory _$$TrackingFreqLimitFortyFiveMinImplCopyWith(
          _$TrackingFreqLimitFortyFiveMinImpl value,
          $Res Function(_$TrackingFreqLimitFortyFiveMinImpl) then) =
      __$$TrackingFreqLimitFortyFiveMinImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TrackingFreqLimitFortyFiveMinImplCopyWithImpl<$Res>
    extends _$TrackingFreqLimitCopyWithImpl<$Res,
        _$TrackingFreqLimitFortyFiveMinImpl>
    implements _$$TrackingFreqLimitFortyFiveMinImplCopyWith<$Res> {
  __$$TrackingFreqLimitFortyFiveMinImplCopyWithImpl(
      _$TrackingFreqLimitFortyFiveMinImpl _value,
      $Res Function(_$TrackingFreqLimitFortyFiveMinImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$TrackingFreqLimitFortyFiveMinImpl
    implements TrackingFreqLimitFortyFiveMin {
  const _$TrackingFreqLimitFortyFiveMinImpl({final String? $type})
      : $type = $type ?? 'fortyFiveMin';

  factory _$TrackingFreqLimitFortyFiveMinImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TrackingFreqLimitFortyFiveMinImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TrackingFreqLimit.fortyFiveMin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingFreqLimitFortyFiveMinImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fifteenMin,
    required TResult Function() thirtyMin,
    required TResult Function() fortyFiveMin,
    required TResult Function() oneHour,
    required TResult Function() unlimited,
  }) {
    return fortyFiveMin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fifteenMin,
    TResult? Function()? thirtyMin,
    TResult? Function()? fortyFiveMin,
    TResult? Function()? oneHour,
    TResult? Function()? unlimited,
  }) {
    return fortyFiveMin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fifteenMin,
    TResult Function()? thirtyMin,
    TResult Function()? fortyFiveMin,
    TResult Function()? oneHour,
    TResult Function()? unlimited,
    required TResult orElse(),
  }) {
    if (fortyFiveMin != null) {
      return fortyFiveMin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrackingFreqLimitFifteenMin value) fifteenMin,
    required TResult Function(TrackingFreqLimitThirtyMin value) thirtyMin,
    required TResult Function(TrackingFreqLimitFortyFiveMin value) fortyFiveMin,
    required TResult Function(TrackingFreqLimitOneHour value) oneHour,
    required TResult Function(TrackingFreqLimitUnlimited value) unlimited,
  }) {
    return fortyFiveMin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrackingFreqLimitFifteenMin value)? fifteenMin,
    TResult? Function(TrackingFreqLimitThirtyMin value)? thirtyMin,
    TResult? Function(TrackingFreqLimitFortyFiveMin value)? fortyFiveMin,
    TResult? Function(TrackingFreqLimitOneHour value)? oneHour,
    TResult? Function(TrackingFreqLimitUnlimited value)? unlimited,
  }) {
    return fortyFiveMin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackingFreqLimitFifteenMin value)? fifteenMin,
    TResult Function(TrackingFreqLimitThirtyMin value)? thirtyMin,
    TResult Function(TrackingFreqLimitFortyFiveMin value)? fortyFiveMin,
    TResult Function(TrackingFreqLimitOneHour value)? oneHour,
    TResult Function(TrackingFreqLimitUnlimited value)? unlimited,
    required TResult orElse(),
  }) {
    if (fortyFiveMin != null) {
      return fortyFiveMin(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackingFreqLimitFortyFiveMinImplToJson(
      this,
    );
  }
}

abstract class TrackingFreqLimitFortyFiveMin implements TrackingFreqLimit {
  const factory TrackingFreqLimitFortyFiveMin() =
      _$TrackingFreqLimitFortyFiveMinImpl;

  factory TrackingFreqLimitFortyFiveMin.fromJson(Map<String, dynamic> json) =
      _$TrackingFreqLimitFortyFiveMinImpl.fromJson;
}

/// @nodoc
abstract class _$$TrackingFreqLimitOneHourImplCopyWith<$Res> {
  factory _$$TrackingFreqLimitOneHourImplCopyWith(
          _$TrackingFreqLimitOneHourImpl value,
          $Res Function(_$TrackingFreqLimitOneHourImpl) then) =
      __$$TrackingFreqLimitOneHourImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TrackingFreqLimitOneHourImplCopyWithImpl<$Res>
    extends _$TrackingFreqLimitCopyWithImpl<$Res,
        _$TrackingFreqLimitOneHourImpl>
    implements _$$TrackingFreqLimitOneHourImplCopyWith<$Res> {
  __$$TrackingFreqLimitOneHourImplCopyWithImpl(
      _$TrackingFreqLimitOneHourImpl _value,
      $Res Function(_$TrackingFreqLimitOneHourImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$TrackingFreqLimitOneHourImpl implements TrackingFreqLimitOneHour {
  const _$TrackingFreqLimitOneHourImpl({final String? $type})
      : $type = $type ?? 'oneHour';

  factory _$TrackingFreqLimitOneHourImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackingFreqLimitOneHourImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TrackingFreqLimit.oneHour()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingFreqLimitOneHourImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fifteenMin,
    required TResult Function() thirtyMin,
    required TResult Function() fortyFiveMin,
    required TResult Function() oneHour,
    required TResult Function() unlimited,
  }) {
    return oneHour();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fifteenMin,
    TResult? Function()? thirtyMin,
    TResult? Function()? fortyFiveMin,
    TResult? Function()? oneHour,
    TResult? Function()? unlimited,
  }) {
    return oneHour?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fifteenMin,
    TResult Function()? thirtyMin,
    TResult Function()? fortyFiveMin,
    TResult Function()? oneHour,
    TResult Function()? unlimited,
    required TResult orElse(),
  }) {
    if (oneHour != null) {
      return oneHour();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrackingFreqLimitFifteenMin value) fifteenMin,
    required TResult Function(TrackingFreqLimitThirtyMin value) thirtyMin,
    required TResult Function(TrackingFreqLimitFortyFiveMin value) fortyFiveMin,
    required TResult Function(TrackingFreqLimitOneHour value) oneHour,
    required TResult Function(TrackingFreqLimitUnlimited value) unlimited,
  }) {
    return oneHour(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrackingFreqLimitFifteenMin value)? fifteenMin,
    TResult? Function(TrackingFreqLimitThirtyMin value)? thirtyMin,
    TResult? Function(TrackingFreqLimitFortyFiveMin value)? fortyFiveMin,
    TResult? Function(TrackingFreqLimitOneHour value)? oneHour,
    TResult? Function(TrackingFreqLimitUnlimited value)? unlimited,
  }) {
    return oneHour?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackingFreqLimitFifteenMin value)? fifteenMin,
    TResult Function(TrackingFreqLimitThirtyMin value)? thirtyMin,
    TResult Function(TrackingFreqLimitFortyFiveMin value)? fortyFiveMin,
    TResult Function(TrackingFreqLimitOneHour value)? oneHour,
    TResult Function(TrackingFreqLimitUnlimited value)? unlimited,
    required TResult orElse(),
  }) {
    if (oneHour != null) {
      return oneHour(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackingFreqLimitOneHourImplToJson(
      this,
    );
  }
}

abstract class TrackingFreqLimitOneHour implements TrackingFreqLimit {
  const factory TrackingFreqLimitOneHour() = _$TrackingFreqLimitOneHourImpl;

  factory TrackingFreqLimitOneHour.fromJson(Map<String, dynamic> json) =
      _$TrackingFreqLimitOneHourImpl.fromJson;
}

/// @nodoc
abstract class _$$TrackingFreqLimitUnlimitedImplCopyWith<$Res> {
  factory _$$TrackingFreqLimitUnlimitedImplCopyWith(
          _$TrackingFreqLimitUnlimitedImpl value,
          $Res Function(_$TrackingFreqLimitUnlimitedImpl) then) =
      __$$TrackingFreqLimitUnlimitedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TrackingFreqLimitUnlimitedImplCopyWithImpl<$Res>
    extends _$TrackingFreqLimitCopyWithImpl<$Res,
        _$TrackingFreqLimitUnlimitedImpl>
    implements _$$TrackingFreqLimitUnlimitedImplCopyWith<$Res> {
  __$$TrackingFreqLimitUnlimitedImplCopyWithImpl(
      _$TrackingFreqLimitUnlimitedImpl _value,
      $Res Function(_$TrackingFreqLimitUnlimitedImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$TrackingFreqLimitUnlimitedImpl implements TrackingFreqLimitUnlimited {
  const _$TrackingFreqLimitUnlimitedImpl({final String? $type})
      : $type = $type ?? 'unlimited';

  factory _$TrackingFreqLimitUnlimitedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TrackingFreqLimitUnlimitedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TrackingFreqLimit.unlimited()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingFreqLimitUnlimitedImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fifteenMin,
    required TResult Function() thirtyMin,
    required TResult Function() fortyFiveMin,
    required TResult Function() oneHour,
    required TResult Function() unlimited,
  }) {
    return unlimited();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fifteenMin,
    TResult? Function()? thirtyMin,
    TResult? Function()? fortyFiveMin,
    TResult? Function()? oneHour,
    TResult? Function()? unlimited,
  }) {
    return unlimited?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fifteenMin,
    TResult Function()? thirtyMin,
    TResult Function()? fortyFiveMin,
    TResult Function()? oneHour,
    TResult Function()? unlimited,
    required TResult orElse(),
  }) {
    if (unlimited != null) {
      return unlimited();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrackingFreqLimitFifteenMin value) fifteenMin,
    required TResult Function(TrackingFreqLimitThirtyMin value) thirtyMin,
    required TResult Function(TrackingFreqLimitFortyFiveMin value) fortyFiveMin,
    required TResult Function(TrackingFreqLimitOneHour value) oneHour,
    required TResult Function(TrackingFreqLimitUnlimited value) unlimited,
  }) {
    return unlimited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrackingFreqLimitFifteenMin value)? fifteenMin,
    TResult? Function(TrackingFreqLimitThirtyMin value)? thirtyMin,
    TResult? Function(TrackingFreqLimitFortyFiveMin value)? fortyFiveMin,
    TResult? Function(TrackingFreqLimitOneHour value)? oneHour,
    TResult? Function(TrackingFreqLimitUnlimited value)? unlimited,
  }) {
    return unlimited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackingFreqLimitFifteenMin value)? fifteenMin,
    TResult Function(TrackingFreqLimitThirtyMin value)? thirtyMin,
    TResult Function(TrackingFreqLimitFortyFiveMin value)? fortyFiveMin,
    TResult Function(TrackingFreqLimitOneHour value)? oneHour,
    TResult Function(TrackingFreqLimitUnlimited value)? unlimited,
    required TResult orElse(),
  }) {
    if (unlimited != null) {
      return unlimited(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackingFreqLimitUnlimitedImplToJson(
      this,
    );
  }
}

abstract class TrackingFreqLimitUnlimited implements TrackingFreqLimit {
  const factory TrackingFreqLimitUnlimited() = _$TrackingFreqLimitUnlimitedImpl;

  factory TrackingFreqLimitUnlimited.fromJson(Map<String, dynamic> json) =
      _$TrackingFreqLimitUnlimitedImpl.fromJson;
}

AutoTrackingFreq _$AutoTrackingFreqFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'sixHours':
      return AutoTrackingFreqSixHours.fromJson(json);
    case 'twelveHours':
      return AutoTrackingFreqTwelveHours.fromJson(json);
    case 'oneDay':
      return AutoTrackingFreqOneDay.fromJson(json);
    case 'threeDays':
      return AutoTrackingFreqThreeDays.fromJson(json);
    case 'oneWeek':
      return AutoTrackingFreqOneWeek.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AutoTrackingFreq',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AutoTrackingFreq {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sixHours,
    required TResult Function() twelveHours,
    required TResult Function() oneDay,
    required TResult Function() threeDays,
    required TResult Function() oneWeek,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sixHours,
    TResult? Function()? twelveHours,
    TResult? Function()? oneDay,
    TResult? Function()? threeDays,
    TResult? Function()? oneWeek,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sixHours,
    TResult Function()? twelveHours,
    TResult Function()? oneDay,
    TResult Function()? threeDays,
    TResult Function()? oneWeek,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AutoTrackingFreqSixHours value) sixHours,
    required TResult Function(AutoTrackingFreqTwelveHours value) twelveHours,
    required TResult Function(AutoTrackingFreqOneDay value) oneDay,
    required TResult Function(AutoTrackingFreqThreeDays value) threeDays,
    required TResult Function(AutoTrackingFreqOneWeek value) oneWeek,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AutoTrackingFreqSixHours value)? sixHours,
    TResult? Function(AutoTrackingFreqTwelveHours value)? twelveHours,
    TResult? Function(AutoTrackingFreqOneDay value)? oneDay,
    TResult? Function(AutoTrackingFreqThreeDays value)? threeDays,
    TResult? Function(AutoTrackingFreqOneWeek value)? oneWeek,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AutoTrackingFreqSixHours value)? sixHours,
    TResult Function(AutoTrackingFreqTwelveHours value)? twelveHours,
    TResult Function(AutoTrackingFreqOneDay value)? oneDay,
    TResult Function(AutoTrackingFreqThreeDays value)? threeDays,
    TResult Function(AutoTrackingFreqOneWeek value)? oneWeek,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoTrackingFreqCopyWith<$Res> {
  factory $AutoTrackingFreqCopyWith(
          AutoTrackingFreq value, $Res Function(AutoTrackingFreq) then) =
      _$AutoTrackingFreqCopyWithImpl<$Res, AutoTrackingFreq>;
}

/// @nodoc
class _$AutoTrackingFreqCopyWithImpl<$Res, $Val extends AutoTrackingFreq>
    implements $AutoTrackingFreqCopyWith<$Res> {
  _$AutoTrackingFreqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AutoTrackingFreqSixHoursImplCopyWith<$Res> {
  factory _$$AutoTrackingFreqSixHoursImplCopyWith(
          _$AutoTrackingFreqSixHoursImpl value,
          $Res Function(_$AutoTrackingFreqSixHoursImpl) then) =
      __$$AutoTrackingFreqSixHoursImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AutoTrackingFreqSixHoursImplCopyWithImpl<$Res>
    extends _$AutoTrackingFreqCopyWithImpl<$Res, _$AutoTrackingFreqSixHoursImpl>
    implements _$$AutoTrackingFreqSixHoursImplCopyWith<$Res> {
  __$$AutoTrackingFreqSixHoursImplCopyWithImpl(
      _$AutoTrackingFreqSixHoursImpl _value,
      $Res Function(_$AutoTrackingFreqSixHoursImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AutoTrackingFreqSixHoursImpl implements AutoTrackingFreqSixHours {
  const _$AutoTrackingFreqSixHoursImpl({final String? $type})
      : $type = $type ?? 'sixHours';

  factory _$AutoTrackingFreqSixHoursImpl.fromJson(Map<String, dynamic> json) =>
      _$$AutoTrackingFreqSixHoursImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AutoTrackingFreq.sixHours()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoTrackingFreqSixHoursImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sixHours,
    required TResult Function() twelveHours,
    required TResult Function() oneDay,
    required TResult Function() threeDays,
    required TResult Function() oneWeek,
  }) {
    return sixHours();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sixHours,
    TResult? Function()? twelveHours,
    TResult? Function()? oneDay,
    TResult? Function()? threeDays,
    TResult? Function()? oneWeek,
  }) {
    return sixHours?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sixHours,
    TResult Function()? twelveHours,
    TResult Function()? oneDay,
    TResult Function()? threeDays,
    TResult Function()? oneWeek,
    required TResult orElse(),
  }) {
    if (sixHours != null) {
      return sixHours();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AutoTrackingFreqSixHours value) sixHours,
    required TResult Function(AutoTrackingFreqTwelveHours value) twelveHours,
    required TResult Function(AutoTrackingFreqOneDay value) oneDay,
    required TResult Function(AutoTrackingFreqThreeDays value) threeDays,
    required TResult Function(AutoTrackingFreqOneWeek value) oneWeek,
  }) {
    return sixHours(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AutoTrackingFreqSixHours value)? sixHours,
    TResult? Function(AutoTrackingFreqTwelveHours value)? twelveHours,
    TResult? Function(AutoTrackingFreqOneDay value)? oneDay,
    TResult? Function(AutoTrackingFreqThreeDays value)? threeDays,
    TResult? Function(AutoTrackingFreqOneWeek value)? oneWeek,
  }) {
    return sixHours?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AutoTrackingFreqSixHours value)? sixHours,
    TResult Function(AutoTrackingFreqTwelveHours value)? twelveHours,
    TResult Function(AutoTrackingFreqOneDay value)? oneDay,
    TResult Function(AutoTrackingFreqThreeDays value)? threeDays,
    TResult Function(AutoTrackingFreqOneWeek value)? oneWeek,
    required TResult orElse(),
  }) {
    if (sixHours != null) {
      return sixHours(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AutoTrackingFreqSixHoursImplToJson(
      this,
    );
  }
}

abstract class AutoTrackingFreqSixHours implements AutoTrackingFreq {
  const factory AutoTrackingFreqSixHours() = _$AutoTrackingFreqSixHoursImpl;

  factory AutoTrackingFreqSixHours.fromJson(Map<String, dynamic> json) =
      _$AutoTrackingFreqSixHoursImpl.fromJson;
}

/// @nodoc
abstract class _$$AutoTrackingFreqTwelveHoursImplCopyWith<$Res> {
  factory _$$AutoTrackingFreqTwelveHoursImplCopyWith(
          _$AutoTrackingFreqTwelveHoursImpl value,
          $Res Function(_$AutoTrackingFreqTwelveHoursImpl) then) =
      __$$AutoTrackingFreqTwelveHoursImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AutoTrackingFreqTwelveHoursImplCopyWithImpl<$Res>
    extends _$AutoTrackingFreqCopyWithImpl<$Res,
        _$AutoTrackingFreqTwelveHoursImpl>
    implements _$$AutoTrackingFreqTwelveHoursImplCopyWith<$Res> {
  __$$AutoTrackingFreqTwelveHoursImplCopyWithImpl(
      _$AutoTrackingFreqTwelveHoursImpl _value,
      $Res Function(_$AutoTrackingFreqTwelveHoursImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AutoTrackingFreqTwelveHoursImpl implements AutoTrackingFreqTwelveHours {
  const _$AutoTrackingFreqTwelveHoursImpl({final String? $type})
      : $type = $type ?? 'twelveHours';

  factory _$AutoTrackingFreqTwelveHoursImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AutoTrackingFreqTwelveHoursImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AutoTrackingFreq.twelveHours()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoTrackingFreqTwelveHoursImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sixHours,
    required TResult Function() twelveHours,
    required TResult Function() oneDay,
    required TResult Function() threeDays,
    required TResult Function() oneWeek,
  }) {
    return twelveHours();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sixHours,
    TResult? Function()? twelveHours,
    TResult? Function()? oneDay,
    TResult? Function()? threeDays,
    TResult? Function()? oneWeek,
  }) {
    return twelveHours?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sixHours,
    TResult Function()? twelveHours,
    TResult Function()? oneDay,
    TResult Function()? threeDays,
    TResult Function()? oneWeek,
    required TResult orElse(),
  }) {
    if (twelveHours != null) {
      return twelveHours();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AutoTrackingFreqSixHours value) sixHours,
    required TResult Function(AutoTrackingFreqTwelveHours value) twelveHours,
    required TResult Function(AutoTrackingFreqOneDay value) oneDay,
    required TResult Function(AutoTrackingFreqThreeDays value) threeDays,
    required TResult Function(AutoTrackingFreqOneWeek value) oneWeek,
  }) {
    return twelveHours(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AutoTrackingFreqSixHours value)? sixHours,
    TResult? Function(AutoTrackingFreqTwelveHours value)? twelveHours,
    TResult? Function(AutoTrackingFreqOneDay value)? oneDay,
    TResult? Function(AutoTrackingFreqThreeDays value)? threeDays,
    TResult? Function(AutoTrackingFreqOneWeek value)? oneWeek,
  }) {
    return twelveHours?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AutoTrackingFreqSixHours value)? sixHours,
    TResult Function(AutoTrackingFreqTwelveHours value)? twelveHours,
    TResult Function(AutoTrackingFreqOneDay value)? oneDay,
    TResult Function(AutoTrackingFreqThreeDays value)? threeDays,
    TResult Function(AutoTrackingFreqOneWeek value)? oneWeek,
    required TResult orElse(),
  }) {
    if (twelveHours != null) {
      return twelveHours(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AutoTrackingFreqTwelveHoursImplToJson(
      this,
    );
  }
}

abstract class AutoTrackingFreqTwelveHours implements AutoTrackingFreq {
  const factory AutoTrackingFreqTwelveHours() =
      _$AutoTrackingFreqTwelveHoursImpl;

  factory AutoTrackingFreqTwelveHours.fromJson(Map<String, dynamic> json) =
      _$AutoTrackingFreqTwelveHoursImpl.fromJson;
}

/// @nodoc
abstract class _$$AutoTrackingFreqOneDayImplCopyWith<$Res> {
  factory _$$AutoTrackingFreqOneDayImplCopyWith(
          _$AutoTrackingFreqOneDayImpl value,
          $Res Function(_$AutoTrackingFreqOneDayImpl) then) =
      __$$AutoTrackingFreqOneDayImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AutoTrackingFreqOneDayImplCopyWithImpl<$Res>
    extends _$AutoTrackingFreqCopyWithImpl<$Res, _$AutoTrackingFreqOneDayImpl>
    implements _$$AutoTrackingFreqOneDayImplCopyWith<$Res> {
  __$$AutoTrackingFreqOneDayImplCopyWithImpl(
      _$AutoTrackingFreqOneDayImpl _value,
      $Res Function(_$AutoTrackingFreqOneDayImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AutoTrackingFreqOneDayImpl implements AutoTrackingFreqOneDay {
  const _$AutoTrackingFreqOneDayImpl({final String? $type})
      : $type = $type ?? 'oneDay';

  factory _$AutoTrackingFreqOneDayImpl.fromJson(Map<String, dynamic> json) =>
      _$$AutoTrackingFreqOneDayImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AutoTrackingFreq.oneDay()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoTrackingFreqOneDayImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sixHours,
    required TResult Function() twelveHours,
    required TResult Function() oneDay,
    required TResult Function() threeDays,
    required TResult Function() oneWeek,
  }) {
    return oneDay();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sixHours,
    TResult? Function()? twelveHours,
    TResult? Function()? oneDay,
    TResult? Function()? threeDays,
    TResult? Function()? oneWeek,
  }) {
    return oneDay?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sixHours,
    TResult Function()? twelveHours,
    TResult Function()? oneDay,
    TResult Function()? threeDays,
    TResult Function()? oneWeek,
    required TResult orElse(),
  }) {
    if (oneDay != null) {
      return oneDay();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AutoTrackingFreqSixHours value) sixHours,
    required TResult Function(AutoTrackingFreqTwelveHours value) twelveHours,
    required TResult Function(AutoTrackingFreqOneDay value) oneDay,
    required TResult Function(AutoTrackingFreqThreeDays value) threeDays,
    required TResult Function(AutoTrackingFreqOneWeek value) oneWeek,
  }) {
    return oneDay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AutoTrackingFreqSixHours value)? sixHours,
    TResult? Function(AutoTrackingFreqTwelveHours value)? twelveHours,
    TResult? Function(AutoTrackingFreqOneDay value)? oneDay,
    TResult? Function(AutoTrackingFreqThreeDays value)? threeDays,
    TResult? Function(AutoTrackingFreqOneWeek value)? oneWeek,
  }) {
    return oneDay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AutoTrackingFreqSixHours value)? sixHours,
    TResult Function(AutoTrackingFreqTwelveHours value)? twelveHours,
    TResult Function(AutoTrackingFreqOneDay value)? oneDay,
    TResult Function(AutoTrackingFreqThreeDays value)? threeDays,
    TResult Function(AutoTrackingFreqOneWeek value)? oneWeek,
    required TResult orElse(),
  }) {
    if (oneDay != null) {
      return oneDay(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AutoTrackingFreqOneDayImplToJson(
      this,
    );
  }
}

abstract class AutoTrackingFreqOneDay implements AutoTrackingFreq {
  const factory AutoTrackingFreqOneDay() = _$AutoTrackingFreqOneDayImpl;

  factory AutoTrackingFreqOneDay.fromJson(Map<String, dynamic> json) =
      _$AutoTrackingFreqOneDayImpl.fromJson;
}

/// @nodoc
abstract class _$$AutoTrackingFreqThreeDaysImplCopyWith<$Res> {
  factory _$$AutoTrackingFreqThreeDaysImplCopyWith(
          _$AutoTrackingFreqThreeDaysImpl value,
          $Res Function(_$AutoTrackingFreqThreeDaysImpl) then) =
      __$$AutoTrackingFreqThreeDaysImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AutoTrackingFreqThreeDaysImplCopyWithImpl<$Res>
    extends _$AutoTrackingFreqCopyWithImpl<$Res,
        _$AutoTrackingFreqThreeDaysImpl>
    implements _$$AutoTrackingFreqThreeDaysImplCopyWith<$Res> {
  __$$AutoTrackingFreqThreeDaysImplCopyWithImpl(
      _$AutoTrackingFreqThreeDaysImpl _value,
      $Res Function(_$AutoTrackingFreqThreeDaysImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AutoTrackingFreqThreeDaysImpl implements AutoTrackingFreqThreeDays {
  const _$AutoTrackingFreqThreeDaysImpl({final String? $type})
      : $type = $type ?? 'threeDays';

  factory _$AutoTrackingFreqThreeDaysImpl.fromJson(Map<String, dynamic> json) =>
      _$$AutoTrackingFreqThreeDaysImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AutoTrackingFreq.threeDays()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoTrackingFreqThreeDaysImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sixHours,
    required TResult Function() twelveHours,
    required TResult Function() oneDay,
    required TResult Function() threeDays,
    required TResult Function() oneWeek,
  }) {
    return threeDays();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sixHours,
    TResult? Function()? twelveHours,
    TResult? Function()? oneDay,
    TResult? Function()? threeDays,
    TResult? Function()? oneWeek,
  }) {
    return threeDays?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sixHours,
    TResult Function()? twelveHours,
    TResult Function()? oneDay,
    TResult Function()? threeDays,
    TResult Function()? oneWeek,
    required TResult orElse(),
  }) {
    if (threeDays != null) {
      return threeDays();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AutoTrackingFreqSixHours value) sixHours,
    required TResult Function(AutoTrackingFreqTwelveHours value) twelveHours,
    required TResult Function(AutoTrackingFreqOneDay value) oneDay,
    required TResult Function(AutoTrackingFreqThreeDays value) threeDays,
    required TResult Function(AutoTrackingFreqOneWeek value) oneWeek,
  }) {
    return threeDays(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AutoTrackingFreqSixHours value)? sixHours,
    TResult? Function(AutoTrackingFreqTwelveHours value)? twelveHours,
    TResult? Function(AutoTrackingFreqOneDay value)? oneDay,
    TResult? Function(AutoTrackingFreqThreeDays value)? threeDays,
    TResult? Function(AutoTrackingFreqOneWeek value)? oneWeek,
  }) {
    return threeDays?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AutoTrackingFreqSixHours value)? sixHours,
    TResult Function(AutoTrackingFreqTwelveHours value)? twelveHours,
    TResult Function(AutoTrackingFreqOneDay value)? oneDay,
    TResult Function(AutoTrackingFreqThreeDays value)? threeDays,
    TResult Function(AutoTrackingFreqOneWeek value)? oneWeek,
    required TResult orElse(),
  }) {
    if (threeDays != null) {
      return threeDays(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AutoTrackingFreqThreeDaysImplToJson(
      this,
    );
  }
}

abstract class AutoTrackingFreqThreeDays implements AutoTrackingFreq {
  const factory AutoTrackingFreqThreeDays() = _$AutoTrackingFreqThreeDaysImpl;

  factory AutoTrackingFreqThreeDays.fromJson(Map<String, dynamic> json) =
      _$AutoTrackingFreqThreeDaysImpl.fromJson;
}

/// @nodoc
abstract class _$$AutoTrackingFreqOneWeekImplCopyWith<$Res> {
  factory _$$AutoTrackingFreqOneWeekImplCopyWith(
          _$AutoTrackingFreqOneWeekImpl value,
          $Res Function(_$AutoTrackingFreqOneWeekImpl) then) =
      __$$AutoTrackingFreqOneWeekImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AutoTrackingFreqOneWeekImplCopyWithImpl<$Res>
    extends _$AutoTrackingFreqCopyWithImpl<$Res, _$AutoTrackingFreqOneWeekImpl>
    implements _$$AutoTrackingFreqOneWeekImplCopyWith<$Res> {
  __$$AutoTrackingFreqOneWeekImplCopyWithImpl(
      _$AutoTrackingFreqOneWeekImpl _value,
      $Res Function(_$AutoTrackingFreqOneWeekImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AutoTrackingFreqOneWeekImpl implements AutoTrackingFreqOneWeek {
  const _$AutoTrackingFreqOneWeekImpl({final String? $type})
      : $type = $type ?? 'oneWeek';

  factory _$AutoTrackingFreqOneWeekImpl.fromJson(Map<String, dynamic> json) =>
      _$$AutoTrackingFreqOneWeekImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AutoTrackingFreq.oneWeek()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoTrackingFreqOneWeekImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sixHours,
    required TResult Function() twelveHours,
    required TResult Function() oneDay,
    required TResult Function() threeDays,
    required TResult Function() oneWeek,
  }) {
    return oneWeek();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sixHours,
    TResult? Function()? twelveHours,
    TResult? Function()? oneDay,
    TResult? Function()? threeDays,
    TResult? Function()? oneWeek,
  }) {
    return oneWeek?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sixHours,
    TResult Function()? twelveHours,
    TResult Function()? oneDay,
    TResult Function()? threeDays,
    TResult Function()? oneWeek,
    required TResult orElse(),
  }) {
    if (oneWeek != null) {
      return oneWeek();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AutoTrackingFreqSixHours value) sixHours,
    required TResult Function(AutoTrackingFreqTwelveHours value) twelveHours,
    required TResult Function(AutoTrackingFreqOneDay value) oneDay,
    required TResult Function(AutoTrackingFreqThreeDays value) threeDays,
    required TResult Function(AutoTrackingFreqOneWeek value) oneWeek,
  }) {
    return oneWeek(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AutoTrackingFreqSixHours value)? sixHours,
    TResult? Function(AutoTrackingFreqTwelveHours value)? twelveHours,
    TResult? Function(AutoTrackingFreqOneDay value)? oneDay,
    TResult? Function(AutoTrackingFreqThreeDays value)? threeDays,
    TResult? Function(AutoTrackingFreqOneWeek value)? oneWeek,
  }) {
    return oneWeek?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AutoTrackingFreqSixHours value)? sixHours,
    TResult Function(AutoTrackingFreqTwelveHours value)? twelveHours,
    TResult Function(AutoTrackingFreqOneDay value)? oneDay,
    TResult Function(AutoTrackingFreqThreeDays value)? threeDays,
    TResult Function(AutoTrackingFreqOneWeek value)? oneWeek,
    required TResult orElse(),
  }) {
    if (oneWeek != null) {
      return oneWeek(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AutoTrackingFreqOneWeekImplToJson(
      this,
    );
  }
}

abstract class AutoTrackingFreqOneWeek implements AutoTrackingFreq {
  const factory AutoTrackingFreqOneWeek() = _$AutoTrackingFreqOneWeekImpl;

  factory AutoTrackingFreqOneWeek.fromJson(Map<String, dynamic> json) =
      _$AutoTrackingFreqOneWeekImpl.fromJson;
}

BarcodeGeneratorType _$BarcodeGeneratorTypeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'code128':
      return BarcodeGeneratorTypeCode128.fromJson(json);
    case 'qrCode':
      return BarcodeGeneratorTypeQrCode.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'BarcodeGeneratorType',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$BarcodeGeneratorType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() code128,
    required TResult Function() qrCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? code128,
    TResult? Function()? qrCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? code128,
    TResult Function()? qrCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BarcodeGeneratorTypeCode128 value) code128,
    required TResult Function(BarcodeGeneratorTypeQrCode value) qrCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BarcodeGeneratorTypeCode128 value)? code128,
    TResult? Function(BarcodeGeneratorTypeQrCode value)? qrCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BarcodeGeneratorTypeCode128 value)? code128,
    TResult Function(BarcodeGeneratorTypeQrCode value)? qrCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarcodeGeneratorTypeCopyWith<$Res> {
  factory $BarcodeGeneratorTypeCopyWith(BarcodeGeneratorType value,
          $Res Function(BarcodeGeneratorType) then) =
      _$BarcodeGeneratorTypeCopyWithImpl<$Res, BarcodeGeneratorType>;
}

/// @nodoc
class _$BarcodeGeneratorTypeCopyWithImpl<$Res,
        $Val extends BarcodeGeneratorType>
    implements $BarcodeGeneratorTypeCopyWith<$Res> {
  _$BarcodeGeneratorTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BarcodeGeneratorTypeCode128ImplCopyWith<$Res> {
  factory _$$BarcodeGeneratorTypeCode128ImplCopyWith(
          _$BarcodeGeneratorTypeCode128Impl value,
          $Res Function(_$BarcodeGeneratorTypeCode128Impl) then) =
      __$$BarcodeGeneratorTypeCode128ImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BarcodeGeneratorTypeCode128ImplCopyWithImpl<$Res>
    extends _$BarcodeGeneratorTypeCopyWithImpl<$Res,
        _$BarcodeGeneratorTypeCode128Impl>
    implements _$$BarcodeGeneratorTypeCode128ImplCopyWith<$Res> {
  __$$BarcodeGeneratorTypeCode128ImplCopyWithImpl(
      _$BarcodeGeneratorTypeCode128Impl _value,
      $Res Function(_$BarcodeGeneratorTypeCode128Impl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$BarcodeGeneratorTypeCode128Impl implements BarcodeGeneratorTypeCode128 {
  const _$BarcodeGeneratorTypeCode128Impl({final String? $type})
      : $type = $type ?? 'code128';

  factory _$BarcodeGeneratorTypeCode128Impl.fromJson(
          Map<String, dynamic> json) =>
      _$$BarcodeGeneratorTypeCode128ImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BarcodeGeneratorType.code128()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BarcodeGeneratorTypeCode128Impl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() code128,
    required TResult Function() qrCode,
  }) {
    return code128();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? code128,
    TResult? Function()? qrCode,
  }) {
    return code128?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? code128,
    TResult Function()? qrCode,
    required TResult orElse(),
  }) {
    if (code128 != null) {
      return code128();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BarcodeGeneratorTypeCode128 value) code128,
    required TResult Function(BarcodeGeneratorTypeQrCode value) qrCode,
  }) {
    return code128(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BarcodeGeneratorTypeCode128 value)? code128,
    TResult? Function(BarcodeGeneratorTypeQrCode value)? qrCode,
  }) {
    return code128?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BarcodeGeneratorTypeCode128 value)? code128,
    TResult Function(BarcodeGeneratorTypeQrCode value)? qrCode,
    required TResult orElse(),
  }) {
    if (code128 != null) {
      return code128(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BarcodeGeneratorTypeCode128ImplToJson(
      this,
    );
  }
}

abstract class BarcodeGeneratorTypeCode128 implements BarcodeGeneratorType {
  const factory BarcodeGeneratorTypeCode128() =
      _$BarcodeGeneratorTypeCode128Impl;

  factory BarcodeGeneratorTypeCode128.fromJson(Map<String, dynamic> json) =
      _$BarcodeGeneratorTypeCode128Impl.fromJson;
}

/// @nodoc
abstract class _$$BarcodeGeneratorTypeQrCodeImplCopyWith<$Res> {
  factory _$$BarcodeGeneratorTypeQrCodeImplCopyWith(
          _$BarcodeGeneratorTypeQrCodeImpl value,
          $Res Function(_$BarcodeGeneratorTypeQrCodeImpl) then) =
      __$$BarcodeGeneratorTypeQrCodeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BarcodeGeneratorTypeQrCodeImplCopyWithImpl<$Res>
    extends _$BarcodeGeneratorTypeCopyWithImpl<$Res,
        _$BarcodeGeneratorTypeQrCodeImpl>
    implements _$$BarcodeGeneratorTypeQrCodeImplCopyWith<$Res> {
  __$$BarcodeGeneratorTypeQrCodeImplCopyWithImpl(
      _$BarcodeGeneratorTypeQrCodeImpl _value,
      $Res Function(_$BarcodeGeneratorTypeQrCodeImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$BarcodeGeneratorTypeQrCodeImpl implements BarcodeGeneratorTypeQrCode {
  const _$BarcodeGeneratorTypeQrCodeImpl({final String? $type})
      : $type = $type ?? 'qrCode';

  factory _$BarcodeGeneratorTypeQrCodeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BarcodeGeneratorTypeQrCodeImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BarcodeGeneratorType.qrCode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BarcodeGeneratorTypeQrCodeImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() code128,
    required TResult Function() qrCode,
  }) {
    return qrCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? code128,
    TResult? Function()? qrCode,
  }) {
    return qrCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? code128,
    TResult Function()? qrCode,
    required TResult orElse(),
  }) {
    if (qrCode != null) {
      return qrCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BarcodeGeneratorTypeCode128 value) code128,
    required TResult Function(BarcodeGeneratorTypeQrCode value) qrCode,
  }) {
    return qrCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BarcodeGeneratorTypeCode128 value)? code128,
    TResult? Function(BarcodeGeneratorTypeQrCode value)? qrCode,
  }) {
    return qrCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BarcodeGeneratorTypeCode128 value)? code128,
    TResult Function(BarcodeGeneratorTypeQrCode value)? qrCode,
    required TResult orElse(),
  }) {
    if (qrCode != null) {
      return qrCode(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BarcodeGeneratorTypeQrCodeImplToJson(
      this,
    );
  }
}

abstract class BarcodeGeneratorTypeQrCode implements BarcodeGeneratorType {
  const factory BarcodeGeneratorTypeQrCode() = _$BarcodeGeneratorTypeQrCodeImpl;

  factory BarcodeGeneratorTypeQrCode.fromJson(Map<String, dynamic> json) =
      _$BarcodeGeneratorTypeQrCodeImpl.fromJson;
}

ParcelsPageType _$ParcelsPageTypeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'receiver':
      return ParcelsPageTypeReceiver.fromJson(json);
    case 'shipper':
      return ParcelsPageTypeShipper.fromJson(json);
    case 'archive':
      return ParcelsPageTypeArchive.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ParcelsPageType',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ParcelsPageType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() receiver,
    required TResult Function() shipper,
    required TResult Function() archive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? receiver,
    TResult? Function()? shipper,
    TResult? Function()? archive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? receiver,
    TResult Function()? shipper,
    TResult Function()? archive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsPageTypeReceiver value) receiver,
    required TResult Function(ParcelsPageTypeShipper value) shipper,
    required TResult Function(ParcelsPageTypeArchive value) archive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParcelsPageTypeReceiver value)? receiver,
    TResult? Function(ParcelsPageTypeShipper value)? shipper,
    TResult? Function(ParcelsPageTypeArchive value)? archive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsPageTypeReceiver value)? receiver,
    TResult Function(ParcelsPageTypeShipper value)? shipper,
    TResult Function(ParcelsPageTypeArchive value)? archive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelsPageTypeCopyWith<$Res> {
  factory $ParcelsPageTypeCopyWith(
          ParcelsPageType value, $Res Function(ParcelsPageType) then) =
      _$ParcelsPageTypeCopyWithImpl<$Res, ParcelsPageType>;
}

/// @nodoc
class _$ParcelsPageTypeCopyWithImpl<$Res, $Val extends ParcelsPageType>
    implements $ParcelsPageTypeCopyWith<$Res> {
  _$ParcelsPageTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ParcelsPageTypeReceiverImplCopyWith<$Res> {
  factory _$$ParcelsPageTypeReceiverImplCopyWith(
          _$ParcelsPageTypeReceiverImpl value,
          $Res Function(_$ParcelsPageTypeReceiverImpl) then) =
      __$$ParcelsPageTypeReceiverImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ParcelsPageTypeReceiverImplCopyWithImpl<$Res>
    extends _$ParcelsPageTypeCopyWithImpl<$Res, _$ParcelsPageTypeReceiverImpl>
    implements _$$ParcelsPageTypeReceiverImplCopyWith<$Res> {
  __$$ParcelsPageTypeReceiverImplCopyWithImpl(
      _$ParcelsPageTypeReceiverImpl _value,
      $Res Function(_$ParcelsPageTypeReceiverImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ParcelsPageTypeReceiverImpl implements ParcelsPageTypeReceiver {
  const _$ParcelsPageTypeReceiverImpl({final String? $type})
      : $type = $type ?? 'receiver';

  factory _$ParcelsPageTypeReceiverImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParcelsPageTypeReceiverImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ParcelsPageType.receiver()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelsPageTypeReceiverImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() receiver,
    required TResult Function() shipper,
    required TResult Function() archive,
  }) {
    return receiver();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? receiver,
    TResult? Function()? shipper,
    TResult? Function()? archive,
  }) {
    return receiver?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? receiver,
    TResult Function()? shipper,
    TResult Function()? archive,
    required TResult orElse(),
  }) {
    if (receiver != null) {
      return receiver();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsPageTypeReceiver value) receiver,
    required TResult Function(ParcelsPageTypeShipper value) shipper,
    required TResult Function(ParcelsPageTypeArchive value) archive,
  }) {
    return receiver(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParcelsPageTypeReceiver value)? receiver,
    TResult? Function(ParcelsPageTypeShipper value)? shipper,
    TResult? Function(ParcelsPageTypeArchive value)? archive,
  }) {
    return receiver?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsPageTypeReceiver value)? receiver,
    TResult Function(ParcelsPageTypeShipper value)? shipper,
    TResult Function(ParcelsPageTypeArchive value)? archive,
    required TResult orElse(),
  }) {
    if (receiver != null) {
      return receiver(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ParcelsPageTypeReceiverImplToJson(
      this,
    );
  }
}

abstract class ParcelsPageTypeReceiver implements ParcelsPageType {
  const factory ParcelsPageTypeReceiver() = _$ParcelsPageTypeReceiverImpl;

  factory ParcelsPageTypeReceiver.fromJson(Map<String, dynamic> json) =
      _$ParcelsPageTypeReceiverImpl.fromJson;
}

/// @nodoc
abstract class _$$ParcelsPageTypeShipperImplCopyWith<$Res> {
  factory _$$ParcelsPageTypeShipperImplCopyWith(
          _$ParcelsPageTypeShipperImpl value,
          $Res Function(_$ParcelsPageTypeShipperImpl) then) =
      __$$ParcelsPageTypeShipperImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ParcelsPageTypeShipperImplCopyWithImpl<$Res>
    extends _$ParcelsPageTypeCopyWithImpl<$Res, _$ParcelsPageTypeShipperImpl>
    implements _$$ParcelsPageTypeShipperImplCopyWith<$Res> {
  __$$ParcelsPageTypeShipperImplCopyWithImpl(
      _$ParcelsPageTypeShipperImpl _value,
      $Res Function(_$ParcelsPageTypeShipperImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ParcelsPageTypeShipperImpl implements ParcelsPageTypeShipper {
  const _$ParcelsPageTypeShipperImpl({final String? $type})
      : $type = $type ?? 'shipper';

  factory _$ParcelsPageTypeShipperImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParcelsPageTypeShipperImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ParcelsPageType.shipper()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelsPageTypeShipperImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() receiver,
    required TResult Function() shipper,
    required TResult Function() archive,
  }) {
    return shipper();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? receiver,
    TResult? Function()? shipper,
    TResult? Function()? archive,
  }) {
    return shipper?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? receiver,
    TResult Function()? shipper,
    TResult Function()? archive,
    required TResult orElse(),
  }) {
    if (shipper != null) {
      return shipper();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsPageTypeReceiver value) receiver,
    required TResult Function(ParcelsPageTypeShipper value) shipper,
    required TResult Function(ParcelsPageTypeArchive value) archive,
  }) {
    return shipper(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParcelsPageTypeReceiver value)? receiver,
    TResult? Function(ParcelsPageTypeShipper value)? shipper,
    TResult? Function(ParcelsPageTypeArchive value)? archive,
  }) {
    return shipper?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsPageTypeReceiver value)? receiver,
    TResult Function(ParcelsPageTypeShipper value)? shipper,
    TResult Function(ParcelsPageTypeArchive value)? archive,
    required TResult orElse(),
  }) {
    if (shipper != null) {
      return shipper(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ParcelsPageTypeShipperImplToJson(
      this,
    );
  }
}

abstract class ParcelsPageTypeShipper implements ParcelsPageType {
  const factory ParcelsPageTypeShipper() = _$ParcelsPageTypeShipperImpl;

  factory ParcelsPageTypeShipper.fromJson(Map<String, dynamic> json) =
      _$ParcelsPageTypeShipperImpl.fromJson;
}

/// @nodoc
abstract class _$$ParcelsPageTypeArchiveImplCopyWith<$Res> {
  factory _$$ParcelsPageTypeArchiveImplCopyWith(
          _$ParcelsPageTypeArchiveImpl value,
          $Res Function(_$ParcelsPageTypeArchiveImpl) then) =
      __$$ParcelsPageTypeArchiveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ParcelsPageTypeArchiveImplCopyWithImpl<$Res>
    extends _$ParcelsPageTypeCopyWithImpl<$Res, _$ParcelsPageTypeArchiveImpl>
    implements _$$ParcelsPageTypeArchiveImplCopyWith<$Res> {
  __$$ParcelsPageTypeArchiveImplCopyWithImpl(
      _$ParcelsPageTypeArchiveImpl _value,
      $Res Function(_$ParcelsPageTypeArchiveImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ParcelsPageTypeArchiveImpl implements ParcelsPageTypeArchive {
  const _$ParcelsPageTypeArchiveImpl({final String? $type})
      : $type = $type ?? 'archive';

  factory _$ParcelsPageTypeArchiveImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParcelsPageTypeArchiveImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ParcelsPageType.archive()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelsPageTypeArchiveImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() receiver,
    required TResult Function() shipper,
    required TResult Function() archive,
  }) {
    return archive();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? receiver,
    TResult? Function()? shipper,
    TResult? Function()? archive,
  }) {
    return archive?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? receiver,
    TResult Function()? shipper,
    TResult Function()? archive,
    required TResult orElse(),
  }) {
    if (archive != null) {
      return archive();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsPageTypeReceiver value) receiver,
    required TResult Function(ParcelsPageTypeShipper value) shipper,
    required TResult Function(ParcelsPageTypeArchive value) archive,
  }) {
    return archive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParcelsPageTypeReceiver value)? receiver,
    TResult? Function(ParcelsPageTypeShipper value)? shipper,
    TResult? Function(ParcelsPageTypeArchive value)? archive,
  }) {
    return archive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsPageTypeReceiver value)? receiver,
    TResult Function(ParcelsPageTypeShipper value)? shipper,
    TResult Function(ParcelsPageTypeArchive value)? archive,
    required TResult orElse(),
  }) {
    if (archive != null) {
      return archive(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ParcelsPageTypeArchiveImplToJson(
      this,
    );
  }
}

abstract class ParcelsPageTypeArchive implements ParcelsPageType {
  const factory ParcelsPageTypeArchive() = _$ParcelsPageTypeArchiveImpl;

  factory ParcelsPageTypeArchive.fromJson(Map<String, dynamic> json) =
      _$ParcelsPageTypeArchiveImpl.fromJson;
}
