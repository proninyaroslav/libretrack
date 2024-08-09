// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postnord_service_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostNordAuthData {
  String get apiKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostNordAuthDataCopyWith<PostNordAuthData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostNordAuthDataCopyWith<$Res> {
  factory $PostNordAuthDataCopyWith(
          PostNordAuthData value, $Res Function(PostNordAuthData) then) =
      _$PostNordAuthDataCopyWithImpl<$Res, PostNordAuthData>;
  @useResult
  $Res call({String apiKey});
}

/// @nodoc
class _$PostNordAuthDataCopyWithImpl<$Res, $Val extends PostNordAuthData>
    implements $PostNordAuthDataCopyWith<$Res> {
  _$PostNordAuthDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
  }) {
    return _then(_value.copyWith(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostNordAuthDataImplCopyWith<$Res>
    implements $PostNordAuthDataCopyWith<$Res> {
  factory _$$PostNordAuthDataImplCopyWith(_$PostNordAuthDataImpl value,
          $Res Function(_$PostNordAuthDataImpl) then) =
      __$$PostNordAuthDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String apiKey});
}

/// @nodoc
class __$$PostNordAuthDataImplCopyWithImpl<$Res>
    extends _$PostNordAuthDataCopyWithImpl<$Res, _$PostNordAuthDataImpl>
    implements _$$PostNordAuthDataImplCopyWith<$Res> {
  __$$PostNordAuthDataImplCopyWithImpl(_$PostNordAuthDataImpl _value,
      $Res Function(_$PostNordAuthDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
  }) {
    return _then(_$PostNordAuthDataImpl(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PostNordAuthDataImpl extends _PostNordAuthData {
  const _$PostNordAuthDataImpl({required this.apiKey}) : super._();

  @override
  final String apiKey;

  @override
  String toString() {
    return 'PostNordAuthData(apiKey: $apiKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostNordAuthDataImpl &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostNordAuthDataImplCopyWith<_$PostNordAuthDataImpl> get copyWith =>
      __$$PostNordAuthDataImplCopyWithImpl<_$PostNordAuthDataImpl>(
          this, _$identity);
}

abstract class _PostNordAuthData extends PostNordAuthData {
  const factory _PostNordAuthData({required final String apiKey}) =
      _$PostNordAuthDataImpl;
  const _PostNordAuthData._() : super._();

  @override
  String get apiKey;
  @override
  @JsonKey(ignore: true)
  _$$PostNordAuthDataImplCopyWith<_$PostNordAuthDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
