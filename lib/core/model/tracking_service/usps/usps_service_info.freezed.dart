// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usps_service_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$USPSAuthData {
  String get username => throw _privateConstructorUsedError;
  String get companyName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $USPSAuthDataCopyWith<USPSAuthData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $USPSAuthDataCopyWith<$Res> {
  factory $USPSAuthDataCopyWith(
          USPSAuthData value, $Res Function(USPSAuthData) then) =
      _$USPSAuthDataCopyWithImpl<$Res, USPSAuthData>;
  @useResult
  $Res call({String username, String companyName});
}

/// @nodoc
class _$USPSAuthDataCopyWithImpl<$Res, $Val extends USPSAuthData>
    implements $USPSAuthDataCopyWith<$Res> {
  _$USPSAuthDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? companyName = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$USPSAuthDataImplCopyWith<$Res>
    implements $USPSAuthDataCopyWith<$Res> {
  factory _$$USPSAuthDataImplCopyWith(
          _$USPSAuthDataImpl value, $Res Function(_$USPSAuthDataImpl) then) =
      __$$USPSAuthDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String companyName});
}

/// @nodoc
class __$$USPSAuthDataImplCopyWithImpl<$Res>
    extends _$USPSAuthDataCopyWithImpl<$Res, _$USPSAuthDataImpl>
    implements _$$USPSAuthDataImplCopyWith<$Res> {
  __$$USPSAuthDataImplCopyWithImpl(
      _$USPSAuthDataImpl _value, $Res Function(_$USPSAuthDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? companyName = null,
  }) {
    return _then(_$USPSAuthDataImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$USPSAuthDataImpl extends _USPSAuthData with DiagnosticableTreeMixin {
  const _$USPSAuthDataImpl({required this.username, required this.companyName})
      : super._();

  @override
  final String username;
  @override
  final String companyName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'USPSAuthData(username: $username, companyName: $companyName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'USPSAuthData'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('companyName', companyName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$USPSAuthDataImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, companyName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$USPSAuthDataImplCopyWith<_$USPSAuthDataImpl> get copyWith =>
      __$$USPSAuthDataImplCopyWithImpl<_$USPSAuthDataImpl>(this, _$identity);
}

abstract class _USPSAuthData extends USPSAuthData {
  const factory _USPSAuthData(
      {required final String username,
      required final String companyName}) = _$USPSAuthDataImpl;
  const _USPSAuthData._() : super._();

  @override
  String get username;
  @override
  String get companyName;
  @override
  @JsonKey(ignore: true)
  _$$USPSAuthDataImplCopyWith<_$USPSAuthDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
