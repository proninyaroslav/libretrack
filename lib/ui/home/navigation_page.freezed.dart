// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'navigation_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PageIdTearOff {
  const _$PageIdTearOff();

  _PageId call(String id) {
    return _PageId(
      id,
    );
  }
}

/// @nodoc
const $PageId = _$PageIdTearOff();

/// @nodoc
mixin _$PageId {
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageIdCopyWith<PageId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageIdCopyWith<$Res> {
  factory $PageIdCopyWith(PageId value, $Res Function(PageId) then) =
      _$PageIdCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$PageIdCopyWithImpl<$Res> implements $PageIdCopyWith<$Res> {
  _$PageIdCopyWithImpl(this._value, this._then);

  final PageId _value;
  // ignore: unused_field
  final $Res Function(PageId) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PageIdCopyWith<$Res> implements $PageIdCopyWith<$Res> {
  factory _$PageIdCopyWith(_PageId value, $Res Function(_PageId) then) =
      __$PageIdCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$PageIdCopyWithImpl<$Res> extends _$PageIdCopyWithImpl<$Res>
    implements _$PageIdCopyWith<$Res> {
  __$PageIdCopyWithImpl(_PageId _value, $Res Function(_PageId) _then)
      : super(_value, (v) => _then(v as _PageId));

  @override
  _PageId get _value => super._value as _PageId;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_PageId(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PageId implements _PageId {
  const _$_PageId(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'PageId(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PageId &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$PageIdCopyWith<_PageId> get copyWith =>
      __$PageIdCopyWithImpl<_PageId>(this, _$identity);
}

abstract class _PageId implements PageId {
  const factory _PageId(String id) = _$_PageId;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PageIdCopyWith<_PageId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$PageInfoTearOff {
  const _$PageInfoTearOff();

  _PageInfo call(
      {required PageId id,
      required Widget page,
      SheetInfo? sheetInfo,
      Widget? appBarTitle,
      double? appBarTitleSpacing,
      void Function()? onContextualAppBarClosed,
      List<Widget>? contextualActions,
      List<Widget>? actions}) {
    return _PageInfo(
      id: id,
      page: page,
      sheetInfo: sheetInfo,
      appBarTitle: appBarTitle,
      appBarTitleSpacing: appBarTitleSpacing,
      onContextualAppBarClosed: onContextualAppBarClosed,
      contextualActions: contextualActions,
      actions: actions,
    );
  }
}

/// @nodoc
const $PageInfo = _$PageInfoTearOff();

/// @nodoc
mixin _$PageInfo {
  PageId get id => throw _privateConstructorUsedError;
  Widget get page => throw _privateConstructorUsedError;
  SheetInfo? get sheetInfo => throw _privateConstructorUsedError;
  Widget? get appBarTitle => throw _privateConstructorUsedError;
  double? get appBarTitleSpacing => throw _privateConstructorUsedError;
  void Function()? get onContextualAppBarClosed =>
      throw _privateConstructorUsedError;
  List<Widget>? get contextualActions => throw _privateConstructorUsedError;
  List<Widget>? get actions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageInfoCopyWith<PageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageInfoCopyWith<$Res> {
  factory $PageInfoCopyWith(PageInfo value, $Res Function(PageInfo) then) =
      _$PageInfoCopyWithImpl<$Res>;
  $Res call(
      {PageId id,
      Widget page,
      SheetInfo? sheetInfo,
      Widget? appBarTitle,
      double? appBarTitleSpacing,
      void Function()? onContextualAppBarClosed,
      List<Widget>? contextualActions,
      List<Widget>? actions});

  $PageIdCopyWith<$Res> get id;
  $SheetInfoCopyWith<$Res>? get sheetInfo;
}

/// @nodoc
class _$PageInfoCopyWithImpl<$Res> implements $PageInfoCopyWith<$Res> {
  _$PageInfoCopyWithImpl(this._value, this._then);

  final PageInfo _value;
  // ignore: unused_field
  final $Res Function(PageInfo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? page = freezed,
    Object? sheetInfo = freezed,
    Object? appBarTitle = freezed,
    Object? appBarTitleSpacing = freezed,
    Object? onContextualAppBarClosed = freezed,
    Object? contextualActions = freezed,
    Object? actions = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as PageId,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as Widget,
      sheetInfo: sheetInfo == freezed
          ? _value.sheetInfo
          : sheetInfo // ignore: cast_nullable_to_non_nullable
              as SheetInfo?,
      appBarTitle: appBarTitle == freezed
          ? _value.appBarTitle
          : appBarTitle // ignore: cast_nullable_to_non_nullable
              as Widget?,
      appBarTitleSpacing: appBarTitleSpacing == freezed
          ? _value.appBarTitleSpacing
          : appBarTitleSpacing // ignore: cast_nullable_to_non_nullable
              as double?,
      onContextualAppBarClosed: onContextualAppBarClosed == freezed
          ? _value.onContextualAppBarClosed
          : onContextualAppBarClosed // ignore: cast_nullable_to_non_nullable
              as void Function()?,
      contextualActions: contextualActions == freezed
          ? _value.contextualActions
          : contextualActions // ignore: cast_nullable_to_non_nullable
              as List<Widget>?,
      actions: actions == freezed
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<Widget>?,
    ));
  }

  @override
  $PageIdCopyWith<$Res> get id {
    return $PageIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value));
    });
  }

  @override
  $SheetInfoCopyWith<$Res>? get sheetInfo {
    if (_value.sheetInfo == null) {
      return null;
    }

    return $SheetInfoCopyWith<$Res>(_value.sheetInfo!, (value) {
      return _then(_value.copyWith(sheetInfo: value));
    });
  }
}

/// @nodoc
abstract class _$PageInfoCopyWith<$Res> implements $PageInfoCopyWith<$Res> {
  factory _$PageInfoCopyWith(_PageInfo value, $Res Function(_PageInfo) then) =
      __$PageInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {PageId id,
      Widget page,
      SheetInfo? sheetInfo,
      Widget? appBarTitle,
      double? appBarTitleSpacing,
      void Function()? onContextualAppBarClosed,
      List<Widget>? contextualActions,
      List<Widget>? actions});

  @override
  $PageIdCopyWith<$Res> get id;
  @override
  $SheetInfoCopyWith<$Res>? get sheetInfo;
}

/// @nodoc
class __$PageInfoCopyWithImpl<$Res> extends _$PageInfoCopyWithImpl<$Res>
    implements _$PageInfoCopyWith<$Res> {
  __$PageInfoCopyWithImpl(_PageInfo _value, $Res Function(_PageInfo) _then)
      : super(_value, (v) => _then(v as _PageInfo));

  @override
  _PageInfo get _value => super._value as _PageInfo;

  @override
  $Res call({
    Object? id = freezed,
    Object? page = freezed,
    Object? sheetInfo = freezed,
    Object? appBarTitle = freezed,
    Object? appBarTitleSpacing = freezed,
    Object? onContextualAppBarClosed = freezed,
    Object? contextualActions = freezed,
    Object? actions = freezed,
  }) {
    return _then(_PageInfo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as PageId,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as Widget,
      sheetInfo: sheetInfo == freezed
          ? _value.sheetInfo
          : sheetInfo // ignore: cast_nullable_to_non_nullable
              as SheetInfo?,
      appBarTitle: appBarTitle == freezed
          ? _value.appBarTitle
          : appBarTitle // ignore: cast_nullable_to_non_nullable
              as Widget?,
      appBarTitleSpacing: appBarTitleSpacing == freezed
          ? _value.appBarTitleSpacing
          : appBarTitleSpacing // ignore: cast_nullable_to_non_nullable
              as double?,
      onContextualAppBarClosed: onContextualAppBarClosed == freezed
          ? _value.onContextualAppBarClosed
          : onContextualAppBarClosed // ignore: cast_nullable_to_non_nullable
              as void Function()?,
      contextualActions: contextualActions == freezed
          ? _value.contextualActions
          : contextualActions // ignore: cast_nullable_to_non_nullable
              as List<Widget>?,
      actions: actions == freezed
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<Widget>?,
    ));
  }
}

/// @nodoc

class _$_PageInfo implements _PageInfo {
  const _$_PageInfo(
      {required this.id,
      required this.page,
      this.sheetInfo,
      this.appBarTitle,
      this.appBarTitleSpacing,
      this.onContextualAppBarClosed,
      this.contextualActions,
      this.actions});

  @override
  final PageId id;
  @override
  final Widget page;
  @override
  final SheetInfo? sheetInfo;
  @override
  final Widget? appBarTitle;
  @override
  final double? appBarTitleSpacing;
  @override
  final void Function()? onContextualAppBarClosed;
  @override
  final List<Widget>? contextualActions;
  @override
  final List<Widget>? actions;

  @override
  String toString() {
    return 'PageInfo(id: $id, page: $page, sheetInfo: $sheetInfo, appBarTitle: $appBarTitle, appBarTitleSpacing: $appBarTitleSpacing, onContextualAppBarClosed: $onContextualAppBarClosed, contextualActions: $contextualActions, actions: $actions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PageInfo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.sheetInfo, sheetInfo) ||
                const DeepCollectionEquality()
                    .equals(other.sheetInfo, sheetInfo)) &&
            (identical(other.appBarTitle, appBarTitle) ||
                const DeepCollectionEquality()
                    .equals(other.appBarTitle, appBarTitle)) &&
            (identical(other.appBarTitleSpacing, appBarTitleSpacing) ||
                const DeepCollectionEquality()
                    .equals(other.appBarTitleSpacing, appBarTitleSpacing)) &&
            (identical(
                    other.onContextualAppBarClosed, onContextualAppBarClosed) ||
                const DeepCollectionEquality().equals(
                    other.onContextualAppBarClosed,
                    onContextualAppBarClosed)) &&
            (identical(other.contextualActions, contextualActions) ||
                const DeepCollectionEquality()
                    .equals(other.contextualActions, contextualActions)) &&
            (identical(other.actions, actions) ||
                const DeepCollectionEquality().equals(other.actions, actions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(sheetInfo) ^
      const DeepCollectionEquality().hash(appBarTitle) ^
      const DeepCollectionEquality().hash(appBarTitleSpacing) ^
      const DeepCollectionEquality().hash(onContextualAppBarClosed) ^
      const DeepCollectionEquality().hash(contextualActions) ^
      const DeepCollectionEquality().hash(actions);

  @JsonKey(ignore: true)
  @override
  _$PageInfoCopyWith<_PageInfo> get copyWith =>
      __$PageInfoCopyWithImpl<_PageInfo>(this, _$identity);
}

abstract class _PageInfo implements PageInfo {
  const factory _PageInfo(
      {required PageId id,
      required Widget page,
      SheetInfo? sheetInfo,
      Widget? appBarTitle,
      double? appBarTitleSpacing,
      void Function()? onContextualAppBarClosed,
      List<Widget>? contextualActions,
      List<Widget>? actions}) = _$_PageInfo;

  @override
  PageId get id => throw _privateConstructorUsedError;
  @override
  Widget get page => throw _privateConstructorUsedError;
  @override
  SheetInfo? get sheetInfo => throw _privateConstructorUsedError;
  @override
  Widget? get appBarTitle => throw _privateConstructorUsedError;
  @override
  double? get appBarTitleSpacing => throw _privateConstructorUsedError;
  @override
  void Function()? get onContextualAppBarClosed =>
      throw _privateConstructorUsedError;
  @override
  List<Widget>? get contextualActions => throw _privateConstructorUsedError;
  @override
  List<Widget>? get actions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PageInfoCopyWith<_PageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SheetInfoTearOff {
  const _$SheetInfoTearOff();

  _SheetInfo call(
      {required String name,
      required Widget sheet,
      required IconData toggleIcon,
      Widget? appBarTitle}) {
    return _SheetInfo(
      name: name,
      sheet: sheet,
      toggleIcon: toggleIcon,
      appBarTitle: appBarTitle,
    );
  }
}

/// @nodoc
const $SheetInfo = _$SheetInfoTearOff();

/// @nodoc
mixin _$SheetInfo {
  String get name => throw _privateConstructorUsedError;
  Widget get sheet => throw _privateConstructorUsedError;
  IconData get toggleIcon => throw _privateConstructorUsedError;
  Widget? get appBarTitle => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SheetInfoCopyWith<SheetInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SheetInfoCopyWith<$Res> {
  factory $SheetInfoCopyWith(SheetInfo value, $Res Function(SheetInfo) then) =
      _$SheetInfoCopyWithImpl<$Res>;
  $Res call(
      {String name, Widget sheet, IconData toggleIcon, Widget? appBarTitle});
}

/// @nodoc
class _$SheetInfoCopyWithImpl<$Res> implements $SheetInfoCopyWith<$Res> {
  _$SheetInfoCopyWithImpl(this._value, this._then);

  final SheetInfo _value;
  // ignore: unused_field
  final $Res Function(SheetInfo) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? sheet = freezed,
    Object? toggleIcon = freezed,
    Object? appBarTitle = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sheet: sheet == freezed
          ? _value.sheet
          : sheet // ignore: cast_nullable_to_non_nullable
              as Widget,
      toggleIcon: toggleIcon == freezed
          ? _value.toggleIcon
          : toggleIcon // ignore: cast_nullable_to_non_nullable
              as IconData,
      appBarTitle: appBarTitle == freezed
          ? _value.appBarTitle
          : appBarTitle // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ));
  }
}

/// @nodoc
abstract class _$SheetInfoCopyWith<$Res> implements $SheetInfoCopyWith<$Res> {
  factory _$SheetInfoCopyWith(
          _SheetInfo value, $Res Function(_SheetInfo) then) =
      __$SheetInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name, Widget sheet, IconData toggleIcon, Widget? appBarTitle});
}

/// @nodoc
class __$SheetInfoCopyWithImpl<$Res> extends _$SheetInfoCopyWithImpl<$Res>
    implements _$SheetInfoCopyWith<$Res> {
  __$SheetInfoCopyWithImpl(_SheetInfo _value, $Res Function(_SheetInfo) _then)
      : super(_value, (v) => _then(v as _SheetInfo));

  @override
  _SheetInfo get _value => super._value as _SheetInfo;

  @override
  $Res call({
    Object? name = freezed,
    Object? sheet = freezed,
    Object? toggleIcon = freezed,
    Object? appBarTitle = freezed,
  }) {
    return _then(_SheetInfo(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sheet: sheet == freezed
          ? _value.sheet
          : sheet // ignore: cast_nullable_to_non_nullable
              as Widget,
      toggleIcon: toggleIcon == freezed
          ? _value.toggleIcon
          : toggleIcon // ignore: cast_nullable_to_non_nullable
              as IconData,
      appBarTitle: appBarTitle == freezed
          ? _value.appBarTitle
          : appBarTitle // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ));
  }
}

/// @nodoc

class _$_SheetInfo implements _SheetInfo {
  const _$_SheetInfo(
      {required this.name,
      required this.sheet,
      required this.toggleIcon,
      this.appBarTitle});

  @override
  final String name;
  @override
  final Widget sheet;
  @override
  final IconData toggleIcon;
  @override
  final Widget? appBarTitle;

  @override
  String toString() {
    return 'SheetInfo(name: $name, sheet: $sheet, toggleIcon: $toggleIcon, appBarTitle: $appBarTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SheetInfo &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.sheet, sheet) ||
                const DeepCollectionEquality().equals(other.sheet, sheet)) &&
            (identical(other.toggleIcon, toggleIcon) ||
                const DeepCollectionEquality()
                    .equals(other.toggleIcon, toggleIcon)) &&
            (identical(other.appBarTitle, appBarTitle) ||
                const DeepCollectionEquality()
                    .equals(other.appBarTitle, appBarTitle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(sheet) ^
      const DeepCollectionEquality().hash(toggleIcon) ^
      const DeepCollectionEquality().hash(appBarTitle);

  @JsonKey(ignore: true)
  @override
  _$SheetInfoCopyWith<_SheetInfo> get copyWith =>
      __$SheetInfoCopyWithImpl<_SheetInfo>(this, _$identity);
}

abstract class _SheetInfo implements SheetInfo {
  const factory _SheetInfo(
      {required String name,
      required Widget sheet,
      required IconData toggleIcon,
      Widget? appBarTitle}) = _$_SheetInfo;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  Widget get sheet => throw _privateConstructorUsedError;
  @override
  IconData get toggleIcon => throw _privateConstructorUsedError;
  @override
  Widget? get appBarTitle => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SheetInfoCopyWith<_SheetInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NavItemTearOff {
  const _$NavItemTearOff();

  _NavItem page(
      {required String name,
      required Widget icon,
      required PageInfo pageInfo}) {
    return _NavItem(
      name: name,
      icon: icon,
      pageInfo: pageInfo,
    );
  }

  _NavItemAction action(
      {required String name,
      required Widget icon,
      required void Function() onPressed}) {
    return _NavItemAction(
      name: name,
      icon: icon,
      onPressed: onPressed,
    );
  }
}

/// @nodoc
const $NavItem = _$NavItemTearOff();

/// @nodoc
mixin _$NavItem {
  String get name => throw _privateConstructorUsedError;
  Widget get icon => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, Widget icon, PageInfo pageInfo) page,
    required TResult Function(
            String name, Widget icon, void Function() onPressed)
        action,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, Widget icon, PageInfo pageInfo)? page,
    TResult Function(String name, Widget icon, void Function() onPressed)?
        action,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, Widget icon, PageInfo pageInfo)? page,
    TResult Function(String name, Widget icon, void Function() onPressed)?
        action,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavItem value) page,
    required TResult Function(_NavItemAction value) action,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NavItem value)? page,
    TResult Function(_NavItemAction value)? action,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavItem value)? page,
    TResult Function(_NavItemAction value)? action,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavItemCopyWith<NavItem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavItemCopyWith<$Res> {
  factory $NavItemCopyWith(NavItem value, $Res Function(NavItem) then) =
      _$NavItemCopyWithImpl<$Res>;
  $Res call({String name, Widget icon});
}

/// @nodoc
class _$NavItemCopyWithImpl<$Res> implements $NavItemCopyWith<$Res> {
  _$NavItemCopyWithImpl(this._value, this._then);

  final NavItem _value;
  // ignore: unused_field
  final $Res Function(NavItem) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc
abstract class _$NavItemCopyWith<$Res> implements $NavItemCopyWith<$Res> {
  factory _$NavItemCopyWith(_NavItem value, $Res Function(_NavItem) then) =
      __$NavItemCopyWithImpl<$Res>;
  @override
  $Res call({String name, Widget icon, PageInfo pageInfo});

  $PageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class __$NavItemCopyWithImpl<$Res> extends _$NavItemCopyWithImpl<$Res>
    implements _$NavItemCopyWith<$Res> {
  __$NavItemCopyWithImpl(_NavItem _value, $Res Function(_NavItem) _then)
      : super(_value, (v) => _then(v as _NavItem));

  @override
  _NavItem get _value => super._value as _NavItem;

  @override
  $Res call({
    Object? name = freezed,
    Object? icon = freezed,
    Object? pageInfo = freezed,
  }) {
    return _then(_NavItem(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget,
      pageInfo: pageInfo == freezed
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo,
    ));
  }

  @override
  $PageInfoCopyWith<$Res> get pageInfo {
    return $PageInfoCopyWith<$Res>(_value.pageInfo, (value) {
      return _then(_value.copyWith(pageInfo: value));
    });
  }
}

/// @nodoc

class _$_NavItem implements _NavItem {
  const _$_NavItem(
      {required this.name, required this.icon, required this.pageInfo});

  @override
  final String name;
  @override
  final Widget icon;
  @override
  final PageInfo pageInfo;

  @override
  String toString() {
    return 'NavItem.page(name: $name, icon: $icon, pageInfo: $pageInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NavItem &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.pageInfo, pageInfo) ||
                const DeepCollectionEquality()
                    .equals(other.pageInfo, pageInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(pageInfo);

  @JsonKey(ignore: true)
  @override
  _$NavItemCopyWith<_NavItem> get copyWith =>
      __$NavItemCopyWithImpl<_NavItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, Widget icon, PageInfo pageInfo) page,
    required TResult Function(
            String name, Widget icon, void Function() onPressed)
        action,
  }) {
    return page(name, icon, pageInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, Widget icon, PageInfo pageInfo)? page,
    TResult Function(String name, Widget icon, void Function() onPressed)?
        action,
  }) {
    return page?.call(name, icon, pageInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, Widget icon, PageInfo pageInfo)? page,
    TResult Function(String name, Widget icon, void Function() onPressed)?
        action,
    required TResult orElse(),
  }) {
    if (page != null) {
      return page(name, icon, pageInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavItem value) page,
    required TResult Function(_NavItemAction value) action,
  }) {
    return page(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NavItem value)? page,
    TResult Function(_NavItemAction value)? action,
  }) {
    return page?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavItem value)? page,
    TResult Function(_NavItemAction value)? action,
    required TResult orElse(),
  }) {
    if (page != null) {
      return page(this);
    }
    return orElse();
  }
}

