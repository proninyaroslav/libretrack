// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'service_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TrackingServiceMetadataTearOff {
  const _$TrackingServiceMetadataTearOff();

  _TrackingServiceMetadata call(
      {required TrackingServiceType type,
      required String localizedName,
      required RRectIconData iconData,
      required Set<PostalServiceMetadata> postalServices}) {
    return _TrackingServiceMetadata(
      type: type,
      localizedName: localizedName,
      iconData: iconData,
      postalServices: postalServices,
    );
  }
}

/// @nodoc
const $TrackingServiceMetadata = _$TrackingServiceMetadataTearOff();

/// @nodoc
mixin _$TrackingServiceMetadata {
  TrackingServiceType get type => throw _privateConstructorUsedError;
  String get localizedName => throw _privateConstructorUsedError;
  RRectIconData get iconData => throw _privateConstructorUsedError;
  Set<PostalServiceMetadata> get postalServices =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrackingServiceMetadataCopyWith<TrackingServiceMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingServiceMetadataCopyWith<$Res> {
  factory $TrackingServiceMetadataCopyWith(TrackingServiceMetadata value,
          $Res Function(TrackingServiceMetadata) then) =
      _$TrackingServiceMetadataCopyWithImpl<$Res>;
  $Res call(
      {TrackingServiceType type,
      String localizedName,
      RRectIconData iconData,
      Set<PostalServiceMetadata> postalServices});

  $RRectIconDataCopyWith<$Res> get iconData;
}

/// @nodoc
class _$TrackingServiceMetadataCopyWithImpl<$Res>
    implements $TrackingServiceMetadataCopyWith<$Res> {
  _$TrackingServiceMetadataCopyWithImpl(this._value, this._then);

  final TrackingServiceMetadata _value;
  // ignore: unused_field
  final $Res Function(TrackingServiceMetadata) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? localizedName = freezed,
    Object? iconData = freezed,
    Object? postalServices = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TrackingServiceType,
      localizedName: localizedName == freezed
          ? _value.localizedName
          : localizedName // ignore: cast_nullable_to_non_nullable
              as String,
      iconData: iconData == freezed
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as RRectIconData,
      postalServices: postalServices == freezed
          ? _value.postalServices
          : postalServices // ignore: cast_nullable_to_non_nullable
              as Set<PostalServiceMetadata>,
    ));
  }

  @override
  $RRectIconDataCopyWith<$Res> get iconData {
    return $RRectIconDataCopyWith<$Res>(_value.iconData, (value) {
      return _then(_value.copyWith(iconData: value));
    });
  }
}

/// @nodoc
abstract class _$TrackingServiceMetadataCopyWith<$Res>
    implements $TrackingServiceMetadataCopyWith<$Res> {
  factory _$TrackingServiceMetadataCopyWith(_TrackingServiceMetadata value,
          $Res Function(_TrackingServiceMetadata) then) =
      __$TrackingServiceMetadataCopyWithImpl<$Res>;
  @override
  $Res call(
      {TrackingServiceType type,
      String localizedName,
      RRectIconData iconData,
      Set<PostalServiceMetadata> postalServices});

  @override
  $RRectIconDataCopyWith<$Res> get iconData;
}

/// @nodoc
class __$TrackingServiceMetadataCopyWithImpl<$Res>
    extends _$TrackingServiceMetadataCopyWithImpl<$Res>
    implements _$TrackingServiceMetadataCopyWith<$Res> {
  __$TrackingServiceMetadataCopyWithImpl(_TrackingServiceMetadata _value,
      $Res Function(_TrackingServiceMetadata) _then)
      : super(_value, (v) => _then(v as _TrackingServiceMetadata));

  @override
  _TrackingServiceMetadata get _value =>
      super._value as _TrackingServiceMetadata;

  @override
  $Res call({
    Object? type = freezed,
    Object? localizedName = freezed,
    Object? iconData = freezed,
    Object? postalServices = freezed,
  }) {
    return _then(_TrackingServiceMetadata(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TrackingServiceType,
      localizedName: localizedName == freezed
          ? _value.localizedName
          : localizedName // ignore: cast_nullable_to_non_nullable
              as String,
      iconData: iconData == freezed
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as RRectIconData,
      postalServices: postalServices == freezed
          ? _value.postalServices
          : postalServices // ignore: cast_nullable_to_non_nullable
              as Set<PostalServiceMetadata>,
    ));
  }
}

/// @nodoc

class _$_TrackingServiceMetadata implements _TrackingServiceMetadata {
  const _$_TrackingServiceMetadata(
      {required this.type,
      required this.localizedName,
      required this.iconData,
      required this.postalServices});

  @override
  final TrackingServiceType type;
  @override
  final String localizedName;
  @override
  final RRectIconData iconData;
  @override
  final Set<PostalServiceMetadata> postalServices;

  @override
  String toString() {
    return 'TrackingServiceMetadata(type: $type, localizedName: $localizedName, iconData: $iconData, postalServices: $postalServices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TrackingServiceMetadata &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.localizedName, localizedName) ||
                const DeepCollectionEquality()
                    .equals(other.localizedName, localizedName)) &&
            (identical(other.iconData, iconData) ||
                const DeepCollectionEquality()
                    .equals(other.iconData, iconData)) &&
            (identical(other.postalServices, postalServices) ||
                const DeepCollectionEquality()
                    .equals(other.postalServices, postalServices)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(localizedName) ^
      const DeepCollectionEquality().hash(iconData) ^
      const DeepCollectionEquality().hash(postalServices);

  @JsonKey(ignore: true)
  @override
  _$TrackingServiceMetadataCopyWith<_TrackingServiceMetadata> get copyWith =>
      __$TrackingServiceMetadataCopyWithImpl<_TrackingServiceMetadata>(
          this, _$identity);
}

abstract class _TrackingServiceMetadata implements TrackingServiceMetadata {
  const factory _TrackingServiceMetadata(
          {required TrackingServiceType type,
          required String localizedName,
          required RRectIconData iconData,
          required Set<PostalServiceMetadata> postalServices}) =
      _$_TrackingServiceMetadata;

