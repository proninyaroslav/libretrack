// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
      _$TrackingServiceMetadataCopyWithImpl<$Res, TrackingServiceMetadata>;
  @useResult
  $Res call(
      {TrackingServiceType type,
      String localizedName,
      RRectIconData iconData,
      Set<PostalServiceMetadata> postalServices});

  $RRectIconDataCopyWith<$Res> get iconData;
}

/// @nodoc
class _$TrackingServiceMetadataCopyWithImpl<$Res,
        $Val extends TrackingServiceMetadata>
    implements $TrackingServiceMetadataCopyWith<$Res> {
  _$TrackingServiceMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? localizedName = null,
    Object? iconData = null,
    Object? postalServices = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TrackingServiceType,
      localizedName: null == localizedName
          ? _value.localizedName
          : localizedName // ignore: cast_nullable_to_non_nullable
              as String,
      iconData: null == iconData
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as RRectIconData,
      postalServices: null == postalServices
          ? _value.postalServices
          : postalServices // ignore: cast_nullable_to_non_nullable
              as Set<PostalServiceMetadata>,
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
abstract class _$$TrackingServiceMetadataImplCopyWith<$Res>
    implements $TrackingServiceMetadataCopyWith<$Res> {
  factory _$$TrackingServiceMetadataImplCopyWith(
          _$TrackingServiceMetadataImpl value,
          $Res Function(_$TrackingServiceMetadataImpl) then) =
      __$$TrackingServiceMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TrackingServiceType type,
      String localizedName,
      RRectIconData iconData,
      Set<PostalServiceMetadata> postalServices});

  @override
  $RRectIconDataCopyWith<$Res> get iconData;
}

/// @nodoc
class __$$TrackingServiceMetadataImplCopyWithImpl<$Res>
    extends _$TrackingServiceMetadataCopyWithImpl<$Res,
        _$TrackingServiceMetadataImpl>
    implements _$$TrackingServiceMetadataImplCopyWith<$Res> {
  __$$TrackingServiceMetadataImplCopyWithImpl(
      _$TrackingServiceMetadataImpl _value,
      $Res Function(_$TrackingServiceMetadataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? localizedName = null,
    Object? iconData = null,
    Object? postalServices = null,
  }) {
    return _then(_$TrackingServiceMetadataImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TrackingServiceType,
      localizedName: null == localizedName
          ? _value.localizedName
          : localizedName // ignore: cast_nullable_to_non_nullable
              as String,
      iconData: null == iconData
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as RRectIconData,
      postalServices: null == postalServices
          ? _value._postalServices
          : postalServices // ignore: cast_nullable_to_non_nullable
              as Set<PostalServiceMetadata>,
    ));
  }
}

/// @nodoc

class _$TrackingServiceMetadataImpl implements _TrackingServiceMetadata {
  const _$TrackingServiceMetadataImpl(
      {required this.type,
      required this.localizedName,
      required this.iconData,
      required final Set<PostalServiceMetadata> postalServices})
      : _postalServices = postalServices;

  @override
  final TrackingServiceType type;
  @override
  final String localizedName;
  @override
  final RRectIconData iconData;
  final Set<PostalServiceMetadata> _postalServices;
  @override
  Set<PostalServiceMetadata> get postalServices {
    if (_postalServices is EqualUnmodifiableSetView) return _postalServices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_postalServices);
  }

  @override
  String toString() {
    return 'TrackingServiceMetadata(type: $type, localizedName: $localizedName, iconData: $iconData, postalServices: $postalServices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingServiceMetadataImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.localizedName, localizedName) ||
                other.localizedName == localizedName) &&
            (identical(other.iconData, iconData) ||
                other.iconData == iconData) &&
            const DeepCollectionEquality()
                .equals(other._postalServices, _postalServices));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, localizedName, iconData,
      const DeepCollectionEquality().hash(_postalServices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackingServiceMetadataImplCopyWith<_$TrackingServiceMetadataImpl>
      get copyWith => __$$TrackingServiceMetadataImplCopyWithImpl<
          _$TrackingServiceMetadataImpl>(this, _$identity);
}

