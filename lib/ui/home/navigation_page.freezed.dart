// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PageId {
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageIdCopyWith<PageId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageIdCopyWith<$Res> {
  factory $PageIdCopyWith(PageId value, $Res Function(PageId) then) =
      _$PageIdCopyWithImpl<$Res, PageId>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$PageIdCopyWithImpl<$Res, $Val extends PageId>
    implements $PageIdCopyWith<$Res> {
  _$PageIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageIdImplCopyWith<$Res> implements $PageIdCopyWith<$Res> {
  factory _$$PageIdImplCopyWith(
          _$PageIdImpl value, $Res Function(_$PageIdImpl) then) =
      __$$PageIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$PageIdImplCopyWithImpl<$Res>
    extends _$PageIdCopyWithImpl<$Res, _$PageIdImpl>
    implements _$$PageIdImplCopyWith<$Res> {
  __$$PageIdImplCopyWithImpl(
      _$PageIdImpl _value, $Res Function(_$PageIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$PageIdImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PageIdImpl implements _PageId {
  const _$PageIdImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'PageId(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageIdImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageIdImplCopyWith<_$PageIdImpl> get copyWith =>
      __$$PageIdImplCopyWithImpl<_$PageIdImpl>(this, _$identity);
}

abstract class _PageId implements PageId {
  const factory _PageId(final String id) = _$PageIdImpl;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$PageIdImplCopyWith<_$PageIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PageInfo {
  PageId get id => throw _privateConstructorUsedError;
  Widget get page => throw _privateConstructorUsedError;
  SheetInfo? get sheetInfo => throw _privateConstructorUsedError;
  Widget? get appBarTitle => throw _privateConstructorUsedError;
  double? get appBarTitleSpacing => throw _privateConstructorUsedError;
  VoidCallback? get onContextualAppBarClosed =>
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
      _$PageInfoCopyWithImpl<$Res, PageInfo>;
  @useResult
  $Res call(
      {PageId id,
      Widget page,
      SheetInfo? sheetInfo,
      Widget? appBarTitle,
      double? appBarTitleSpacing,
      VoidCallback? onContextualAppBarClosed,
      List<Widget>? contextualActions,
      List<Widget>? actions});

  $PageIdCopyWith<$Res> get id;
  $SheetInfoCopyWith<$Res>? get sheetInfo;
}

/// @nodoc
class _$PageInfoCopyWithImpl<$Res, $Val extends PageInfo>
    implements $PageInfoCopyWith<$Res> {
  _$PageInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? page = null,
    Object? sheetInfo = freezed,
    Object? appBarTitle = freezed,
    Object? appBarTitleSpacing = freezed,
    Object? onContextualAppBarClosed = freezed,
    Object? contextualActions = freezed,
    Object? actions = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as PageId,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as Widget,
      sheetInfo: freezed == sheetInfo
          ? _value.sheetInfo
          : sheetInfo // ignore: cast_nullable_to_non_nullable
              as SheetInfo?,
      appBarTitle: freezed == appBarTitle
          ? _value.appBarTitle
          : appBarTitle // ignore: cast_nullable_to_non_nullable
              as Widget?,
      appBarTitleSpacing: freezed == appBarTitleSpacing
          ? _value.appBarTitleSpacing
          : appBarTitleSpacing // ignore: cast_nullable_to_non_nullable
              as double?,
      onContextualAppBarClosed: freezed == onContextualAppBarClosed
          ? _value.onContextualAppBarClosed
          : onContextualAppBarClosed // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
      contextualActions: freezed == contextualActions
          ? _value.contextualActions
          : contextualActions // ignore: cast_nullable_to_non_nullable
              as List<Widget>?,
      actions: freezed == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<Widget>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PageIdCopyWith<$Res> get id {
    return $PageIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SheetInfoCopyWith<$Res>? get sheetInfo {
    if (_value.sheetInfo == null) {
      return null;
    }

    return $SheetInfoCopyWith<$Res>(_value.sheetInfo!, (value) {
      return _then(_value.copyWith(sheetInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PageInfoImplCopyWith<$Res>
    implements $PageInfoCopyWith<$Res> {
  factory _$$PageInfoImplCopyWith(
          _$PageInfoImpl value, $Res Function(_$PageInfoImpl) then) =
      __$$PageInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageId id,
      Widget page,
      SheetInfo? sheetInfo,
      Widget? appBarTitle,
      double? appBarTitleSpacing,
      VoidCallback? onContextualAppBarClosed,
      List<Widget>? contextualActions,
      List<Widget>? actions});

  @override
  $PageIdCopyWith<$Res> get id;
  @override
  $SheetInfoCopyWith<$Res>? get sheetInfo;
}

/// @nodoc
class __$$PageInfoImplCopyWithImpl<$Res>
    extends _$PageInfoCopyWithImpl<$Res, _$PageInfoImpl>
    implements _$$PageInfoImplCopyWith<$Res> {
  __$$PageInfoImplCopyWithImpl(
      _$PageInfoImpl _value, $Res Function(_$PageInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? page = null,
    Object? sheetInfo = freezed,
    Object? appBarTitle = freezed,
    Object? appBarTitleSpacing = freezed,
    Object? onContextualAppBarClosed = freezed,
    Object? contextualActions = freezed,
    Object? actions = freezed,
  }) {
    return _then(_$PageInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as PageId,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as Widget,
      sheetInfo: freezed == sheetInfo
          ? _value.sheetInfo
          : sheetInfo // ignore: cast_nullable_to_non_nullable
              as SheetInfo?,
      appBarTitle: freezed == appBarTitle
          ? _value.appBarTitle
          : appBarTitle // ignore: cast_nullable_to_non_nullable
              as Widget?,
      appBarTitleSpacing: freezed == appBarTitleSpacing
          ? _value.appBarTitleSpacing
          : appBarTitleSpacing // ignore: cast_nullable_to_non_nullable
              as double?,
      onContextualAppBarClosed: freezed == onContextualAppBarClosed
          ? _value.onContextualAppBarClosed
          : onContextualAppBarClosed // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
      contextualActions: freezed == contextualActions
          ? _value._contextualActions
          : contextualActions // ignore: cast_nullable_to_non_nullable
              as List<Widget>?,
      actions: freezed == actions
          ? _value._actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<Widget>?,
    ));
  }
}

/// @nodoc

class _$PageInfoImpl implements _PageInfo {
  const _$PageInfoImpl(
      {required this.id,
      required this.page,
      this.sheetInfo,
      this.appBarTitle,
      this.appBarTitleSpacing,
      this.onContextualAppBarClosed,
      final List<Widget>? contextualActions,
      final List<Widget>? actions})
      : _contextualActions = contextualActions,
        _actions = actions;

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
  final VoidCallback? onContextualAppBarClosed;
  final List<Widget>? _contextualActions;
  @override
  List<Widget>? get contextualActions {
    final value = _contextualActions;
    if (value == null) return null;
    if (_contextualActions is EqualUnmodifiableListView)
      return _contextualActions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Widget>? _actions;
  @override
  List<Widget>? get actions {
    final value = _actions;
    if (value == null) return null;
    if (_actions is EqualUnmodifiableListView) return _actions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PageInfo(id: $id, page: $page, sheetInfo: $sheetInfo, appBarTitle: $appBarTitle, appBarTitleSpacing: $appBarTitleSpacing, onContextualAppBarClosed: $onContextualAppBarClosed, contextualActions: $contextualActions, actions: $actions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.sheetInfo, sheetInfo) ||
                other.sheetInfo == sheetInfo) &&
            (identical(other.appBarTitle, appBarTitle) ||
                other.appBarTitle == appBarTitle) &&
            (identical(other.appBarTitleSpacing, appBarTitleSpacing) ||
                other.appBarTitleSpacing == appBarTitleSpacing) &&
            (identical(
                    other.onContextualAppBarClosed, onContextualAppBarClosed) ||
                other.onContextualAppBarClosed == onContextualAppBarClosed) &&
            const DeepCollectionEquality()
                .equals(other._contextualActions, _contextualActions) &&
            const DeepCollectionEquality().equals(other._actions, _actions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      page,
      sheetInfo,
      appBarTitle,
      appBarTitleSpacing,
      onContextualAppBarClosed,
      const DeepCollectionEquality().hash(_contextualActions),
      const DeepCollectionEquality().hash(_actions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageInfoImplCopyWith<_$PageInfoImpl> get copyWith =>
      __$$PageInfoImplCopyWithImpl<_$PageInfoImpl>(this, _$identity);
}

abstract class _PageInfo implements PageInfo {
  const factory _PageInfo(
      {required final PageId id,
      required final Widget page,
      final SheetInfo? sheetInfo,
      final Widget? appBarTitle,
      final double? appBarTitleSpacing,
      final VoidCallback? onContextualAppBarClosed,
      final List<Widget>? contextualActions,
      final List<Widget>? actions}) = _$PageInfoImpl;

  @override
  PageId get id;
  @override
  Widget get page;
  @override
  SheetInfo? get sheetInfo;
  @override
  Widget? get appBarTitle;
  @override
  double? get appBarTitleSpacing;
  @override
  VoidCallback? get onContextualAppBarClosed;
  @override
  List<Widget>? get contextualActions;
  @override
  List<Widget>? get actions;
  @override
  @JsonKey(ignore: true)
  _$$PageInfoImplCopyWith<_$PageInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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
      _$SheetInfoCopyWithImpl<$Res, SheetInfo>;
  @useResult
  $Res call(
      {String name, Widget sheet, IconData toggleIcon, Widget? appBarTitle});
}

/// @nodoc
class _$SheetInfoCopyWithImpl<$Res, $Val extends SheetInfo>
    implements $SheetInfoCopyWith<$Res> {
  _$SheetInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? sheet = null,
    Object? toggleIcon = null,
    Object? appBarTitle = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sheet: null == sheet
          ? _value.sheet
          : sheet // ignore: cast_nullable_to_non_nullable
              as Widget,
      toggleIcon: null == toggleIcon
          ? _value.toggleIcon
          : toggleIcon // ignore: cast_nullable_to_non_nullable
              as IconData,
      appBarTitle: freezed == appBarTitle
          ? _value.appBarTitle
          : appBarTitle // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SheetInfoImplCopyWith<$Res>
    implements $SheetInfoCopyWith<$Res> {
  factory _$$SheetInfoImplCopyWith(
          _$SheetInfoImpl value, $Res Function(_$SheetInfoImpl) then) =
      __$$SheetInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, Widget sheet, IconData toggleIcon, Widget? appBarTitle});
}

/// @nodoc
class __$$SheetInfoImplCopyWithImpl<$Res>
    extends _$SheetInfoCopyWithImpl<$Res, _$SheetInfoImpl>
    implements _$$SheetInfoImplCopyWith<$Res> {
  __$$SheetInfoImplCopyWithImpl(
      _$SheetInfoImpl _value, $Res Function(_$SheetInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? sheet = null,
    Object? toggleIcon = null,
    Object? appBarTitle = freezed,
  }) {
    return _then(_$SheetInfoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sheet: null == sheet
          ? _value.sheet
          : sheet // ignore: cast_nullable_to_non_nullable
              as Widget,
      toggleIcon: null == toggleIcon
          ? _value.toggleIcon
          : toggleIcon // ignore: cast_nullable_to_non_nullable
              as IconData,
      appBarTitle: freezed == appBarTitle
          ? _value.appBarTitle
          : appBarTitle // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ));
  }
}

/// @nodoc

class _$SheetInfoImpl implements _SheetInfo {
  const _$SheetInfoImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SheetInfoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sheet, sheet) || other.sheet == sheet) &&
            (identical(other.toggleIcon, toggleIcon) ||
                other.toggleIcon == toggleIcon) &&
            (identical(other.appBarTitle, appBarTitle) ||
                other.appBarTitle == appBarTitle));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, sheet, toggleIcon, appBarTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SheetInfoImplCopyWith<_$SheetInfoImpl> get copyWith =>
      __$$SheetInfoImplCopyWithImpl<_$SheetInfoImpl>(this, _$identity);
}

abstract class _SheetInfo implements SheetInfo {
  const factory _SheetInfo(
      {required final String name,
      required final Widget sheet,
      required final IconData toggleIcon,
      final Widget? appBarTitle}) = _$SheetInfoImpl;

  @override
  String get name;
  @override
  Widget get sheet;
  @override
  IconData get toggleIcon;
  @override
  Widget? get appBarTitle;
  @override
  @JsonKey(ignore: true)
  _$$SheetInfoImplCopyWith<_$SheetInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NavItem {
  String get name => throw _privateConstructorUsedError;
  Widget get icon => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, Widget icon, PageInfo pageInfo) page,
    required TResult Function(String name, Widget icon, VoidCallback onPressed)
        action,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, Widget icon, PageInfo pageInfo)? page,
    TResult? Function(String name, Widget icon, VoidCallback onPressed)? action,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, Widget icon, PageInfo pageInfo)? page,
    TResult Function(String name, Widget icon, VoidCallback onPressed)? action,
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
    TResult? Function(_NavItem value)? page,
    TResult? Function(_NavItemAction value)? action,
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
      _$NavItemCopyWithImpl<$Res, NavItem>;
  @useResult
  $Res call({String name, Widget icon});
}

/// @nodoc
class _$NavItemCopyWithImpl<$Res, $Val extends NavItem>
    implements $NavItemCopyWith<$Res> {
  _$NavItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NavItemImplCopyWith<$Res> implements $NavItemCopyWith<$Res> {
  factory _$$NavItemImplCopyWith(
          _$NavItemImpl value, $Res Function(_$NavItemImpl) then) =
      __$$NavItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Widget icon, PageInfo pageInfo});

  $PageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class __$$NavItemImplCopyWithImpl<$Res>
    extends _$NavItemCopyWithImpl<$Res, _$NavItemImpl>
    implements _$$NavItemImplCopyWith<$Res> {
  __$$NavItemImplCopyWithImpl(
      _$NavItemImpl _value, $Res Function(_$NavItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? icon = null,
    Object? pageInfo = null,
  }) {
    return _then(_$NavItemImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget,
      pageInfo: null == pageInfo
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PageInfoCopyWith<$Res> get pageInfo {
    return $PageInfoCopyWith<$Res>(_value.pageInfo, (value) {
      return _then(_value.copyWith(pageInfo: value));
    });
  }
}

/// @nodoc

class _$NavItemImpl implements _NavItem {
  const _$NavItemImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavItemImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.pageInfo, pageInfo) ||
                other.pageInfo == pageInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, icon, pageInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavItemImplCopyWith<_$NavItemImpl> get copyWith =>
      __$$NavItemImplCopyWithImpl<_$NavItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, Widget icon, PageInfo pageInfo) page,
    required TResult Function(String name, Widget icon, VoidCallback onPressed)
        action,
  }) {
    return page(name, icon, pageInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, Widget icon, PageInfo pageInfo)? page,
    TResult? Function(String name, Widget icon, VoidCallback onPressed)? action,
  }) {
    return page?.call(name, icon, pageInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, Widget icon, PageInfo pageInfo)? page,
    TResult Function(String name, Widget icon, VoidCallback onPressed)? action,
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
    TResult? Function(_NavItem value)? page,
    TResult? Function(_NavItemAction value)? action,
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
      {required final String name,
      required final Widget icon,
      required final PageInfo pageInfo}) = _$NavItemImpl;

  @override
  String get name;
  @override
  Widget get icon;
  PageInfo get pageInfo;
  @override
  @JsonKey(ignore: true)
  _$$NavItemImplCopyWith<_$NavItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NavItemActionImplCopyWith<$Res>
    implements $NavItemCopyWith<$Res> {
  factory _$$NavItemActionImplCopyWith(
          _$NavItemActionImpl value, $Res Function(_$NavItemActionImpl) then) =
      __$$NavItemActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Widget icon, VoidCallback onPressed});
}

/// @nodoc
class __$$NavItemActionImplCopyWithImpl<$Res>
    extends _$NavItemCopyWithImpl<$Res, _$NavItemActionImpl>
    implements _$$NavItemActionImplCopyWith<$Res> {
  __$$NavItemActionImplCopyWithImpl(
      _$NavItemActionImpl _value, $Res Function(_$NavItemActionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? icon = null,
    Object? onPressed = null,
  }) {
    return _then(_$NavItemActionImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget,
      onPressed: null == onPressed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$NavItemActionImpl implements _NavItemAction {
  const _$NavItemActionImpl(
      {required this.name, required this.icon, required this.onPressed});

  @override
  final String name;
  @override
  final Widget icon;
  @override
  final VoidCallback onPressed;

  @override
  String toString() {
    return 'NavItem.action(name: $name, icon: $icon, onPressed: $onPressed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavItemActionImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, icon, onPressed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavItemActionImplCopyWith<_$NavItemActionImpl> get copyWith =>
      __$$NavItemActionImplCopyWithImpl<_$NavItemActionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, Widget icon, PageInfo pageInfo) page,
    required TResult Function(String name, Widget icon, VoidCallback onPressed)
        action,
  }) {
    return action(name, icon, onPressed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, Widget icon, PageInfo pageInfo)? page,
    TResult? Function(String name, Widget icon, VoidCallback onPressed)? action,
  }) {
    return action?.call(name, icon, onPressed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, Widget icon, PageInfo pageInfo)? page,
    TResult Function(String name, Widget icon, VoidCallback onPressed)? action,
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
    TResult? Function(_NavItem value)? page,
    TResult? Function(_NavItemAction value)? action,
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
      {required final String name,
      required final Widget icon,
      required final VoidCallback onPressed}) = _$NavItemActionImpl;

  @override
  String get name;
  @override
  Widget get icon;
  VoidCallback get onPressed;
  @override
  @JsonKey(ignore: true)
  _$$NavItemActionImplCopyWith<_$NavItemActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BackdropContentType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() drawer,
    required TResult Function() sheet,
    required TResult Function() none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? drawer,
    TResult? Function()? sheet,
    TResult? Function()? none,
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
    TResult? Function(_BackdropContentTypeDrawer value)? drawer,
    TResult? Function(_BackdropContentTypeSheet value)? sheet,
    TResult? Function(_BackdropContentTypeNone value)? none,
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
      __$BackdropContentTypeCopyWithImpl<$Res, _BackdropContentType>;
}

/// @nodoc
class __$BackdropContentTypeCopyWithImpl<$Res,
        $Val extends _BackdropContentType>
    implements _$BackdropContentTypeCopyWith<$Res> {
  __$BackdropContentTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BackdropContentTypeDrawerImplCopyWith<$Res> {
  factory _$$BackdropContentTypeDrawerImplCopyWith(
          _$BackdropContentTypeDrawerImpl value,
          $Res Function(_$BackdropContentTypeDrawerImpl) then) =
      __$$BackdropContentTypeDrawerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BackdropContentTypeDrawerImplCopyWithImpl<$Res>
    extends __$BackdropContentTypeCopyWithImpl<$Res,
        _$BackdropContentTypeDrawerImpl>
    implements _$$BackdropContentTypeDrawerImplCopyWith<$Res> {
  __$$BackdropContentTypeDrawerImplCopyWithImpl(
      _$BackdropContentTypeDrawerImpl _value,
      $Res Function(_$BackdropContentTypeDrawerImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BackdropContentTypeDrawerImpl implements _BackdropContentTypeDrawer {
  const _$BackdropContentTypeDrawerImpl();

  @override
  String toString() {
    return '_BackdropContentType.drawer()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BackdropContentTypeDrawerImpl);
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
    TResult? Function()? drawer,
    TResult? Function()? sheet,
    TResult? Function()? none,
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
    TResult? Function(_BackdropContentTypeDrawer value)? drawer,
    TResult? Function(_BackdropContentTypeSheet value)? sheet,
    TResult? Function(_BackdropContentTypeNone value)? none,
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
  const factory _BackdropContentTypeDrawer() = _$BackdropContentTypeDrawerImpl;
}

/// @nodoc
abstract class _$$BackdropContentTypeSheetImplCopyWith<$Res> {
  factory _$$BackdropContentTypeSheetImplCopyWith(
          _$BackdropContentTypeSheetImpl value,
          $Res Function(_$BackdropContentTypeSheetImpl) then) =
      __$$BackdropContentTypeSheetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BackdropContentTypeSheetImplCopyWithImpl<$Res>
    extends __$BackdropContentTypeCopyWithImpl<$Res,
        _$BackdropContentTypeSheetImpl>
    implements _$$BackdropContentTypeSheetImplCopyWith<$Res> {
  __$$BackdropContentTypeSheetImplCopyWithImpl(
      _$BackdropContentTypeSheetImpl _value,
      $Res Function(_$BackdropContentTypeSheetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BackdropContentTypeSheetImpl implements _BackdropContentTypeSheet {
  const _$BackdropContentTypeSheetImpl();

  @override
  String toString() {
    return '_BackdropContentType.sheet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BackdropContentTypeSheetImpl);
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
    TResult? Function()? drawer,
    TResult? Function()? sheet,
    TResult? Function()? none,
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
    TResult? Function(_BackdropContentTypeDrawer value)? drawer,
    TResult? Function(_BackdropContentTypeSheet value)? sheet,
    TResult? Function(_BackdropContentTypeNone value)? none,
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
  const factory _BackdropContentTypeSheet() = _$BackdropContentTypeSheetImpl;
}

/// @nodoc
abstract class _$$BackdropContentTypeNoneImplCopyWith<$Res> {
  factory _$$BackdropContentTypeNoneImplCopyWith(
          _$BackdropContentTypeNoneImpl value,
          $Res Function(_$BackdropContentTypeNoneImpl) then) =
      __$$BackdropContentTypeNoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BackdropContentTypeNoneImplCopyWithImpl<$Res>
    extends __$BackdropContentTypeCopyWithImpl<$Res,
        _$BackdropContentTypeNoneImpl>
    implements _$$BackdropContentTypeNoneImplCopyWith<$Res> {
  __$$BackdropContentTypeNoneImplCopyWithImpl(
      _$BackdropContentTypeNoneImpl _value,
      $Res Function(_$BackdropContentTypeNoneImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BackdropContentTypeNoneImpl implements _BackdropContentTypeNone {
  const _$BackdropContentTypeNoneImpl();

  @override
  String toString() {
    return '_BackdropContentType.none()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BackdropContentTypeNoneImpl);
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
    TResult? Function()? drawer,
    TResult? Function()? sheet,
    TResult? Function()? none,
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
    TResult? Function(_BackdropContentTypeDrawer value)? drawer,
    TResult? Function(_BackdropContentTypeSheet value)? sheet,
    TResult? Function(_BackdropContentTypeNone value)? none,
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
  const factory _BackdropContentTypeNone() = _$BackdropContentTypeNoneImpl;
}

/// @nodoc
mixin _$BackLayerType {
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
    TResult? Function()? top,
    TResult? Function()? start,
    TResult? Function()? end,
    TResult? Function()? none,
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
    TResult? Function(_BackLayerTypeTop value)? top,
    TResult? Function(_BackLayerTypeStart value)? start,
    TResult? Function(_BackLayerTypeEnd value)? end,
    TResult? Function(_BackLayerTypeNone value)? none,
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
      __$BackLayerTypeCopyWithImpl<$Res, _BackLayerType>;
}

/// @nodoc
class __$BackLayerTypeCopyWithImpl<$Res, $Val extends _BackLayerType>
    implements _$BackLayerTypeCopyWith<$Res> {
  __$BackLayerTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BackLayerTypeTopImplCopyWith<$Res> {
  factory _$$BackLayerTypeTopImplCopyWith(_$BackLayerTypeTopImpl value,
          $Res Function(_$BackLayerTypeTopImpl) then) =
      __$$BackLayerTypeTopImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BackLayerTypeTopImplCopyWithImpl<$Res>
    extends __$BackLayerTypeCopyWithImpl<$Res, _$BackLayerTypeTopImpl>
    implements _$$BackLayerTypeTopImplCopyWith<$Res> {
  __$$BackLayerTypeTopImplCopyWithImpl(_$BackLayerTypeTopImpl _value,
      $Res Function(_$BackLayerTypeTopImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BackLayerTypeTopImpl implements _BackLayerTypeTop {
  const _$BackLayerTypeTopImpl();

  @override
  String toString() {
    return '_BackLayerType.top()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BackLayerTypeTopImpl);
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
    TResult? Function()? top,
    TResult? Function()? start,
    TResult? Function()? end,
    TResult? Function()? none,
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
    TResult? Function(_BackLayerTypeTop value)? top,
    TResult? Function(_BackLayerTypeStart value)? start,
    TResult? Function(_BackLayerTypeEnd value)? end,
    TResult? Function(_BackLayerTypeNone value)? none,
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
  const factory _BackLayerTypeTop() = _$BackLayerTypeTopImpl;
}

/// @nodoc
abstract class _$$BackLayerTypeStartImplCopyWith<$Res> {
  factory _$$BackLayerTypeStartImplCopyWith(_$BackLayerTypeStartImpl value,
          $Res Function(_$BackLayerTypeStartImpl) then) =
      __$$BackLayerTypeStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BackLayerTypeStartImplCopyWithImpl<$Res>
    extends __$BackLayerTypeCopyWithImpl<$Res, _$BackLayerTypeStartImpl>
    implements _$$BackLayerTypeStartImplCopyWith<$Res> {
  __$$BackLayerTypeStartImplCopyWithImpl(_$BackLayerTypeStartImpl _value,
      $Res Function(_$BackLayerTypeStartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BackLayerTypeStartImpl implements _BackLayerTypeStart {
  const _$BackLayerTypeStartImpl();

  @override
  String toString() {
    return '_BackLayerType.start()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BackLayerTypeStartImpl);
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
    TResult? Function()? top,
    TResult? Function()? start,
    TResult? Function()? end,
    TResult? Function()? none,
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
    TResult? Function(_BackLayerTypeTop value)? top,
    TResult? Function(_BackLayerTypeStart value)? start,
    TResult? Function(_BackLayerTypeEnd value)? end,
    TResult? Function(_BackLayerTypeNone value)? none,
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
  const factory _BackLayerTypeStart() = _$BackLayerTypeStartImpl;
}

/// @nodoc
abstract class _$$BackLayerTypeEndImplCopyWith<$Res> {
  factory _$$BackLayerTypeEndImplCopyWith(_$BackLayerTypeEndImpl value,
          $Res Function(_$BackLayerTypeEndImpl) then) =
      __$$BackLayerTypeEndImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BackLayerTypeEndImplCopyWithImpl<$Res>
    extends __$BackLayerTypeCopyWithImpl<$Res, _$BackLayerTypeEndImpl>
    implements _$$BackLayerTypeEndImplCopyWith<$Res> {
  __$$BackLayerTypeEndImplCopyWithImpl(_$BackLayerTypeEndImpl _value,
      $Res Function(_$BackLayerTypeEndImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BackLayerTypeEndImpl implements _BackLayerTypeEnd {
  const _$BackLayerTypeEndImpl();

  @override
  String toString() {
    return '_BackLayerType.end()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BackLayerTypeEndImpl);
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
    TResult? Function()? top,
    TResult? Function()? start,
    TResult? Function()? end,
    TResult? Function()? none,
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
    TResult? Function(_BackLayerTypeTop value)? top,
    TResult? Function(_BackLayerTypeStart value)? start,
    TResult? Function(_BackLayerTypeEnd value)? end,
    TResult? Function(_BackLayerTypeNone value)? none,
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
  const factory _BackLayerTypeEnd() = _$BackLayerTypeEndImpl;
}

/// @nodoc
abstract class _$$BackLayerTypeNoneImplCopyWith<$Res> {
  factory _$$BackLayerTypeNoneImplCopyWith(_$BackLayerTypeNoneImpl value,
          $Res Function(_$BackLayerTypeNoneImpl) then) =
      __$$BackLayerTypeNoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BackLayerTypeNoneImplCopyWithImpl<$Res>
    extends __$BackLayerTypeCopyWithImpl<$Res, _$BackLayerTypeNoneImpl>
    implements _$$BackLayerTypeNoneImplCopyWith<$Res> {
  __$$BackLayerTypeNoneImplCopyWithImpl(_$BackLayerTypeNoneImpl _value,
      $Res Function(_$BackLayerTypeNoneImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BackLayerTypeNoneImpl implements _BackLayerTypeNone {
  const _$BackLayerTypeNoneImpl();

  @override
  String toString() {
    return '_BackLayerType.none()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BackLayerTypeNoneImpl);
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
    TResult? Function()? top,
    TResult? Function()? start,
    TResult? Function()? end,
    TResult? Function()? none,
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
    TResult? Function(_BackLayerTypeTop value)? top,
    TResult? Function(_BackLayerTypeStart value)? start,
    TResult? Function(_BackLayerTypeEnd value)? end,
    TResult? Function(_BackLayerTypeNone value)? none,
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
  const factory _BackLayerTypeNone() = _$BackLayerTypeNoneImpl;
}

/// @nodoc
mixin _$AppBarState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() normal,
    required TResult Function(int itemsCount) contextual,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? normal,
    TResult? Function(int itemsCount)? contextual,
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
    TResult? Function(_AppBarStateNormal value)? normal,
    TResult? Function(_AppBarStateContextual value)? contextual,
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
      __$AppBarStateCopyWithImpl<$Res, _AppBarState>;
}

/// @nodoc
class __$AppBarStateCopyWithImpl<$Res, $Val extends _AppBarState>
    implements _$AppBarStateCopyWith<$Res> {
  __$AppBarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppBarStateNormalImplCopyWith<$Res> {
  factory _$$AppBarStateNormalImplCopyWith(_$AppBarStateNormalImpl value,
          $Res Function(_$AppBarStateNormalImpl) then) =
      __$$AppBarStateNormalImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppBarStateNormalImplCopyWithImpl<$Res>
    extends __$AppBarStateCopyWithImpl<$Res, _$AppBarStateNormalImpl>
    implements _$$AppBarStateNormalImplCopyWith<$Res> {
  __$$AppBarStateNormalImplCopyWithImpl(_$AppBarStateNormalImpl _value,
      $Res Function(_$AppBarStateNormalImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppBarStateNormalImpl implements _AppBarStateNormal {
  const _$AppBarStateNormalImpl();

  @override
  String toString() {
    return '_AppBarState.normal()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppBarStateNormalImpl);
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
    TResult? Function()? normal,
    TResult? Function(int itemsCount)? contextual,
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
    TResult? Function(_AppBarStateNormal value)? normal,
    TResult? Function(_AppBarStateContextual value)? contextual,
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
  const factory _AppBarStateNormal() = _$AppBarStateNormalImpl;
}

/// @nodoc
abstract class _$$AppBarStateContextualImplCopyWith<$Res> {
  factory _$$AppBarStateContextualImplCopyWith(
          _$AppBarStateContextualImpl value,
          $Res Function(_$AppBarStateContextualImpl) then) =
      __$$AppBarStateContextualImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int itemsCount});
}

/// @nodoc
class __$$AppBarStateContextualImplCopyWithImpl<$Res>
    extends __$AppBarStateCopyWithImpl<$Res, _$AppBarStateContextualImpl>
    implements _$$AppBarStateContextualImplCopyWith<$Res> {
  __$$AppBarStateContextualImplCopyWithImpl(_$AppBarStateContextualImpl _value,
      $Res Function(_$AppBarStateContextualImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemsCount = null,
  }) {
    return _then(_$AppBarStateContextualImpl(
      null == itemsCount
          ? _value.itemsCount
          : itemsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AppBarStateContextualImpl implements _AppBarStateContextual {
  const _$AppBarStateContextualImpl(this.itemsCount);

  @override
  final int itemsCount;

  @override
  String toString() {
    return '_AppBarState.contextual(itemsCount: $itemsCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppBarStateContextualImpl &&
            (identical(other.itemsCount, itemsCount) ||
                other.itemsCount == itemsCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemsCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppBarStateContextualImplCopyWith<_$AppBarStateContextualImpl>
      get copyWith => __$$AppBarStateContextualImplCopyWithImpl<
          _$AppBarStateContextualImpl>(this, _$identity);

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
    TResult? Function()? normal,
    TResult? Function(int itemsCount)? contextual,
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
    TResult? Function(_AppBarStateNormal value)? normal,
    TResult? Function(_AppBarStateContextual value)? contextual,
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
  const factory _AppBarStateContextual(final int itemsCount) =
      _$AppBarStateContextualImpl;

  int get itemsCount;
  @JsonKey(ignore: true)
  _$$AppBarStateContextualImplCopyWith<_$AppBarStateContextualImpl>
      get copyWith => throw _privateConstructorUsedError;
}