abstract class _NavItem implements NavItem {
  const factory _NavItem(
      {required String name,
      required Widget icon,
      required PageInfo pageInfo}) = _$_NavItem;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  Widget get icon => throw _privateConstructorUsedError;
  PageInfo get pageInfo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NavItemCopyWith<_NavItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NavItemActionCopyWith<$Res> implements $NavItemCopyWith<$Res> {
  factory _$NavItemActionCopyWith(
          _NavItemAction value, $Res Function(_NavItemAction) then) =
      __$NavItemActionCopyWithImpl<$Res>;
  @override
  $Res call({String name, Widget icon, void Function() onPressed});
}

/// @nodoc
class __$NavItemActionCopyWithImpl<$Res> extends _$NavItemCopyWithImpl<$Res>
    implements _$NavItemActionCopyWith<$Res> {
  __$NavItemActionCopyWithImpl(
      _NavItemAction _value, $Res Function(_NavItemAction) _then)
      : super(_value, (v) => _then(v as _NavItemAction));

  @override
  _NavItemAction get _value => super._value as _NavItemAction;

  @override
  $Res call({
    Object? name = freezed,
    Object? icon = freezed,
    Object? onPressed = freezed,
  }) {
    return _then(_NavItemAction(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget,
      onPressed: onPressed == freezed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as void Function(),
    ));
  }
}

/// @nodoc

class _$_NavItemAction implements _NavItemAction {
  const _$_NavItemAction(
      {required this.name, required this.icon, required this.onPressed});

