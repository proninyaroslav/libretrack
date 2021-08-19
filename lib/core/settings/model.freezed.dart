// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ParcelsSort _$ParcelsSortFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String?) {
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
class _$ParcelsSortTearOff {
  const _$ParcelsSortTearOff();

  ParcelsSortAlphabetically alphabetically({bool isDesc = false}) {
    return ParcelsSortAlphabetically(
      isDesc: isDesc,
    );
  }

  ParcelsSortActivityDate activityDate({bool oldestFirst = false}) {
    return ParcelsSortActivityDate(
      oldestFirst: oldestFirst,
    );
  }

  ParcelsSortDateAdded dateAdded({bool oldestFirst = false}) {
    return ParcelsSortDateAdded(
      oldestFirst: oldestFirst,
    );
  }

  ParcelsSort fromJson(Map<String, Object> json) {
    return ParcelsSort.fromJson(json);
  }
}

/// @nodoc
const $ParcelsSort = _$ParcelsSortTearOff();

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
    TResult Function(bool isDesc)? alphabetically,
    TResult Function(bool oldestFirst)? activityDate,
    TResult Function(bool oldestFirst)? dateAdded,
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
    TResult Function(ParcelsSortAlphabetically value)? alphabetically,
    TResult Function(ParcelsSortActivityDate value)? activityDate,
    TResult Function(ParcelsSortDateAdded value)? dateAdded,
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
      _$ParcelsSortCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParcelsSortCopyWithImpl<$Res> implements $ParcelsSortCopyWith<$Res> {
  _$ParcelsSortCopyWithImpl(this._value, this._then);

  final ParcelsSort _value;
  // ignore: unused_field
  final $Res Function(ParcelsSort) _then;
}

/// @nodoc
abstract class $ParcelsSortAlphabeticallyCopyWith<$Res> {
  factory $ParcelsSortAlphabeticallyCopyWith(ParcelsSortAlphabetically value,
          $Res Function(ParcelsSortAlphabetically) then) =
      _$ParcelsSortAlphabeticallyCopyWithImpl<$Res>;
  $Res call({bool isDesc});
}

