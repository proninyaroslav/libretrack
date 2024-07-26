// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracking_error_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
      _$TrackingErrorMetadataCopyWithImpl<$Res, TrackingErrorMetadata>;
  @useResult
  $Res call({TrackingError error, String localizedMessage, bool isReportable});

  $TrackingErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$TrackingErrorMetadataCopyWithImpl<$Res,
        $Val extends TrackingErrorMetadata>
    implements $TrackingErrorMetadataCopyWith<$Res> {
  _$TrackingErrorMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? localizedMessage = null,
    Object? isReportable = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as TrackingError,
      localizedMessage: null == localizedMessage
          ? _value.localizedMessage
          : localizedMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isReportable: null == isReportable
          ? _value.isReportable
          : isReportable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TrackingErrorCopyWith<$Res> get error {
    return $TrackingErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrackingErrorMetadataImplCopyWith<$Res>
    implements $TrackingErrorMetadataCopyWith<$Res> {
  factory _$$TrackingErrorMetadataImplCopyWith(
          _$TrackingErrorMetadataImpl value,
          $Res Function(_$TrackingErrorMetadataImpl) then) =
      __$$TrackingErrorMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TrackingError error, String localizedMessage, bool isReportable});

  @override
  $TrackingErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$TrackingErrorMetadataImplCopyWithImpl<$Res>
    extends _$TrackingErrorMetadataCopyWithImpl<$Res,
        _$TrackingErrorMetadataImpl>
    implements _$$TrackingErrorMetadataImplCopyWith<$Res> {
  __$$TrackingErrorMetadataImplCopyWithImpl(_$TrackingErrorMetadataImpl _value,
      $Res Function(_$TrackingErrorMetadataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? localizedMessage = null,
    Object? isReportable = null,
  }) {
    return _then(_$TrackingErrorMetadataImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as TrackingError,
      localizedMessage: null == localizedMessage
          ? _value.localizedMessage
          : localizedMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isReportable: null == isReportable
          ? _value.isReportable
          : isReportable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TrackingErrorMetadataImpl implements _TrackingErrorMetadata {
  const _$TrackingErrorMetadataImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingErrorMetadataImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.localizedMessage, localizedMessage) ||
                other.localizedMessage == localizedMessage) &&
            (identical(other.isReportable, isReportable) ||
                other.isReportable == isReportable));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, error, localizedMessage, isReportable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackingErrorMetadataImplCopyWith<_$TrackingErrorMetadataImpl>
      get copyWith => __$$TrackingErrorMetadataImplCopyWithImpl<
          _$TrackingErrorMetadataImpl>(this, _$identity);
}

abstract class _TrackingErrorMetadata implements TrackingErrorMetadata {
  const factory _TrackingErrorMetadata(
      {required final TrackingError error,
      required final String localizedMessage,
      required final bool isReportable}) = _$TrackingErrorMetadataImpl;

  @override
  TrackingError get error;
  @override
  String get localizedMessage;
  @override
  bool get isReportable;
  @override
  @JsonKey(ignore: true)
  _$$TrackingErrorMetadataImplCopyWith<_$TrackingErrorMetadataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