  @override
  final String name;
  @override
  final Widget icon;
  @override
  final void Function() onPressed;

  @override
  String toString() {
    return 'NavItem.action(name: $name, icon: $icon, onPressed: $onPressed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NavItemAction &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.onPressed, onPressed) ||
                const DeepCollectionEquality()
                    .equals(other.onPressed, onPressed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(onPressed);

  @JsonKey(ignore: true)
  @override
  _$NavItemActionCopyWith<_NavItemAction> get copyWith =>
      __$NavItemActionCopyWithImpl<_NavItemAction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, Widget icon, PageInfo pageInfo) page,
    required TResult Function(
            String name, Widget icon, void Function() onPressed)
        action,
  }) {
    return action(name, icon, onPressed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, Widget icon, PageInfo pageInfo)? page,
    TResult Function(String name, Widget icon, void Function() onPressed)?
        action,
  }) {
    return action?.call(name, icon, onPressed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, Widget icon, PageInfo pageInfo)? page,
    TResult Function(String name, Widget icon, void Function() onPressed)?
        action,
    required TResult orElse(),
  }) {
    if (action != null) {
      return action(name, icon, onPressed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavItem value) page,
    required TResult Function(_NavItemAction value) action,
  }) {
    return action(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NavItem value)? page,
    TResult Function(_NavItemAction value)? action,
  }) {
    return action?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavItem value)? page,
    TResult Function(_NavItemAction value)? action,
    required TResult orElse(),
  }) {
    if (action != null) {
      return action(this);
    }
    return orElse();
  }
}

