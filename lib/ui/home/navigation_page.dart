// Copyright (C) 2021 Yaroslav Pronin <proninyaroslav@mail.ru>
// Copyright (C) 2021 Insurgo Inc. <insurgo@riseup.net>
//
// This file is part of LibreTrack.
//
// LibreTrack is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// LibreTrack is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with LibreTrack.  If not, see <http://www.gnu.org/licenses/>.

import 'package:animate_icons/animate_icons.dart';
import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:libretrack/ui/utils/utils.dart';
import 'package:libretrack/ui/widget/widget.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../locale.dart';
import '../theme.dart';

part 'navigation_page.freezed.dart';

@freezed
class PageId with _$PageId {
  const factory PageId(String id) = _PageId;
}

@freezed
class PageInfo with _$PageInfo {
  const factory PageInfo({
    required PageId id,
    required Widget page,
    SheetInfo? sheetInfo,
    Widget? appBarTitle,
    double? appBarTitleSpacing,
    VoidCallback? onContextualAppBarClosed,
    List<Widget>? contextualActions,
    List<Widget>? actions,
  }) = _PageInfo;
}

@freezed
class SheetInfo with _$SheetInfo {
  const factory SheetInfo({
    required String name,
    required Widget sheet,
    required IconData toggleIcon,
    Widget? appBarTitle,
  }) = _SheetInfo;
}

@freezed
class NavItem with _$NavItem {
  const factory NavItem.page({
    required String name,
    required Widget icon,
    required PageInfo pageInfo,
  }) = _NavItem;

  const factory NavItem.action({
    required String name,
    required Widget icon,
    required VoidCallback onPressed,
  }) = _NavItemAction;
}

class NavigationPage extends StatefulWidget {
  static const defaultFrontLayerVisibleSize = 48.0;

  final List<NavItem> items;
  final PageId? initPageId;

  /// Defines the minimum height or width of the front layer's visible part when
  /// the top/left/right side is revealed.
  final double frontLayerVisibleSize;

  const NavigationPage({
    super.key,
    this.items = const [],
    this.frontLayerVisibleSize = defaultFrontLayerVisibleSize,
    this.initPageId,
  });

  @override
  NavigationPageState createState() => NavigationPageState();
}

@freezed
class _BackdropContentType with _$BackdropContentType {
  const factory _BackdropContentType.drawer() = _BackdropContentTypeDrawer;
  const factory _BackdropContentType.sheet() = _BackdropContentTypeSheet;
  const factory _BackdropContentType.none() = _BackdropContentTypeNone;
}

@freezed
class _BackLayerType with _$BackLayerType {
  const factory _BackLayerType.top() = _BackLayerTypeTop;
  const factory _BackLayerType.start() = _BackLayerTypeStart;
  const factory _BackLayerType.end() = _BackLayerTypeEnd;
  const factory _BackLayerType.none() = _BackLayerTypeNone;
}

@freezed
class _AppBarState with _$AppBarState {
  const factory _AppBarState.normal() = _AppBarStateNormal;
  const factory _AppBarState.contextual(int itemsCount) =
      _AppBarStateContextual;
}

const _backLayerDuration = Duration(milliseconds: 200);

Color _backgroundColor(BuildContext context) {
  if (AppTheme.isDark(context)) {
    return Theme.of(context).colorScheme.surface;
  } else {
    return Theme.of(context).primaryColor;
  }
}

Color _foregroundColor(BuildContext context) {
  if (AppTheme.isDark(context)) {
    return Theme.of(context).colorScheme.onSurface;
  } else {
    return Theme.of(context).colorScheme.onPrimary;
  }
}

