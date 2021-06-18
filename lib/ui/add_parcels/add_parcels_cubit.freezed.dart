// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'add_parcels_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddParcelsStateTearOff {
  const _$AddParcelsStateTearOff();

  AddParcelsStateInitial initial(
      {TrackingNumbers trackingNumbers = const TrackingNumbers(),
      ParcelNames parcelNames = const ParcelNames()}) {
    return AddParcelsStateInitial(
      trackingNumbers: trackingNumbers,
      parcelNames: parcelNames,
    );
  }

  AddParcelsStateFieldChanged fieldChanged(
      {required TrackingNumbers trackingNumbers,
      required ParcelNames parcelNames}) {
    return AddParcelsStateFieldChanged(
      trackingNumbers: trackingNumbers,
      parcelNames: parcelNames,
    );
  }

  AddParcelsStateAdding adding() {
    return const AddParcelsStateAdding();
  }

  AddParcelsStateAdded added(
      {required List<TrackNumberInfo> addedTrackInfoList}) {
    return AddParcelsStateAdded(
      addedTrackInfoList: addedTrackInfoList,
    );
  }

  AddParcelsStateValidationFailed validationFailed(
      {required TrackingNumbers trackingNumbers,
      required ParcelNames parcelNames}) {
    return AddParcelsStateValidationFailed(
      trackingNumbers: trackingNumbers,
      parcelNames: parcelNames,
    );
  }

  AddParcelsStateAddFailed addFailed(
      {required TrackingNumbers trackingNumbers,
      required ParcelNames parcelNames,
      Exception? exception,
      StackTrace? stackTrace}) {
    return AddParcelsStateAddFailed(
      trackingNumbers: trackingNumbers,
      parcelNames: parcelNames,
      exception: exception,
      stackTrace: stackTrace,
    );
  }
}

/// @nodoc
const $AddParcelsState = _$AddParcelsStateTearOff();