abstract class _NavItemAction implements NavItem {
  const factory _NavItemAction(
      {required String name,
      required Widget icon,
      required void Function() onPressed}) = _$_NavItemAction;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  Widget get icon => throw _privateConstructorUsedError;
  void Function() get onPressed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NavItemActionCopyWith<_NavItemAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$_BackdropContentTypeTearOff {
  const _$_BackdropContentTypeTearOff();

  _BackdropContentTypeDrawer drawer() {
    return const _BackdropContentTypeDrawer();
  }

  _BackdropContentTypeSheet sheet() {
    return const _BackdropContentTypeSheet();
  }

  _BackdropContentTypeNone none() {
    return const _BackdropContentTypeNone();
  }
}

/// @nodoc
const _$BackdropContentType = _$_BackdropContentTypeTearOff();

/// @nodoc
mixin _$_BackdropContentType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() drawer,
    required TResult Function() sheet,
    required TResult Function() none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? drawer,
    TResult Function()? sheet,
    TResult Function()? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? drawer,
    TResult Function()? sheet,
    TResult Function()? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BackdropContentTypeDrawer value) drawer,
    required TResult Function(_BackdropContentTypeSheet value) sheet,
    required TResult Function(_BackdropContentTypeNone value) none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BackdropContentTypeDrawer value)? drawer,
    TResult Function(_BackdropContentTypeSheet value)? sheet,
    TResult Function(_BackdropContentTypeNone value)? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BackdropContentTypeDrawer value)? drawer,
    TResult Function(_BackdropContentTypeSheet value)? sheet,
    TResult Function(_BackdropContentTypeNone value)? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BackdropContentTypeCopyWith<$Res> {
  factory _$BackdropContentTypeCopyWith(_BackdropContentType value,
          $Res Function(_BackdropContentType) then) =
      __$BackdropContentTypeCopyWithImpl<$Res>;
}

