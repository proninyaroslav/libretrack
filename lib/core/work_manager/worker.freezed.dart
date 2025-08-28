// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'worker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WorkResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WorkResultSuccess value) success,
    required TResult Function(WorkResultFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WorkResultSuccess value)? success,
    TResult? Function(WorkResultFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WorkResultSuccess value)? success,
    TResult Function(WorkResultFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkResultCopyWith<$Res> {
  factory $WorkResultCopyWith(
          WorkResult value, $Res Function(WorkResult) then) =
      _$WorkResultCopyWithImpl<$Res, WorkResult>;
}

/// @nodoc
class _$WorkResultCopyWithImpl<$Res, $Val extends WorkResult>
    implements $WorkResultCopyWith<$Res> {
  _$WorkResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WorkResultSuccessImplCopyWith<$Res> {
  factory _$$WorkResultSuccessImplCopyWith(_$WorkResultSuccessImpl value,
          $Res Function(_$WorkResultSuccessImpl) then) =
      __$$WorkResultSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WorkResultSuccessImplCopyWithImpl<$Res>
    extends _$WorkResultCopyWithImpl<$Res, _$WorkResultSuccessImpl>
    implements _$$WorkResultSuccessImplCopyWith<$Res> {
  __$$WorkResultSuccessImplCopyWithImpl(_$WorkResultSuccessImpl _value,
      $Res Function(_$WorkResultSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WorkResultSuccessImpl
    with DiagnosticableTreeMixin
    implements WorkResultSuccess {
  const _$WorkResultSuccessImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkResult.success()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'WorkResult.success'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WorkResultSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WorkResultSuccess value) success,
    required TResult Function(WorkResultFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WorkResultSuccess value)? success,
    TResult? Function(WorkResultFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WorkResultSuccess value)? success,
    TResult Function(WorkResultFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class WorkResultSuccess implements WorkResult {
  const factory WorkResultSuccess() = _$WorkResultSuccessImpl;
}

/// @nodoc
abstract class _$$WorkResultFailureImplCopyWith<$Res> {
  factory _$$WorkResultFailureImplCopyWith(_$WorkResultFailureImpl value,
          $Res Function(_$WorkResultFailureImpl) then) =
      __$$WorkResultFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WorkResultFailureImplCopyWithImpl<$Res>
    extends _$WorkResultCopyWithImpl<$Res, _$WorkResultFailureImpl>
    implements _$$WorkResultFailureImplCopyWith<$Res> {
  __$$WorkResultFailureImplCopyWithImpl(_$WorkResultFailureImpl _value,
      $Res Function(_$WorkResultFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WorkResultFailureImpl
    with DiagnosticableTreeMixin
    implements WorkResultFailure {
  const _$WorkResultFailureImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkResult.failure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'WorkResult.failure'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WorkResultFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WorkResultSuccess value) success,
    required TResult Function(WorkResultFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WorkResultSuccess value)? success,
    TResult? Function(WorkResultFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WorkResultSuccess value)? success,
    TResult Function(WorkResultFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class WorkResultFailure implements WorkResult {
  const factory WorkResultFailure() = _$WorkResultFailureImpl;
}

/// @nodoc
mixin _$WorkParams {
  WorkConstraints? get constraints => throw _privateConstructorUsedError;
  WorkData? get inputData => throw _privateConstructorUsedError;
  ExistingWorkPolicy get existingWorkPolicy =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkParamsCopyWith<WorkParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkParamsCopyWith<$Res> {
  factory $WorkParamsCopyWith(
          WorkParams value, $Res Function(WorkParams) then) =
      _$WorkParamsCopyWithImpl<$Res, WorkParams>;
  @useResult
  $Res call(
      {WorkConstraints? constraints,
      WorkData? inputData,
      ExistingWorkPolicy existingWorkPolicy});

  $WorkConstraintsCopyWith<$Res>? get constraints;
}

/// @nodoc
class _$WorkParamsCopyWithImpl<$Res, $Val extends WorkParams>
    implements $WorkParamsCopyWith<$Res> {
  _$WorkParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? constraints = freezed,
    Object? inputData = freezed,
    Object? existingWorkPolicy = null,
  }) {
    return _then(_value.copyWith(
      constraints: freezed == constraints
          ? _value.constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as WorkConstraints?,
      inputData: freezed == inputData
          ? _value.inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as WorkData?,
      existingWorkPolicy: null == existingWorkPolicy
          ? _value.existingWorkPolicy
          : existingWorkPolicy // ignore: cast_nullable_to_non_nullable
              as ExistingWorkPolicy,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkConstraintsCopyWith<$Res>? get constraints {
    if (_value.constraints == null) {
      return null;
    }

    return $WorkConstraintsCopyWith<$Res>(_value.constraints!, (value) {
      return _then(_value.copyWith(constraints: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WorkParamsImplCopyWith<$Res>
    implements $WorkParamsCopyWith<$Res> {
  factory _$$WorkParamsImplCopyWith(
          _$WorkParamsImpl value, $Res Function(_$WorkParamsImpl) then) =
      __$$WorkParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WorkConstraints? constraints,
      WorkData? inputData,
      ExistingWorkPolicy existingWorkPolicy});

  @override
  $WorkConstraintsCopyWith<$Res>? get constraints;
}

/// @nodoc
class __$$WorkParamsImplCopyWithImpl<$Res>
    extends _$WorkParamsCopyWithImpl<$Res, _$WorkParamsImpl>
    implements _$$WorkParamsImplCopyWith<$Res> {
  __$$WorkParamsImplCopyWithImpl(
      _$WorkParamsImpl _value, $Res Function(_$WorkParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? constraints = freezed,
    Object? inputData = freezed,
    Object? existingWorkPolicy = null,
  }) {
    return _then(_$WorkParamsImpl(
      constraints: freezed == constraints
          ? _value.constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as WorkConstraints?,
      inputData: freezed == inputData
          ? _value.inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as WorkData?,
      existingWorkPolicy: null == existingWorkPolicy
          ? _value.existingWorkPolicy
          : existingWorkPolicy // ignore: cast_nullable_to_non_nullable
              as ExistingWorkPolicy,
    ));
  }
}

/// @nodoc

class _$WorkParamsImpl with DiagnosticableTreeMixin implements _WorkParams {
  const _$WorkParamsImpl(
      {this.constraints,
      this.inputData,
      this.existingWorkPolicy = ExistingWorkPolicy.replace});

  @override
  final WorkConstraints? constraints;
  @override
  final WorkData? inputData;
  @override
  @JsonKey()
  final ExistingWorkPolicy existingWorkPolicy;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkParams(constraints: $constraints, inputData: $inputData, existingWorkPolicy: $existingWorkPolicy)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkParams'))
      ..add(DiagnosticsProperty('constraints', constraints))
      ..add(DiagnosticsProperty('inputData', inputData))
      ..add(DiagnosticsProperty('existingWorkPolicy', existingWorkPolicy));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkParamsImpl &&
            (identical(other.constraints, constraints) ||
                other.constraints == constraints) &&
            (identical(other.inputData, inputData) ||
                other.inputData == inputData) &&
            (identical(other.existingWorkPolicy, existingWorkPolicy) ||
                other.existingWorkPolicy == existingWorkPolicy));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, constraints, inputData, existingWorkPolicy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkParamsImplCopyWith<_$WorkParamsImpl> get copyWith =>
      __$$WorkParamsImplCopyWithImpl<_$WorkParamsImpl>(this, _$identity);
}

abstract class _WorkParams implements WorkParams {
  const factory _WorkParams(
      {final WorkConstraints? constraints,
      final WorkData? inputData,
      final ExistingWorkPolicy existingWorkPolicy}) = _$WorkParamsImpl;

  @override
  WorkConstraints? get constraints;
  @override
  WorkData? get inputData;
  @override
  ExistingWorkPolicy get existingWorkPolicy;
  @override
  @JsonKey(ignore: true)
  _$$WorkParamsImplCopyWith<_$WorkParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WorkConstraints {
  NetworkType? get networkType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkConstraintsCopyWith<WorkConstraints> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkConstraintsCopyWith<$Res> {
  factory $WorkConstraintsCopyWith(
          WorkConstraints value, $Res Function(WorkConstraints) then) =
      _$WorkConstraintsCopyWithImpl<$Res, WorkConstraints>;
  @useResult
  $Res call({NetworkType? networkType});
}

/// @nodoc
class _$WorkConstraintsCopyWithImpl<$Res, $Val extends WorkConstraints>
    implements $WorkConstraintsCopyWith<$Res> {
  _$WorkConstraintsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkType = freezed,
  }) {
    return _then(_value.copyWith(
      networkType: freezed == networkType
          ? _value.networkType
          : networkType // ignore: cast_nullable_to_non_nullable
              as NetworkType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkConstraintsImplCopyWith<$Res>
    implements $WorkConstraintsCopyWith<$Res> {
  factory _$$WorkConstraintsImplCopyWith(_$WorkConstraintsImpl value,
          $Res Function(_$WorkConstraintsImpl) then) =
      __$$WorkConstraintsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NetworkType? networkType});
}

/// @nodoc
class __$$WorkConstraintsImplCopyWithImpl<$Res>
    extends _$WorkConstraintsCopyWithImpl<$Res, _$WorkConstraintsImpl>
    implements _$$WorkConstraintsImplCopyWith<$Res> {
  __$$WorkConstraintsImplCopyWithImpl(
      _$WorkConstraintsImpl _value, $Res Function(_$WorkConstraintsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkType = freezed,
  }) {
    return _then(_$WorkConstraintsImpl(
      networkType: freezed == networkType
          ? _value.networkType
          : networkType // ignore: cast_nullable_to_non_nullable
              as NetworkType?,
    ));
  }
}

/// @nodoc

class _$WorkConstraintsImpl
    with DiagnosticableTreeMixin
    implements _WorkConstraints {
  const _$WorkConstraintsImpl({this.networkType});

  @override
  final NetworkType? networkType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkConstraints(networkType: $networkType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkConstraints'))
      ..add(DiagnosticsProperty('networkType', networkType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkConstraintsImpl &&
            (identical(other.networkType, networkType) ||
                other.networkType == networkType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, networkType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkConstraintsImplCopyWith<_$WorkConstraintsImpl> get copyWith =>
      __$$WorkConstraintsImplCopyWithImpl<_$WorkConstraintsImpl>(
          this, _$identity);
}

abstract class _WorkConstraints implements WorkConstraints {
  const factory _WorkConstraints({final NetworkType? networkType}) =
      _$WorkConstraintsImpl;

  @override
  NetworkType? get networkType;
  @override
  @JsonKey(ignore: true)
  _$$WorkConstraintsImplCopyWith<_$WorkConstraintsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
