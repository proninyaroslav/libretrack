// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selectable_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
    TResult? Function()? initial,
    TResult? Function()? noSelection,
    TResult? Function(Set<T> items)? selected,
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
    TResult? Function(SelectableStateInitial<T> value)? initial,
    TResult? Function(SelectableStateNoSelection<T> value)? noSelection,
    TResult? Function(SelectableStateSelected<T> value)? selected,
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
      _$SelectableStateCopyWithImpl<T, $Res, SelectableState<T>>;
}

/// @nodoc
class _$SelectableStateCopyWithImpl<T, $Res, $Val extends SelectableState<T>>
    implements $SelectableStateCopyWith<T, $Res> {
  _$SelectableStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SelectableStateInitialImplCopyWith<T, $Res> {
  factory _$$SelectableStateInitialImplCopyWith(
          _$SelectableStateInitialImpl<T> value,
          $Res Function(_$SelectableStateInitialImpl<T>) then) =
      __$$SelectableStateInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SelectableStateInitialImplCopyWithImpl<T, $Res>
    extends _$SelectableStateCopyWithImpl<T, $Res,
        _$SelectableStateInitialImpl<T>>
    implements _$$SelectableStateInitialImplCopyWith<T, $Res> {
  __$$SelectableStateInitialImplCopyWithImpl(
      _$SelectableStateInitialImpl<T> _value,
      $Res Function(_$SelectableStateInitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SelectableStateInitialImpl<T>
    with DiagnosticableTreeMixin
    implements SelectableStateInitial<T> {
  const _$SelectableStateInitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SelectableState<$T>.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SelectableState<$T>.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectableStateInitialImpl<T>);
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
    TResult? Function()? initial,
    TResult? Function()? noSelection,
    TResult? Function(Set<T> items)? selected,
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
    TResult? Function(SelectableStateInitial<T> value)? initial,
    TResult? Function(SelectableStateNoSelection<T> value)? noSelection,
    TResult? Function(SelectableStateSelected<T> value)? selected,
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
  const factory SelectableStateInitial() = _$SelectableStateInitialImpl<T>;
}

/// @nodoc
abstract class _$$SelectableStateNoSelectionImplCopyWith<T, $Res> {
  factory _$$SelectableStateNoSelectionImplCopyWith(
          _$SelectableStateNoSelectionImpl<T> value,
          $Res Function(_$SelectableStateNoSelectionImpl<T>) then) =
      __$$SelectableStateNoSelectionImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SelectableStateNoSelectionImplCopyWithImpl<T, $Res>
    extends _$SelectableStateCopyWithImpl<T, $Res,
        _$SelectableStateNoSelectionImpl<T>>
    implements _$$SelectableStateNoSelectionImplCopyWith<T, $Res> {
  __$$SelectableStateNoSelectionImplCopyWithImpl(
      _$SelectableStateNoSelectionImpl<T> _value,
      $Res Function(_$SelectableStateNoSelectionImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SelectableStateNoSelectionImpl<T>
    with DiagnosticableTreeMixin
    implements SelectableStateNoSelection<T> {
  const _$SelectableStateNoSelectionImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SelectableState<$T>.noSelection()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'SelectableState<$T>.noSelection'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectableStateNoSelectionImpl<T>);
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
    TResult? Function()? initial,
    TResult? Function()? noSelection,
    TResult? Function(Set<T> items)? selected,
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
    TResult? Function(SelectableStateInitial<T> value)? initial,
    TResult? Function(SelectableStateNoSelection<T> value)? noSelection,
    TResult? Function(SelectableStateSelected<T> value)? selected,
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
  const factory SelectableStateNoSelection() =
      _$SelectableStateNoSelectionImpl<T>;
}

/// @nodoc
abstract class _$$SelectableStateSelectedImplCopyWith<T, $Res> {
  factory _$$SelectableStateSelectedImplCopyWith(
          _$SelectableStateSelectedImpl<T> value,
          $Res Function(_$SelectableStateSelectedImpl<T>) then) =
      __$$SelectableStateSelectedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Set<T> items});
}

/// @nodoc
class __$$SelectableStateSelectedImplCopyWithImpl<T, $Res>
    extends _$SelectableStateCopyWithImpl<T, $Res,
        _$SelectableStateSelectedImpl<T>>
    implements _$$SelectableStateSelectedImplCopyWith<T, $Res> {
  __$$SelectableStateSelectedImplCopyWithImpl(
      _$SelectableStateSelectedImpl<T> _value,
      $Res Function(_$SelectableStateSelectedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$SelectableStateSelectedImpl<T>(
      null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as Set<T>,
    ));
  }
}

/// @nodoc

class _$SelectableStateSelectedImpl<T>
    with DiagnosticableTreeMixin
    implements SelectableStateSelected<T> {
  const _$SelectableStateSelectedImpl(final Set<T> items) : _items = items;

  final Set<T> _items;
  @override
  Set<T> get items {
    if (_items is EqualUnmodifiableSetView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_items);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SelectableState<$T>.selected(items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SelectableState<$T>.selected'))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectableStateSelectedImpl<T> &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectableStateSelectedImplCopyWith<T, _$SelectableStateSelectedImpl<T>>
      get copyWith => __$$SelectableStateSelectedImplCopyWithImpl<T,
          _$SelectableStateSelectedImpl<T>>(this, _$identity);

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
    TResult? Function()? initial,
    TResult? Function()? noSelection,
    TResult? Function(Set<T> items)? selected,
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
    TResult? Function(SelectableStateInitial<T> value)? initial,
    TResult? Function(SelectableStateNoSelection<T> value)? noSelection,
    TResult? Function(SelectableStateSelected<T> value)? selected,
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
  const factory SelectableStateSelected(final Set<T> items) =
      _$SelectableStateSelectedImpl<T>;

  Set<T> get items;
  @JsonKey(ignore: true)
  _$$SelectableStateSelectedImplCopyWith<T, _$SelectableStateSelectedImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