/// @nodoc
class __$BackdropContentTypeCopyWithImpl<$Res>
    implements _$BackdropContentTypeCopyWith<$Res> {
  __$BackdropContentTypeCopyWithImpl(this._value, this._then);

  final _BackdropContentType _value;
  // ignore: unused_field
  final $Res Function(_BackdropContentType) _then;
}

/// @nodoc
abstract class _$BackdropContentTypeDrawerCopyWith<$Res> {
  factory _$BackdropContentTypeDrawerCopyWith(_BackdropContentTypeDrawer value,
          $Res Function(_BackdropContentTypeDrawer) then) =
      __$BackdropContentTypeDrawerCopyWithImpl<$Res>;
}

/// @nodoc
class __$BackdropContentTypeDrawerCopyWithImpl<$Res>
    extends __$BackdropContentTypeCopyWithImpl<$Res>
    implements _$BackdropContentTypeDrawerCopyWith<$Res> {
  __$BackdropContentTypeDrawerCopyWithImpl(_BackdropContentTypeDrawer _value,
      $Res Function(_BackdropContentTypeDrawer) _then)
      : super(_value, (v) => _then(v as _BackdropContentTypeDrawer));

  @override
  _BackdropContentTypeDrawer get _value =>
      super._value as _BackdropContentTypeDrawer;
}

/// @nodoc

class _$_BackdropContentTypeDrawer implements _BackdropContentTypeDrawer {
  const _$_BackdropContentTypeDrawer();

  @override
  String toString() {
    return '_BackdropContentType.drawer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _BackdropContentTypeDrawer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() drawer,
    required TResult Function() sheet,
    required TResult Function() none,
  }) {
    return drawer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? drawer,
    TResult Function()? sheet,
    TResult Function()? none,
  }) {
    return drawer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? drawer,
    TResult Function()? sheet,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (drawer != null) {
      return drawer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BackdropContentTypeDrawer value) drawer,
    required TResult Function(_BackdropContentTypeSheet value) sheet,
    required TResult Function(_BackdropContentTypeNone value) none,
  }) {
    return drawer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BackdropContentTypeDrawer value)? drawer,
    TResult Function(_BackdropContentTypeSheet value)? sheet,
    TResult Function(_BackdropContentTypeNone value)? none,
  }) {
    return drawer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BackdropContentTypeDrawer value)? drawer,
    TResult Function(_BackdropContentTypeSheet value)? sheet,
    TResult Function(_BackdropContentTypeNone value)? none,
    required TResult orElse(),
  }) {
    if (drawer != null) {
      return drawer(this);
    }
    return orElse();
  }
}

abstract class _BackdropContentTypeDrawer implements _BackdropContentType {
  const factory _BackdropContentTypeDrawer() = _$_BackdropContentTypeDrawer;
}

/// @nodoc
abstract class _$BackdropContentTypeSheetCopyWith<$Res> {
  factory _$BackdropContentTypeSheetCopyWith(_BackdropContentTypeSheet value,
          $Res Function(_BackdropContentTypeSheet) then) =
      __$BackdropContentTypeSheetCopyWithImpl<$Res>;
}

/// @nodoc
class __$BackdropContentTypeSheetCopyWithImpl<$Res>
    extends __$BackdropContentTypeCopyWithImpl<$Res>
    implements _$BackdropContentTypeSheetCopyWith<$Res> {
  __$BackdropContentTypeSheetCopyWithImpl(_BackdropContentTypeSheet _value,
      $Res Function(_BackdropContentTypeSheet) _then)
      : super(_value, (v) => _then(v as _BackdropContentTypeSheet));

  @override
  _BackdropContentTypeSheet get _value =>
      super._value as _BackdropContentTypeSheet;
}

/// @nodoc

class _$_BackdropContentTypeSheet implements _BackdropContentTypeSheet {
  const _$_BackdropContentTypeSheet();

  @override
  String toString() {
    return '_BackdropContentType.sheet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _BackdropContentTypeSheet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() drawer,
    required TResult Function() sheet,
    required TResult Function() none,
  }) {
    return sheet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? drawer,
    TResult Function()? sheet,
    TResult Function()? none,
  }) {
    return sheet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? drawer,
    TResult Function()? sheet,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (sheet != null) {
      return sheet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BackdropContentTypeDrawer value) drawer,
    required TResult Function(_BackdropContentTypeSheet value) sheet,
    required TResult Function(_BackdropContentTypeNone value) none,
  }) {
    return sheet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BackdropContentTypeDrawer value)? drawer,
    TResult Function(_BackdropContentTypeSheet value)? sheet,
    TResult Function(_BackdropContentTypeNone value)? none,
  }) {
    return sheet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BackdropContentTypeDrawer value)? drawer,
    TResult Function(_BackdropContentTypeSheet value)? sheet,
    TResult Function(_BackdropContentTypeNone value)? none,
    required TResult orElse(),
  }) {
    if (sheet != null) {
      return sheet(this);
    }
    return orElse();
  }
}

abstract class _BackdropContentTypeSheet implements _BackdropContentType {
  const factory _BackdropContentTypeSheet() = _$_BackdropContentTypeSheet;
}

