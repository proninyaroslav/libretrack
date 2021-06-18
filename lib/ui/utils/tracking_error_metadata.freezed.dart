// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tracking_error_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TrackingErrorMetadataTearOff {
  const _$TrackingErrorMetadataTearOff();

  _TrackingErrorMetadata call(
      {required TrackingError error,
      required String localizedMessage,
      required bool isReportable}) {
    return _TrackingErrorMetadata(
      error: error,
      localizedMessage: localizedMessage,
      isReportable: isReportable,
    );
  }
}

/// @nodoc
const $TrackingErrorMetadata = _$TrackingErrorMetadataTearOff();

/// @nodoc
mixin _$TrackingErrorMetadata {
  TrackingError get error => throw _privateConstructorUsedError;
  String get localizedMessage => throw _privateConstructorUsedError;
  bool get isReportable => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrackingErrorMetadataCopyWith<TrackingErrorMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingErrorMetadataCopyWith<$Res> {
  factory $TrackingErrorMetadataCopyWith(TrackingErrorMetadata value,
          $Res Function(TrackingErrorMetadata) then) =
      _$TrackingErrorMetadataCopyWithImpl<$Res>;
  $Res call({TrackingError error, String localizedMessage, bool isReportable});

  $TrackingErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$TrackingErrorMetadataCopyWithImpl<$Res>
    implements $TrackingErrorMetadataCopyWith<$Res> {
  _$TrackingErrorMetadataCopyWithImpl(this._value, this._then);

  final TrackingErrorMetadata _value;
  // ignore: unused_field
  final $Res Function(TrackingErrorMetadata) _then;

  @override
  $Res call({
    Object? error = freezed,
    Object? localizedMessage = freezed,
    Object? isReportable = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as TrackingError,
      localizedMessage: localizedMessage == freezed
          ? _value.localizedMessage
          : localizedMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isReportable: isReportable == freezed
          ? _value.isReportable
          : isReportable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $TrackingErrorCopyWith<$Res> get error {
    return $TrackingErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
abstract class _$TrackingErrorMetadataCopyWith<$Res>
    implements $TrackingErrorMetadataCopyWith<$Res> {
  factory _$TrackingErrorMetadataCopyWith(_TrackingErrorMetadata value,
          $Res Function(_TrackingErrorMetadata) then) =
      __$TrackingErrorMetadataCopyWithImpl<$Res>;
  @override
  $Res call({TrackingError error, String localizedMessage, bool isReportable});

  @override
  $TrackingErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$TrackingErrorMetadataCopyWithImpl<$Res>
    extends _$TrackingErrorMetadataCopyWithImpl<$Res>
    implements _$TrackingErrorMetadataCopyWith<$Res> {
  __$TrackingErrorMetadataCopyWithImpl(_TrackingErrorMetadata _value,
      $Res Function(_TrackingErrorMetadata) _then)
      : super(_value, (v) => _then(v as _TrackingErrorMetadata));

  @override
  _TrackingErrorMetadata get _value => super._value as _TrackingErrorMetadata;

  @override
  $Res call({
    Object? error = freezed,
    Object? localizedMessage = freezed,
    Object? isReportable = freezed,
  }) {
    return _then(_TrackingErrorMetadata(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as TrackingError,
      localizedMessage: localizedMessage == freezed
          ? _value.localizedMessage
          : localizedMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isReportable: isReportable == freezed
          ? _value.isReportable
          : isReportable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TrackingErrorMetadata implements _TrackingErrorMetadata {
  const _$_TrackingErrorMetadata(
      {required this.error,
      required this.localizedMessage,
      required this.isReportable});

  @override
  final TrackingError error;
  @override
  final String localizedMessage;
  @override
  final bool isReportable;

  @override
  String toString() {
    return 'TrackingErrorMetadata(error: $error, localizedMessage: $localizedMessage, isReportable: $isReportable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TrackingErrorMetadata &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.localizedMessage, localizedMessage) ||
                const DeepCollectionEquality()
                    .equals(other.localizedMessage, localizedMessage)) &&
            (identical(other.isReportable, isReportable) ||
                const DeepCollectionEquality()
                    .equals(other.isReportable, isReportable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(localizedMessage) ^
      const DeepCollectionEquality().hash(isReportable);

  @JsonKey(ignore: true)
  @override
  _$TrackingErrorMetadataCopyWith<_TrackingErrorMetadata> get copyWith =>
      __$TrackingErrorMetadataCopyWithImpl<_TrackingErrorMetadata>(
          this, _$identity);
}

abstract class _TrackingErrorMetadata implements TrackingErrorMetadata {
  const factory _TrackingErrorMetadata(
      {required TrackingError error,
      required String localizedMessage,
      required bool isReportable}) = _$_TrackingErrorMetadata;

  @override
  TrackingError get error => throw _privateConstructorUsedError;
  @override
  String get localizedMessage => throw _privateConstructorUsedError;
  @override
  bool get isReportable => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TrackingErrorMetadataCopyWith<_TrackingErrorMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}