/// @nodoc
mixin _$AddParcelsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TrackingNumbers trackingNumbers, ParcelNames parcelNames)
        initial,
    required TResult Function(
            TrackingNumbers trackingNumbers, ParcelNames parcelNames)
        fieldChanged,
    required TResult Function() adding,
    required TResult Function(List<TrackNumberInfo> addedTrackInfoList) added,
    required TResult Function(
            TrackingNumbers trackingNumbers, ParcelNames parcelNames)
        validationFailed,
    required TResult Function(
            TrackingNumbers trackingNumbers,
            ParcelNames parcelNames,
            Exception? exception,
            StackTrace? stackTrace)
        addFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TrackingNumbers trackingNumbers, ParcelNames parcelNames)?
        initial,
    TResult Function(TrackingNumbers trackingNumbers, ParcelNames parcelNames)?
        fieldChanged,
    TResult Function()? adding,
    TResult Function(List<TrackNumberInfo> addedTrackInfoList)? added,
    TResult Function(TrackingNumbers trackingNumbers, ParcelNames parcelNames)?
        validationFailed,
    TResult Function(TrackingNumbers trackingNumbers, ParcelNames parcelNames,
            Exception? exception, StackTrace? stackTrace)?
        addFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddParcelsStateInitial value) initial,
    required TResult Function(AddParcelsStateFieldChanged value) fieldChanged,
    required TResult Function(AddParcelsStateAdding value) adding,
    required TResult Function(AddParcelsStateAdded value) added,
    required TResult Function(AddParcelsStateValidationFailed value)
        validationFailed,
    required TResult Function(AddParcelsStateAddFailed value) addFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddParcelsStateInitial value)? initial,
    TResult Function(AddParcelsStateFieldChanged value)? fieldChanged,
    TResult Function(AddParcelsStateAdding value)? adding,
    TResult Function(AddParcelsStateAdded value)? added,
    TResult Function(AddParcelsStateValidationFailed value)? validationFailed,
    TResult Function(AddParcelsStateAddFailed value)? addFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddParcelsStateCopyWith<$Res> {
  factory $AddParcelsStateCopyWith(
          AddParcelsState value, $Res Function(AddParcelsState) then) =
      _$AddParcelsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddParcelsStateCopyWithImpl<$Res>
    implements $AddParcelsStateCopyWith<$Res> {
  _$AddParcelsStateCopyWithImpl(this._value, this._then);

  final AddParcelsState _value;
  // ignore: unused_field
  final $Res Function(AddParcelsState) _then;
}

/// @nodoc
abstract class $AddParcelsStateInitialCopyWith<$Res> {
  factory $AddParcelsStateInitialCopyWith(AddParcelsStateInitial value,
          $Res Function(AddParcelsStateInitial) then) =
      _$AddParcelsStateInitialCopyWithImpl<$Res>;
  $Res call({TrackingNumbers trackingNumbers, ParcelNames parcelNames});

  $TrackingNumbersCopyWith<$Res> get trackingNumbers;
  $ParcelNamesCopyWith<$Res> get parcelNames;
}

/// @nodoc
class _$AddParcelsStateInitialCopyWithImpl<$Res>
    extends _$AddParcelsStateCopyWithImpl<$Res>
    implements $AddParcelsStateInitialCopyWith<$Res> {
  _$AddParcelsStateInitialCopyWithImpl(AddParcelsStateInitial _value,
      $Res Function(AddParcelsStateInitial) _then)
      : super(_value, (v) => _then(v as AddParcelsStateInitial));

  @override
  AddParcelsStateInitial get _value => super._value as AddParcelsStateInitial;

  @override
  $Res call({
    Object? trackingNumbers = freezed,
    Object? parcelNames = freezed,
  }) {
    return _then(AddParcelsStateInitial(
      trackingNumbers: trackingNumbers == freezed
          ? _value.trackingNumbers
          : trackingNumbers // ignore: cast_nullable_to_non_nullable
              as TrackingNumbers,
      parcelNames: parcelNames == freezed
          ? _value.parcelNames
          : parcelNames // ignore: cast_nullable_to_non_nullable
              as ParcelNames,
    ));
  }

  @override
  $TrackingNumbersCopyWith<$Res> get trackingNumbers {
    return $TrackingNumbersCopyWith<$Res>(_value.trackingNumbers, (value) {
      return _then(_value.copyWith(trackingNumbers: value));
    });
  }

  @override
  $ParcelNamesCopyWith<$Res> get parcelNames {
    return $ParcelNamesCopyWith<$Res>(_value.parcelNames, (value) {
      return _then(_value.copyWith(parcelNames: value));
    });
  }
}

/// @nodoc

class _$AddParcelsStateInitial
    with DiagnosticableTreeMixin
    implements AddParcelsStateInitial {
  const _$AddParcelsStateInitial(
      {this.trackingNumbers = const TrackingNumbers(),
      this.parcelNames = const ParcelNames()});

  @JsonKey(defaultValue: const TrackingNumbers())
  @override
  final TrackingNumbers trackingNumbers;
  @JsonKey(defaultValue: const ParcelNames())
  @override
  final ParcelNames parcelNames;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddParcelsState.initial(trackingNumbers: $trackingNumbers, parcelNames: $parcelNames)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddParcelsState.initial'))
      ..add(DiagnosticsProperty('trackingNumbers', trackingNumbers))
      ..add(DiagnosticsProperty('parcelNames', parcelNames));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddParcelsStateInitial &&
            (identical(other.trackingNumbers, trackingNumbers) ||
                const DeepCollectionEquality()
                    .equals(other.trackingNumbers, trackingNumbers)) &&
            (identical(other.parcelNames, parcelNames) ||
                const DeepCollectionEquality()
                    .equals(other.parcelNames, parcelNames)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(trackingNumbers) ^
      const DeepCollectionEquality().hash(parcelNames);

  @JsonKey(ignore: true)
  @override
  $AddParcelsStateInitialCopyWith<AddParcelsStateInitial> get copyWith =>
      _$AddParcelsStateInitialCopyWithImpl<AddParcelsStateInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TrackingNumbers trackingNumbers, ParcelNames parcelNames)
        initial,
    required TResult Function(
            TrackingNumbers trackingNumbers, ParcelNames parcelNames)
        fieldChanged,
    required TResult Function() adding,
    required TResult Function(List<TrackNumberInfo> addedTrackInfoList) added,
    required TResult Function(
            TrackingNumbers trackingNumbers, ParcelNames parcelNames)
        validationFailed,
    required TResult Function(
            TrackingNumbers trackingNumbers,
            ParcelNames parcelNames,
            Exception? exception,
            StackTrace? stackTrace)
        addFailed,
  }) {
    return initial(trackingNumbers, parcelNames);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TrackingNumbers trackingNumbers, ParcelNames parcelNames)?
        initial,
    TResult Function(TrackingNumbers trackingNumbers, ParcelNames parcelNames)?
        fieldChanged,
    TResult Function()? adding,
    TResult Function(List<TrackNumberInfo> addedTrackInfoList)? added,
    TResult Function(TrackingNumbers trackingNumbers, ParcelNames parcelNames)?
        validationFailed,
    TResult Function(TrackingNumbers trackingNumbers, ParcelNames parcelNames,
            Exception? exception, StackTrace? stackTrace)?
        addFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(trackingNumbers, parcelNames);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddParcelsStateInitial value) initial,
    required TResult Function(AddParcelsStateFieldChanged value) fieldChanged,
    required TResult Function(AddParcelsStateAdding value) adding,
    required TResult Function(AddParcelsStateAdded value) added,
    required TResult Function(AddParcelsStateValidationFailed value)
        validationFailed,
    required TResult Function(AddParcelsStateAddFailed value) addFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddParcelsStateInitial value)? initial,
    TResult Function(AddParcelsStateFieldChanged value)? fieldChanged,
    TResult Function(AddParcelsStateAdding value)? adding,
    TResult Function(AddParcelsStateAdded value)? added,
    TResult Function(AddParcelsStateValidationFailed value)? validationFailed,
    TResult Function(AddParcelsStateAddFailed value)? addFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AddParcelsStateInitial implements AddParcelsState {
  const factory AddParcelsStateInitial(
      {TrackingNumbers trackingNumbers,
      ParcelNames parcelNames}) = _$AddParcelsStateInitial;

  TrackingNumbers get trackingNumbers => throw _privateConstructorUsedError;
  ParcelNames get parcelNames => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddParcelsStateInitialCopyWith<AddParcelsStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddParcelsStateFieldChangedCopyWith<$Res> {
  factory $AddParcelsStateFieldChangedCopyWith(
          AddParcelsStateFieldChanged value,
          $Res Function(AddParcelsStateFieldChanged) then) =
      _$AddParcelsStateFieldChangedCopyWithImpl<$Res>;
  $Res call({TrackingNumbers trackingNumbers, ParcelNames parcelNames});

  $TrackingNumbersCopyWith<$Res> get trackingNumbers;
  $ParcelNamesCopyWith<$Res> get parcelNames;
}

/// @nodoc
class _$AddParcelsStateFieldChangedCopyWithImpl<$Res>
    extends _$AddParcelsStateCopyWithImpl<$Res>
    implements $AddParcelsStateFieldChangedCopyWith<$Res> {
  _$AddParcelsStateFieldChangedCopyWithImpl(AddParcelsStateFieldChanged _value,
      $Res Function(AddParcelsStateFieldChanged) _then)
      : super(_value, (v) => _then(v as AddParcelsStateFieldChanged));

  @override
  AddParcelsStateFieldChanged get _value =>
      super._value as AddParcelsStateFieldChanged;

  @override
  $Res call({
    Object? trackingNumbers = freezed,
    Object? parcelNames = freezed,
  }) {
    return _then(AddParcelsStateFieldChanged(
      trackingNumbers: trackingNumbers == freezed
          ? _value.trackingNumbers
          : trackingNumbers // ignore: cast_nullable_to_non_nullable
              as TrackingNumbers,
      parcelNames: parcelNames == freezed
          ? _value.parcelNames
          : parcelNames // ignore: cast_nullable_to_non_nullable
              as ParcelNames,
    ));
  }

  @override
  $TrackingNumbersCopyWith<$Res> get trackingNumbers {
    return $TrackingNumbersCopyWith<$Res>(_value.trackingNumbers, (value) {
      return _then(_value.copyWith(trackingNumbers: value));
    });
  }

  @override
  $ParcelNamesCopyWith<$Res> get parcelNames {
    return $ParcelNamesCopyWith<$Res>(_value.parcelNames, (value) {
      return _then(_value.copyWith(parcelNames: value));
    });
  }
}

/// @nodoc

class _$AddParcelsStateFieldChanged
    with DiagnosticableTreeMixin
    implements AddParcelsStateFieldChanged {
  const _$AddParcelsStateFieldChanged(
      {required this.trackingNumbers, required this.parcelNames});

  @override
  final TrackingNumbers trackingNumbers;
  @override
  final ParcelNames parcelNames;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddParcelsState.fieldChanged(trackingNumbers: $trackingNumbers, parcelNames: $parcelNames)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddParcelsState.fieldChanged'))
      ..add(DiagnosticsProperty('trackingNumbers', trackingNumbers))
      ..add(DiagnosticsProperty('parcelNames', parcelNames));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddParcelsStateFieldChanged &&
            (identical(other.trackingNumbers, trackingNumbers) ||
                const DeepCollectionEquality()
                    .equals(other.trackingNumbers, trackingNumbers)) &&
            (identical(other.parcelNames, parcelNames) ||
                const DeepCollectionEquality()
                    .equals(other.parcelNames, parcelNames)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(trackingNumbers) ^
      const DeepCollectionEquality().hash(parcelNames);

  @JsonKey(ignore: true)
  @override
  $AddParcelsStateFieldChangedCopyWith<AddParcelsStateFieldChanged>
      get copyWith => _$AddParcelsStateFieldChangedCopyWithImpl<
          AddParcelsStateFieldChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TrackingNumbers trackingNumbers, ParcelNames parcelNames)
        initial,
    required TResult Function(
            TrackingNumbers trackingNumbers, ParcelNames parcelNames)
        fieldChanged,
    required TResult Function() adding,
    required TResult Function(List<TrackNumberInfo> addedTrackInfoList) added,
    required TResult Function(
            TrackingNumbers trackingNumbers, ParcelNames parcelNames)
        validationFailed,
    required TResult Function(
            TrackingNumbers trackingNumbers,
            ParcelNames parcelNames,
            Exception? exception,
            StackTrace? stackTrace)
        addFailed,
  }) {
    return fieldChanged(trackingNumbers, parcelNames);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TrackingNumbers trackingNumbers, ParcelNames parcelNames)?
        initial,
    TResult Function(TrackingNumbers trackingNumbers, ParcelNames parcelNames)?
        fieldChanged,
    TResult Function()? adding,
    TResult Function(List<TrackNumberInfo> addedTrackInfoList)? added,
    TResult Function(TrackingNumbers trackingNumbers, ParcelNames parcelNames)?
        validationFailed,
    TResult Function(TrackingNumbers trackingNumbers, ParcelNames parcelNames,
            Exception? exception, StackTrace? stackTrace)?
        addFailed,
    required TResult orElse(),
  }) {
    if (fieldChanged != null) {
      return fieldChanged(trackingNumbers, parcelNames);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddParcelsStateInitial value) initial,
    required TResult Function(AddParcelsStateFieldChanged value) fieldChanged,
    required TResult Function(AddParcelsStateAdding value) adding,
    required TResult Function(AddParcelsStateAdded value) added,
    required TResult Function(AddParcelsStateValidationFailed value)
        validationFailed,
    required TResult Function(AddParcelsStateAddFailed value) addFailed,
  }) {
    return fieldChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddParcelsStateInitial value)? initial,
    TResult Function(AddParcelsStateFieldChanged value)? fieldChanged,
    TResult Function(AddParcelsStateAdding value)? adding,
    TResult Function(AddParcelsStateAdded value)? added,
    TResult Function(AddParcelsStateValidationFailed value)? validationFailed,
    TResult Function(AddParcelsStateAddFailed value)? addFailed,
    required TResult orElse(),
  }) {
    if (fieldChanged != null) {
      return fieldChanged(this);
    }
    return orElse();
  }
}

