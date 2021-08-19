// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'selectable_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SelectableStateTearOff {
  const _$SelectableStateTearOff();

  SelectableStateInitial<T> initial<T>() {
    return SelectableStateInitial<T>();
  }

  SelectableStateNoSelection<T> noSelection<T>() {
    return SelectableStateNoSelection<T>();
  }

  SelectableStateSelected<T> selected<T>(Set<T> items) {
    return SelectableStateSelected<T>(
      items,
    );
  }
}

/// @nodoc
const $SelectableState = _$SelectableStateTearOff();

/// @nodoc
mixin _$SelectableState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noSelection,
    required TResult Function(Set<T> items) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noSelection,
    TResult Function(Set<T> items)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noSelection,
    TResult Function(Set<T> items)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectableStateInitial<T> value) initial,
    required TResult Function(SelectableStateNoSelection<T> value) noSelection,
    required TResult Function(SelectableStateSelected<T> value) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectableStateInitial<T> value)? initial,
    TResult Function(SelectableStateNoSelection<T> value)? noSelection,
    TResult Function(SelectableStateSelected<T> value)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectableStateInitial<T> value)? initial,
    TResult Function(SelectableStateNoSelection<T> value)? noSelection,
    TResult Function(SelectableStateSelected<T> value)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectableStateCopyWith<T, $Res> {
  factory $SelectableStateCopyWith(
          SelectableState<T> value, $Res Function(SelectableState<T>) then) =
      _$SelectableStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$SelectableStateCopyWithImpl<T, $Res>
    implements $SelectableStateCopyWith<T, $Res> {
  _$SelectableStateCopyWithImpl(this._value, this._then);

  final SelectableState<T> _value;
  // ignore: unused_field
  final $Res Function(SelectableState<T>) _then;
}

/// @nodoc
abstract class $SelectableStateInitialCopyWith<T, $Res> {
  factory $SelectableStateInitialCopyWith(SelectableStateInitial<T> value,
          $Res Function(SelectableStateInitial<T>) then) =
      _$SelectableStateInitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$SelectableStateInitialCopyWithImpl<T, $Res>
    extends _$SelectableStateCopyWithImpl<T, $Res>
    implements $SelectableStateInitialCopyWith<T, $Res> {
  _$SelectableStateInitialCopyWithImpl(SelectableStateInitial<T> _value,
      $Res Function(SelectableStateInitial<T>) _then)
      : super(_value, (v) => _then(v as SelectableStateInitial<T>));

  @override
  SelectableStateInitial<T> get _value =>
      super._value as SelectableStateInitial<T>;
}

/// @nodoc

class _$SelectableStateInitial<T> implements SelectableStateInitial<T> {
  const _$SelectableStateInitial();

  @override
  String toString() {
    return 'SelectableState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SelectableStateInitial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noSelection,
    required TResult Function(Set<T> items) selected,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noSelection,
    TResult Function(Set<T> items)? selected,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noSelection,
    TResult Function(Set<T> items)? selected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectableStateInitial<T> value) initial,
    required TResult Function(SelectableStateNoSelection<T> value) noSelection,
    required TResult Function(SelectableStateSelected<T> value) selected,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectableStateInitial<T> value)? initial,
    TResult Function(SelectableStateNoSelection<T> value)? noSelection,
    TResult Function(SelectableStateSelected<T> value)? selected,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectableStateInitial<T> value)? initial,
    TResult Function(SelectableStateNoSelection<T> value)? noSelection,
    TResult Function(SelectableStateSelected<T> value)? selected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SelectableStateInitial<T> implements SelectableState<T> {
  const factory SelectableStateInitial() = _$SelectableStateInitial<T>;
}

/// @nodoc
abstract class $SelectableStateNoSelectionCopyWith<T, $Res> {
  factory $SelectableStateNoSelectionCopyWith(
          SelectableStateNoSelection<T> value,
          $Res Function(SelectableStateNoSelection<T>) then) =
      _$SelectableStateNoSelectionCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$SelectableStateNoSelectionCopyWithImpl<T, $Res>
    extends _$SelectableStateCopyWithImpl<T, $Res>
    implements $SelectableStateNoSelectionCopyWith<T, $Res> {
  _$SelectableStateNoSelectionCopyWithImpl(SelectableStateNoSelection<T> _value,
      $Res Function(SelectableStateNoSelection<T>) _then)
      : super(_value, (v) => _then(v as SelectableStateNoSelection<T>));

  @override
  SelectableStateNoSelection<T> get _value =>
      super._value as SelectableStateNoSelection<T>;
}

/// @nodoc

class _$SelectableStateNoSelection<T> implements SelectableStateNoSelection<T> {
  const _$SelectableStateNoSelection();

  @override
  String toString() {
    return 'SelectableState<$T>.noSelection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SelectableStateNoSelection<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noSelection,
    required TResult Function(Set<T> items) selected,
  }) {
    return noSelection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noSelection,
    TResult Function(Set<T> items)? selected,
  }) {
    return noSelection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noSelection,
    TResult Function(Set<T> items)? selected,
    required TResult orElse(),
  }) {
    if (noSelection != null) {
      return noSelection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectableStateInitial<T> value) initial,
    required TResult Function(SelectableStateNoSelection<T> value) noSelection,
    required TResult Function(SelectableStateSelected<T> value) selected,
  }) {
    return noSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectableStateInitial<T> value)? initial,
    TResult Function(SelectableStateNoSelection<T> value)? noSelection,
    TResult Function(SelectableStateSelected<T> value)? selected,
  }) {
    return noSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectableStateInitial<T> value)? initial,
    TResult Function(SelectableStateNoSelection<T> value)? noSelection,
    TResult Function(SelectableStateSelected<T> value)? selected,
    required TResult orElse(),
  }) {
    if (noSelection != null) {
      return noSelection(this);
    }
    return orElse();
  }
}

