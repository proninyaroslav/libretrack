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

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:libretrack/ui/app_router.dart';
import 'package:libretrack/ui/settings/settings.dart';
import 'package:responsive_builder/responsive_builder.dart' hide WidgetBuilder;

import '../../locale.dart';

part 'settings_page.freezed.dart';

class SettingsPage extends StatefulWidget {
  final SettingsRoutePath? initRoute;

  const SettingsPage({
    Key? key,
    this.initRoute,
  }) : super(key: key);

  @override
  SettingsPageState createState() => SettingsPageState();

  static SettingsPageState of(BuildContext context) {
    return context.findAncestorStateOfType<SettingsPageState>()!;
  }
}

class SettingsPageState extends State<SettingsPage> {
  final _routerDelegate = _SettingsRouterDelegate();
  ChildBackButtonDispatcher? _backButtonDispatcher;
  final _routeInfoParser = const AppRouteInfoParser();
  late RouteInformationProvider _routeInfoProvider;
  bool _isAlertDialogShown = false;

  @override
  void initState() {
    super.initState();

    _routeInfoProvider = PlatformRouteInformationProvider(
      initialRouteInformation: _routeInfoParser.restoreRouteInformation(
        const AppRoutePath.settings(),
      ),
    );

    if (widget.initRoute != null) {
      _routerDelegate.setNewRoutePath(
        AppRoutePathSettings(
          subRoute: widget.initRoute,
        ),
      );
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // Defer back button dispatching to the child router
    _backButtonDispatcher = Router.of(context)
        .backButtonDispatcher
        ?.createChildBackButtonDispatcher();
  }

  @override
  Widget build(BuildContext context) {
    // Claim priority, If there are parallel sub router, you will need
    // to pick which one should take priority;
    if (!_isAlertDialogShown) {
      _backButtonDispatcher?.takePriority();
    }

    return ScreenTypeLayout(
      mobile: Router(
        routerDelegate: _routerDelegate,
        backButtonDispatcher: _backButtonDispatcher,
        routeInformationProvider: _routeInfoProvider,
        routeInformationParser: _routeInfoParser,
      ),
      tablet: _TwoPaneBody(
        initRoute: _routerDelegate.currentConfiguration.subRoute,
        onRouteLoaded: (route) {
          // Synchronize routes
          _routerDelegate.setNewRoutePath(
            AppRoutePathSettings(subRoute: route),
          );
        },
      ),
    );
  }

  Future<T?> showAlertDialog<T>({
    required BuildContext context,
    required WidgetBuilder builder,
  }) async {
    final childDispatcher = Router.of(context).backButtonDispatcher;
    final parentDispatcher = childDispatcher is ChildBackButtonDispatcher
        ? childDispatcher.parent
        : null;

    _isAlertDialogShown = true;
    parentDispatcher?.takePriority();

    final result = await showDialog<T>(
      context: context,
      builder: builder,
    );

    _isAlertDialogShown = false;
    if (childDispatcher != null && childDispatcher.hasCallbacks) {
      childDispatcher.takePriority();
    }
    return result;
  }
}

class _Body extends StatelessWidget {
  final ValueChanged<SettingsRoutePath>? onLoadRoute;

  const _Body({Key? key, this.onLoadRoute}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).settings,
        ),
        leading: BackButton(
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop();
          },
        ),
      ),
      body: SettingsPagesList(
        onSelected: (route) => onLoadRoute?.call(route),
      ),
    );
  }
}

class _TwoPaneBody extends StatefulWidget {
  final SettingsRoutePath? initRoute;
  final ValueChanged<SettingsRoutePath>? onRouteLoaded;

  const _TwoPaneBody({
    Key? key,
    this.initRoute,
    this.onRouteLoaded,
  }) : super(key: key);

  @override
  _TwoPaneBodyState createState() => _TwoPaneBodyState();
}

class _TwoPaneBodyState extends State<_TwoPaneBody> {
  late SettingsRoutePath _currentRoute;

  SettingsRoutePath _getInitRoute() =>
      widget.initRoute ?? const SettingsRoutePath.appearance();

  @override
  void initState() {
    super.initState();

    _currentRoute = _getInitRoute();
  }