abstract class AddParcelsStateFieldChanged implements AddParcelsState {
  const factory AddParcelsStateFieldChanged(
      {required TrackingNumbers trackingNumbers,
      required ParcelNames parcelNames}) = _$AddParcelsStateFieldChanged;

  TrackingNumbers get trackingNumbers => throw _privateConstructorUsedError;
  ParcelNames get parcelNames => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddParcelsStateFieldChangedCopyWith<AddParcelsStateFieldChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddParcelsStateAddingCopyWith<$Res> {
  factory $AddParcelsStateAddingCopyWith(AddParcelsStateAdding value,
          $Res Function(AddParcelsStateAdding) then) =
      _$AddParcelsStateAddingCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddParcelsStateAddingCopyWithImpl<$Res>
    extends _$AddParcelsStateCopyWithImpl<$Res>
    implements $AddParcelsStateAddingCopyWith<$Res> {
  _$AddParcelsStateAddingCopyWithImpl(
      AddParcelsStateAdding _value, $Res Function(AddParcelsStateAdding) _then)
      : super(_value, (v) => _then(v as AddParcelsStateAdding));

  @override
  AddParcelsStateAdding get _value => super._value as AddParcelsStateAdding;
}

/// @nodoc

class _$AddParcelsStateAdding
    with DiagnosticableTreeMixin
    implements AddParcelsStateAdding {
  const _$AddParcelsStateAdding();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddParcelsState.adding()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AddParcelsState.adding'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddParcelsStateAdding);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TrackingNumbers trackingNumbers, ParcelNames parcelNames)
        initial,
    required TResult Function(
            TrackingNumbers trackingNumbers, ParcelNames parcelNames)
        fieldChanged,
    required TResult Function() adding,
    required TResult Function(List<TrackNumberInfo> addedTrackInfoList) added,
    required TResult Function(
            TrackingNumbers trackingNumbers, ParcelNames parcelNames)
        validationFailed,
    required TResult Function(
            TrackingNumbers trackingNumbers,
            ParcelNames parcelNames,
            Exception? exception,
            StackTrace? stackTrace)
        addFailed,
  }) {
    return adding();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TrackingNumbers trackingNumbers, ParcelNames parcelNames)?
        initial,
    TResult Function(TrackingNumbers trackingNumbers, ParcelNames parcelNames)?
        fieldChanged,
    TResult Function()? adding,
    TResult Function(List<TrackNumberInfo> addedTrackInfoList)? added,
    TResult Function(TrackingNumbers trackingNumbers, ParcelNames parcelNames)?
        validationFailed,
    TResult Function(TrackingNumbers trackingNumbers, ParcelNames parcelNames,
            Exception? exception, StackTrace? stackTrace)?
        addFailed,
    required TResult orElse(),
  }) {
    if (adding != null) {
      return adding();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddParcelsStateInitial value) initial,
    required TResult Function(AddParcelsStateFieldChanged value) fieldChanged,
    required TResult Function(AddParcelsStateAdding value) adding,
    required TResult Function(AddParcelsStateAdded value) added,
    required TResult Function(AddParcelsStateValidationFailed value)
        validationFailed,
    required TResult Function(AddParcelsStateAddFailed value) addFailed,
  }) {
    return adding(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddParcelsStateInitial value)? initial,
    TResult Function(AddParcelsStateFieldChanged value)? fieldChanged,
    TResult Function(AddParcelsStateAdding value)? adding,
    TResult Function(AddParcelsStateAdded value)? added,
    TResult Function(AddParcelsStateValidationFailed value)? validationFailed,
    TResult Function(AddParcelsStateAddFailed value)? addFailed,
    required TResult orElse(),
  }) {
    if (adding != null) {
      return adding(this);
    }
    return orElse();
  }
}