/// @nodoc
abstract class _$BackdropContentTypeNoneCopyWith<$Res> {
  factory _$BackdropContentTypeNoneCopyWith(_BackdropContentTypeNone value,
          $Res Function(_BackdropContentTypeNone) then) =
      __$BackdropContentTypeNoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$BackdropContentTypeNoneCopyWithImpl<$Res>
    extends __$BackdropContentTypeCopyWithImpl<$Res>
    implements _$BackdropContentTypeNoneCopyWith<$Res> {
  __$BackdropContentTypeNoneCopyWithImpl(_BackdropContentTypeNone _value,
      $Res Function(_BackdropContentTypeNone) _then)
      : super(_value, (v) => _then(v as _BackdropContentTypeNone));

  @override
  _BackdropContentTypeNone get _value =>
      super._value as _BackdropContentTypeNone;
}

/// @nodoc

class _$_BackdropContentTypeNone implements _BackdropContentTypeNone {
  const _$_BackdropContentTypeNone();

  @override
  String toString() {
    return '_BackdropContentType.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _BackdropContentTypeNone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() drawer,
    required TResult Function() sheet,
    required TResult Function() none,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? drawer,
    TResult Function()? sheet,
    TResult Function()? none,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? drawer,
    TResult Function()? sheet,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BackdropContentTypeDrawer value) drawer,
    required TResult Function(_BackdropContentTypeSheet value) sheet,
    required TResult Function(_BackdropContentTypeNone value) none,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BackdropContentTypeDrawer value)? drawer,
    TResult Function(_BackdropContentTypeSheet value)? sheet,
    TResult Function(_BackdropContentTypeNone value)? none,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BackdropContentTypeDrawer value)? drawer,
    TResult Function(_BackdropContentTypeSheet value)? sheet,
    TResult Function(_BackdropContentTypeNone value)? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class _BackdropContentTypeNone implements _BackdropContentType {
  const factory _BackdropContentTypeNone() = _$_BackdropContentTypeNone;
}

/// @nodoc
class _$_BackLayerTypeTearOff {
  const _$_BackLayerTypeTearOff();

  _BackLayerTypeTop top() {
    return const _BackLayerTypeTop();
  }

  _BackLayerTypeStart start() {
    return const _BackLayerTypeStart();
  }

  _BackLayerTypeEnd end() {
    return const _BackLayerTypeEnd();
  }

  _BackLayerTypeNone none() {
    return const _BackLayerTypeNone();
  }
}

/// @nodoc
const _$BackLayerType = _$_BackLayerTypeTearOff();

/// @nodoc
mixin _$_BackLayerType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() top,
    required TResult Function() start,
    required TResult Function() end,
    required TResult Function() none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? top,
    TResult Function()? start,
    TResult Function()? end,
    TResult Function()? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? top,
    TResult Function()? start,
    TResult Function()? end,
    TResult Function()? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BackLayerTypeTop value) top,
    required TResult Function(_BackLayerTypeStart value) start,
    required TResult Function(_BackLayerTypeEnd value) end,
    required TResult Function(_BackLayerTypeNone value) none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BackLayerTypeTop value)? top,
    TResult Function(_BackLayerTypeStart value)? start,
    TResult Function(_BackLayerTypeEnd value)? end,
    TResult Function(_BackLayerTypeNone value)? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BackLayerTypeTop value)? top,
    TResult Function(_BackLayerTypeStart value)? start,
    TResult Function(_BackLayerTypeEnd value)? end,
    TResult Function(_BackLayerTypeNone value)? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BackLayerTypeCopyWith<$Res> {
  factory _$BackLayerTypeCopyWith(
          _BackLayerType value, $Res Function(_BackLayerType) then) =
      __$BackLayerTypeCopyWithImpl<$Res>;
}

/// @nodoc
class __$BackLayerTypeCopyWithImpl<$Res>
    implements _$BackLayerTypeCopyWith<$Res> {
  __$BackLayerTypeCopyWithImpl(this._value, this._then);

  final _BackLayerType _value;
  // ignore: unused_field
  final $Res Function(_BackLayerType) _then;
}

/// @nodoc
abstract class _$BackLayerTypeTopCopyWith<$Res> {
  factory _$BackLayerTypeTopCopyWith(
          _BackLayerTypeTop value, $Res Function(_BackLayerTypeTop) then) =
      __$BackLayerTypeTopCopyWithImpl<$Res>;
}

/// @nodoc
class __$BackLayerTypeTopCopyWithImpl<$Res>
    extends __$BackLayerTypeCopyWithImpl<$Res>
    implements _$BackLayerTypeTopCopyWith<$Res> {
  __$BackLayerTypeTopCopyWithImpl(
      _BackLayerTypeTop _value, $Res Function(_BackLayerTypeTop) _then)
      : super(_value, (v) => _then(v as _BackLayerTypeTop));

  @override
  _BackLayerTypeTop get _value => super._value as _BackLayerTypeTop;
}

/// @nodoc

class _$_BackLayerTypeTop implements _BackLayerTypeTop {
  const _$_BackLayerTypeTop();

  @override
  String toString() {
    return '_BackLayerType.top()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _BackLayerTypeTop);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() top,
    required TResult Function() start,
    required TResult Function() end,
    required TResult Function() none,
  }) {
    return top();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? top,
    TResult Function()? start,
    TResult Function()? end,
    TResult Function()? none,
  }) {
    return top?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? top,
    TResult Function()? start,
    TResult Function()? end,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (top != null) {
      return top();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BackLayerTypeTop value) top,
    required TResult Function(_BackLayerTypeStart value) start,
    required TResult Function(_BackLayerTypeEnd value) end,
    required TResult Function(_BackLayerTypeNone value) none,
  }) {
    return top(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BackLayerTypeTop value)? top,
    TResult Function(_BackLayerTypeStart value)? start,
    TResult Function(_BackLayerTypeEnd value)? end,
    TResult Function(_BackLayerTypeNone value)? none,
  }) {
    return top?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BackLayerTypeTop value)? top,
    TResult Function(_BackLayerTypeStart value)? start,
    TResult Function(_BackLayerTypeEnd value)? end,
    TResult Function(_BackLayerTypeNone value)? none,
    required TResult orElse(),
  }) {
    if (top != null) {
      return top(this);
    }
    return orElse();
  }
}

abstract class _BackLayerTypeTop implements _BackLayerType {
  const factory _BackLayerTypeTop() = _$_BackLayerTypeTop;
}