  @override
  TrackingServiceType get type => throw _privateConstructorUsedError;
  @override
  String get localizedName => throw _privateConstructorUsedError;
  @override
  RRectIconData get iconData => throw _privateConstructorUsedError;
  @override
  Set<PostalServiceMetadata> get postalServices =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TrackingServiceMetadataCopyWith<_TrackingServiceMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PostalServiceMetadataTearOff {
  const _$PostalServiceMetadataTearOff();

  _PostalServiceMetadata call(
      {required PostalServiceType type,
      required String localizedName,
      required RRectIconData iconData}) {
    return _PostalServiceMetadata(
      type: type,
      localizedName: localizedName,
      iconData: iconData,
    );
  }
}

/// @nodoc
const $PostalServiceMetadata = _$PostalServiceMetadataTearOff();

/// @nodoc
mixin _$PostalServiceMetadata {
  PostalServiceType get type => throw _privateConstructorUsedError;
  String get localizedName => throw _privateConstructorUsedError;
  RRectIconData get iconData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostalServiceMetadataCopyWith<PostalServiceMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostalServiceMetadataCopyWith<$Res> {
  factory $PostalServiceMetadataCopyWith(PostalServiceMetadata value,
          $Res Function(PostalServiceMetadata) then) =
      _$PostalServiceMetadataCopyWithImpl<$Res>;
  $Res call(
      {PostalServiceType type, String localizedName, RRectIconData iconData});

  $RRectIconDataCopyWith<$Res> get iconData;
}

/// @nodoc
class _$PostalServiceMetadataCopyWithImpl<$Res>
    implements $PostalServiceMetadataCopyWith<$Res> {
  _$PostalServiceMetadataCopyWithImpl(this._value, this._then);

  final PostalServiceMetadata _value;
  // ignore: unused_field
  final $Res Function(PostalServiceMetadata) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? localizedName = freezed,
    Object? iconData = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PostalServiceType,
      localizedName: localizedName == freezed
          ? _value.localizedName
          : localizedName // ignore: cast_nullable_to_non_nullable
              as String,
      iconData: iconData == freezed
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as RRectIconData,
    ));
  }

  @override
  $RRectIconDataCopyWith<$Res> get iconData {
    return $RRectIconDataCopyWith<$Res>(_value.iconData, (value) {
      return _then(_value.copyWith(iconData: value));
    });
  }
}

/// @nodoc
abstract class _$PostalServiceMetadataCopyWith<$Res>
    implements $PostalServiceMetadataCopyWith<$Res> {
  factory _$PostalServiceMetadataCopyWith(_PostalServiceMetadata value,
          $Res Function(_PostalServiceMetadata) then) =
      __$PostalServiceMetadataCopyWithImpl<$Res>;
  @override
  $Res call(
      {PostalServiceType type, String localizedName, RRectIconData iconData});

  @override
  $RRectIconDataCopyWith<$Res> get iconData;
}

/// @nodoc
class __$PostalServiceMetadataCopyWithImpl<$Res>
    extends _$PostalServiceMetadataCopyWithImpl<$Res>
    implements _$PostalServiceMetadataCopyWith<$Res> {
  __$PostalServiceMetadataCopyWithImpl(_PostalServiceMetadata _value,
      $Res Function(_PostalServiceMetadata) _then)
      : super(_value, (v) => _then(v as _PostalServiceMetadata));

  @override
  _PostalServiceMetadata get _value => super._value as _PostalServiceMetadata;

  @override
  $Res call({
    Object? type = freezed,
    Object? localizedName = freezed,
    Object? iconData = freezed,
  }) {
    return _then(_PostalServiceMetadata(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PostalServiceType,
      localizedName: localizedName == freezed
          ? _value.localizedName
          : localizedName // ignore: cast_nullable_to_non_nullable
              as String,
      iconData: iconData == freezed
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as RRectIconData,
    ));
  }
}

/// @nodoc

class _$_PostalServiceMetadata implements _PostalServiceMetadata {
  const _$_PostalServiceMetadata(
      {required this.type,
      required this.localizedName,
      required this.iconData});

  @override
  final PostalServiceType type;
  @override
  final String localizedName;
  @override
  final RRectIconData iconData;

  @override
  String toString() {
    return 'PostalServiceMetadata(type: $type, localizedName: $localizedName, iconData: $iconData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostalServiceMetadata &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.localizedName, localizedName) ||
                const DeepCollectionEquality()
                    .equals(other.localizedName, localizedName)) &&
            (identical(other.iconData, iconData) ||
                const DeepCollectionEquality()
                    .equals(other.iconData, iconData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(localizedName) ^
      const DeepCollectionEquality().hash(iconData);

  @JsonKey(ignore: true)
  @override
  _$PostalServiceMetadataCopyWith<_PostalServiceMetadata> get copyWith =>
      __$PostalServiceMetadataCopyWithImpl<_PostalServiceMetadata>(
          this, _$identity);
}

abstract class _PostalServiceMetadata implements PostalServiceMetadata {
  const factory _PostalServiceMetadata(
      {required PostalServiceType type,
      required String localizedName,
      required RRectIconData iconData}) = _$_PostalServiceMetadata;

  @override
  PostalServiceType get type => throw _privateConstructorUsedError;
  @override
  String get localizedName => throw _privateConstructorUsedError;
  @override
  RRectIconData get iconData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PostalServiceMetadataCopyWith<_PostalServiceMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}