abstract class AddParcelsStateAdding implements AddParcelsState {
  const factory AddParcelsStateAdding() = _$AddParcelsStateAdding;
}

/// @nodoc
abstract class $AddParcelsStateAddedCopyWith<$Res> {
  factory $AddParcelsStateAddedCopyWith(AddParcelsStateAdded value,
          $Res Function(AddParcelsStateAdded) then) =
      _$AddParcelsStateAddedCopyWithImpl<$Res>;
  $Res call({List<TrackNumberInfo> addedTrackInfoList});
}

/// @nodoc
class _$AddParcelsStateAddedCopyWithImpl<$Res>
    extends _$AddParcelsStateCopyWithImpl<$Res>
    implements $AddParcelsStateAddedCopyWith<$Res> {
  _$AddParcelsStateAddedCopyWithImpl(
      AddParcelsStateAdded _value, $Res Function(AddParcelsStateAdded) _then)
      : super(_value, (v) => _then(v as AddParcelsStateAdded));

  @override
  AddParcelsStateAdded get _value => super._value as AddParcelsStateAdded;

  @override
  $Res call({
    Object? addedTrackInfoList = freezed,
  }) {
    return _then(AddParcelsStateAdded(
      addedTrackInfoList: addedTrackInfoList == freezed
          ? _value.addedTrackInfoList
          : addedTrackInfoList // ignore: cast_nullable_to_non_nullable
              as List<TrackNumberInfo>,
    ));
  }
}

