// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rrect_icon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RRectIconDataTearOff {
  const _$RRectIconDataTearOff();

  _RRectIconData call(
      {required IconData iconData,
      required Color iconColor,
      required Color backgroundColor}) {
    return _RRectIconData(
      iconData: iconData,
      iconColor: iconColor,
      backgroundColor: backgroundColor,
    );
  }

  _RRectIconDataWidget widget(
      {required Widget icon, required Color backgroundColor}) {
    return _RRectIconDataWidget(
      icon: icon,
      backgroundColor: backgroundColor,
    );
  }
}

/// @nodoc
const $RRectIconData = _$RRectIconDataTearOff();

/// @nodoc
mixin _$RRectIconData {
  Color get backgroundColor => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(IconData iconData, Color iconColor, Color backgroundColor)
        $default, {
    required TResult Function(Widget icon, Color backgroundColor) widget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(IconData iconData, Color iconColor, Color backgroundColor)?
        $default, {
    TResult Function(Widget icon, Color backgroundColor)? widget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(IconData iconData, Color iconColor, Color backgroundColor)?
        $default, {
    TResult Function(Widget icon, Color backgroundColor)? widget,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RRectIconData value) $default, {
    required TResult Function(_RRectIconDataWidget value) widget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_RRectIconData value)? $default, {
    TResult Function(_RRectIconDataWidget value)? widget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RRectIconData value)? $default, {
    TResult Function(_RRectIconDataWidget value)? widget,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RRectIconDataCopyWith<RRectIconData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RRectIconDataCopyWith<$Res> {
  factory $RRectIconDataCopyWith(
          RRectIconData value, $Res Function(RRectIconData) then) =
      _$RRectIconDataCopyWithImpl<$Res>;
  $Res call({Color backgroundColor});
}

/// @nodoc
class _$RRectIconDataCopyWithImpl<$Res>
    implements $RRectIconDataCopyWith<$Res> {
  _$RRectIconDataCopyWithImpl(this._value, this._then);

  final RRectIconData _value;
  // ignore: unused_field
  final $Res Function(RRectIconData) _then;

  @override
  $Res call({
    Object? backgroundColor = freezed,
  }) {
    return _then(_value.copyWith(
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
abstract class _$RRectIconDataCopyWith<$Res>
    implements $RRectIconDataCopyWith<$Res> {
  factory _$RRectIconDataCopyWith(
          _RRectIconData value, $Res Function(_RRectIconData) then) =
      __$RRectIconDataCopyWithImpl<$Res>;
  @override
  $Res call({IconData iconData, Color iconColor, Color backgroundColor});
}

/// @nodoc
class __$RRectIconDataCopyWithImpl<$Res>
    extends _$RRectIconDataCopyWithImpl<$Res>
    implements _$RRectIconDataCopyWith<$Res> {
  __$RRectIconDataCopyWithImpl(
      _RRectIconData _value, $Res Function(_RRectIconData) _then)
      : super(_value, (v) => _then(v as _RRectIconData));

  @override
  _RRectIconData get _value => super._value as _RRectIconData;

  @override
  $Res call({
    Object? iconData = freezed,
    Object? iconColor = freezed,
    Object? backgroundColor = freezed,
  }) {
    return _then(_RRectIconData(
      iconData: iconData == freezed
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as IconData,
      iconColor: iconColor == freezed
          ? _value.iconColor
          : iconColor // ignore: cast_nullable_to_non_nullable
              as Color,
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_RRectIconData implements _RRectIconData {
  const _$_RRectIconData(
      {required this.iconData,
      required this.iconColor,
      required this.backgroundColor});

  @override
  final IconData iconData;
  @override
  final Color iconColor;
  @override
  final Color backgroundColor;

  @override
  String toString() {
    return 'RRectIconData(iconData: $iconData, iconColor: $iconColor, backgroundColor: $backgroundColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RRectIconData &&
            (identical(other.iconData, iconData) ||
                const DeepCollectionEquality()
                    .equals(other.iconData, iconData)) &&
            (identical(other.iconColor, iconColor) ||
                const DeepCollectionEquality()
                    .equals(other.iconColor, iconColor)) &&
            (identical(other.backgroundColor, backgroundColor) ||
                const DeepCollectionEquality()
                    .equals(other.backgroundColor, backgroundColor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(iconData) ^
      const DeepCollectionEquality().hash(iconColor) ^
      const DeepCollectionEquality().hash(backgroundColor);

  @JsonKey(ignore: true)
  @override
  _$RRectIconDataCopyWith<_RRectIconData> get copyWith =>
      __$RRectIconDataCopyWithImpl<_RRectIconData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(IconData iconData, Color iconColor, Color backgroundColor)
        $default, {
    required TResult Function(Widget icon, Color backgroundColor) widget,
  }) {
    return $default(iconData, iconColor, backgroundColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(IconData iconData, Color iconColor, Color backgroundColor)?
        $default, {
    TResult Function(Widget icon, Color backgroundColor)? widget,
  }) {
    return $default?.call(iconData, iconColor, backgroundColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(IconData iconData, Color iconColor, Color backgroundColor)?
        $default, {
    TResult Function(Widget icon, Color backgroundColor)? widget,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(iconData, iconColor, backgroundColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RRectIconData value) $default, {
    required TResult Function(_RRectIconDataWidget value) widget,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_RRectIconData value)? $default, {
    TResult Function(_RRectIconDataWidget value)? widget,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RRectIconData value)? $default, {
    TResult Function(_RRectIconDataWidget value)? widget,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _RRectIconData implements RRectIconData {
  const factory _RRectIconData(
      {required IconData iconData,
      required Color iconColor,
      required Color backgroundColor}) = _$_RRectIconData;

  IconData get iconData => throw _privateConstructorUsedError;
  Color get iconColor => throw _privateConstructorUsedError;
  @override
  Color get backgroundColor => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RRectIconDataCopyWith<_RRectIconData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RRectIconDataWidgetCopyWith<$Res>
    implements $RRectIconDataCopyWith<$Res> {
  factory _$RRectIconDataWidgetCopyWith(_RRectIconDataWidget value,
          $Res Function(_RRectIconDataWidget) then) =
      __$RRectIconDataWidgetCopyWithImpl<$Res>;
  @override
  $Res call({Widget icon, Color backgroundColor});
}

/// @nodoc
class __$RRectIconDataWidgetCopyWithImpl<$Res>
    extends _$RRectIconDataCopyWithImpl<$Res>
    implements _$RRectIconDataWidgetCopyWith<$Res> {
  __$RRectIconDataWidgetCopyWithImpl(
      _RRectIconDataWidget _value, $Res Function(_RRectIconDataWidget) _then)
      : super(_value, (v) => _then(v as _RRectIconDataWidget));

  @override
  _RRectIconDataWidget get _value => super._value as _RRectIconDataWidget;

  @override
  $Res call({
    Object? icon = freezed,
    Object? backgroundColor = freezed,
  }) {
    return _then(_RRectIconDataWidget(
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget,
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_RRectIconDataWidget implements _RRectIconDataWidget {
  const _$_RRectIconDataWidget(
      {required this.icon, required this.backgroundColor});

  @override
  final Widget icon;
  @override
  final Color backgroundColor;

  @override
  String toString() {
    return 'RRectIconData.widget(icon: $icon, backgroundColor: $backgroundColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RRectIconDataWidget &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.backgroundColor, backgroundColor) ||
                const DeepCollectionEquality()
                    .equals(other.backgroundColor, backgroundColor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(backgroundColor);

  @JsonKey(ignore: true)
  @override
  _$RRectIconDataWidgetCopyWith<_RRectIconDataWidget> get copyWith =>
      __$RRectIconDataWidgetCopyWithImpl<_RRectIconDataWidget>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(IconData iconData, Color iconColor, Color backgroundColor)
        $default, {
    required TResult Function(Widget icon, Color backgroundColor) widget,
  }) {
    return widget(icon, backgroundColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(IconData iconData, Color iconColor, Color backgroundColor)?
        $default, {
    TResult Function(Widget icon, Color backgroundColor)? widget,
  }) {
    return widget?.call(icon, backgroundColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(IconData iconData, Color iconColor, Color backgroundColor)?
        $default, {
    TResult Function(Widget icon, Color backgroundColor)? widget,
    required TResult orElse(),
  }) {
    if (widget != null) {
      return widget(icon, backgroundColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RRectIconData value) $default, {
    required TResult Function(_RRectIconDataWidget value) widget,
  }) {
    return widget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_RRectIconData value)? $default, {
    TResult Function(_RRectIconDataWidget value)? widget,
  }) {
    return widget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RRectIconData value)? $default, {
    TResult Function(_RRectIconDataWidget value)? widget,
    required TResult orElse(),
  }) {
    if (widget != null) {
      return widget(this);
    }
    return orElse();
  }
}

abstract class _RRectIconDataWidget implements RRectIconData {
  const factory _RRectIconDataWidget(
      {required Widget icon,
      required Color backgroundColor}) = _$_RRectIconDataWidget;

  Widget get icon => throw _privateConstructorUsedError;
  @override
  Color get backgroundColor => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RRectIconDataWidgetCopyWith<_RRectIconDataWidget> get copyWith =>
      throw _privateConstructorUsedError;
}