/// @nodoc
abstract class _$BackLayerTypeStartCopyWith<$Res> {
  factory _$BackLayerTypeStartCopyWith(
          _BackLayerTypeStart value, $Res Function(_BackLayerTypeStart) then) =
      __$BackLayerTypeStartCopyWithImpl<$Res>;
}

/// @nodoc
class __$BackLayerTypeStartCopyWithImpl<$Res>
    extends __$BackLayerTypeCopyWithImpl<$Res>
    implements _$BackLayerTypeStartCopyWith<$Res> {
  __$BackLayerTypeStartCopyWithImpl(
      _BackLayerTypeStart _value, $Res Function(_BackLayerTypeStart) _then)
      : super(_value, (v) => _then(v as _BackLayerTypeStart));

  @override
  _BackLayerTypeStart get _value => super._value as _BackLayerTypeStart;
}

/// @nodoc

class _$_BackLayerTypeStart implements _BackLayerTypeStart {
  const _$_BackLayerTypeStart();

  @override
  String toString() {
    return '_BackLayerType.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _BackLayerTypeStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() top,
    required TResult Function() start,
    required TResult Function() end,
    required TResult Function() none,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? top,
    TResult Function()? start,
    TResult Function()? end,
    TResult Function()? none,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? top,
    TResult Function()? start,
    TResult Function()? end,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BackLayerTypeTop value) top,
    required TResult Function(_BackLayerTypeStart value) start,
    required TResult Function(_BackLayerTypeEnd value) end,
    required TResult Function(_BackLayerTypeNone value) none,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BackLayerTypeTop value)? top,
    TResult Function(_BackLayerTypeStart value)? start,
    TResult Function(_BackLayerTypeEnd value)? end,
    TResult Function(_BackLayerTypeNone value)? none,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BackLayerTypeTop value)? top,
    TResult Function(_BackLayerTypeStart value)? start,
    TResult Function(_BackLayerTypeEnd value)? end,
    TResult Function(_BackLayerTypeNone value)? none,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _BackLayerTypeStart implements _BackLayerType {
  const factory _BackLayerTypeStart() = _$_BackLayerTypeStart;
}

/// @nodoc
abstract class _$BackLayerTypeEndCopyWith<$Res> {
  factory _$BackLayerTypeEndCopyWith(
          _BackLayerTypeEnd value, $Res Function(_BackLayerTypeEnd) then) =
      __$BackLayerTypeEndCopyWithImpl<$Res>;
}

/// @nodoc
class __$BackLayerTypeEndCopyWithImpl<$Res>
    extends __$BackLayerTypeCopyWithImpl<$Res>
    implements _$BackLayerTypeEndCopyWith<$Res> {
  __$BackLayerTypeEndCopyWithImpl(
      _BackLayerTypeEnd _value, $Res Function(_BackLayerTypeEnd) _then)
      : super(_value, (v) => _then(v as _BackLayerTypeEnd));

  @override
  _BackLayerTypeEnd get _value => super._value as _BackLayerTypeEnd;
}

/// @nodoc

class _$_BackLayerTypeEnd implements _BackLayerTypeEnd {
  const _$_BackLayerTypeEnd();

  @override
  String toString() {
    return '_BackLayerType.end()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _BackLayerTypeEnd);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() top,
    required TResult Function() start,
    required TResult Function() end,
    required TResult Function() none,
  }) {
    return end();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? top,
    TResult Function()? start,
    TResult Function()? end,
    TResult Function()? none,
  }) {
    return end?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? top,
    TResult Function()? start,
    TResult Function()? end,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (end != null) {
      return end();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BackLayerTypeTop value) top,
    required TResult Function(_BackLayerTypeStart value) start,
    required TResult Function(_BackLayerTypeEnd value) end,
    required TResult Function(_BackLayerTypeNone value) none,
  }) {
    return end(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BackLayerTypeTop value)? top,
    TResult Function(_BackLayerTypeStart value)? start,
    TResult Function(_BackLayerTypeEnd value)? end,
    TResult Function(_BackLayerTypeNone value)? none,
  }) {
    return end?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BackLayerTypeTop value)? top,
    TResult Function(_BackLayerTypeStart value)? start,
    TResult Function(_BackLayerTypeEnd value)? end,
    TResult Function(_BackLayerTypeNone value)? none,
    required TResult orElse(),
  }) {
    if (end != null) {
      return end(this);
    }
    return orElse();
  }
}

abstract class _BackLayerTypeEnd implements _BackLayerType {
  const factory _BackLayerTypeEnd() = _$_BackLayerTypeEnd;
}

/// @nodoc
abstract class _$BackLayerTypeNoneCopyWith<$Res> {
  factory _$BackLayerTypeNoneCopyWith(
          _BackLayerTypeNone value, $Res Function(_BackLayerTypeNone) then) =
      __$BackLayerTypeNoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$BackLayerTypeNoneCopyWithImpl<$Res>
    extends __$BackLayerTypeCopyWithImpl<$Res>
    implements _$BackLayerTypeNoneCopyWith<$Res> {
  __$BackLayerTypeNoneCopyWithImpl(
      _BackLayerTypeNone _value, $Res Function(_BackLayerTypeNone) _then)
      : super(_value, (v) => _then(v as _BackLayerTypeNone));

  @override
  _BackLayerTypeNone get _value => super._value as _BackLayerTypeNone;
}

/// @nodoc

class _$_BackLayerTypeNone implements _BackLayerTypeNone {
  const _$_BackLayerTypeNone();

  @override
  String toString() {
    return '_BackLayerType.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _BackLayerTypeNone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() top,
    required TResult Function() start,
    required TResult Function() end,
    required TResult Function() none,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? top,
    TResult Function()? start,
    TResult Function()? end,
    TResult Function()? none,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? top,
    TResult Function()? start,
    TResult Function()? end,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BackLayerTypeTop value) top,
    required TResult Function(_BackLayerTypeStart value) start,
    required TResult Function(_BackLayerTypeEnd value) end,
    required TResult Function(_BackLayerTypeNone value) none,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BackLayerTypeTop value)? top,
    TResult Function(_BackLayerTypeStart value)? start,
    TResult Function(_BackLayerTypeEnd value)? end,
    TResult Function(_BackLayerTypeNone value)? none,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BackLayerTypeTop value)? top,
    TResult Function(_BackLayerTypeStart value)? start,
    TResult Function(_BackLayerTypeEnd value)? end,
    TResult Function(_BackLayerTypeNone value)? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class _BackLayerTypeNone implements _BackLayerType {
  const factory _BackLayerTypeNone() = _$_BackLayerTypeNone;
}

