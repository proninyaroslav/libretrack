// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipment_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
      _$ShipmentStatusMetadataCopyWithImpl<$Res, ShipmentStatusMetadata>;
  @useResult
  $Res call(
      {ShipmentStatusType type,
      RRectIconData iconData,
      String emoji,
      String? localizedName});

  $RRectIconDataCopyWith<$Res> get iconData;
}

/// @nodoc
class _$ShipmentStatusMetadataCopyWithImpl<$Res,
        $Val extends ShipmentStatusMetadata>
    implements $ShipmentStatusMetadataCopyWith<$Res> {
  _$ShipmentStatusMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? iconData = null,
    Object? emoji = null,
    Object? localizedName = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ShipmentStatusType,
      iconData: null == iconData
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as RRectIconData,
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
      localizedName: freezed == localizedName
          ? _value.localizedName
          : localizedName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RRectIconDataCopyWith<$Res> get iconData {
    return $RRectIconDataCopyWith<$Res>(_value.iconData, (value) {
      return _then(_value.copyWith(iconData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShipmentStatusMetadataImplCopyWith<$Res>
    implements $ShipmentStatusMetadataCopyWith<$Res> {
  factory _$$ShipmentStatusMetadataImplCopyWith(
          _$ShipmentStatusMetadataImpl value,
          $Res Function(_$ShipmentStatusMetadataImpl) then) =
      __$$ShipmentStatusMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ShipmentStatusType type,
      RRectIconData iconData,
      String emoji,
      String? localizedName});

  @override
  $RRectIconDataCopyWith<$Res> get iconData;
}

/// @nodoc
class __$$ShipmentStatusMetadataImplCopyWithImpl<$Res>
    extends _$ShipmentStatusMetadataCopyWithImpl<$Res,
        _$ShipmentStatusMetadataImpl>
    implements _$$ShipmentStatusMetadataImplCopyWith<$Res> {
  __$$ShipmentStatusMetadataImplCopyWithImpl(
      _$ShipmentStatusMetadataImpl _value,
      $Res Function(_$ShipmentStatusMetadataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? iconData = null,
    Object? emoji = null,
    Object? localizedName = freezed,
  }) {
    return _then(_$ShipmentStatusMetadataImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ShipmentStatusType,
      iconData: null == iconData
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as RRectIconData,
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
      localizedName: freezed == localizedName
          ? _value.localizedName
          : localizedName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ShipmentStatusMetadataImpl implements _ShipmentStatusMetadata {
  const _$ShipmentStatusMetadataImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipmentStatusMetadataImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.iconData, iconData) ||
                other.iconData == iconData) &&
            (identical(other.emoji, emoji) || other.emoji == emoji) &&
            (identical(other.localizedName, localizedName) ||
                other.localizedName == localizedName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, type, iconData, emoji, localizedName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipmentStatusMetadataImplCopyWith<_$ShipmentStatusMetadataImpl>
      get copyWith => __$$ShipmentStatusMetadataImplCopyWithImpl<
          _$ShipmentStatusMetadataImpl>(this, _$identity);
}

abstract class _ShipmentStatusMetadata implements ShipmentStatusMetadata {
  const factory _ShipmentStatusMetadata(
      {required final ShipmentStatusType type,
      required final RRectIconData iconData,
      required final String emoji,
      final String? localizedName}) = _$ShipmentStatusMetadataImpl;

  @override
  ShipmentStatusType get type;
  @override
  RRectIconData get iconData;
  @override
  String get emoji;
  @override
  String? get localizedName;
  @override
  @JsonKey(ignore: true)
  _$$ShipmentStatusMetadataImplCopyWith<_$ShipmentStatusMetadataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