class NavigationPageState extends State<NavigationPage>
    with TickerProviderStateMixin {
  late int _currentItemPos;
  _BackdropContentType _currentBackdropContent =
      const _BackdropContentType.none();
  final _appBarSwitcherKey = GlobalKey<_AppBarSwitcherState>();

  Color _frontLayerScrim(BuildContext context) {
    if (AppTheme.isDark(context)) {
      return Colors.black54;
    } else {
      return Colors.white70;
    }
  }

  @override
  void initState() {
    super.initState();

    final items = widget.items;
    final initPageId = widget.initPageId;

    if (items.isEmpty) {
      _currentItemPos = -1;
    } else if (initPageId != null) {
      _currentItemPos = -1;
      for (var i = 0; i < items.length; i++) {
        final item = items[i].map(
          page: (value) => value.pageInfo.id == initPageId ? value : null,
          action: (value) => null,
        );
        if (item != null) {
          _currentItemPos = i;
          break;
        }
      }
    } else {
      _currentItemPos = 0;
    }
  }

  void enableContextualAppBar(int itemsCount) {
    _appBarSwitcherKey.currentState?.appBarState =
        _AppBarState.contextual(itemsCount);
  }

  void disableContextualAppBar() {
    final current = _appBarSwitcherKey.currentState;
    current?.appBarState.maybeWhen(
      contextual: (_) {
        current.appBarState = const _AppBarState.normal();
      },
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    final items = widget.items;
    final currentItem = _currentItemPos < 0 ? null : items[_currentItemPos];
    final currentPage = currentItem?.map(
      page: (value) => value.pageInfo,
      action: (value) => null,
    );

    return ScreenTypeLayout.builder(
      mobile: (context) => OrientationLayoutBuilder(
        portrait: (context) => _buildPortraitMobilePage(currentPage),
        landscape: (context) => _buildLandscapeMobilePage(currentPage),
      ),
      tablet: (context) => OrientationLayoutBuilder(
        landscape: (context) => _buildLandscapeTabletPage(currentPage),
        portrait: (context) => _buildPortraitTabletPage(currentPage),
      ),
    );
  }

  Widget _buildPortraitMobilePage(PageInfo? currentPage) {
    final sheetInfo = currentPage?.sheetInfo;

    return BackdropScaffold(
      appBar: _AppBarSwitcher(
        key: _appBarSwitcherKey,
        duration: _backLayerDuration,
        normalAppBar: BackdropAppBar(
          title: _AnimatedTitle(
            backdropContent: _currentBackdropContent,
            pageInfo: currentPage,
            duration: _backLayerDuration,
          ),
          titleSpacing: _getTitleSpacing(currentPage, _currentBackdropContent),
          leading: _buildBackdropToggleButton(
            backLayerType: const _BackLayerType.top(),
          ),
          actions: _buildPortraitMobileAppBarActions(currentPage, sheetInfo),
        ),
        contextualAppBarBuilder: (context, itemsCount) {
          return _buildContextualAppBar(
            context,
            itemsCount,
            currentPage,
          );
        },
      ),
      frontLayerScrim: _frontLayerScrim(context),
      backLayerBackgroundColor: _backgroundColor(context),
      stickyFrontLayer: true,
      backLayer: _buildBackLayer(),
      frontLayer: ScaffoldMessenger(
        child: currentPage?.page ?? Container(),
      ),
      headerHeight: widget.frontLayerVisibleSize,
    );
  }

  Widget _buildLandscapeMobilePage(PageInfo? currentPage) {
    final sheetInfo = currentPage?.sheetInfo;

    return SideBackdropScaffold(
      appBar: _AppBarSwitcher(
        key: _appBarSwitcherKey,
        duration: _backLayerDuration,
        normalAppBar: BackdropAppBar(
          title: _AnimatedTitle(
            backdropContent: _currentBackdropContent,
            pageInfo: currentPage,
            duration: _backLayerDuration,
          ),
          titleSpacing: _getTitleSpacing(currentPage, _currentBackdropContent),
          leading: _buildBackdropToggleButton(
            backLayerType: const _BackLayerType.start(),
          ),
          actions: _buildPortraitAppBarActions(currentPage, sheetInfo),
        ),
        contextualAppBarBuilder: (context, itemsCount) {
          return _buildContextualAppBar(
            context,
            itemsCount,
            currentPage,
          );
        },
      ),
      inactiveOverlayColor: _frontLayerScrim(context),
      backLayerBackgroundColor: _backgroundColor(context),
      startSide: _buildPortraitDrawer(),
      endSide: _buildEndSideSheet(sheetInfo),
      frontLayer: ScaffoldMessenger(
        child: currentPage?.page ?? Container(),
      ),
      frontLayerVisibleWidth: widget.frontLayerVisibleSize,
    );
  }

  Widget _buildPortraitTabletPage(PageInfo? currentPage) {
    final sheetInfo = currentPage?.sheetInfo;
    final textDirection = Directionality.of(context);

    return SideBackdropScaffold(
      appBar: _AppBarSwitcher(
        key: _appBarSwitcherKey,
        duration: _backLayerDuration,
        normalAppBar: BackdropAppBar(
          title: _AnimatedTitle(
            backdropContent: _currentBackdropContent,
            pageInfo: currentPage,
            duration: _backLayerDuration,
          ),
          titleSpacing: _getTitleSpacing(currentPage, _currentBackdropContent),
          automaticallyImplyLeading: false,
          actions: _buildPortraitAppBarActions(currentPage, sheetInfo),
        ),
        contextualAppBarBuilder: (context, itemsCount) {
          return _buildContextualAppBar(
            context,
            itemsCount,
            currentPage,
          );
        },
      ),
      inactiveOverlayColor: _frontLayerScrim(context),
      backLayerBackgroundColor: _backgroundColor(context),
      miniStartSide: _buildNavigationRail(),
      endSide: _buildEndSideSheet(sheetInfo),
      frontLayer: ScaffoldMessenger(
        child: _AnimatedFrontLayer(
          duration: _backLayerDuration,
          child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            removeLeft: textDirection != TextDirection.rtl,
            removeRight: textDirection == TextDirection.rtl,
            child: currentPage?.page ?? Container(),
          ),
        ),
      ),
      frontLayerVisibleWidth: widget.frontLayerVisibleSize,
    );
  }

  Widget _buildLandscapeTabletPage(PageInfo? currentPage) {
    // Reset due to the lack of backdrop in this mode
    _currentBackdropContent = const _BackdropContentType.none();

    const int drawerFlex = 2;
    final int frontLayerFlex = currentPage?.sheetInfo == null ? 7 : 5;
    final int sheetFlex = currentPage?.sheetInfo == null ? 0 : 2;

    final textDirection = Directionality.of(context);
    final mediaQuery = MediaQuery.of(context);
    final startPadding = textDirection == TextDirection.rtl
        ? mediaQuery.padding.right
        : mediaQuery.padding.left;
    final endPadding = textDirection == TextDirection.rtl
        ? mediaQuery.padding.left
        : mediaQuery.padding.right;
    final width = mediaQuery.size.width;

    final flexSum = drawerFlex + frontLayerFlex + sheetFlex;
    final drawerWidth = (drawerFlex * width) / flexSum + startPadding;
    final frontLayerWidth =
        (frontLayerFlex * width) / flexSum - startPadding - endPadding;
    final sheetWidth =
        sheetFlex == 0 ? 0.0 : (sheetFlex * width) / flexSum + endPadding;

    return Scaffold(
      appBar: _AppBarSwitcher(
        key: _appBarSwitcherKey,
        duration: _backLayerDuration,
        normalAppBar: BackdropAppBar(
          title: _AnimatedTitle(
            backdropContent: _currentBackdropContent,
            pageInfo: currentPage,
            duration: _backLayerDuration,
          ),
          titleSpacing: _getTitleSpacing(currentPage, _currentBackdropContent),
          automaticallyImplyLeading: false,
          actions: currentPage?.actions,
        ),
        contextualAppBarBuilder: (context, itemsCount) {
          return _buildContextualAppBar(
            context,
            itemsCount,
            currentPage,
          );
        },
      ),
      body: ScaffoldMessenger(
        child: Material(
          color: _backgroundColor(context),
          child: Stack(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: width - sheetWidth,
                  ),
                  SizedBox(
                    width: sheetWidth,
                    child: _buildLandscapeSheet(currentPage?.sheetInfo),
                  ),
                ],
              ),
              Row(
                children: [
                  AnimatedContainer(
                    duration: _backLayerDuration,
                    width: drawerWidth,
                    child: _buildLandscapeDrawer(),
                  ),
                  AnimatedContainer(
                    duration: _backLayerDuration,
                    width: frontLayerWidth,
                    child: _buildLandscapeFrontLayer(currentPage),
                  ),
                  AnimatedContainer(
                    duration: _backLayerDuration,
                    width: sheetWidth,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  double _getTitleSpacing(
    PageInfo? currentPage,
    _BackdropContentType currentBackdropContent,
  ) {
    return currentBackdropContent.maybeWhen(
      sheet: () => NavigationToolbar.kMiddleSpacing,
      orElse: () {
        return currentPage?.appBarTitleSpacing ??
            NavigationToolbar.kMiddleSpacing;
      },
    );
  }

  Widget _buildContextualAppBar(
    BuildContext context,
    int itemsCount,
    PageInfo? currentPage,
  ) {
    return _ContextualAppBar(
      itemsCount: itemsCount,
      contextualActions: currentPage?.contextualActions,
      onBackPressed: () => _disableContextualMode(currentPage),
    );
  }

  void _disableContextualMode(PageInfo? currentPage) {
    disableContextualAppBar();
    currentPage?.onContextualAppBarClosed?.call();
  }

  List<Widget> _buildPortraitMobileAppBarActions(
    PageInfo? currentPage,
    SheetInfo? sheetInfo,
  ) {
    return [
      if (_currentBackdropContent is! _BackdropContentTypeSheet)
        ...?currentPage?.actions,
      if (sheetInfo?.toggleIcon != null &&
          _currentBackdropContent is! _BackdropContentTypeSheet)
        _buildToggleSheetButton(
          sheetInfo,
          backLayerType: const _BackLayerType.top(),
        ),
    ];
  }

  List<Widget> _buildPortraitAppBarActions(
    PageInfo? currentPage,
    SheetInfo? sheetInfo,
  ) {
    if (sheetInfo?.toggleIcon == null) {
      if (_currentBackdropContent is! _BackdropContentTypeSheet) {
        return currentPage?.actions ?? [];
      } else {
        return [];
      }
    } else {
      return [
        if (_currentBackdropContent is! _BackdropContentTypeSheet)
          ...?currentPage?.actions,
        _buildToggleSheetButton(
          sheetInfo,
          backLayerType: const _BackLayerType.end(),
        ),
      ];
    }
  }

  Widget _buildBackdropToggleButton({required _BackLayerType backLayerType}) {
    if (widget.items.isNotEmpty) {
      return _BackdropToggleButton(
        backLayerType: backLayerType,
        onToggled: (revealed) {
          _currentBackdropContent = revealed
              ? const _BackdropContentType.drawer()
              : const _BackdropContentType.none();
        },
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  Widget _buildToggleSheetButton(
    SheetInfo? sheetInfo, {
    required _BackLayerType backLayerType,
  }) {
    if (sheetInfo == null) {
      return Container();
    } else {
      return _ToggleSheetButton(
        icon: sheetInfo.toggleIcon,
        text: sheetInfo.name,
        backLayerType: backLayerType,
        onToggled: (revealed) {
          final oldBackdropContent = _currentBackdropContent;
          _currentBackdropContent = revealed
              ? const _BackdropContentType.sheet()
              : const _BackdropContentType.none();
          if (oldBackdropContent is _BackdropContentTypeDrawer) {
            // Force rebuild, because drawer is opened
            setState(() {});
          }
        },
      );
    }
  }

  Widget _buildBackLayer() {
    final items = widget.items;
    Widget child;
    if (items.isNotEmpty) {
      child = _currentBackdropContent.maybeWhen(
        sheet: () => _SheetPage(
          sheetInfo: items[_currentItemPos].map(
            page: (value) => value.pageInfo.sheetInfo,
            action: (value) => null,
          )!,
        ),
        orElse: () => _buildNavigationDrawer(
          autoFlingBackdrop: true,
          backLayerType: const _BackLayerType.top(),
        ),
      );
    } else {
      child = const SizedBox.shrink();
    }

    return _BackdropListener(
      backLayerType: const _BackLayerType.top(),
      onFling: (revealed) {
        setState(() {
          if (!revealed) {
            _currentBackdropContent = const _BackdropContentType.none();
          }
        });
      },
      child: _BackdropAutoFling(
        autoFling: _currentBackdropContent.maybeWhen(
          drawer: () => true,
          sheet: () => true,
          orElse: () => false,
        ),
        backLayerType: const _BackLayerType.top(),
        child: _AnimatedTopBackLayer(child: child),
      ),
    );
  }

  Widget _buildPortraitDrawer() {
    if (widget.items.isNotEmpty) {
      return _BackdropListener(
        backLayerType: const _BackLayerType.start(),
        onFling: (revealed) {
          setState(() {
            if (!revealed &&
                _currentBackdropContent is! _BackdropContentTypeSheet) {
              _currentBackdropContent = const _BackdropContentType.none();
            }
          });
        },
        child: _BackdropAutoFling(
          autoFling: _currentBackdropContent is _BackdropContentTypeDrawer,
          backLayerType: const _BackLayerType.start(),
          child: SizedBox(
            width: 300,
            height: double.infinity,
            child: _buildNavigationDrawer(
              autoFlingBackdrop: true,
              backLayerType: const _BackLayerType.start(),
            ),
          ),
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  Widget _buildNavigationRail() {
    if (widget.items.isNotEmpty) {
      final textDirection = Directionality.of(context);
      final padding = MediaQuery.of(context).padding;
      final startPadding =
          textDirection == TextDirection.rtl ? padding.right : padding.left;

      return Container(
        width: 72 + startPadding,
        height: double.infinity,
        color: _backgroundColor(context),
        child: _buildNavigationDrawer(
          autoFlingBackdrop: false,
          backLayerType: const _BackLayerType.start(),
          miniDrawer: true,
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  Widget _buildEndSideSheet(SheetInfo? sheetInfo) {
    if (sheetInfo == null) {
      return const SizedBox.shrink();
    } else {
      return _BackdropListener(
        backLayerType: const _BackLayerType.end(),
        onFling: (revealed) {
          setState(() {
            if (!revealed) {
              _currentBackdropContent = const _BackdropContentType.none();
            }
          });
        },
        child: _BackdropAutoFling(
          autoFling: _currentBackdropContent is _BackdropContentTypeSheet,
          backLayerType: const _BackLayerType.end(),
          child: _SheetPage(sheetInfo: sheetInfo),
        ),
      );
    }
  }

  Widget _buildLandscapeDrawer() {
    if (widget.items.isNotEmpty) {
      return SizedBox(
        height: double.infinity,
        child: _buildNavigationDrawer(
          autoFlingBackdrop: false,
          backLayerType: const _BackLayerType.none(),
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  Widget _buildLandscapeSheet(SheetInfo? sheetInfo) {
    if (sheetInfo == null) {
      return const SizedBox.shrink();
    } else {
      return _SheetPage(
        sheetInfo: sheetInfo,
        showTitle: true,
      );
    }
  }

  Widget _buildLandscapeFrontLayer(PageInfo? currentPage) {
    const frontPanelBorderRadius = BorderRadius.only(
      topLeft: Radius.circular(16.0),
      topRight: Radius.circular(16.0),
    );

    return Material(
      elevation: 1.0,
      borderRadius: frontPanelBorderRadius,
      child: ClipRRect(
        borderRadius: frontPanelBorderRadius,
        child: _AnimatedFrontLayer(
          duration: _backLayerDuration,
          child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            removeLeft: true,
            removeRight: true,
            child: currentPage?.page ?? Container(),
          ),
        ),
      ),
    );
  }

  Widget _buildNavigationDrawer({
    required bool autoFlingBackdrop,
    required _BackLayerType backLayerType,
    bool miniDrawer = false,
  }) {
    return _NavigationDrawer(
      items: widget.items,
      selectedItemPos: _currentItemPos,
      autoFlingBackdrop: autoFlingBackdrop,
      backLayerType: backLayerType,
      isNavigationRail: miniDrawer,
      onTap: (pos) {
        final item = pos < 0 ? null : widget.items[pos];
        item?.when(
          page: (name, icon, pageInfo) {
            final oldPos = _currentItemPos;
            if (oldPos != pos) {
              _currentItemPos = pos;
              // Reset state if page changed
              _currentBackdropContent = const _BackdropContentType.none();
              setState(() {});
              _disableContextualMode(pageInfo);
            }
          },
          action: (name, icon, onPressed) {
            onPressed();
          },
        );
      },
    );
  }
}

class _SheetPage extends StatelessWidget {
  final SheetInfo sheetInfo;
  final bool showTitle;

  const _SheetPage({
    required this.sheetInfo,
    this.showTitle = false,
  });

  @override
  Widget build(BuildContext context) {
    final sheet = DefaultTextStyle(
      style: TextStyle(
        color: _foregroundColor(context),
      ),
      child: sheetInfo.sheet,
    );

    late final Widget child;
    if (showTitle) {
      child = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (sheetInfo.appBarTitle == null)
            const SizedBox.shrink()
          else
            Material(
              color: _backgroundColor(context),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: DefaultTextStyle(
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: _foregroundColor(context)),
                  child: sheetInfo.appBarTitle!,
                ),
              ),
            ),
          Flexible(child: sheet),
        ],
      );
    } else {
      child = sheet;
    }

    final textDirection = Directionality.of(context);
    return SafeArea(
      right: textDirection != TextDirection.rtl,
      left: textDirection == TextDirection.rtl,
      child: MediaQuery.removePadding(
        context: context,
        removeLeft: textDirection != TextDirection.rtl,
        removeRight: textDirection == TextDirection.rtl,
        child: child,
      ),
    );
  }
}

class _AnimatedTopBackLayer extends StatefulWidget {
  final Widget child;

  const _AnimatedTopBackLayer({
    required this.child,
  });

  @override
  _AnimatedTopBackLayerState createState() => _AnimatedTopBackLayerState();
}

class _AnimatedTopBackLayerState extends State<_AnimatedTopBackLayer> {
  @override
  Widget build(BuildContext context) {
    if (Backdrop.of(context).isBackLayerRevealed) {
      return AnimatedSize(
        duration: _backLayerDuration,
        child: widget.child,
      );
    } else {
      return widget.child;
    }
  }
}

class _AnimatedFrontLayer extends StatelessWidget {
  final Widget child;
  final Duration duration;

  const _AnimatedFrontLayer({
    required this.child,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: duration,
      child: child,
    );
  }
}

/// Calls listener only after backdrop animation completed
class _BackdropListener extends StatefulWidget {
  final Widget child;
  final _BackLayerType backLayerType;
  final Function(bool revealed) onFling;

  const _BackdropListener({
    required this.onFling,
    required this.backLayerType,
    required this.child,
  });

  @override
  _BackdropListenerState createState() => _BackdropListenerState();
}

class _BackdropListenerState extends State<_BackdropListener> {
  @override
  void initState() {
    super.initState();

    void statusListener(AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        widget.onFling(false);
      } else if (status == AnimationStatus.reverse) {
        widget.onFling(true);
      }
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.backLayerType.when(
        top: () => Backdrop.of(context)
            .animationController
            .addStatusListener(statusListener),
        start: () => SideBackdrop.of(context)
            .startSideController
            .addStatusListener(statusListener),
        end: () => SideBackdrop.of(context)
            .endSideController
            .addStatusListener(statusListener),
        none: () {},
      );
    });
  }

  @override
  Widget build(BuildContext context) => widget.child;
}

class _BackdropToggleButton extends StatelessWidget {
  final _BackLayerType backLayerType;
  final Function(bool revealed) onToggled;

  const _BackdropToggleButton({
    required this.backLayerType,
    required this.onToggled,
  });

  @override
  Widget build(BuildContext context) {
    if (backLayerType is _BackLayerTypeNone) {
      return Container();
    }
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.close_menu,
        color: _foregroundColor(context),
        progress: backLayerType
            .when(
              top: () => Backdrop.of(context).animationController,
              start: () => SideBackdrop.of(context).startSideController,
              end: () => SideBackdrop.of(context).endSideController,
              none: () {},
            )!
            .view,
      ),
      tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      onPressed: () => _flingBackdrop(context),
    );
  }

  void _flingBackdrop(BuildContext context) {
    backLayerType.when(
      top: () {
        final backdrop = Backdrop.of(context);
        backdrop.fling();
        onToggled(backdrop.isBackLayerRevealed);
      },
      start: () {
        final backdrop = SideBackdrop.of(context);
        backdrop.flingStartSide();
        onToggled(backdrop.isStartSideRevealed);
      },
      end: () {
        final backdrop = SideBackdrop.of(context);
        backdrop.flingEndSide();
        onToggled(backdrop.isEndSideRevealed);
      },
      none: () {},
    );
  }
}

class _ToggleSheetButton extends StatefulWidget {
  final IconData icon;
  final String text;
  final _BackLayerType backLayerType;
  final Function(bool revealed)? onToggled;

  const _ToggleSheetButton({
    required this.icon,
    required this.text,
    required this.backLayerType,
    this.onToggled,
  });

  @override
  _ToggleSheetButtonState createState() => _ToggleSheetButtonState();
}

class _ToggleSheetButtonState extends State<_ToggleSheetButton> {
  final AnimateIconController _controller = AnimateIconController();

  void statusListener(AnimationStatus status) {
    if (status == AnimationStatus.forward && _controller.isEnd()) {
      _controller.animateToStart();
    } else if (status == AnimationStatus.reverse && _controller.isStart()) {
      _controller.animateToEnd();
    }
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _listenBackdrop(widget.backLayerType);
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _listenBackdrop(widget.backLayerType);
  }

  void _listenBackdrop(_BackLayerType backLayerType) {
    // Automatically toggle button animation when
    // a side backdrop is revealed/concealed
    backLayerType.maybeWhen(
      start: () => SideBackdrop.of(context)
          .startSideController
          .addStatusListener(statusListener),
      end: () => SideBackdrop.of(context)
          .endSideController
          .addStatusListener(statusListener),
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    final iconColor = _foregroundColor(context);
    return AnimateIcons(
      startIcon: widget.icon,
      endIcon: Icons.close,
      startTooltip: widget.text,
      endTooltip: MaterialLocalizations.of(context).closeButtonTooltip,
      size: 24.0,
      endIconColor: iconColor,
      startIconColor: iconColor,
      duration: widget.backLayerType.when(
        top: () => Backdrop.of(context).animationController.duration,
        start: () => SideBackdrop.of(context).startSideController.duration,
        end: () => SideBackdrop.of(context).endSideController.duration,
        none: () => null,
      ),
      controller: _controller,
      onStartIconPress: () {
        _flingBackdrop(context);
        return false;
      },
      onEndIconPress: () {
        _flingBackdrop(context);
        return false;
      },
      clockwise: false,
    );
  }

  void _flingBackdrop(BuildContext context) {
    widget.backLayerType.when(
      top: () {
        Backdrop.of(context).revealBackLayer();
        widget.onToggled?.call(true);
      },
      start: () {
        final backdrop = SideBackdrop.of(context);
        backdrop.flingStartSide();
        widget.onToggled?.call(backdrop.isStartSideRevealed);
      },
      end: () {
        final backdrop = SideBackdrop.of(context);
        backdrop.flingEndSide();
        widget.onToggled?.call(backdrop.isEndSideRevealed);
      },
      none: () {},
    );
  }
}

class _NavigationDrawer extends StatelessWidget {
  final List<NavItem> items;
  final int selectedItemPos;
  final Function(int)? onTap;
  final bool autoFlingBackdrop;
  final _BackLayerType backLayerType;
  final bool isNavigationRail;

  const _NavigationDrawer({
    required this.items,
    required this.selectedItemPos,
    required this.autoFlingBackdrop,
    required this.backLayerType,
    required this.isNavigationRail,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isSideBackLayer = backLayerType is _BackLayerTypeStart ||
        backLayerType is _BackLayerTypeEnd;
    final textDirection = Directionality.of(context);

    return SafeArea(
      right: textDirection == TextDirection.rtl,
      left: textDirection != TextDirection.rtl,
      child: isSideBackLayer && !isNavigationRail
          ? _buildSwipeableDrawer(context)
          : _buildDrawer(),
    );
  }

  Widget _buildSwipeableDrawer(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
        final leftToRight = details.delta.dx > 0;
        final rightToLeft = details.delta.dx < 0;
        final textDirection = Directionality.of(context);
        final startToEnd =
            textDirection == TextDirection.ltr ? leftToRight : rightToLeft;
        final endToStart =
            textDirection == TextDirection.ltr ? rightToLeft : leftToRight;
        final backdrop = SideBackdrop.of(context);

        backLayerType.maybeWhen(
          start: () {
            if (startToEnd) {
              backdrop.revealStartSide();
            } else {
              backdrop.concealStartSide();
            }
          },
          end: () {
            if (endToStart) {
              backdrop.revealEndSide();
            } else {
              backdrop.concealEndSide();
            }
          },
          orElse: () {},
        );
      },
      child: _buildDrawer(),
    );
  }

  Widget _buildDrawer() {
    return Padding(
      padding: isNavigationRail
          ? const EdgeInsets.only(top: 8.0)
          : const EdgeInsets.all(8.0),
      child: ListView.separated(
        shrinkWrap: true,
        padding: backLayerType is _BackLayerTypeTop ? EdgeInsets.zero : null,
        itemCount: items.length,
        itemBuilder: (context, position) {
          final pageInfo = items[position];

          return _NavigationDrawerItem(
            position: position,
            name: pageInfo.name,
            icon: pageInfo.icon,
            isSelected: selectedItemPos == position,
            minimized: isNavigationRail,
            onTap: (position) {
              if (autoFlingBackdrop) {
                backLayerType.when(
                  top: () => Backdrop.of(context).fling(),
                  start: () => SideBackdrop.of(context).flingStartSide(),
                  end: () => SideBackdrop.of(context).flingEndSide(),
                  none: () {},
                );
              }
              onTap?.call(position);
            },
          );
        },
        separatorBuilder: (context, position) => const SizedBox(
          height: 8.0,
        ),
      ),
    );
  }
}

class _NavigationDrawerItem extends StatelessWidget {
  final int position;
  final String name;
  final Widget icon;
  final bool isSelected;
  final bool minimized;
  final Function(int)? onTap;

  const _NavigationDrawerItem({
    required this.position,
    required this.name,
    required this.icon,
    required this.minimized,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: _getItemColor(context),
      borderRadius: BorderRadius.circular(8.0),
      child: minimized ? _buildIconButton(context) : _buildListTile(context),
    );
  }

  Widget _buildListTile(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeRight: true,
      removeLeft: true,
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
        leading: _buildIcon(context),
        title: _buildText(context),
        onTap: () => onTap?.call(position),
      ),
    );
  }

  Widget _buildIconButton(BuildContext context) {
    return InkWell(
      customBorder: const CircleBorder(),
      onTap: () => onTap?.call(position),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 12.0, 8.0, 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildIcon(context),
            const SizedBox(height: 8.0),
            _buildText(context),
          ],
        ),
      ),
    );
  }

  Widget _buildText(BuildContext context) {
    final textStyle = TextStyle(
      fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
      color: _getItemTintColor(context),
      fontWeight: FontWeight.w600,
    );
    if (minimized) {
      // Prevent hyphenation of characters
      final softWrapName = UiUtils.splitWords(name).join('\n');
      return FittedBox(
        child: Text(
          softWrapName,
          style: textStyle,
          textAlign: TextAlign.center,
        ),
      );
    } else {
      return Text(
        name,
        style: textStyle,
        textAlign: TextAlign.start,
      );
    }
  }

  Widget _buildIcon(BuildContext context) {
    return IconTheme(
      data: IconThemeData(
        color: _getItemTintColor(context),
        size: 24.0,
      ),
      child: icon,
    );
  }

  Color _getItemColor(BuildContext context) {
    if (isSelected && !minimized) {
      if (AppTheme.isDark(context)) {
        return AppTheme.itemSelectableColor(context);
      } else {
        return Theme.of(context).colorScheme.onPrimary.withOpacity(0.24);
      }
    } else {
      return Colors.transparent;
    }
  }

  Color _getItemTintColor(BuildContext context) => isSelected
      ? _foregroundColor(context)
      : _foregroundColor(context).withOpacity(0.54);
}

class _BackdropAutoFling extends StatefulWidget {
  final Widget child;
  final _BackLayerType backLayerType;
  final bool autoFling;

  const _BackdropAutoFling({
    required this.autoFling,
    required this.backLayerType,
    required this.child,
  });

  @override
  _BackdropAutoFlingState createState() => _BackdropAutoFlingState();
}

class _BackdropAutoFlingState extends State<_BackdropAutoFling> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!widget.autoFling) {
        return;
      }

      widget.backLayerType.when(
        top: () => Backdrop.of(context).revealBackLayer(),
        start: () => SideBackdrop.of(context).revealStartSide(),
        end: () => SideBackdrop.of(context).revealEndSide(),
        none: () {},
      );
    });
  }

  @override
  Widget build(BuildContext context) => widget.child;
}

class _AnimatedTitle extends StatelessWidget {
  final PageInfo? pageInfo;
  final _BackdropContentType backdropContent;
  final Duration duration;

  const _AnimatedTitle({
    required this.backdropContent,
    this.pageInfo,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: duration,
      transitionBuilder: (child, animation) {
        return FadeTransition(
          opacity: animation,
          child: SizeTransition(
            sizeFactor: animation,
            axis: Axis.horizontal,
            child: child,
          ),
        );
      },
      child: backdropContent.maybeWhen(
        sheet: () {
          return pageInfo?.sheetInfo?.appBarTitle ?? const SizedBox.shrink();
        },
        orElse: () {
          return pageInfo?.appBarTitle ?? const SizedBox.shrink();
        },
      ),
    );
  }
}

typedef ContextualAppBarBuilder = Widget Function(
  BuildContext context,
  int itemsCount,
);

class _AppBarSwitcher extends StatefulWidget implements PreferredSizeWidget {
  final Widget normalAppBar;
  final ContextualAppBarBuilder contextualAppBarBuilder;
  final Duration duration;

  const _AppBarSwitcher({
    super.key,
    required this.normalAppBar,
    required this.contextualAppBarBuilder,
    required this.duration,
  });

  @override
  _AppBarSwitcherState createState() => _AppBarSwitcherState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppBarSwitcherState extends State<_AppBarSwitcher> {
  _AppBarState _appBarState = const _AppBarState.normal();

  _AppBarState get appBarState => _appBarState;

  set appBarState(_AppBarState state) {
    setState(() {
      _appBarState = state;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: widget.duration,
      transitionBuilder: (child, animation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      child: _appBarState.when(
        normal: () => widget.normalAppBar,
        contextual: (itemsCount) => widget.contextualAppBarBuilder(
          context,
          _appBarState.maybeWhen(
            contextual: (itemsCount) => itemsCount,
            orElse: () => 0,
          ),
        ),
      ),
    );
  }
}

class _ContextualAppBar extends StatelessWidget {
  final int itemsCount;
  final List<Widget>? contextualActions;
  final VoidCallback? onBackPressed;

  const _ContextualAppBar({
    required this.itemsCount,
    this.contextualActions,
    this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        onBackPressed?.call();
      },
      child: AppBar(
        title: Text(
          S.of(context).selectedCounter(itemsCount),
          maxLines: 2,
        ),
        leading: BackButton(onPressed: onBackPressed),
        actions: contextualActions,
        elevation: 0.0,
      ),
    );
  }
}
