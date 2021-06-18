// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'worker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WorkResultTearOff {
  const _$WorkResultTearOff();

  WorkResultSuccess success() {
    return const WorkResultSuccess();
  }

  WorkResultFailure failure() {
    return const WorkResultFailure();
  }
}

/// @nodoc
const $WorkResult = _$WorkResultTearOff();

/// @nodoc
mixin _$WorkResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() failure,
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
      _$WorkResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$WorkResultCopyWithImpl<$Res> implements $WorkResultCopyWith<$Res> {
  _$WorkResultCopyWithImpl(this._value, this._then);

  final WorkResult _value;
  // ignore: unused_field
  final $Res Function(WorkResult) _then;
}

/// @nodoc
abstract class $WorkResultSuccessCopyWith<$Res> {
  factory $WorkResultSuccessCopyWith(
          WorkResultSuccess value, $Res Function(WorkResultSuccess) then) =
      _$WorkResultSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$WorkResultSuccessCopyWithImpl<$Res>
    extends _$WorkResultCopyWithImpl<$Res>
    implements $WorkResultSuccessCopyWith<$Res> {
  _$WorkResultSuccessCopyWithImpl(
      WorkResultSuccess _value, $Res Function(WorkResultSuccess) _then)
      : super(_value, (v) => _then(v as WorkResultSuccess));

  @override
  WorkResultSuccess get _value => super._value as WorkResultSuccess;
}

/// @nodoc

class _$WorkResultSuccess
    with DiagnosticableTreeMixin
    implements WorkResultSuccess {
  const _$WorkResultSuccess();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkResult.success()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WorkResult.success'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WorkResultSuccess);
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
  const factory WorkResultSuccess() = _$WorkResultSuccess;
}

/// @nodoc
abstract class $WorkResultFailureCopyWith<$Res> {
  factory $WorkResultFailureCopyWith(
          WorkResultFailure value, $Res Function(WorkResultFailure) then) =
      _$WorkResultFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$WorkResultFailureCopyWithImpl<$Res>
    extends _$WorkResultCopyWithImpl<$Res>
    implements $WorkResultFailureCopyWith<$Res> {
  _$WorkResultFailureCopyWithImpl(
      WorkResultFailure _value, $Res Function(WorkResultFailure) _then)
      : super(_value, (v) => _then(v as WorkResultFailure));

  @override
  WorkResultFailure get _value => super._value as WorkResultFailure;
}

/// @nodoc

class _$WorkResultFailure
    with DiagnosticableTreeMixin
    implements WorkResultFailure {
  const _$WorkResultFailure();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkResult.failure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WorkResult.failure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WorkResultFailure);
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
  const factory WorkResultFailure() = _$WorkResultFailure;
}

/// @nodoc
class _$WorkParamsTearOff {
  const _$WorkParamsTearOff();

  _WorkParams call(
      {WorkConstraints? constraints,
      WorkData? inputData,
      ExistingWorkPolicy existingWorkPolicy = ExistingWorkPolicy.replace}) {
    return _WorkParams(
      constraints: constraints,
      inputData: inputData,
      existingWorkPolicy: existingWorkPolicy,
    );
  }
}

/// @nodoc
const $WorkParams = _$WorkParamsTearOff();

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
      _$WorkParamsCopyWithImpl<$Res>;
  $Res call(
      {WorkConstraints? constraints,
      WorkData? inputData,
      ExistingWorkPolicy existingWorkPolicy});

  $WorkConstraintsCopyWith<$Res>? get constraints;
}

/// @nodoc
class _$WorkParamsCopyWithImpl<$Res> implements $WorkParamsCopyWith<$Res> {
  _$WorkParamsCopyWithImpl(this._value, this._then);

  final WorkParams _value;
  // ignore: unused_field
  final $Res Function(WorkParams) _then;

  @override
  $Res call({
    Object? constraints = freezed,
    Object? inputData = freezed,
    Object? existingWorkPolicy = freezed,
  }) {
    return _then(_value.copyWith(
      constraints: constraints == freezed
          ? _value.constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as WorkConstraints?,
      inputData: inputData == freezed
          ? _value.inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as WorkData?,
      existingWorkPolicy: existingWorkPolicy == freezed
          ? _value.existingWorkPolicy
          : existingWorkPolicy // ignore: cast_nullable_to_non_nullable
              as ExistingWorkPolicy,
    ));
  }

  @override
  $WorkConstraintsCopyWith<$Res>? get constraints {
    if (_value.constraints == null) {
      return null;
    }

    return $WorkConstraintsCopyWith<$Res>(_value.constraints!, (value) {
      return _then(_value.copyWith(constraints: value));
    });
  }
}

/// @nodoc
abstract class _$WorkParamsCopyWith<$Res> implements $WorkParamsCopyWith<$Res> {
  factory _$WorkParamsCopyWith(
          _WorkParams value, $Res Function(_WorkParams) then) =
      __$WorkParamsCopyWithImpl<$Res>;
  @override
  $Res call(
      {WorkConstraints? constraints,
      WorkData? inputData,
      ExistingWorkPolicy existingWorkPolicy});

  @override
  $WorkConstraintsCopyWith<$Res>? get constraints;
}