abstract class SelectableStateNoSelection<T> implements SelectableState<T> {
  const factory SelectableStateNoSelection() = _$SelectableStateNoSelection<T>;
}

/// @nodoc
abstract class $SelectableStateSelectedCopyWith<T, $Res> {
  factory $SelectableStateSelectedCopyWith(SelectableStateSelected<T> value,
          $Res Function(SelectableStateSelected<T>) then) =
      _$SelectableStateSelectedCopyWithImpl<T, $Res>;
  $Res call({Set<T> items});
}

/// @nodoc
class _$SelectableStateSelectedCopyWithImpl<T, $Res>
    extends _$SelectableStateCopyWithImpl<T, $Res>
    implements $SelectableStateSelectedCopyWith<T, $Res> {
  _$SelectableStateSelectedCopyWithImpl(SelectableStateSelected<T> _value,
      $Res Function(SelectableStateSelected<T>) _then)
      : super(_value, (v) => _then(v as SelectableStateSelected<T>));

  @override
  SelectableStateSelected<T> get _value =>
      super._value as SelectableStateSelected<T>;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(SelectableStateSelected<T>(
      items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Set<T>,
    ));
  }
}

/// @nodoc

class _$SelectableStateSelected<T> implements SelectableStateSelected<T> {
  const _$SelectableStateSelected(this.items);

  @override
  final Set<T> items;

  @override
  String toString() {
    return 'SelectableState<$T>.selected(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectableStateSelected<T> &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  $SelectableStateSelectedCopyWith<T, SelectableStateSelected<T>>
      get copyWith =>
          _$SelectableStateSelectedCopyWithImpl<T, SelectableStateSelected<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noSelection,
    required TResult Function(Set<T> items) selected,
  }) {
    return selected(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noSelection,
    TResult Function(Set<T> items)? selected,
  }) {
    return selected?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noSelection,
    TResult Function(Set<T> items)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectableStateInitial<T> value) initial,
    required TResult Function(SelectableStateNoSelection<T> value) noSelection,
    required TResult Function(SelectableStateSelected<T> value) selected,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectableStateInitial<T> value)? initial,
    TResult Function(SelectableStateNoSelection<T> value)? noSelection,
    TResult Function(SelectableStateSelected<T> value)? selected,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectableStateInitial<T> value)? initial,
    TResult Function(SelectableStateNoSelection<T> value)? noSelection,
    TResult Function(SelectableStateSelected<T> value)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class SelectableStateSelected<T> implements SelectableState<T> {
  const factory SelectableStateSelected(Set<T> items) =
      _$SelectableStateSelected<T>;

  Set<T> get items => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectableStateSelectedCopyWith<T, SelectableStateSelected<T>>
      get copyWith => throw _privateConstructorUsedError;
}