  @override
  Widget build(BuildContext context) {
    final textDirection = Directionality.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).settings,
        ),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          final int pagesListFlex =
              orientation == Orientation.landscape ? 2 : 3;
          const int pageFlex = 7;

          final mediaQuery = MediaQuery.of(context);
          final startPadding = textDirection == TextDirection.rtl
              ? mediaQuery.padding.right
              : mediaQuery.padding.left;
          final width = mediaQuery.size.width;
          final flexSum = pagesListFlex + pageFlex;
          final pagesListWidth =
              (pagesListFlex * width) / flexSum + startPadding;
          final pageWidth = (pageFlex * width) / flexSum - startPadding;

          return Row(
            children: [
              Container(
                width: pagesListWidth,
                decoration: BoxDecoration(
                  border: BorderDirectional(
                    end: BorderSide(
                      color: Theme.of(context).dividerColor,
                    ),
                  ),
                ),
                child: SettingsPagesList(
                  selectedRoute: _currentRoute,
                  onSelected: (route) {
                    setState(() => _currentRoute = route);
                    widget.onRouteLoaded?.call(route);
                  },
                ),
              ),
              SizedBox(
                width: pageWidth,
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 200),
                  child: MediaQuery.removePadding(
                    context: context,
                    removeLeft: textDirection != TextDirection.rtl,
                    removeRight: textDirection == TextDirection.rtl,
                    child: _currentRoute.when(
                      appearance: () => const AppearanceSettingsPage(),
                      behavior: () => const BehaviorPage(),
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

@freezed
class _SettingsRouterState with _$_SettingsRouterState {
  const factory _SettingsRouterState.home() = _SettingsRouterStateHome;

  const factory _SettingsRouterState.appearance() =
      _SettingsRouterStateAppearance;

  const factory _SettingsRouterState.behavior() = _SettingsRouterStateBehavior;
}

class _SettingsRouterDelegate extends RouterDelegate<AppRoutePathSettings>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppRoutePathSettings> {
  _SettingsRouterState __currentState = const _SettingsRouterState.home();

  _SettingsRouterState get _currentState => __currentState;

  set _currentState(_SettingsRouterState value) {
    if (value == __currentState) {
      return;
    }
    __currentState = value;
    notifyListeners();
  }

  @override
  final GlobalKey<NavigatorState> navigatorKey;

  _SettingsRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();

  @override
  Future<void> setNewRoutePath(AppRoutePathSettings configuration) {
    return SynchronousFuture(_setRoute(configuration));
  }

  @override
  Future<void> setInitialRoutePath(AppRoutePathSettings configuration) async {
    if (configuration.subRoute == null) {
      return;
    }
    setNewRoutePath(configuration);
  }

  void _setRoute(AppRoutePathSettings route) {
    _currentState = route.subRoute?.when(
          appearance: () => const _SettingsRouterState.appearance(),
          behavior: () => const _SettingsRouterState.behavior(),
        ) ??
        const _SettingsRouterState.home();
  }

  @override
  AppRoutePathSettings get currentConfiguration {
    return _currentState.when(
      home: () => const AppRoutePath.settings(),
      appearance: () => const AppRoutePath.settings(
        subRoute: SettingsRoutePath.appearance(),
      ),
      behavior: () => const AppRoutePath.settings(
        subRoute: SettingsRoutePath.behavior(),
      ),
    ) as AppRoutePathSettings;
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      reportsRouteUpdateToEngine: true,
      pages: _buildPages(context),
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }
        _currentState = const _SettingsRouterState.home();

        return true;
      },
    );
  }

  List<Page> _buildPages(BuildContext context) {
    final page = _currentState.when(
      home: () => null,
      appearance: () => const MaterialPage(
        key: ValueKey('AppearancePage'),
        child: AppearanceSettingsPage(),
      ),
      behavior: () => const MaterialPage(
        key: ValueKey('BehaviorPage'),
        child: BehaviorPage(),
      ),
    );
    return [
      MaterialPage(
        key: const ValueKey('SettingsPageBody'),
        child: _Body(
          onLoadRoute: (route) => _setRoute(
            AppRoutePathSettings(subRoute: route),
          ),
        ),
      ),
      if (page != null) page
    ];
  }
}