/// @nodoc
class __$WorkParamsCopyWithImpl<$Res> extends _$WorkParamsCopyWithImpl<$Res>
    implements _$WorkParamsCopyWith<$Res> {
  __$WorkParamsCopyWithImpl(
      _WorkParams _value, $Res Function(_WorkParams) _then)
      : super(_value, (v) => _then(v as _WorkParams));

  @override
  _WorkParams get _value => super._value as _WorkParams;

  @override
  $Res call({
    Object? constraints = freezed,
    Object? inputData = freezed,
    Object? existingWorkPolicy = freezed,
  }) {
    return _then(_WorkParams(
      constraints: constraints == freezed
          ? _value.constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as WorkConstraints?,
      inputData: inputData == freezed
          ? _value.inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as WorkData?,
      existingWorkPolicy: existingWorkPolicy == freezed
          ? _value.existingWorkPolicy
          : existingWorkPolicy // ignore: cast_nullable_to_non_nullable
              as ExistingWorkPolicy,
    ));
  }
}

/// @nodoc

class _$_WorkParams with DiagnosticableTreeMixin implements _WorkParams {
  const _$_WorkParams(
      {this.constraints,
      this.inputData,
      this.existingWorkPolicy = ExistingWorkPolicy.replace});

  @override
  final WorkConstraints? constraints;
  @override
  final WorkData? inputData;
  @JsonKey(defaultValue: ExistingWorkPolicy.replace)
  @override
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkParams &&
            (identical(other.constraints, constraints) ||
                const DeepCollectionEquality()
                    .equals(other.constraints, constraints)) &&
            (identical(other.inputData, inputData) ||
                const DeepCollectionEquality()
                    .equals(other.inputData, inputData)) &&
            (identical(other.existingWorkPolicy, existingWorkPolicy) ||
                const DeepCollectionEquality()
                    .equals(other.existingWorkPolicy, existingWorkPolicy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(constraints) ^
      const DeepCollectionEquality().hash(inputData) ^
      const DeepCollectionEquality().hash(existingWorkPolicy);

  @JsonKey(ignore: true)
  @override
  _$WorkParamsCopyWith<_WorkParams> get copyWith =>
      __$WorkParamsCopyWithImpl<_WorkParams>(this, _$identity);
}

abstract class _WorkParams implements WorkParams {
  const factory _WorkParams(
      {WorkConstraints? constraints,
      WorkData? inputData,
      ExistingWorkPolicy existingWorkPolicy}) = _$_WorkParams;

  @override
  WorkConstraints? get constraints => throw _privateConstructorUsedError;
  @override
  WorkData? get inputData => throw _privateConstructorUsedError;
  @override
  ExistingWorkPolicy get existingWorkPolicy =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WorkParamsCopyWith<_WorkParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$WorkConstraintsTearOff {
  const _$WorkConstraintsTearOff();

  _WorkConstraints call({NetworkType? networkType}) {
    return _WorkConstraints(
      networkType: networkType,
    );
  }
}

/// @nodoc
const $WorkConstraints = _$WorkConstraintsTearOff();

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
      _$WorkConstraintsCopyWithImpl<$Res>;
  $Res call({NetworkType? networkType});
}

/// @nodoc
class _$WorkConstraintsCopyWithImpl<$Res>
    implements $WorkConstraintsCopyWith<$Res> {
  _$WorkConstraintsCopyWithImpl(this._value, this._then);

  final WorkConstraints _value;
  // ignore: unused_field
  final $Res Function(WorkConstraints) _then;

  @override
  $Res call({
    Object? networkType = freezed,
  }) {
    return _then(_value.copyWith(
      networkType: networkType == freezed
          ? _value.networkType
          : networkType // ignore: cast_nullable_to_non_nullable
              as NetworkType?,
    ));
  }
}

/// @nodoc
abstract class _$WorkConstraintsCopyWith<$Res>
    implements $WorkConstraintsCopyWith<$Res> {
  factory _$WorkConstraintsCopyWith(
          _WorkConstraints value, $Res Function(_WorkConstraints) then) =
      __$WorkConstraintsCopyWithImpl<$Res>;
  @override
  $Res call({NetworkType? networkType});
}

/// @nodoc
class __$WorkConstraintsCopyWithImpl<$Res>
    extends _$WorkConstraintsCopyWithImpl<$Res>
    implements _$WorkConstraintsCopyWith<$Res> {
  __$WorkConstraintsCopyWithImpl(
      _WorkConstraints _value, $Res Function(_WorkConstraints) _then)
      : super(_value, (v) => _then(v as _WorkConstraints));

  @override
  _WorkConstraints get _value => super._value as _WorkConstraints;

  @override
  $Res call({
    Object? networkType = freezed,
  }) {
    return _then(_WorkConstraints(
      networkType: networkType == freezed
          ? _value.networkType
          : networkType // ignore: cast_nullable_to_non_nullable
              as NetworkType?,
    ));
  }
}

/// @nodoc

class _$_WorkConstraints
    with DiagnosticableTreeMixin
    implements _WorkConstraints {
  const _$_WorkConstraints({this.networkType});

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkConstraints &&
            (identical(other.networkType, networkType) ||
                const DeepCollectionEquality()
                    .equals(other.networkType, networkType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(networkType);

  @JsonKey(ignore: true)
  @override
  _$WorkConstraintsCopyWith<_WorkConstraints> get copyWith =>
      __$WorkConstraintsCopyWithImpl<_WorkConstraints>(this, _$identity);
}

abstract class _WorkConstraints implements WorkConstraints {
  const factory _WorkConstraints({NetworkType? networkType}) =
      _$_WorkConstraints;

  @override
  NetworkType? get networkType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WorkConstraintsCopyWith<_WorkConstraints> get copyWith =>
      throw _privateConstructorUsedError;
}