/// @nodoc

class _$AddParcelsStateAdded
    with DiagnosticableTreeMixin
    implements AddParcelsStateAdded {
  const _$AddParcelsStateAdded({required this.addedTrackInfoList});

  @override
  final List<TrackNumberInfo> addedTrackInfoList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddParcelsState.added(addedTrackInfoList: $addedTrackInfoList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddParcelsState.added'))
      ..add(DiagnosticsProperty('addedTrackInfoList', addedTrackInfoList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddParcelsStateAdded &&
            (identical(other.addedTrackInfoList, addedTrackInfoList) ||
                const DeepCollectionEquality()
                    .equals(other.addedTrackInfoList, addedTrackInfoList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(addedTrackInfoList);

  @JsonKey(ignore: true)
  @override
  $AddParcelsStateAddedCopyWith<AddParcelsStateAdded> get copyWith =>
      _$AddParcelsStateAddedCopyWithImpl<AddParcelsStateAdded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TrackingNumbers trackingNumbers, ParcelNames parcelNames)
        initial,
    required TResult Function(
            TrackingNumbers trackingNumbers, ParcelNames parcelNames)
        fieldChanged,
    required TResult Function() adding,
    required TResult Function(List<TrackNumberInfo> addedTrackInfoList) added,
    required TResult Function(
            TrackingNumbers trackingNumbers, ParcelNames parcelNames)
        validationFailed,
    required TResult Function(
            TrackingNumbers trackingNumbers,
            ParcelNames parcelNames,
            Exception? exception,
            StackTrace? stackTrace)
        addFailed,
  }) {
    return added(addedTrackInfoList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TrackingNumbers trackingNumbers, ParcelNames parcelNames)?
        initial,
    TResult Function(TrackingNumbers trackingNumbers, ParcelNames parcelNames)?
        fieldChanged,
    TResult Function()? adding,
    TResult Function(List<TrackNumberInfo> addedTrackInfoList)? added,
    TResult Function(TrackingNumbers trackingNumbers, ParcelNames parcelNames)?
        validationFailed,
    TResult Function(TrackingNumbers trackingNumbers, ParcelNames parcelNames,
            Exception? exception, StackTrace? stackTrace)?
        addFailed,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(addedTrackInfoList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddParcelsStateInitial value) initial,
    required TResult Function(AddParcelsStateFieldChanged value) fieldChanged,
    required TResult Function(AddParcelsStateAdding value) adding,
    required TResult Function(AddParcelsStateAdded value) added,
    required TResult Function(AddParcelsStateValidationFailed value)
        validationFailed,
    required TResult Function(AddParcelsStateAddFailed value) addFailed,
  }) {
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddParcelsStateInitial value)? initial,
    TResult Function(AddParcelsStateFieldChanged value)? fieldChanged,
    TResult Function(AddParcelsStateAdding value)? adding,
    TResult Function(AddParcelsStateAdded value)? added,
    TResult Function(AddParcelsStateValidationFailed value)? validationFailed,
    TResult Function(AddParcelsStateAddFailed value)? addFailed,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class AddParcelsStateAdded implements AddParcelsState {
  const factory AddParcelsStateAdded(
          {required List<TrackNumberInfo> addedTrackInfoList}) =
      _$AddParcelsStateAdded;

  List<TrackNumberInfo> get addedTrackInfoList =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddParcelsStateAddedCopyWith<AddParcelsStateAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddParcelsStateValidationFailedCopyWith<$Res> {
  factory $AddParcelsStateValidationFailedCopyWith(
          AddParcelsStateValidationFailed value,
          $Res Function(AddParcelsStateValidationFailed) then) =
      _$AddParcelsStateValidationFailedCopyWithImpl<$Res>;
  $Res call({TrackingNumbers trackingNumbers, ParcelNames parcelNames});

  $TrackingNumbersCopyWith<$Res> get trackingNumbers;
  $ParcelNamesCopyWith<$Res> get parcelNames;
}

/// @nodoc
class _$AddParcelsStateValidationFailedCopyWithImpl<$Res>
    extends _$AddParcelsStateCopyWithImpl<$Res>
    implements $AddParcelsStateValidationFailedCopyWith<$Res> {
  _$AddParcelsStateValidationFailedCopyWithImpl(
      AddParcelsStateValidationFailed _value,
      $Res Function(AddParcelsStateValidationFailed) _then)
      : super(_value, (v) => _then(v as AddParcelsStateValidationFailed));

  @override
  AddParcelsStateValidationFailed get _value =>
      super._value as AddParcelsStateValidationFailed;

  @override
  $Res call({
    Object? trackingNumbers = freezed,
    Object? parcelNames = freezed,
  }) {
    return _then(AddParcelsStateValidationFailed(
      trackingNumbers: trackingNumbers == freezed
          ? _value.trackingNumbers
          : trackingNumbers // ignore: cast_nullable_to_non_nullable
              as TrackingNumbers,
      parcelNames: parcelNames == freezed
          ? _value.parcelNames
          : parcelNames // ignore: cast_nullable_to_non_nullable
              as ParcelNames,
    ));
  }

  @override
  $TrackingNumbersCopyWith<$Res> get trackingNumbers {
    return $TrackingNumbersCopyWith<$Res>(_value.trackingNumbers, (value) {
      return _then(_value.copyWith(trackingNumbers: value));
    });
  }

  @override
  $ParcelNamesCopyWith<$Res> get parcelNames {
    return $ParcelNamesCopyWith<$Res>(_value.parcelNames, (value) {
      return _then(_value.copyWith(parcelNames: value));
    });
  }
}

/// @nodoc

class _$AddParcelsStateValidationFailed
    with DiagnosticableTreeMixin
    implements AddParcelsStateValidationFailed {
  const _$AddParcelsStateValidationFailed(
      {required this.trackingNumbers, required this.parcelNames});

  @override
  final TrackingNumbers trackingNumbers;
  @override
  final ParcelNames parcelNames;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddParcelsState.validationFailed(trackingNumbers: $trackingNumbers, parcelNames: $parcelNames)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddParcelsState.validationFailed'))
      ..add(DiagnosticsProperty('trackingNumbers', trackingNumbers))
      ..add(DiagnosticsProperty('parcelNames', parcelNames));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddParcelsStateValidationFailed &&
            (identical(other.trackingNumbers, trackingNumbers) ||
                const DeepCollectionEquality()
                    .equals(other.trackingNumbers, trackingNumbers)) &&
            (identical(other.parcelNames, parcelNames) ||
                const DeepCollectionEquality()
                    .equals(other.parcelNames, parcelNames)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(trackingNumbers) ^
      const DeepCollectionEquality().hash(parcelNames);

  @JsonKey(ignore: true)
  @override
  $AddParcelsStateValidationFailedCopyWith<AddParcelsStateValidationFailed>
      get copyWith => _$AddParcelsStateValidationFailedCopyWithImpl<
          AddParcelsStateValidationFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TrackingNumbers trackingNumbers, ParcelNames parcelNames)
        initial,
    required TResult Function(
            TrackingNumbers trackingNumbers, ParcelNames parcelNames)
        fieldChanged,
    required TResult Function() adding,
    required TResult Function(List<TrackNumberInfo> addedTrackInfoList) added,
    required TResult Function(
            TrackingNumbers trackingNumbers, ParcelNames parcelNames)
        validationFailed,
    required TResult Function(
            TrackingNumbers trackingNumbers,
            ParcelNames parcelNames,
            Exception? exception,
            StackTrace? stackTrace)
        addFailed,
  }) {
    return validationFailed(trackingNumbers, parcelNames);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TrackingNumbers trackingNumbers, ParcelNames parcelNames)?
        initial,
    TResult Function(TrackingNumbers trackingNumbers, ParcelNames parcelNames)?
        fieldChanged,
    TResult Function()? adding,
    TResult Function(List<TrackNumberInfo> addedTrackInfoList)? added,
    TResult Function(TrackingNumbers trackingNumbers, ParcelNames parcelNames)?
        validationFailed,
    TResult Function(TrackingNumbers trackingNumbers, ParcelNames parcelNames,
            Exception? exception, StackTrace? stackTrace)?
        addFailed,
    required TResult orElse(),
  }) {
    if (validationFailed != null) {
      return validationFailed(trackingNumbers, parcelNames);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddParcelsStateInitial value) initial,
    required TResult Function(AddParcelsStateFieldChanged value) fieldChanged,
    required TResult Function(AddParcelsStateAdding value) adding,
    required TResult Function(AddParcelsStateAdded value) added,
    required TResult Function(AddParcelsStateValidationFailed value)
        validationFailed,
    required TResult Function(AddParcelsStateAddFailed value) addFailed,
  }) {
    return validationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddParcelsStateInitial value)? initial,
    TResult Function(AddParcelsStateFieldChanged value)? fieldChanged,
    TResult Function(AddParcelsStateAdding value)? adding,
    TResult Function(AddParcelsStateAdded value)? added,
    TResult Function(AddParcelsStateValidationFailed value)? validationFailed,
    TResult Function(AddParcelsStateAddFailed value)? addFailed,
    required TResult orElse(),
  }) {
    if (validationFailed != null) {
      return validationFailed(this);
    }
    return orElse();
  }
}