/// @nodoc
class _$_AppBarStateTearOff {
  const _$_AppBarStateTearOff();

  _AppBarStateNormal normal() {
    return const _AppBarStateNormal();
  }

  _AppBarStateContextual contextual(int itemsCount) {
    return _AppBarStateContextual(
      itemsCount,
    );
  }
}

/// @nodoc
const _$AppBarState = _$_AppBarStateTearOff();

/// @nodoc
mixin _$_AppBarState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() normal,
    required TResult Function(int itemsCount) contextual,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? normal,
    TResult Function(int itemsCount)? contextual,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? normal,
    TResult Function(int itemsCount)? contextual,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppBarStateNormal value) normal,
    required TResult Function(_AppBarStateContextual value) contextual,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppBarStateNormal value)? normal,
    TResult Function(_AppBarStateContextual value)? contextual,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppBarStateNormal value)? normal,
    TResult Function(_AppBarStateContextual value)? contextual,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AppBarStateCopyWith<$Res> {
  factory _$AppBarStateCopyWith(
          _AppBarState value, $Res Function(_AppBarState) then) =
      __$AppBarStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$AppBarStateCopyWithImpl<$Res> implements _$AppBarStateCopyWith<$Res> {
  __$AppBarStateCopyWithImpl(this._value, this._then);

  final _AppBarState _value;
  // ignore: unused_field
  final $Res Function(_AppBarState) _then;
}

/// @nodoc
abstract class _$AppBarStateNormalCopyWith<$Res> {
  factory _$AppBarStateNormalCopyWith(
          _AppBarStateNormal value, $Res Function(_AppBarStateNormal) then) =
      __$AppBarStateNormalCopyWithImpl<$Res>;
}

/// @nodoc
class __$AppBarStateNormalCopyWithImpl<$Res>
    extends __$AppBarStateCopyWithImpl<$Res>
    implements _$AppBarStateNormalCopyWith<$Res> {
  __$AppBarStateNormalCopyWithImpl(
      _AppBarStateNormal _value, $Res Function(_AppBarStateNormal) _then)
      : super(_value, (v) => _then(v as _AppBarStateNormal));

  @override
  _AppBarStateNormal get _value => super._value as _AppBarStateNormal;
}

/// @nodoc

class _$_AppBarStateNormal implements _AppBarStateNormal {
  const _$_AppBarStateNormal();

  @override
  String toString() {
    return '_AppBarState.normal()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AppBarStateNormal);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() normal,
    required TResult Function(int itemsCount) contextual,
  }) {
    return normal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? normal,
    TResult Function(int itemsCount)? contextual,
  }) {
    return normal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? normal,
    TResult Function(int itemsCount)? contextual,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppBarStateNormal value) normal,
    required TResult Function(_AppBarStateContextual value) contextual,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppBarStateNormal value)? normal,
    TResult Function(_AppBarStateContextual value)? contextual,
  }) {
    return normal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppBarStateNormal value)? normal,
    TResult Function(_AppBarStateContextual value)? contextual,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(this);
    }
    return orElse();
  }
}

abstract class _AppBarStateNormal implements _AppBarState {
  const factory _AppBarStateNormal() = _$_AppBarStateNormal;
}

/// @nodoc
abstract class _$AppBarStateContextualCopyWith<$Res> {
  factory _$AppBarStateContextualCopyWith(_AppBarStateContextual value,
          $Res Function(_AppBarStateContextual) then) =
      __$AppBarStateContextualCopyWithImpl<$Res>;
  $Res call({int itemsCount});
}

/// @nodoc
class __$AppBarStateContextualCopyWithImpl<$Res>
    extends __$AppBarStateCopyWithImpl<$Res>
    implements _$AppBarStateContextualCopyWith<$Res> {
  __$AppBarStateContextualCopyWithImpl(_AppBarStateContextual _value,
      $Res Function(_AppBarStateContextual) _then)
      : super(_value, (v) => _then(v as _AppBarStateContextual));

  @override
  _AppBarStateContextual get _value => super._value as _AppBarStateContextual;

  @override
  $Res call({
    Object? itemsCount = freezed,
  }) {
    return _then(_AppBarStateContextual(
      itemsCount == freezed
          ? _value.itemsCount
          : itemsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AppBarStateContextual implements _AppBarStateContextual {
  const _$_AppBarStateContextual(this.itemsCount);

  @override
  final int itemsCount;

  @override
  String toString() {
    return '_AppBarState.contextual(itemsCount: $itemsCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppBarStateContextual &&
            (identical(other.itemsCount, itemsCount) ||
                const DeepCollectionEquality()
                    .equals(other.itemsCount, itemsCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemsCount);

  @JsonKey(ignore: true)
  @override
  _$AppBarStateContextualCopyWith<_AppBarStateContextual> get copyWith =>
      __$AppBarStateContextualCopyWithImpl<_AppBarStateContextual>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() normal,
    required TResult Function(int itemsCount) contextual,
  }) {
    return contextual(itemsCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? normal,
    TResult Function(int itemsCount)? contextual,
  }) {
    return contextual?.call(itemsCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? normal,
    TResult Function(int itemsCount)? contextual,
    required TResult orElse(),
  }) {
    if (contextual != null) {
      return contextual(itemsCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppBarStateNormal value) normal,
    required TResult Function(_AppBarStateContextual value) contextual,
  }) {
    return contextual(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppBarStateNormal value)? normal,
    TResult Function(_AppBarStateContextual value)? contextual,
  }) {
    return contextual?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppBarStateNormal value)? normal,
    TResult Function(_AppBarStateContextual value)? contextual,
    required TResult orElse(),
  }) {
    if (contextual != null) {
      return contextual(this);
    }
    return orElse();
  }
}

abstract class _AppBarStateContextual implements _AppBarState {
  const factory _AppBarStateContextual(int itemsCount) =
      _$_AppBarStateContextual;

  int get itemsCount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AppBarStateContextualCopyWith<_AppBarStateContextual> get copyWith =>
      throw _privateConstructorUsedError;
}