/// @nodoc
class _$ParcelsSortAlphabeticallyCopyWithImpl<$Res>
    extends _$ParcelsSortCopyWithImpl<$Res>
    implements $ParcelsSortAlphabeticallyCopyWith<$Res> {
  _$ParcelsSortAlphabeticallyCopyWithImpl(ParcelsSortAlphabetically _value,
      $Res Function(ParcelsSortAlphabetically) _then)
      : super(_value, (v) => _then(v as ParcelsSortAlphabetically));

  @override
  ParcelsSortAlphabetically get _value =>
      super._value as ParcelsSortAlphabetically;

  @override
  $Res call({
    Object? isDesc = freezed,
  }) {
    return _then(ParcelsSortAlphabetically(
      isDesc: isDesc == freezed
          ? _value.isDesc
          : isDesc // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParcelsSortAlphabetically implements ParcelsSortAlphabetically {
  const _$ParcelsSortAlphabetically({this.isDesc = false});

  factory _$ParcelsSortAlphabetically.fromJson(Map<String, dynamic> json) =>
      _$$ParcelsSortAlphabeticallyFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool isDesc;

  @override
  String toString() {
    return 'ParcelsSort.alphabetically(isDesc: $isDesc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParcelsSortAlphabetically &&
            (identical(other.isDesc, isDesc) ||
                const DeepCollectionEquality().equals(other.isDesc, isDesc)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isDesc);

  @JsonKey(ignore: true)
  @override
  $ParcelsSortAlphabeticallyCopyWith<ParcelsSortAlphabetically> get copyWith =>
      _$ParcelsSortAlphabeticallyCopyWithImpl<ParcelsSortAlphabetically>(
          this, _$identity);

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
    TResult Function(bool isDesc)? alphabetically,
    TResult Function(bool oldestFirst)? activityDate,
    TResult Function(bool oldestFirst)? dateAdded,
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
    TResult Function(ParcelsSortAlphabetically value)? alphabetically,
    TResult Function(ParcelsSortActivityDate value)? activityDate,
    TResult Function(ParcelsSortDateAdded value)? dateAdded,
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
    return _$$ParcelsSortAlphabeticallyToJson(this)
      ..['runtimeType'] = 'alphabetically';
  }
}

abstract class ParcelsSortAlphabetically implements ParcelsSort {
  const factory ParcelsSortAlphabetically({bool isDesc}) =
      _$ParcelsSortAlphabetically;

  factory ParcelsSortAlphabetically.fromJson(Map<String, dynamic> json) =
      _$ParcelsSortAlphabetically.fromJson;

  bool get isDesc => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParcelsSortAlphabeticallyCopyWith<ParcelsSortAlphabetically> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelsSortActivityDateCopyWith<$Res> {
  factory $ParcelsSortActivityDateCopyWith(ParcelsSortActivityDate value,
          $Res Function(ParcelsSortActivityDate) then) =
      _$ParcelsSortActivityDateCopyWithImpl<$Res>;
  $Res call({bool oldestFirst});
}

/// @nodoc
class _$ParcelsSortActivityDateCopyWithImpl<$Res>
    extends _$ParcelsSortCopyWithImpl<$Res>
    implements $ParcelsSortActivityDateCopyWith<$Res> {
  _$ParcelsSortActivityDateCopyWithImpl(ParcelsSortActivityDate _value,
      $Res Function(ParcelsSortActivityDate) _then)
      : super(_value, (v) => _then(v as ParcelsSortActivityDate));

  @override
  ParcelsSortActivityDate get _value => super._value as ParcelsSortActivityDate;

  @override
  $Res call({
    Object? oldestFirst = freezed,
  }) {
    return _then(ParcelsSortActivityDate(
      oldestFirst: oldestFirst == freezed
          ? _value.oldestFirst
          : oldestFirst // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParcelsSortActivityDate implements ParcelsSortActivityDate {
  const _$ParcelsSortActivityDate({this.oldestFirst = false});

  factory _$ParcelsSortActivityDate.fromJson(Map<String, dynamic> json) =>
      _$$ParcelsSortActivityDateFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool oldestFirst;

  @override
  String toString() {
    return 'ParcelsSort.activityDate(oldestFirst: $oldestFirst)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParcelsSortActivityDate &&
            (identical(other.oldestFirst, oldestFirst) ||
                const DeepCollectionEquality()
                    .equals(other.oldestFirst, oldestFirst)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(oldestFirst);

  @JsonKey(ignore: true)
  @override
  $ParcelsSortActivityDateCopyWith<ParcelsSortActivityDate> get copyWith =>
      _$ParcelsSortActivityDateCopyWithImpl<ParcelsSortActivityDate>(
          this, _$identity);

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
    TResult Function(bool isDesc)? alphabetically,
    TResult Function(bool oldestFirst)? activityDate,
    TResult Function(bool oldestFirst)? dateAdded,
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
    TResult Function(ParcelsSortAlphabetically value)? alphabetically,
    TResult Function(ParcelsSortActivityDate value)? activityDate,
    TResult Function(ParcelsSortDateAdded value)? dateAdded,
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
    return _$$ParcelsSortActivityDateToJson(this)
      ..['runtimeType'] = 'activityDate';
  }
}

abstract class ParcelsSortActivityDate implements ParcelsSort {
  const factory ParcelsSortActivityDate({bool oldestFirst}) =
      _$ParcelsSortActivityDate;

  factory ParcelsSortActivityDate.fromJson(Map<String, dynamic> json) =
      _$ParcelsSortActivityDate.fromJson;

  bool get oldestFirst => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParcelsSortActivityDateCopyWith<ParcelsSortActivityDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelsSortDateAddedCopyWith<$Res> {
  factory $ParcelsSortDateAddedCopyWith(ParcelsSortDateAdded value,
          $Res Function(ParcelsSortDateAdded) then) =
      _$ParcelsSortDateAddedCopyWithImpl<$Res>;
  $Res call({bool oldestFirst});
}

/// @nodoc
class _$ParcelsSortDateAddedCopyWithImpl<$Res>
    extends _$ParcelsSortCopyWithImpl<$Res>
    implements $ParcelsSortDateAddedCopyWith<$Res> {
  _$ParcelsSortDateAddedCopyWithImpl(
      ParcelsSortDateAdded _value, $Res Function(ParcelsSortDateAdded) _then)
      : super(_value, (v) => _then(v as ParcelsSortDateAdded));

  @override
  ParcelsSortDateAdded get _value => super._value as ParcelsSortDateAdded;

  @override
  $Res call({
    Object? oldestFirst = freezed,
  }) {
    return _then(ParcelsSortDateAdded(
      oldestFirst: oldestFirst == freezed
          ? _value.oldestFirst
          : oldestFirst // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParcelsSortDateAdded implements ParcelsSortDateAdded {
  const _$ParcelsSortDateAdded({this.oldestFirst = false});

  factory _$ParcelsSortDateAdded.fromJson(Map<String, dynamic> json) =>
      _$$ParcelsSortDateAddedFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool oldestFirst;

  @override
  String toString() {
    return 'ParcelsSort.dateAdded(oldestFirst: $oldestFirst)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParcelsSortDateAdded &&
            (identical(other.oldestFirst, oldestFirst) ||
                const DeepCollectionEquality()
                    .equals(other.oldestFirst, oldestFirst)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(oldestFirst);

  @JsonKey(ignore: true)
  @override
  $ParcelsSortDateAddedCopyWith<ParcelsSortDateAdded> get copyWith =>
      _$ParcelsSortDateAddedCopyWithImpl<ParcelsSortDateAdded>(
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
    TResult Function(bool isDesc)? alphabetically,
    TResult Function(bool oldestFirst)? activityDate,
    TResult Function(bool oldestFirst)? dateAdded,
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
    TResult Function(ParcelsSortAlphabetically value)? alphabetically,
    TResult Function(ParcelsSortActivityDate value)? activityDate,
    TResult Function(ParcelsSortDateAdded value)? dateAdded,
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
    return _$$ParcelsSortDateAddedToJson(this)..['runtimeType'] = 'dateAdded';
  }
}

abstract class ParcelsSortDateAdded implements ParcelsSort {
  const factory ParcelsSortDateAdded({bool oldestFirst}) =
      _$ParcelsSortDateAdded;

  factory ParcelsSortDateAdded.fromJson(Map<String, dynamic> json) =
      _$ParcelsSortDateAdded.fromJson;

  bool get oldestFirst => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParcelsSortDateAddedCopyWith<ParcelsSortDateAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

ParcelsFilter _$ParcelsFilterFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String?) {
    case 'search':
      return ParcelsFilterSearch.fromJson(json);
    case 'active':
      return ParcelsFilterActive.fromJson(json);
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
class _$ParcelsFilterTearOff {
  const _$ParcelsFilterTearOff();

  ParcelsFilterSearch search({String? query}) {
    return ParcelsFilterSearch(
      query: query,
    );
  }

  ParcelsFilterActive active() {
    return const ParcelsFilterActive();
  }

  ParcelsFilterArchive archive() {
    return const ParcelsFilterArchive();
  }

  ParcelsFilterStatus status({ShipmentStatusType? statusType}) {
    return ParcelsFilterStatus(
      statusType: statusType,
    );
  }

  ParcelsFilterNewInfo newInfo() {
    return const ParcelsFilterNewInfo();
  }

  ParcelsFilterError error() {
    return const ParcelsFilterError();
  }

  ParcelsFilterPostalService postalService({PostalServiceType? serviceType}) {
    return ParcelsFilterPostalService(
      serviceType: serviceType,
    );
  }

  ParcelsFilter fromJson(Map<String, Object> json) {
    return ParcelsFilter.fromJson(json);
  }
}

/// @nodoc
const $ParcelsFilter = _$ParcelsFilterTearOff();

/// @nodoc
mixin _$ParcelsFilter {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) search,
    required TResult Function() active,
    required TResult Function() archive,
    required TResult Function(ShipmentStatusType? statusType) status,
    required TResult Function() newInfo,
    required TResult Function() error,
    required TResult Function(PostalServiceType? serviceType) postalService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? query)? search,
    TResult Function()? active,
    TResult Function()? archive,
    TResult Function(ShipmentStatusType? statusType)? status,
    TResult Function()? newInfo,
    TResult Function()? error,
    TResult Function(PostalServiceType? serviceType)? postalService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? search,
    TResult Function()? active,
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
    required TResult Function(ParcelsFilterActive value) active,
    required TResult Function(ParcelsFilterArchive value) archive,
    required TResult Function(ParcelsFilterStatus value) status,
    required TResult Function(ParcelsFilterNewInfo value) newInfo,
    required TResult Function(ParcelsFilterError value) error,
    required TResult Function(ParcelsFilterPostalService value) postalService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ParcelsFilterSearch value)? search,
    TResult Function(ParcelsFilterActive value)? active,
    TResult Function(ParcelsFilterArchive value)? archive,
    TResult Function(ParcelsFilterStatus value)? status,
    TResult Function(ParcelsFilterNewInfo value)? newInfo,
    TResult Function(ParcelsFilterError value)? error,
    TResult Function(ParcelsFilterPostalService value)? postalService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsFilterSearch value)? search,
    TResult Function(ParcelsFilterActive value)? active,
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
      _$ParcelsFilterCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParcelsFilterCopyWithImpl<$Res>
    implements $ParcelsFilterCopyWith<$Res> {
  _$ParcelsFilterCopyWithImpl(this._value, this._then);

  final ParcelsFilter _value;
  // ignore: unused_field
  final $Res Function(ParcelsFilter) _then;
}

/// @nodoc
abstract class $ParcelsFilterSearchCopyWith<$Res> {
  factory $ParcelsFilterSearchCopyWith(
          ParcelsFilterSearch value, $Res Function(ParcelsFilterSearch) then) =
      _$ParcelsFilterSearchCopyWithImpl<$Res>;
  $Res call({String? query});
}

/// @nodoc
class _$ParcelsFilterSearchCopyWithImpl<$Res>
    extends _$ParcelsFilterCopyWithImpl<$Res>
    implements $ParcelsFilterSearchCopyWith<$Res> {
  _$ParcelsFilterSearchCopyWithImpl(
      ParcelsFilterSearch _value, $Res Function(ParcelsFilterSearch) _then)
      : super(_value, (v) => _then(v as ParcelsFilterSearch));

  @override
  ParcelsFilterSearch get _value => super._value as ParcelsFilterSearch;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(ParcelsFilterSearch(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParcelsFilterSearch implements ParcelsFilterSearch {
  const _$ParcelsFilterSearch({this.query});

  factory _$ParcelsFilterSearch.fromJson(Map<String, dynamic> json) =>
      _$$ParcelsFilterSearchFromJson(json);

  @override
  final String? query;

  @override
  String toString() {
    return 'ParcelsFilter.search(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParcelsFilterSearch &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @JsonKey(ignore: true)
  @override
  $ParcelsFilterSearchCopyWith<ParcelsFilterSearch> get copyWith =>
      _$ParcelsFilterSearchCopyWithImpl<ParcelsFilterSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) search,
    required TResult Function() active,
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
    TResult Function(String? query)? search,
    TResult Function()? active,
    TResult Function()? archive,
    TResult Function(ShipmentStatusType? statusType)? status,
    TResult Function()? newInfo,
    TResult Function()? error,
    TResult Function(PostalServiceType? serviceType)? postalService,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? search,
    TResult Function()? active,
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
    required TResult Function(ParcelsFilterActive value) active,
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
    TResult Function(ParcelsFilterSearch value)? search,
    TResult Function(ParcelsFilterActive value)? active,
    TResult Function(ParcelsFilterArchive value)? archive,
    TResult Function(ParcelsFilterStatus value)? status,
    TResult Function(ParcelsFilterNewInfo value)? newInfo,
    TResult Function(ParcelsFilterError value)? error,
    TResult Function(ParcelsFilterPostalService value)? postalService,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsFilterSearch value)? search,
    TResult Function(ParcelsFilterActive value)? active,
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
    return _$$ParcelsFilterSearchToJson(this)..['runtimeType'] = 'search';
  }
}

abstract class ParcelsFilterSearch implements ParcelsFilter {
  const factory ParcelsFilterSearch({String? query}) = _$ParcelsFilterSearch;

  factory ParcelsFilterSearch.fromJson(Map<String, dynamic> json) =
      _$ParcelsFilterSearch.fromJson;

  String? get query => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParcelsFilterSearchCopyWith<ParcelsFilterSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelsFilterActiveCopyWith<$Res> {
  factory $ParcelsFilterActiveCopyWith(
          ParcelsFilterActive value, $Res Function(ParcelsFilterActive) then) =
      _$ParcelsFilterActiveCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParcelsFilterActiveCopyWithImpl<$Res>
    extends _$ParcelsFilterCopyWithImpl<$Res>
    implements $ParcelsFilterActiveCopyWith<$Res> {
  _$ParcelsFilterActiveCopyWithImpl(
      ParcelsFilterActive _value, $Res Function(ParcelsFilterActive) _then)
      : super(_value, (v) => _then(v as ParcelsFilterActive));

  @override
  ParcelsFilterActive get _value => super._value as ParcelsFilterActive;
}

/// @nodoc
@JsonSerializable()
class _$ParcelsFilterActive implements ParcelsFilterActive {
  const _$ParcelsFilterActive();

  factory _$ParcelsFilterActive.fromJson(Map<String, dynamic> json) =>
      _$$ParcelsFilterActiveFromJson(json);

  @override
  String toString() {
    return 'ParcelsFilter.active()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ParcelsFilterActive);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) search,
    required TResult Function() active,
    required TResult Function() archive,
    required TResult Function(ShipmentStatusType? statusType) status,
    required TResult Function() newInfo,
    required TResult Function() error,
    required TResult Function(PostalServiceType? serviceType) postalService,
  }) {
    return active();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? query)? search,
    TResult Function()? active,
    TResult Function()? archive,
    TResult Function(ShipmentStatusType? statusType)? status,
    TResult Function()? newInfo,
    TResult Function()? error,
    TResult Function(PostalServiceType? serviceType)? postalService,
  }) {
    return active?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? search,
    TResult Function()? active,
    TResult Function()? archive,
    TResult Function(ShipmentStatusType? statusType)? status,
    TResult Function()? newInfo,
    TResult Function()? error,
    TResult Function(PostalServiceType? serviceType)? postalService,
    required TResult orElse(),
  }) {
    if (active != null) {
      return active();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParcelsFilterSearch value) search,
    required TResult Function(ParcelsFilterActive value) active,
    required TResult Function(ParcelsFilterArchive value) archive,
    required TResult Function(ParcelsFilterStatus value) status,
    required TResult Function(ParcelsFilterNewInfo value) newInfo,
    required TResult Function(ParcelsFilterError value) error,
    required TResult Function(ParcelsFilterPostalService value) postalService,
  }) {
    return active(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ParcelsFilterSearch value)? search,
    TResult Function(ParcelsFilterActive value)? active,
    TResult Function(ParcelsFilterArchive value)? archive,
    TResult Function(ParcelsFilterStatus value)? status,
    TResult Function(ParcelsFilterNewInfo value)? newInfo,
    TResult Function(ParcelsFilterError value)? error,
    TResult Function(ParcelsFilterPostalService value)? postalService,
  }) {
    return active?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsFilterSearch value)? search,
    TResult Function(ParcelsFilterActive value)? active,
    TResult Function(ParcelsFilterArchive value)? archive,
    TResult Function(ParcelsFilterStatus value)? status,
    TResult Function(ParcelsFilterNewInfo value)? newInfo,
    TResult Function(ParcelsFilterError value)? error,
    TResult Function(ParcelsFilterPostalService value)? postalService,
    required TResult orElse(),
  }) {
    if (active != null) {
      return active(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ParcelsFilterActiveToJson(this)..['runtimeType'] = 'active';
  }
}

abstract class ParcelsFilterActive implements ParcelsFilter {
  const factory ParcelsFilterActive() = _$ParcelsFilterActive;

  factory ParcelsFilterActive.fromJson(Map<String, dynamic> json) =
      _$ParcelsFilterActive.fromJson;
}

/// @nodoc
abstract class $ParcelsFilterArchiveCopyWith<$Res> {
  factory $ParcelsFilterArchiveCopyWith(ParcelsFilterArchive value,
          $Res Function(ParcelsFilterArchive) then) =
      _$ParcelsFilterArchiveCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParcelsFilterArchiveCopyWithImpl<$Res>
    extends _$ParcelsFilterCopyWithImpl<$Res>
    implements $ParcelsFilterArchiveCopyWith<$Res> {
  _$ParcelsFilterArchiveCopyWithImpl(
      ParcelsFilterArchive _value, $Res Function(ParcelsFilterArchive) _then)
      : super(_value, (v) => _then(v as ParcelsFilterArchive));

  @override
  ParcelsFilterArchive get _value => super._value as ParcelsFilterArchive;
}

/// @nodoc
@JsonSerializable()
class _$ParcelsFilterArchive implements ParcelsFilterArchive {
  const _$ParcelsFilterArchive();

  factory _$ParcelsFilterArchive.fromJson(Map<String, dynamic> json) =>
      _$$ParcelsFilterArchiveFromJson(json);

  @override
  String toString() {
    return 'ParcelsFilter.archive()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ParcelsFilterArchive);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) search,
    required TResult Function() active,
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
    TResult Function(String? query)? search,
    TResult Function()? active,
    TResult Function()? archive,
    TResult Function(ShipmentStatusType? statusType)? status,
    TResult Function()? newInfo,
    TResult Function()? error,
    TResult Function(PostalServiceType? serviceType)? postalService,
  }) {
    return archive?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? search,
    TResult Function()? active,
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
    required TResult Function(ParcelsFilterActive value) active,
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
    TResult Function(ParcelsFilterSearch value)? search,
    TResult Function(ParcelsFilterActive value)? active,
    TResult Function(ParcelsFilterArchive value)? archive,
    TResult Function(ParcelsFilterStatus value)? status,
    TResult Function(ParcelsFilterNewInfo value)? newInfo,
    TResult Function(ParcelsFilterError value)? error,
    TResult Function(ParcelsFilterPostalService value)? postalService,
  }) {
    return archive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsFilterSearch value)? search,
    TResult Function(ParcelsFilterActive value)? active,
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
    return _$$ParcelsFilterArchiveToJson(this)..['runtimeType'] = 'archive';
  }
}

abstract class ParcelsFilterArchive implements ParcelsFilter {
  const factory ParcelsFilterArchive() = _$ParcelsFilterArchive;

  factory ParcelsFilterArchive.fromJson(Map<String, dynamic> json) =
      _$ParcelsFilterArchive.fromJson;
}

/// @nodoc
abstract class $ParcelsFilterStatusCopyWith<$Res> {
  factory $ParcelsFilterStatusCopyWith(
          ParcelsFilterStatus value, $Res Function(ParcelsFilterStatus) then) =
      _$ParcelsFilterStatusCopyWithImpl<$Res>;
  $Res call({ShipmentStatusType? statusType});
}

/// @nodoc
class _$ParcelsFilterStatusCopyWithImpl<$Res>
    extends _$ParcelsFilterCopyWithImpl<$Res>
    implements $ParcelsFilterStatusCopyWith<$Res> {
  _$ParcelsFilterStatusCopyWithImpl(
      ParcelsFilterStatus _value, $Res Function(ParcelsFilterStatus) _then)
      : super(_value, (v) => _then(v as ParcelsFilterStatus));

  @override
  ParcelsFilterStatus get _value => super._value as ParcelsFilterStatus;

  @override
  $Res call({
    Object? statusType = freezed,
  }) {
    return _then(ParcelsFilterStatus(
      statusType: statusType == freezed
          ? _value.statusType
          : statusType // ignore: cast_nullable_to_non_nullable
              as ShipmentStatusType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParcelsFilterStatus implements ParcelsFilterStatus {
  const _$ParcelsFilterStatus({this.statusType});

  factory _$ParcelsFilterStatus.fromJson(Map<String, dynamic> json) =>
      _$$ParcelsFilterStatusFromJson(json);

  @override
  final ShipmentStatusType? statusType;

  @override
  String toString() {
    return 'ParcelsFilter.status(statusType: $statusType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParcelsFilterStatus &&
            (identical(other.statusType, statusType) ||
                const DeepCollectionEquality()
                    .equals(other.statusType, statusType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(statusType);

  @JsonKey(ignore: true)
  @override
  $ParcelsFilterStatusCopyWith<ParcelsFilterStatus> get copyWith =>
      _$ParcelsFilterStatusCopyWithImpl<ParcelsFilterStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) search,
    required TResult Function() active,
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
    TResult Function(String? query)? search,
    TResult Function()? active,
    TResult Function()? archive,
    TResult Function(ShipmentStatusType? statusType)? status,
    TResult Function()? newInfo,
    TResult Function()? error,
    TResult Function(PostalServiceType? serviceType)? postalService,
  }) {
    return status?.call(statusType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? search,
    TResult Function()? active,
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
    required TResult Function(ParcelsFilterActive value) active,
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
    TResult Function(ParcelsFilterSearch value)? search,
    TResult Function(ParcelsFilterActive value)? active,
    TResult Function(ParcelsFilterArchive value)? archive,
    TResult Function(ParcelsFilterStatus value)? status,
    TResult Function(ParcelsFilterNewInfo value)? newInfo,
    TResult Function(ParcelsFilterError value)? error,
    TResult Function(ParcelsFilterPostalService value)? postalService,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsFilterSearch value)? search,
    TResult Function(ParcelsFilterActive value)? active,
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
    return _$$ParcelsFilterStatusToJson(this)..['runtimeType'] = 'status';
  }
}

abstract class ParcelsFilterStatus implements ParcelsFilter {
  const factory ParcelsFilterStatus({ShipmentStatusType? statusType}) =
      _$ParcelsFilterStatus;

  factory ParcelsFilterStatus.fromJson(Map<String, dynamic> json) =
      _$ParcelsFilterStatus.fromJson;

  ShipmentStatusType? get statusType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParcelsFilterStatusCopyWith<ParcelsFilterStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelsFilterNewInfoCopyWith<$Res> {
  factory $ParcelsFilterNewInfoCopyWith(ParcelsFilterNewInfo value,
          $Res Function(ParcelsFilterNewInfo) then) =
      _$ParcelsFilterNewInfoCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParcelsFilterNewInfoCopyWithImpl<$Res>
    extends _$ParcelsFilterCopyWithImpl<$Res>
    implements $ParcelsFilterNewInfoCopyWith<$Res> {
  _$ParcelsFilterNewInfoCopyWithImpl(
      ParcelsFilterNewInfo _value, $Res Function(ParcelsFilterNewInfo) _then)
      : super(_value, (v) => _then(v as ParcelsFilterNewInfo));

  @override
  ParcelsFilterNewInfo get _value => super._value as ParcelsFilterNewInfo;
}

/// @nodoc
@JsonSerializable()
class _$ParcelsFilterNewInfo implements ParcelsFilterNewInfo {
  const _$ParcelsFilterNewInfo();

  factory _$ParcelsFilterNewInfo.fromJson(Map<String, dynamic> json) =>
      _$$ParcelsFilterNewInfoFromJson(json);

  @override
  String toString() {
    return 'ParcelsFilter.newInfo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ParcelsFilterNewInfo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) search,
    required TResult Function() active,
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
    TResult Function(String? query)? search,
    TResult Function()? active,
    TResult Function()? archive,
    TResult Function(ShipmentStatusType? statusType)? status,
    TResult Function()? newInfo,
    TResult Function()? error,
    TResult Function(PostalServiceType? serviceType)? postalService,
  }) {
    return newInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? search,
    TResult Function()? active,
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
    required TResult Function(ParcelsFilterActive value) active,
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
    TResult Function(ParcelsFilterSearch value)? search,
    TResult Function(ParcelsFilterActive value)? active,
    TResult Function(ParcelsFilterArchive value)? archive,
    TResult Function(ParcelsFilterStatus value)? status,
    TResult Function(ParcelsFilterNewInfo value)? newInfo,
    TResult Function(ParcelsFilterError value)? error,
    TResult Function(ParcelsFilterPostalService value)? postalService,
  }) {
    return newInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsFilterSearch value)? search,
    TResult Function(ParcelsFilterActive value)? active,
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
    return _$$ParcelsFilterNewInfoToJson(this)..['runtimeType'] = 'newInfo';
  }
}

abstract class ParcelsFilterNewInfo implements ParcelsFilter {
  const factory ParcelsFilterNewInfo() = _$ParcelsFilterNewInfo;

  factory ParcelsFilterNewInfo.fromJson(Map<String, dynamic> json) =
      _$ParcelsFilterNewInfo.fromJson;
}

/// @nodoc
abstract class $ParcelsFilterErrorCopyWith<$Res> {
  factory $ParcelsFilterErrorCopyWith(
          ParcelsFilterError value, $Res Function(ParcelsFilterError) then) =
      _$ParcelsFilterErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParcelsFilterErrorCopyWithImpl<$Res>
    extends _$ParcelsFilterCopyWithImpl<$Res>
    implements $ParcelsFilterErrorCopyWith<$Res> {
  _$ParcelsFilterErrorCopyWithImpl(
      ParcelsFilterError _value, $Res Function(ParcelsFilterError) _then)
      : super(_value, (v) => _then(v as ParcelsFilterError));

  @override
  ParcelsFilterError get _value => super._value as ParcelsFilterError;
}

/// @nodoc
@JsonSerializable()
class _$ParcelsFilterError implements ParcelsFilterError {
  const _$ParcelsFilterError();

  factory _$ParcelsFilterError.fromJson(Map<String, dynamic> json) =>
      _$$ParcelsFilterErrorFromJson(json);

  @override
  String toString() {
    return 'ParcelsFilter.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ParcelsFilterError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) search,
    required TResult Function() active,
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
    TResult Function(String? query)? search,
    TResult Function()? active,
    TResult Function()? archive,
    TResult Function(ShipmentStatusType? statusType)? status,
    TResult Function()? newInfo,
    TResult Function()? error,
    TResult Function(PostalServiceType? serviceType)? postalService,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? search,
    TResult Function()? active,
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
    required TResult Function(ParcelsFilterActive value) active,
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
    TResult Function(ParcelsFilterSearch value)? search,
    TResult Function(ParcelsFilterActive value)? active,
    TResult Function(ParcelsFilterArchive value)? archive,
    TResult Function(ParcelsFilterStatus value)? status,
    TResult Function(ParcelsFilterNewInfo value)? newInfo,
    TResult Function(ParcelsFilterError value)? error,
    TResult Function(ParcelsFilterPostalService value)? postalService,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsFilterSearch value)? search,
    TResult Function(ParcelsFilterActive value)? active,
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
    return _$$ParcelsFilterErrorToJson(this)..['runtimeType'] = 'error';
  }
}

abstract class ParcelsFilterError implements ParcelsFilter {
  const factory ParcelsFilterError() = _$ParcelsFilterError;

  factory ParcelsFilterError.fromJson(Map<String, dynamic> json) =
      _$ParcelsFilterError.fromJson;
}

/// @nodoc
abstract class $ParcelsFilterPostalServiceCopyWith<$Res> {
  factory $ParcelsFilterPostalServiceCopyWith(ParcelsFilterPostalService value,
          $Res Function(ParcelsFilterPostalService) then) =
      _$ParcelsFilterPostalServiceCopyWithImpl<$Res>;
  $Res call({PostalServiceType? serviceType});
}

/// @nodoc
class _$ParcelsFilterPostalServiceCopyWithImpl<$Res>
    extends _$ParcelsFilterCopyWithImpl<$Res>
    implements $ParcelsFilterPostalServiceCopyWith<$Res> {
  _$ParcelsFilterPostalServiceCopyWithImpl(ParcelsFilterPostalService _value,
      $Res Function(ParcelsFilterPostalService) _then)
      : super(_value, (v) => _then(v as ParcelsFilterPostalService));

  @override
  ParcelsFilterPostalService get _value =>
      super._value as ParcelsFilterPostalService;

  @override
  $Res call({
    Object? serviceType = freezed,
  }) {
    return _then(ParcelsFilterPostalService(
      serviceType: serviceType == freezed
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as PostalServiceType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParcelsFilterPostalService implements ParcelsFilterPostalService {
  const _$ParcelsFilterPostalService({this.serviceType});

  factory _$ParcelsFilterPostalService.fromJson(Map<String, dynamic> json) =>
      _$$ParcelsFilterPostalServiceFromJson(json);

  @override
  final PostalServiceType? serviceType;

  @override
  String toString() {
    return 'ParcelsFilter.postalService(serviceType: $serviceType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParcelsFilterPostalService &&
            (identical(other.serviceType, serviceType) ||
                const DeepCollectionEquality()
                    .equals(other.serviceType, serviceType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(serviceType);

  @JsonKey(ignore: true)
  @override
  $ParcelsFilterPostalServiceCopyWith<ParcelsFilterPostalService>
      get copyWith =>
          _$ParcelsFilterPostalServiceCopyWithImpl<ParcelsFilterPostalService>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) search,
    required TResult Function() active,
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
    TResult Function(String? query)? search,
    TResult Function()? active,
    TResult Function()? archive,
    TResult Function(ShipmentStatusType? statusType)? status,
    TResult Function()? newInfo,
    TResult Function()? error,
    TResult Function(PostalServiceType? serviceType)? postalService,
  }) {
    return postalService?.call(serviceType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? search,
    TResult Function()? active,
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
    required TResult Function(ParcelsFilterActive value) active,
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
    TResult Function(ParcelsFilterSearch value)? search,
    TResult Function(ParcelsFilterActive value)? active,
    TResult Function(ParcelsFilterArchive value)? archive,
    TResult Function(ParcelsFilterStatus value)? status,
    TResult Function(ParcelsFilterNewInfo value)? newInfo,
    TResult Function(ParcelsFilterError value)? error,
    TResult Function(ParcelsFilterPostalService value)? postalService,
  }) {
    return postalService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParcelsFilterSearch value)? search,
    TResult Function(ParcelsFilterActive value)? active,
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
    return _$$ParcelsFilterPostalServiceToJson(this)
      ..['runtimeType'] = 'postalService';
  }
}

abstract class ParcelsFilterPostalService implements ParcelsFilter {
  const factory ParcelsFilterPostalService({PostalServiceType? serviceType}) =
      _$ParcelsFilterPostalService;

  factory ParcelsFilterPostalService.fromJson(Map<String, dynamic> json) =
      _$ParcelsFilterPostalService.fromJson;

  PostalServiceType? get serviceType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParcelsFilterPostalServiceCopyWith<ParcelsFilterPostalService>
      get copyWith => throw _privateConstructorUsedError;
}

AppThemeType _$AppThemeTypeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String?) {
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
class _$AppThemeTypeTearOff {
  const _$AppThemeTypeTearOff();

  AppThemeTypeLight light() {
    return const AppThemeTypeLight();
  }

  AppThemeTypeDark dark() {
    return const AppThemeTypeDark();
  }

  AppThemeTypeSystem system() {
    return const AppThemeTypeSystem();
  }

  AppThemeType fromJson(Map<String, Object> json) {
    return AppThemeType.fromJson(json);
  }
}

/// @nodoc
const $AppThemeType = _$AppThemeTypeTearOff();

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
    TResult Function()? light,
    TResult Function()? dark,
    TResult Function()? system,
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
    TResult Function(AppThemeTypeLight value)? light,
    TResult Function(AppThemeTypeDark value)? dark,
    TResult Function(AppThemeTypeSystem value)? system,
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
      _$AppThemeTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppThemeTypeCopyWithImpl<$Res> implements $AppThemeTypeCopyWith<$Res> {
  _$AppThemeTypeCopyWithImpl(this._value, this._then);

  final AppThemeType _value;
  // ignore: unused_field
  final $Res Function(AppThemeType) _then;
}

/// @nodoc
abstract class $AppThemeTypeLightCopyWith<$Res> {
  factory $AppThemeTypeLightCopyWith(
          AppThemeTypeLight value, $Res Function(AppThemeTypeLight) then) =
      _$AppThemeTypeLightCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppThemeTypeLightCopyWithImpl<$Res>
    extends _$AppThemeTypeCopyWithImpl<$Res>
    implements $AppThemeTypeLightCopyWith<$Res> {
  _$AppThemeTypeLightCopyWithImpl(
      AppThemeTypeLight _value, $Res Function(AppThemeTypeLight) _then)
      : super(_value, (v) => _then(v as AppThemeTypeLight));

  @override
  AppThemeTypeLight get _value => super._value as AppThemeTypeLight;
}

/// @nodoc
@JsonSerializable()
class _$AppThemeTypeLight implements AppThemeTypeLight {
  const _$AppThemeTypeLight();

  factory _$AppThemeTypeLight.fromJson(Map<String, dynamic> json) =>
      _$$AppThemeTypeLightFromJson(json);

  @override
  String toString() {
    return 'AppThemeType.light()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppThemeTypeLight);
  }

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
    TResult Function()? light,
    TResult Function()? dark,
    TResult Function()? system,
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
    TResult Function(AppThemeTypeLight value)? light,
    TResult Function(AppThemeTypeDark value)? dark,
    TResult Function(AppThemeTypeSystem value)? system,
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
    return _$$AppThemeTypeLightToJson(this)..['runtimeType'] = 'light';
  }
}

abstract class AppThemeTypeLight implements AppThemeType {
  const factory AppThemeTypeLight() = _$AppThemeTypeLight;

  factory AppThemeTypeLight.fromJson(Map<String, dynamic> json) =
      _$AppThemeTypeLight.fromJson;
}

/// @nodoc
abstract class $AppThemeTypeDarkCopyWith<$Res> {
  factory $AppThemeTypeDarkCopyWith(
          AppThemeTypeDark value, $Res Function(AppThemeTypeDark) then) =
      _$AppThemeTypeDarkCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppThemeTypeDarkCopyWithImpl<$Res>
    extends _$AppThemeTypeCopyWithImpl<$Res>
    implements $AppThemeTypeDarkCopyWith<$Res> {
  _$AppThemeTypeDarkCopyWithImpl(
      AppThemeTypeDark _value, $Res Function(AppThemeTypeDark) _then)
      : super(_value, (v) => _then(v as AppThemeTypeDark));

  @override
  AppThemeTypeDark get _value => super._value as AppThemeTypeDark;
}

/// @nodoc
@JsonSerializable()
class _$AppThemeTypeDark implements AppThemeTypeDark {
  const _$AppThemeTypeDark();

  factory _$AppThemeTypeDark.fromJson(Map<String, dynamic> json) =>
      _$$AppThemeTypeDarkFromJson(json);

  @override
  String toString() {
    return 'AppThemeType.dark()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppThemeTypeDark);
  }

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
    TResult Function()? light,
    TResult Function()? dark,
    TResult Function()? system,
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
    TResult Function(AppThemeTypeLight value)? light,
    TResult Function(AppThemeTypeDark value)? dark,
    TResult Function(AppThemeTypeSystem value)? system,
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
    return _$$AppThemeTypeDarkToJson(this)..['runtimeType'] = 'dark';
  }
}

abstract class AppThemeTypeDark implements AppThemeType {
  const factory AppThemeTypeDark() = _$AppThemeTypeDark;

  factory AppThemeTypeDark.fromJson(Map<String, dynamic> json) =
      _$AppThemeTypeDark.fromJson;
}

/// @nodoc
abstract class $AppThemeTypeSystemCopyWith<$Res> {
  factory $AppThemeTypeSystemCopyWith(
          AppThemeTypeSystem value, $Res Function(AppThemeTypeSystem) then) =
      _$AppThemeTypeSystemCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppThemeTypeSystemCopyWithImpl<$Res>
    extends _$AppThemeTypeCopyWithImpl<$Res>
    implements $AppThemeTypeSystemCopyWith<$Res> {
  _$AppThemeTypeSystemCopyWithImpl(
      AppThemeTypeSystem _value, $Res Function(AppThemeTypeSystem) _then)
      : super(_value, (v) => _then(v as AppThemeTypeSystem));

  @override
  AppThemeTypeSystem get _value => super._value as AppThemeTypeSystem;
}

/// @nodoc
@JsonSerializable()
class _$AppThemeTypeSystem implements AppThemeTypeSystem {
  const _$AppThemeTypeSystem();

  factory _$AppThemeTypeSystem.fromJson(Map<String, dynamic> json) =>
      _$$AppThemeTypeSystemFromJson(json);

  @override
  String toString() {
    return 'AppThemeType.system()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppThemeTypeSystem);
  }

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
    TResult Function()? light,
    TResult Function()? dark,
    TResult Function()? system,
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
    TResult Function(AppThemeTypeLight value)? light,
    TResult Function(AppThemeTypeDark value)? dark,
    TResult Function(AppThemeTypeSystem value)? system,
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
    return _$$AppThemeTypeSystemToJson(this)..['runtimeType'] = 'system';
  }
}

abstract class AppThemeTypeSystem implements AppThemeType {
  const factory AppThemeTypeSystem() = _$AppThemeTypeSystem;

  factory AppThemeTypeSystem.fromJson(Map<String, dynamic> json) =
      _$AppThemeTypeSystem.fromJson;
}

AppLocaleType _$AppLocaleTypeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String?) {
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
class _$AppLocaleTypeTearOff {
  const _$AppLocaleTypeTearOff();

  AppLocaleTypeSystem system() {
    return const AppLocaleTypeSystem();
  }

  AppLocaleTypeInner inner({required Locale locale}) {
    return AppLocaleTypeInner(
      locale: locale,
    );
  }

  AppLocaleType fromJson(Map<String, Object> json) {
    return AppLocaleType.fromJson(json);
  }
}

/// @nodoc
const $AppLocaleType = _$AppLocaleTypeTearOff();

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
    TResult Function()? system,
    TResult Function(Locale locale)? inner,
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
    TResult Function(AppLocaleTypeSystem value)? system,
    TResult Function(AppLocaleTypeInner value)? inner,
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
      _$AppLocaleTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppLocaleTypeCopyWithImpl<$Res>
    implements $AppLocaleTypeCopyWith<$Res> {
  _$AppLocaleTypeCopyWithImpl(this._value, this._then);

  final AppLocaleType _value;
  // ignore: unused_field
  final $Res Function(AppLocaleType) _then;
}

/// @nodoc
abstract class $AppLocaleTypeSystemCopyWith<$Res> {
  factory $AppLocaleTypeSystemCopyWith(
          AppLocaleTypeSystem value, $Res Function(AppLocaleTypeSystem) then) =
      _$AppLocaleTypeSystemCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppLocaleTypeSystemCopyWithImpl<$Res>
    extends _$AppLocaleTypeCopyWithImpl<$Res>
    implements $AppLocaleTypeSystemCopyWith<$Res> {
  _$AppLocaleTypeSystemCopyWithImpl(
      AppLocaleTypeSystem _value, $Res Function(AppLocaleTypeSystem) _then)
      : super(_value, (v) => _then(v as AppLocaleTypeSystem));

  @override
  AppLocaleTypeSystem get _value => super._value as AppLocaleTypeSystem;
}

/// @nodoc
@JsonSerializable()
class _$AppLocaleTypeSystem implements AppLocaleTypeSystem {
  const _$AppLocaleTypeSystem();

  factory _$AppLocaleTypeSystem.fromJson(Map<String, dynamic> json) =>
      _$$AppLocaleTypeSystemFromJson(json);

  @override
  String toString() {
    return 'AppLocaleType.system()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppLocaleTypeSystem);
  }

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
    TResult Function()? system,
    TResult Function(Locale locale)? inner,
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
    TResult Function(AppLocaleTypeSystem value)? system,
    TResult Function(AppLocaleTypeInner value)? inner,
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
    return _$$AppLocaleTypeSystemToJson(this)..['runtimeType'] = 'system';
  }
}

abstract class AppLocaleTypeSystem implements AppLocaleType {
  const factory AppLocaleTypeSystem() = _$AppLocaleTypeSystem;

  factory AppLocaleTypeSystem.fromJson(Map<String, dynamic> json) =
      _$AppLocaleTypeSystem.fromJson;
}

/// @nodoc
abstract class $AppLocaleTypeInnerCopyWith<$Res> {
  factory $AppLocaleTypeInnerCopyWith(
          AppLocaleTypeInner value, $Res Function(AppLocaleTypeInner) then) =
      _$AppLocaleTypeInnerCopyWithImpl<$Res>;
  $Res call({Locale locale});

  $LocaleCopyWith<$Res> get locale;
}

/// @nodoc
class _$AppLocaleTypeInnerCopyWithImpl<$Res>
    extends _$AppLocaleTypeCopyWithImpl<$Res>
    implements $AppLocaleTypeInnerCopyWith<$Res> {
  _$AppLocaleTypeInnerCopyWithImpl(
      AppLocaleTypeInner _value, $Res Function(AppLocaleTypeInner) _then)
      : super(_value, (v) => _then(v as AppLocaleTypeInner));

  @override
  AppLocaleTypeInner get _value => super._value as AppLocaleTypeInner;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(AppLocaleTypeInner(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }

  @override
  $LocaleCopyWith<$Res> get locale {
    return $LocaleCopyWith<$Res>(_value.locale, (value) {
      return _then(_value.copyWith(locale: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$AppLocaleTypeInner implements AppLocaleTypeInner {
  const _$AppLocaleTypeInner({required this.locale});

  factory _$AppLocaleTypeInner.fromJson(Map<String, dynamic> json) =>
      _$$AppLocaleTypeInnerFromJson(json);

  @override
  final Locale locale;

  @override
  String toString() {
    return 'AppLocaleType.inner(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppLocaleTypeInner &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locale);

  @JsonKey(ignore: true)
  @override
  $AppLocaleTypeInnerCopyWith<AppLocaleTypeInner> get copyWith =>
      _$AppLocaleTypeInnerCopyWithImpl<AppLocaleTypeInner>(this, _$identity);

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
    TResult Function()? system,
    TResult Function(Locale locale)? inner,
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
    TResult Function(AppLocaleTypeSystem value)? system,
    TResult Function(AppLocaleTypeInner value)? inner,
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
    return _$$AppLocaleTypeInnerToJson(this)..['runtimeType'] = 'inner';
  }
}

abstract class AppLocaleTypeInner implements AppLocaleType {
  const factory AppLocaleTypeInner({required Locale locale}) =
      _$AppLocaleTypeInner;

  factory AppLocaleTypeInner.fromJson(Map<String, dynamic> json) =
      _$AppLocaleTypeInner.fromJson;

  Locale get locale => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppLocaleTypeInnerCopyWith<AppLocaleTypeInner> get copyWith =>
      throw _privateConstructorUsedError;
}

TrackingFreqLimit _$TrackingFreqLimitFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String?) {
    case 'fifteenMin':
      return TrackingFreqLimitFifteenMin.fromJson(json);
    case 'thirtyMin':
      return TrackingFreqLimitThirtyMin.fromJson(json);
    case 'fortyFiveMin':
      return TrackingFreqLimitFortyFiveMin.fromJson(json);
    case 'oneHour':
      return TrackingFreqLimitOneHour.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'TrackingFreqLimit',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$TrackingFreqLimitTearOff {
  const _$TrackingFreqLimitTearOff();

  TrackingFreqLimitFifteenMin fifteenMin() {
    return const TrackingFreqLimitFifteenMin();
  }

  TrackingFreqLimitThirtyMin thirtyMin() {
    return const TrackingFreqLimitThirtyMin();
  }

  TrackingFreqLimitFortyFiveMin fortyFiveMin() {
    return const TrackingFreqLimitFortyFiveMin();
  }

  TrackingFreqLimitOneHour oneHour() {
    return const TrackingFreqLimitOneHour();
  }

  TrackingFreqLimit fromJson(Map<String, Object> json) {
    return TrackingFreqLimit.fromJson(json);
  }
}

/// @nodoc
const $TrackingFreqLimit = _$TrackingFreqLimitTearOff();

/// @nodoc
mixin _$TrackingFreqLimit {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fifteenMin,
    required TResult Function() thirtyMin,
    required TResult Function() fortyFiveMin,
    required TResult Function() oneHour,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fifteenMin,
    TResult Function()? thirtyMin,
    TResult Function()? fortyFiveMin,
    TResult Function()? oneHour,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fifteenMin,
    TResult Function()? thirtyMin,
    TResult Function()? fortyFiveMin,
    TResult Function()? oneHour,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrackingFreqLimitFifteenMin value) fifteenMin,
    required TResult Function(TrackingFreqLimitThirtyMin value) thirtyMin,
    required TResult Function(TrackingFreqLimitFortyFiveMin value) fortyFiveMin,
    required TResult Function(TrackingFreqLimitOneHour value) oneHour,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrackingFreqLimitFifteenMin value)? fifteenMin,
    TResult Function(TrackingFreqLimitThirtyMin value)? thirtyMin,
    TResult Function(TrackingFreqLimitFortyFiveMin value)? fortyFiveMin,
    TResult Function(TrackingFreqLimitOneHour value)? oneHour,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrackingFreqLimitFifteenMin value)? fifteenMin,
    TResult Function(TrackingFreqLimitThirtyMin value)? thirtyMin,
    TResult Function(TrackingFreqLimitFortyFiveMin value)? fortyFiveMin,
    TResult Function(TrackingFreqLimitOneHour value)? oneHour,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingFreqLimitCopyWith<$Res> {
  factory $TrackingFreqLimitCopyWith(
          TrackingFreqLimit value, $Res Function(TrackingFreqLimit) then) =
      _$TrackingFreqLimitCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrackingFreqLimitCopyWithImpl<$Res>
    implements $TrackingFreqLimitCopyWith<$Res> {
  _$TrackingFreqLimitCopyWithImpl(this._value, this._then);

  final TrackingFreqLimit _value;
  // ignore: unused_field
  final $Res Function(TrackingFreqLimit) _then;
}

/// @nodoc
abstract class $TrackingFreqLimitFifteenMinCopyWith<$Res> {
  factory $TrackingFreqLimitFifteenMinCopyWith(
          TrackingFreqLimitFifteenMin value,
          $Res Function(TrackingFreqLimitFifteenMin) then) =
      _$TrackingFreqLimitFifteenMinCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrackingFreqLimitFifteenMinCopyWithImpl<$Res>
    extends _$TrackingFreqLimitCopyWithImpl<$Res>
    implements $TrackingFreqLimitFifteenMinCopyWith<$Res> {
  _$TrackingFreqLimitFifteenMinCopyWithImpl(TrackingFreqLimitFifteenMin _value,
      $Res Function(TrackingFreqLimitFifteenMin) _then)
      : super(_value, (v) => _then(v as TrackingFreqLimitFifteenMin));

  @override
  TrackingFreqLimitFifteenMin get _value =>
      super._value as TrackingFreqLimitFifteenMin;
}

/// @nodoc
@JsonSerializable()
class _$TrackingFreqLimitFifteenMin implements TrackingFreqLimitFifteenMin {
  const _$TrackingFreqLimitFifteenMin();

  factory _$TrackingFreqLimitFifteenMin.fromJson(Map<String, dynamic> json) =>
      _$$TrackingFreqLimitFifteenMinFromJson(json);

  @override
  String toString() {
    return 'TrackingFreqLimit.fifteenMin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TrackingFreqLimitFifteenMin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fifteenMin,
    required TResult Function() thirtyMin,
    required TResult Function() fortyFiveMin,
    required TResult Function() oneHour,
  }) {
    return fifteenMin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fifteenMin,
    TResult Function()? thirtyMin,
    TResult Function()? fortyFiveMin,
    TResult Function()? oneHour,
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
  }) {
    return fifteenMin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrackingFreqLimitFifteenMin value)? fifteenMin,
    TResult Function(TrackingFreqLimitThirtyMin value)? thirtyMin,
    TResult Function(TrackingFreqLimitFortyFiveMin value)? fortyFiveMin,
    TResult Function(TrackingFreqLimitOneHour value)? oneHour,
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
    required TResult orElse(),
  }) {
    if (fifteenMin != null) {
      return fifteenMin(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackingFreqLimitFifteenMinToJson(this)
      ..['runtimeType'] = 'fifteenMin';
  }
}

abstract class TrackingFreqLimitFifteenMin implements TrackingFreqLimit {
  const factory TrackingFreqLimitFifteenMin() = _$TrackingFreqLimitFifteenMin;

  factory TrackingFreqLimitFifteenMin.fromJson(Map<String, dynamic> json) =
      _$TrackingFreqLimitFifteenMin.fromJson;
}

/// @nodoc
abstract class $TrackingFreqLimitThirtyMinCopyWith<$Res> {
  factory $TrackingFreqLimitThirtyMinCopyWith(TrackingFreqLimitThirtyMin value,
          $Res Function(TrackingFreqLimitThirtyMin) then) =
      _$TrackingFreqLimitThirtyMinCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrackingFreqLimitThirtyMinCopyWithImpl<$Res>
    extends _$TrackingFreqLimitCopyWithImpl<$Res>
    implements $TrackingFreqLimitThirtyMinCopyWith<$Res> {
  _$TrackingFreqLimitThirtyMinCopyWithImpl(TrackingFreqLimitThirtyMin _value,
      $Res Function(TrackingFreqLimitThirtyMin) _then)
      : super(_value, (v) => _then(v as TrackingFreqLimitThirtyMin));

  @override
  TrackingFreqLimitThirtyMin get _value =>
      super._value as TrackingFreqLimitThirtyMin;
}

/// @nodoc
@JsonSerializable()
class _$TrackingFreqLimitThirtyMin implements TrackingFreqLimitThirtyMin {
  const _$TrackingFreqLimitThirtyMin();

  factory _$TrackingFreqLimitThirtyMin.fromJson(Map<String, dynamic> json) =>
      _$$TrackingFreqLimitThirtyMinFromJson(json);

  @override
  String toString() {
    return 'TrackingFreqLimit.thirtyMin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TrackingFreqLimitThirtyMin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fifteenMin,
    required TResult Function() thirtyMin,
    required TResult Function() fortyFiveMin,
    required TResult Function() oneHour,
  }) {
    return thirtyMin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fifteenMin,
    TResult Function()? thirtyMin,
    TResult Function()? fortyFiveMin,
    TResult Function()? oneHour,
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
  }) {
    return thirtyMin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrackingFreqLimitFifteenMin value)? fifteenMin,
    TResult Function(TrackingFreqLimitThirtyMin value)? thirtyMin,
    TResult Function(TrackingFreqLimitFortyFiveMin value)? fortyFiveMin,
    TResult Function(TrackingFreqLimitOneHour value)? oneHour,
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
    required TResult orElse(),
  }) {
    if (thirtyMin != null) {
      return thirtyMin(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackingFreqLimitThirtyMinToJson(this)
      ..['runtimeType'] = 'thirtyMin';
  }
}

abstract class TrackingFreqLimitThirtyMin implements TrackingFreqLimit {
  const factory TrackingFreqLimitThirtyMin() = _$TrackingFreqLimitThirtyMin;

  factory TrackingFreqLimitThirtyMin.fromJson(Map<String, dynamic> json) =
      _$TrackingFreqLimitThirtyMin.fromJson;
}

/// @nodoc
abstract class $TrackingFreqLimitFortyFiveMinCopyWith<$Res> {
  factory $TrackingFreqLimitFortyFiveMinCopyWith(
          TrackingFreqLimitFortyFiveMin value,
          $Res Function(TrackingFreqLimitFortyFiveMin) then) =
      _$TrackingFreqLimitFortyFiveMinCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrackingFreqLimitFortyFiveMinCopyWithImpl<$Res>
    extends _$TrackingFreqLimitCopyWithImpl<$Res>
    implements $TrackingFreqLimitFortyFiveMinCopyWith<$Res> {
  _$TrackingFreqLimitFortyFiveMinCopyWithImpl(
      TrackingFreqLimitFortyFiveMin _value,
      $Res Function(TrackingFreqLimitFortyFiveMin) _then)
      : super(_value, (v) => _then(v as TrackingFreqLimitFortyFiveMin));

  @override
  TrackingFreqLimitFortyFiveMin get _value =>
      super._value as TrackingFreqLimitFortyFiveMin;
}

/// @nodoc
@JsonSerializable()
class _$TrackingFreqLimitFortyFiveMin implements TrackingFreqLimitFortyFiveMin {
  const _$TrackingFreqLimitFortyFiveMin();

  factory _$TrackingFreqLimitFortyFiveMin.fromJson(Map<String, dynamic> json) =>
      _$$TrackingFreqLimitFortyFiveMinFromJson(json);

  @override
  String toString() {
    return 'TrackingFreqLimit.fortyFiveMin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TrackingFreqLimitFortyFiveMin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fifteenMin,
    required TResult Function() thirtyMin,
    required TResult Function() fortyFiveMin,
    required TResult Function() oneHour,
  }) {
    return fortyFiveMin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fifteenMin,
    TResult Function()? thirtyMin,
    TResult Function()? fortyFiveMin,
    TResult Function()? oneHour,
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
  }) {
    return fortyFiveMin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrackingFreqLimitFifteenMin value)? fifteenMin,
    TResult Function(TrackingFreqLimitThirtyMin value)? thirtyMin,
    TResult Function(TrackingFreqLimitFortyFiveMin value)? fortyFiveMin,
    TResult Function(TrackingFreqLimitOneHour value)? oneHour,
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
    required TResult orElse(),
  }) {
    if (fortyFiveMin != null) {
      return fortyFiveMin(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackingFreqLimitFortyFiveMinToJson(this)
      ..['runtimeType'] = 'fortyFiveMin';
  }
}

abstract class TrackingFreqLimitFortyFiveMin implements TrackingFreqLimit {
  const factory TrackingFreqLimitFortyFiveMin() =
      _$TrackingFreqLimitFortyFiveMin;

  factory TrackingFreqLimitFortyFiveMin.fromJson(Map<String, dynamic> json) =
      _$TrackingFreqLimitFortyFiveMin.fromJson;
}

/// @nodoc
abstract class $TrackingFreqLimitOneHourCopyWith<$Res> {
  factory $TrackingFreqLimitOneHourCopyWith(TrackingFreqLimitOneHour value,
          $Res Function(TrackingFreqLimitOneHour) then) =
      _$TrackingFreqLimitOneHourCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrackingFreqLimitOneHourCopyWithImpl<$Res>
    extends _$TrackingFreqLimitCopyWithImpl<$Res>
    implements $TrackingFreqLimitOneHourCopyWith<$Res> {
  _$TrackingFreqLimitOneHourCopyWithImpl(TrackingFreqLimitOneHour _value,
      $Res Function(TrackingFreqLimitOneHour) _then)
      : super(_value, (v) => _then(v as TrackingFreqLimitOneHour));

  @override
  TrackingFreqLimitOneHour get _value =>
      super._value as TrackingFreqLimitOneHour;
}

/// @nodoc
@JsonSerializable()
class _$TrackingFreqLimitOneHour implements TrackingFreqLimitOneHour {
  const _$TrackingFreqLimitOneHour();

  factory _$TrackingFreqLimitOneHour.fromJson(Map<String, dynamic> json) =>
      _$$TrackingFreqLimitOneHourFromJson(json);

  @override
  String toString() {
    return 'TrackingFreqLimit.oneHour()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TrackingFreqLimitOneHour);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fifteenMin,
    required TResult Function() thirtyMin,
    required TResult Function() fortyFiveMin,
    required TResult Function() oneHour,
  }) {
    return oneHour();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fifteenMin,
    TResult Function()? thirtyMin,
    TResult Function()? fortyFiveMin,
    TResult Function()? oneHour,
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
  }) {
    return oneHour(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TrackingFreqLimitFifteenMin value)? fifteenMin,
    TResult Function(TrackingFreqLimitThirtyMin value)? thirtyMin,
    TResult Function(TrackingFreqLimitFortyFiveMin value)? fortyFiveMin,
    TResult Function(TrackingFreqLimitOneHour value)? oneHour,
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
    required TResult orElse(),
  }) {
    if (oneHour != null) {
      return oneHour(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackingFreqLimitOneHourToJson(this)..['runtimeType'] = 'oneHour';
  }
}

abstract class TrackingFreqLimitOneHour implements TrackingFreqLimit {
  const factory TrackingFreqLimitOneHour() = _$TrackingFreqLimitOneHour;

  factory TrackingFreqLimitOneHour.fromJson(Map<String, dynamic> json) =
      _$TrackingFreqLimitOneHour.fromJson;
}

AutoTrackingFreq _$AutoTrackingFreqFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String?) {
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
class _$AutoTrackingFreqTearOff {
  const _$AutoTrackingFreqTearOff();

  AutoTrackingFreqSixHours sixHours() {
    return const AutoTrackingFreqSixHours();
  }

  AutoTrackingFreqTwelveHours twelveHours() {
    return const AutoTrackingFreqTwelveHours();
  }

  AutoTrackingFreqOneDay oneDay() {
    return const AutoTrackingFreqOneDay();
  }

  AutoTrackingFreqThreeDays threeDays() {
    return const AutoTrackingFreqThreeDays();
  }

  AutoTrackingFreqOneWeek oneWeek() {
    return const AutoTrackingFreqOneWeek();
  }

  AutoTrackingFreq fromJson(Map<String, Object> json) {
    return AutoTrackingFreq.fromJson(json);
  }
}

/// @nodoc
const $AutoTrackingFreq = _$AutoTrackingFreqTearOff();

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
    TResult Function()? sixHours,
    TResult Function()? twelveHours,
    TResult Function()? oneDay,
    TResult Function()? threeDays,
    TResult Function()? oneWeek,
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
    TResult Function(AutoTrackingFreqSixHours value)? sixHours,
    TResult Function(AutoTrackingFreqTwelveHours value)? twelveHours,
    TResult Function(AutoTrackingFreqOneDay value)? oneDay,
    TResult Function(AutoTrackingFreqThreeDays value)? threeDays,
    TResult Function(AutoTrackingFreqOneWeek value)? oneWeek,
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
      _$AutoTrackingFreqCopyWithImpl<$Res>;
}

/// @nodoc
class _$AutoTrackingFreqCopyWithImpl<$Res>
    implements $AutoTrackingFreqCopyWith<$Res> {
  _$AutoTrackingFreqCopyWithImpl(this._value, this._then);

  final AutoTrackingFreq _value;
  // ignore: unused_field
  final $Res Function(AutoTrackingFreq) _then;
}

/// @nodoc
abstract class $AutoTrackingFreqSixHoursCopyWith<$Res> {
  factory $AutoTrackingFreqSixHoursCopyWith(AutoTrackingFreqSixHours value,
          $Res Function(AutoTrackingFreqSixHours) then) =
      _$AutoTrackingFreqSixHoursCopyWithImpl<$Res>;
}

/// @nodoc
class _$AutoTrackingFreqSixHoursCopyWithImpl<$Res>
    extends _$AutoTrackingFreqCopyWithImpl<$Res>
    implements $AutoTrackingFreqSixHoursCopyWith<$Res> {
  _$AutoTrackingFreqSixHoursCopyWithImpl(AutoTrackingFreqSixHours _value,
      $Res Function(AutoTrackingFreqSixHours) _then)
      : super(_value, (v) => _then(v as AutoTrackingFreqSixHours));

  @override
  AutoTrackingFreqSixHours get _value =>
      super._value as AutoTrackingFreqSixHours;
}

/// @nodoc
@JsonSerializable()
class _$AutoTrackingFreqSixHours implements AutoTrackingFreqSixHours {
  const _$AutoTrackingFreqSixHours();

  factory _$AutoTrackingFreqSixHours.fromJson(Map<String, dynamic> json) =>
      _$$AutoTrackingFreqSixHoursFromJson(json);

  @override
  String toString() {
    return 'AutoTrackingFreq.sixHours()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AutoTrackingFreqSixHours);
  }

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
    TResult Function()? sixHours,
    TResult Function()? twelveHours,
    TResult Function()? oneDay,
    TResult Function()? threeDays,
    TResult Function()? oneWeek,
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
    TResult Function(AutoTrackingFreqSixHours value)? sixHours,
    TResult Function(AutoTrackingFreqTwelveHours value)? twelveHours,
    TResult Function(AutoTrackingFreqOneDay value)? oneDay,
    TResult Function(AutoTrackingFreqThreeDays value)? threeDays,
    TResult Function(AutoTrackingFreqOneWeek value)? oneWeek,
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
    return _$$AutoTrackingFreqSixHoursToJson(this)
      ..['runtimeType'] = 'sixHours';
  }
}

abstract class AutoTrackingFreqSixHours implements AutoTrackingFreq {
  const factory AutoTrackingFreqSixHours() = _$AutoTrackingFreqSixHours;

  factory AutoTrackingFreqSixHours.fromJson(Map<String, dynamic> json) =
      _$AutoTrackingFreqSixHours.fromJson;
}

/// @nodoc
abstract class $AutoTrackingFreqTwelveHoursCopyWith<$Res> {
  factory $AutoTrackingFreqTwelveHoursCopyWith(
          AutoTrackingFreqTwelveHours value,
          $Res Function(AutoTrackingFreqTwelveHours) then) =
      _$AutoTrackingFreqTwelveHoursCopyWithImpl<$Res>;
}

/// @nodoc
class _$AutoTrackingFreqTwelveHoursCopyWithImpl<$Res>
    extends _$AutoTrackingFreqCopyWithImpl<$Res>
    implements $AutoTrackingFreqTwelveHoursCopyWith<$Res> {
  _$AutoTrackingFreqTwelveHoursCopyWithImpl(AutoTrackingFreqTwelveHours _value,
      $Res Function(AutoTrackingFreqTwelveHours) _then)
      : super(_value, (v) => _then(v as AutoTrackingFreqTwelveHours));

  @override
  AutoTrackingFreqTwelveHours get _value =>
      super._value as AutoTrackingFreqTwelveHours;
}

/// @nodoc
@JsonSerializable()
class _$AutoTrackingFreqTwelveHours implements AutoTrackingFreqTwelveHours {
  const _$AutoTrackingFreqTwelveHours();

  factory _$AutoTrackingFreqTwelveHours.fromJson(Map<String, dynamic> json) =>
      _$$AutoTrackingFreqTwelveHoursFromJson(json);

  @override
  String toString() {
    return 'AutoTrackingFreq.twelveHours()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AutoTrackingFreqTwelveHours);
  }

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
    TResult Function()? sixHours,
    TResult Function()? twelveHours,
    TResult Function()? oneDay,
    TResult Function()? threeDays,
    TResult Function()? oneWeek,
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
    TResult Function(AutoTrackingFreqSixHours value)? sixHours,
    TResult Function(AutoTrackingFreqTwelveHours value)? twelveHours,
    TResult Function(AutoTrackingFreqOneDay value)? oneDay,
    TResult Function(AutoTrackingFreqThreeDays value)? threeDays,
    TResult Function(AutoTrackingFreqOneWeek value)? oneWeek,
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
    return _$$AutoTrackingFreqTwelveHoursToJson(this)
      ..['runtimeType'] = 'twelveHours';
  }
}

abstract class AutoTrackingFreqTwelveHours implements AutoTrackingFreq {
  const factory AutoTrackingFreqTwelveHours() = _$AutoTrackingFreqTwelveHours;

  factory AutoTrackingFreqTwelveHours.fromJson(Map<String, dynamic> json) =
      _$AutoTrackingFreqTwelveHours.fromJson;
}

/// @nodoc
abstract class $AutoTrackingFreqOneDayCopyWith<$Res> {
  factory $AutoTrackingFreqOneDayCopyWith(AutoTrackingFreqOneDay value,
          $Res Function(AutoTrackingFreqOneDay) then) =
      _$AutoTrackingFreqOneDayCopyWithImpl<$Res>;
}

/// @nodoc
class _$AutoTrackingFreqOneDayCopyWithImpl<$Res>
    extends _$AutoTrackingFreqCopyWithImpl<$Res>
    implements $AutoTrackingFreqOneDayCopyWith<$Res> {
  _$AutoTrackingFreqOneDayCopyWithImpl(AutoTrackingFreqOneDay _value,
      $Res Function(AutoTrackingFreqOneDay) _then)
      : super(_value, (v) => _then(v as AutoTrackingFreqOneDay));

  @override
  AutoTrackingFreqOneDay get _value => super._value as AutoTrackingFreqOneDay;
}

/// @nodoc
@JsonSerializable()
class _$AutoTrackingFreqOneDay implements AutoTrackingFreqOneDay {
  const _$AutoTrackingFreqOneDay();

  factory _$AutoTrackingFreqOneDay.fromJson(Map<String, dynamic> json) =>
      _$$AutoTrackingFreqOneDayFromJson(json);

  @override
  String toString() {
    return 'AutoTrackingFreq.oneDay()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AutoTrackingFreqOneDay);
  }

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
    TResult Function()? sixHours,
    TResult Function()? twelveHours,
    TResult Function()? oneDay,
    TResult Function()? threeDays,
    TResult Function()? oneWeek,
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
    TResult Function(AutoTrackingFreqSixHours value)? sixHours,
    TResult Function(AutoTrackingFreqTwelveHours value)? twelveHours,
    TResult Function(AutoTrackingFreqOneDay value)? oneDay,
    TResult Function(AutoTrackingFreqThreeDays value)? threeDays,
    TResult Function(AutoTrackingFreqOneWeek value)? oneWeek,
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
    return _$$AutoTrackingFreqOneDayToJson(this)..['runtimeType'] = 'oneDay';
  }
}

abstract class AutoTrackingFreqOneDay implements AutoTrackingFreq {
  const factory AutoTrackingFreqOneDay() = _$AutoTrackingFreqOneDay;

  factory AutoTrackingFreqOneDay.fromJson(Map<String, dynamic> json) =
      _$AutoTrackingFreqOneDay.fromJson;
}

/// @nodoc
abstract class $AutoTrackingFreqThreeDaysCopyWith<$Res> {
  factory $AutoTrackingFreqThreeDaysCopyWith(AutoTrackingFreqThreeDays value,
          $Res Function(AutoTrackingFreqThreeDays) then) =
      _$AutoTrackingFreqThreeDaysCopyWithImpl<$Res>;
}

/// @nodoc
class _$AutoTrackingFreqThreeDaysCopyWithImpl<$Res>
    extends _$AutoTrackingFreqCopyWithImpl<$Res>
    implements $AutoTrackingFreqThreeDaysCopyWith<$Res> {
  _$AutoTrackingFreqThreeDaysCopyWithImpl(AutoTrackingFreqThreeDays _value,
      $Res Function(AutoTrackingFreqThreeDays) _then)
      : super(_value, (v) => _then(v as AutoTrackingFreqThreeDays));

  @override
  AutoTrackingFreqThreeDays get _value =>
      super._value as AutoTrackingFreqThreeDays;
}

/// @nodoc
@JsonSerializable()
class _$AutoTrackingFreqThreeDays implements AutoTrackingFreqThreeDays {
  const _$AutoTrackingFreqThreeDays();

  factory _$AutoTrackingFreqThreeDays.fromJson(Map<String, dynamic> json) =>
      _$$AutoTrackingFreqThreeDaysFromJson(json);

  @override
  String toString() {
    return 'AutoTrackingFreq.threeDays()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AutoTrackingFreqThreeDays);
  }

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
    TResult Function()? sixHours,
    TResult Function()? twelveHours,
    TResult Function()? oneDay,
    TResult Function()? threeDays,
    TResult Function()? oneWeek,
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
    TResult Function(AutoTrackingFreqSixHours value)? sixHours,
    TResult Function(AutoTrackingFreqTwelveHours value)? twelveHours,
    TResult Function(AutoTrackingFreqOneDay value)? oneDay,
    TResult Function(AutoTrackingFreqThreeDays value)? threeDays,
    TResult Function(AutoTrackingFreqOneWeek value)? oneWeek,
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
    return _$$AutoTrackingFreqThreeDaysToJson(this)
      ..['runtimeType'] = 'threeDays';
  }
}

abstract class AutoTrackingFreqThreeDays implements AutoTrackingFreq {
  const factory AutoTrackingFreqThreeDays() = _$AutoTrackingFreqThreeDays;

  factory AutoTrackingFreqThreeDays.fromJson(Map<String, dynamic> json) =
      _$AutoTrackingFreqThreeDays.fromJson;
}

/// @nodoc
abstract class $AutoTrackingFreqOneWeekCopyWith<$Res> {
  factory $AutoTrackingFreqOneWeekCopyWith(AutoTrackingFreqOneWeek value,
          $Res Function(AutoTrackingFreqOneWeek) then) =
      _$AutoTrackingFreqOneWeekCopyWithImpl<$Res>;
}

/// @nodoc
class _$AutoTrackingFreqOneWeekCopyWithImpl<$Res>
    extends _$AutoTrackingFreqCopyWithImpl<$Res>
    implements $AutoTrackingFreqOneWeekCopyWith<$Res> {
  _$AutoTrackingFreqOneWeekCopyWithImpl(AutoTrackingFreqOneWeek _value,
      $Res Function(AutoTrackingFreqOneWeek) _then)
      : super(_value, (v) => _then(v as AutoTrackingFreqOneWeek));

  @override
  AutoTrackingFreqOneWeek get _value => super._value as AutoTrackingFreqOneWeek;
}

/// @nodoc
@JsonSerializable()
class _$AutoTrackingFreqOneWeek implements AutoTrackingFreqOneWeek {
  const _$AutoTrackingFreqOneWeek();

  factory _$AutoTrackingFreqOneWeek.fromJson(Map<String, dynamic> json) =>
      _$$AutoTrackingFreqOneWeekFromJson(json);

  @override
  String toString() {
    return 'AutoTrackingFreq.oneWeek()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AutoTrackingFreqOneWeek);
  }

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
    TResult Function()? sixHours,
    TResult Function()? twelveHours,
    TResult Function()? oneDay,
    TResult Function()? threeDays,
    TResult Function()? oneWeek,
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
    TResult Function(AutoTrackingFreqSixHours value)? sixHours,
    TResult Function(AutoTrackingFreqTwelveHours value)? twelveHours,
    TResult Function(AutoTrackingFreqOneDay value)? oneDay,
    TResult Function(AutoTrackingFreqThreeDays value)? threeDays,
    TResult Function(AutoTrackingFreqOneWeek value)? oneWeek,
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
    return _$$AutoTrackingFreqOneWeekToJson(this)..['runtimeType'] = 'oneWeek';
  }
}

abstract class AutoTrackingFreqOneWeek implements AutoTrackingFreq {
  const factory AutoTrackingFreqOneWeek() = _$AutoTrackingFreqOneWeek;

  factory AutoTrackingFreqOneWeek.fromJson(Map<String, dynamic> json) =
      _$AutoTrackingFreqOneWeek.fromJson;
}