abstract class AddParcelsStateValidationFailed implements AddParcelsState {
  const factory AddParcelsStateValidationFailed(
      {required TrackingNumbers trackingNumbers,
      required ParcelNames parcelNames}) = _$AddParcelsStateValidationFailed;

  TrackingNumbers get trackingNumbers => throw _privateConstructorUsedError;
  ParcelNames get parcelNames => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddParcelsStateValidationFailedCopyWith<AddParcelsStateValidationFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddParcelsStateAddFailedCopyWith<$Res> {
  factory $AddParcelsStateAddFailedCopyWith(AddParcelsStateAddFailed value,
          $Res Function(AddParcelsStateAddFailed) then) =
      _$AddParcelsStateAddFailedCopyWithImpl<$Res>;
  $Res call(
      {TrackingNumbers trackingNumbers,
      ParcelNames parcelNames,
      Exception? exception,
      StackTrace? stackTrace});

  $TrackingNumbersCopyWith<$Res> get trackingNumbers;
  $ParcelNamesCopyWith<$Res> get parcelNames;
}

/// @nodoc
class _$AddParcelsStateAddFailedCopyWithImpl<$Res>
    extends _$AddParcelsStateCopyWithImpl<$Res>
    implements $AddParcelsStateAddFailedCopyWith<$Res> {
  _$AddParcelsStateAddFailedCopyWithImpl(AddParcelsStateAddFailed _value,
      $Res Function(AddParcelsStateAddFailed) _then)
      : super(_value, (v) => _then(v as AddParcelsStateAddFailed));

  @override
  AddParcelsStateAddFailed get _value =>
      super._value as AddParcelsStateAddFailed;

  @override
  $Res call({
    Object? trackingNumbers = freezed,
    Object? parcelNames = freezed,
    Object? exception = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(AddParcelsStateAddFailed(
      trackingNumbers: trackingNumbers == freezed
          ? _value.trackingNumbers
          : trackingNumbers // ignore: cast_nullable_to_non_nullable
              as TrackingNumbers,
      parcelNames: parcelNames == freezed
          ? _value.parcelNames
          : parcelNames // ignore: cast_nullable_to_non_nullable
              as ParcelNames,
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }

  @override
  $TrackingNumbersCopyWith<$Res> get trackingNumbers {
    return $TrackingNumbersCopyWith<$Res>(_value.trackingNumbers, (value) {
      return _then(_value.copyWith(trackingNumbers: value));
    });
  }

  @override
  $ParcelNamesCopyWith<$Res> get parcelNames {
    return $ParcelNamesCopyWith<$Res>(_value.parcelNames, (value) {
      return _then(_value.copyWith(parcelNames: value));
    });
  }
}

/// @nodoc

class _$AddParcelsStateAddFailed
    with DiagnosticableTreeMixin
    implements AddParcelsStateAddFailed {
  const _$AddParcelsStateAddFailed(
      {required this.trackingNumbers,
      required this.parcelNames,
      this.exception,
      this.stackTrace});

  @override
  final TrackingNumbers trackingNumbers;
  @override
  final ParcelNames parcelNames;
  @override
  final Exception? exception;
  @override
  final StackTrace? stackTrace;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddParcelsState.addFailed(trackingNumbers: $trackingNumbers, parcelNames: $parcelNames, exception: $exception, stackTrace: $stackTrace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddParcelsState.addFailed'))
      ..add(DiagnosticsProperty('trackingNumbers', trackingNumbers))
      ..add(DiagnosticsProperty('parcelNames', parcelNames))
      ..add(DiagnosticsProperty('exception', exception))
      ..add(DiagnosticsProperty('stackTrace', stackTrace));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddParcelsStateAddFailed &&
            (identical(other.trackingNumbers, trackingNumbers) ||
                const DeepCollectionEquality()
                    .equals(other.trackingNumbers, trackingNumbers)) &&
            (identical(other.parcelNames, parcelNames) ||
                const DeepCollectionEquality()
                    .equals(other.parcelNames, parcelNames)) &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality()
                    .equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(trackingNumbers) ^
      const DeepCollectionEquality().hash(parcelNames) ^
      const DeepCollectionEquality().hash(exception) ^
      const DeepCollectionEquality().hash(stackTrace);

  @JsonKey(ignore: true)
  @override
  $AddParcelsStateAddFailedCopyWith<AddParcelsStateAddFailed> get copyWith =>
      _$AddParcelsStateAddFailedCopyWithImpl<AddParcelsStateAddFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TrackingNumbers trackingNumbers, ParcelNames parcelNames)
        initial,
    required TResult Function(
            TrackingNumbers trackingNumbers, ParcelNames parcelNames)
        fieldChanged,
    required TResult Function() adding,
    required TResult Function(List<TrackNumberInfo> addedTrackInfoList) added,
    required TResult Function(
            TrackingNumbers trackingNumbers, ParcelNames parcelNames)
        validationFailed,
    required TResult Function(
            TrackingNumbers trackingNumbers,
            ParcelNames parcelNames,
            Exception? exception,
            StackTrace? stackTrace)
        addFailed,
  }) {
    return addFailed(trackingNumbers, parcelNames, exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TrackingNumbers trackingNumbers, ParcelNames parcelNames)?
        initial,
    TResult Function(TrackingNumbers trackingNumbers, ParcelNames parcelNames)?
        fieldChanged,
    TResult Function()? adding,
    TResult Function(List<TrackNumberInfo> addedTrackInfoList)? added,
    TResult Function(TrackingNumbers trackingNumbers, ParcelNames parcelNames)?
        validationFailed,
    TResult Function(TrackingNumbers trackingNumbers, ParcelNames parcelNames,
            Exception? exception, StackTrace? stackTrace)?
        addFailed,
    required TResult orElse(),
  }) {
    if (addFailed != null) {
      return addFailed(trackingNumbers, parcelNames, exception, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddParcelsStateInitial value) initial,
    required TResult Function(AddParcelsStateFieldChanged value) fieldChanged,
    required TResult Function(AddParcelsStateAdding value) adding,
    required TResult Function(AddParcelsStateAdded value) added,
    required TResult Function(AddParcelsStateValidationFailed value)
        validationFailed,
    required TResult Function(AddParcelsStateAddFailed value) addFailed,
  }) {
    return addFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddParcelsStateInitial value)? initial,
    TResult Function(AddParcelsStateFieldChanged value)? fieldChanged,
    TResult Function(AddParcelsStateAdding value)? adding,
    TResult Function(AddParcelsStateAdded value)? added,
    TResult Function(AddParcelsStateValidationFailed value)? validationFailed,
    TResult Function(AddParcelsStateAddFailed value)? addFailed,
    required TResult orElse(),
  }) {
    if (addFailed != null) {
      return addFailed(this);
    }
    return orElse();
  }
}

abstract class AddParcelsStateAddFailed implements AddParcelsState {
  const factory AddParcelsStateAddFailed(
      {required TrackingNumbers trackingNumbers,
      required ParcelNames parcelNames,
      Exception? exception,
      StackTrace? stackTrace}) = _$AddParcelsStateAddFailed;

  TrackingNumbers get trackingNumbers => throw _privateConstructorUsedError;
  ParcelNames get parcelNames => throw _privateConstructorUsedError;
  Exception? get exception => throw _privateConstructorUsedError;
  StackTrace? get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddParcelsStateAddFailedCopyWith<AddParcelsStateAddFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