abstract class _TrackingServiceMetadata implements TrackingServiceMetadata {
  const factory _TrackingServiceMetadata(
          {required final TrackingServiceType type,
          required final String localizedName,
          required final RRectIconData iconData,
          required final Set<PostalServiceMetadata> postalServices}) =
      _$TrackingServiceMetadataImpl;

  @override
  TrackingServiceType get type;
  @override
  String get localizedName;
  @override
  RRectIconData get iconData;
  @override
  Set<PostalServiceMetadata> get postalServices;
  @override
  @JsonKey(ignore: true)
  _$$TrackingServiceMetadataImplCopyWith<_$TrackingServiceMetadataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

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
      _$PostalServiceMetadataCopyWithImpl<$Res, PostalServiceMetadata>;
  @useResult
  $Res call(
      {PostalServiceType type, String localizedName, RRectIconData iconData});

  $RRectIconDataCopyWith<$Res> get iconData;
}

/// @nodoc
class _$PostalServiceMetadataCopyWithImpl<$Res,
        $Val extends PostalServiceMetadata>
    implements $PostalServiceMetadataCopyWith<$Res> {
  _$PostalServiceMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? localizedName = null,
    Object? iconData = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PostalServiceType,
      localizedName: null == localizedName
          ? _value.localizedName
          : localizedName // ignore: cast_nullable_to_non_nullable
              as String,
      iconData: null == iconData
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as RRectIconData,
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
abstract class _$$PostalServiceMetadataImplCopyWith<$Res>
    implements $PostalServiceMetadataCopyWith<$Res> {
  factory _$$PostalServiceMetadataImplCopyWith(
          _$PostalServiceMetadataImpl value,
          $Res Function(_$PostalServiceMetadataImpl) then) =
      __$$PostalServiceMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PostalServiceType type, String localizedName, RRectIconData iconData});

  @override
  $RRectIconDataCopyWith<$Res> get iconData;
}

/// @nodoc
class __$$PostalServiceMetadataImplCopyWithImpl<$Res>
    extends _$PostalServiceMetadataCopyWithImpl<$Res,
        _$PostalServiceMetadataImpl>
    implements _$$PostalServiceMetadataImplCopyWith<$Res> {
  __$$PostalServiceMetadataImplCopyWithImpl(_$PostalServiceMetadataImpl _value,
      $Res Function(_$PostalServiceMetadataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? localizedName = null,
    Object? iconData = null,
  }) {
    return _then(_$PostalServiceMetadataImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PostalServiceType,
      localizedName: null == localizedName
          ? _value.localizedName
          : localizedName // ignore: cast_nullable_to_non_nullable
              as String,
      iconData: null == iconData
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as RRectIconData,
    ));
  }
}

/// @nodoc

class _$PostalServiceMetadataImpl implements _PostalServiceMetadata {
  const _$PostalServiceMetadataImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostalServiceMetadataImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.localizedName, localizedName) ||
                other.localizedName == localizedName) &&
            (identical(other.iconData, iconData) ||
                other.iconData == iconData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, localizedName, iconData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostalServiceMetadataImplCopyWith<_$PostalServiceMetadataImpl>
      get copyWith => __$$PostalServiceMetadataImplCopyWithImpl<
          _$PostalServiceMetadataImpl>(this, _$identity);
}

abstract class _PostalServiceMetadata implements PostalServiceMetadata {
  const factory _PostalServiceMetadata(
      {required final PostalServiceType type,
      required final String localizedName,
      required final RRectIconData iconData}) = _$PostalServiceMetadataImpl;

  @override
  PostalServiceType get type;
  @override
  String get localizedName;
  @override
  RRectIconData get iconData;
  @override
  @JsonKey(ignore: true)
  _$$PostalServiceMetadataImplCopyWith<_$PostalServiceMetadataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
