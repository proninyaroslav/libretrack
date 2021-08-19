// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shipment_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShipmentStatusMetadataTearOff {
  const _$ShipmentStatusMetadataTearOff();

  _ShipmentStatusMetadata call(
      {required ShipmentStatusType type,
      required RRectIconData iconData,
      required String emoji,
      String? localizedName}) {
    return _ShipmentStatusMetadata(
      type: type,
      iconData: iconData,
      emoji: emoji,
      localizedName: localizedName,
    );
  }
}

/// @nodoc
const $ShipmentStatusMetadata = _$ShipmentStatusMetadataTearOff();

/// @nodoc
mixin _$ShipmentStatusMetadata {
  ShipmentStatusType get type => throw _privateConstructorUsedError;
  RRectIconData get iconData => throw _privateConstructorUsedError;
  String get emoji => throw _privateConstructorUsedError;
  String? get localizedName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShipmentStatusMetadataCopyWith<ShipmentStatusMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentStatusMetadataCopyWith<$Res> {
  factory $ShipmentStatusMetadataCopyWith(ShipmentStatusMetadata value,
          $Res Function(ShipmentStatusMetadata) then) =
      _$ShipmentStatusMetadataCopyWithImpl<$Res>;
  $Res call(
      {ShipmentStatusType type,
      RRectIconData iconData,
      String emoji,
      String? localizedName});

  $RRectIconDataCopyWith<$Res> get iconData;
}

/// @nodoc
class _$ShipmentStatusMetadataCopyWithImpl<$Res>
    implements $ShipmentStatusMetadataCopyWith<$Res> {
  _$ShipmentStatusMetadataCopyWithImpl(this._value, this._then);

  final ShipmentStatusMetadata _value;
  // ignore: unused_field
  final $Res Function(ShipmentStatusMetadata) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? iconData = freezed,
    Object? emoji = freezed,
    Object? localizedName = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ShipmentStatusType,
      iconData: iconData == freezed
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as RRectIconData,
      emoji: emoji == freezed
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
      localizedName: localizedName == freezed
          ? _value.localizedName
          : localizedName // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$ShipmentStatusMetadataCopyWith<$Res>
    implements $ShipmentStatusMetadataCopyWith<$Res> {
  factory _$ShipmentStatusMetadataCopyWith(_ShipmentStatusMetadata value,
          $Res Function(_ShipmentStatusMetadata) then) =
      __$ShipmentStatusMetadataCopyWithImpl<$Res>;
  @override
  $Res call(
      {ShipmentStatusType type,
      RRectIconData iconData,
      String emoji,
      String? localizedName});

  @override
  $RRectIconDataCopyWith<$Res> get iconData;
}

/// @nodoc
class __$ShipmentStatusMetadataCopyWithImpl<$Res>
    extends _$ShipmentStatusMetadataCopyWithImpl<$Res>
    implements _$ShipmentStatusMetadataCopyWith<$Res> {
  __$ShipmentStatusMetadataCopyWithImpl(_ShipmentStatusMetadata _value,
      $Res Function(_ShipmentStatusMetadata) _then)
      : super(_value, (v) => _then(v as _ShipmentStatusMetadata));

  @override
  _ShipmentStatusMetadata get _value => super._value as _ShipmentStatusMetadata;

  @override
  $Res call({
    Object? type = freezed,
    Object? iconData = freezed,
    Object? emoji = freezed,
    Object? localizedName = freezed,
  }) {
    return _then(_ShipmentStatusMetadata(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ShipmentStatusType,
      iconData: iconData == freezed
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as RRectIconData,
      emoji: emoji == freezed
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
      localizedName: localizedName == freezed
          ? _value.localizedName
          : localizedName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ShipmentStatusMetadata implements _ShipmentStatusMetadata {
  const _$_ShipmentStatusMetadata(
      {required this.type,
      required this.iconData,
      required this.emoji,
      this.localizedName});

  @override
  final ShipmentStatusType type;
  @override
  final RRectIconData iconData;
  @override
  final String emoji;
  @override
  final String? localizedName;

  @override
  String toString() {
    return 'ShipmentStatusMetadata(type: $type, iconData: $iconData, emoji: $emoji, localizedName: $localizedName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShipmentStatusMetadata &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.iconData, iconData) ||
                const DeepCollectionEquality()
                    .equals(other.iconData, iconData)) &&
            (identical(other.emoji, emoji) ||
                const DeepCollectionEquality().equals(other.emoji, emoji)) &&
            (identical(other.localizedName, localizedName) ||
                const DeepCollectionEquality()
                    .equals(other.localizedName, localizedName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(iconData) ^
      const DeepCollectionEquality().hash(emoji) ^
      const DeepCollectionEquality().hash(localizedName);

  @JsonKey(ignore: true)
  @override
  _$ShipmentStatusMetadataCopyWith<_ShipmentStatusMetadata> get copyWith =>
      __$ShipmentStatusMetadataCopyWithImpl<_ShipmentStatusMetadata>(
          this, _$identity);
}

abstract class _ShipmentStatusMetadata implements ShipmentStatusMetadata {
  const factory _ShipmentStatusMetadata(
      {required ShipmentStatusType type,
      required RRectIconData iconData,
      required String emoji,
      String? localizedName}) = _$_ShipmentStatusMetadata;

  @override
  ShipmentStatusType get type => throw _privateConstructorUsedError;
  @override
  RRectIconData get iconData => throw _privateConstructorUsedError;
  @override
  String get emoji => throw _privateConstructorUsedError;
  @override
  String? get localizedName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShipmentStatusMetadataCopyWith<_ShipmentStatusMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}
