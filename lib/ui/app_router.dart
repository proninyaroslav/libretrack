// Copyright (C) 2021-2024 Yaroslav Pronin <proninyaroslav@mail.ru>
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

import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/ui/add_parcels/add_parcels.dart';
import 'package:libretrack/ui/parcels/parcels.dart';
import 'package:libretrack/ui/settings/settings.dart';

import '../injector.dart';
import 'about/about.dart';
import 'accounts/accounts.dart';
import 'adaptive_scaffold_page.dart';
import 'add_account/add_account.dart';
import 'cubit/error_report_cubit.dart';
import 'dialog_page.dart';
import 'edit_account/edit_account.dart';
import 'home/home.dart';
import 'parcel_details/parcel_details.dart';
import 'widget/page_not_found.dart';

part 'app_router.freezed.dart';

@freezed
class AppRoutePath with _$AppRoutePath {
  const factory AppRoutePath.unknown() = AppRoutePathUnknown;

  const factory AppRoutePath.home(
    HomeRoutePath subRoute,
  ) = AppRoutePathHome;

  const factory AppRoutePath.addAccount() = AppRoutePathAddAccount;

  const factory AppRoutePath.editAccount(TrackingServiceType serviceType) =
      AppRoutePathEditAccount;

  const factory AppRoutePath.addParcels({
    String? initialTrackNumbers,
  }) = AppRoutePathAddParcels;

  const factory AppRoutePath.parcelDetails(String trackNumber) =
      AppRoutePathParcelDetails;

  const factory AppRoutePath.settings({
    SettingsRoutePath? subRoute,
  }) = AppRoutePathSettings;

  const factory AppRoutePath.about() = AppRoutePathAbout;
}

@freezed
class HomeRoutePath with _$HomeRoutePath {
  const factory HomeRoutePath.parcels() = HomeRoutePathParcels;
  const factory HomeRoutePath.accounts() = HomeRoutePathAccounts;
}

@freezed
class SettingsRoutePath with _$SettingsRoutePath {
  const factory SettingsRoutePath.appearance() = SettingsRoutePathAppearance;
  const factory SettingsRoutePath.behavior() = SettingsRoutePathBehavior;
}

@freezed
class RouterState with _$RouterState {
  const RouterState._();

  ValueKey<String> get key {
    return when(
      unknown: () => const ValueKey('UnknownPage'),
      home: (_) => const ValueKey('HomePage'),
      addAccount: () => const ValueKey('AddAccountPage'),
      editAccount: (serviceType) => ValueKey('EditAccountPage_$serviceType'),
      addParcels: (_) => const ValueKey('AddParcelsPage'),
      parcelDetails: (trackNumber) =>
          ValueKey('ParcelDetailsPage_$trackNumber'),
      addMissingParcel: (_) => const ValueKey('AddParcelsPage'),
      addParcelAndShow: (_) => const ValueKey('AddParcelsPage'),
      showAddedParcel: (trackNumber) =>
          ValueKey('ParcelDetailsPage_$trackNumber'),
      settings: (_) => const ValueKey('SettingsPage'),
      about: () => const ValueKey('AboutPage'),
    );
  }

  const factory RouterState.unknown() = RouterStateUnknown;

  const factory RouterState.home(
    HomeRoutePath subRoute,
  ) = RouterStateHome;

  const factory RouterState.addAccount() = RouterStateAddAccount;

  const factory RouterState.editAccount(
    TrackingServiceType serviceType,
  ) = RouterStateEditAccount;

  const factory RouterState.addParcels({
    TrackingNumbers? initialTrackNumbers,
  }) = RouterStateAddParcels;

  const factory RouterState.parcelDetails(
    String trackNumber,
  ) = RouterStateParcelDetails;

  const factory RouterState.addMissingParcel(
    String trackNumber,
  ) = RouterStateAddMissingParcel;

  const factory RouterState.addParcelAndShow(
    String trackNumber,
  ) = RouterStateAddParcelAndShow;

  const factory RouterState.showAddedParcel(
    String trackNumber,
  ) = RouterStateShowAddedParcel;

  const factory RouterState.settings({
    SettingsRoutePath? subRoute,
  }) = RouterStateSettings;

  const factory RouterState.about() = RouterStateAbout;
}

const _initRoute = AppRoutePath.home(HomeRoutePath.parcels());

class AppRouterDelegate extends RouterDelegate<AppRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppRoutePath> {
  final _StateStack _stateStack = _StateStack()
    ..push(
      _routeToState(_initRoute),
    );

  RouterState? get _currentState => _stateStack.peek();

  set _currentState(RouterState? value) {
    if (value == null || _currentState == value) {
      return;
    }
    _stateStack.push(value);
    notifyListeners();
  }

  void _popState() {
    _stateStack.pop();
    notifyListeners();
  }

  void _replaceState(RouterState value) {
    _stateStack.pop();
    _currentState = value;
  }

  @override
  final GlobalKey<NavigatorState> navigatorKey;

  AppRouterDelegate({required this.navigatorKey});

  @override
  AppRoutePath get currentConfiguration {
    final current = _currentState?.when(
      unknown: () => const AppRoutePath.unknown(),
      home: (subRoute) => AppRoutePath.home(subRoute),
      addAccount: () => const AppRoutePath.addAccount(),
      editAccount: (serviceType) => AppRoutePath.editAccount(serviceType),
      addParcels: (initialTrackNumbers) => AppRoutePath.addParcels(
        initialTrackNumbers: initialTrackNumbers?.value,
      ),
      parcelDetails: (trackNumber) => AppRoutePath.parcelDetails(trackNumber),
      addMissingParcel: (trackNumber) => AppRoutePath.addParcels(
        initialTrackNumbers: trackNumber,
      ),
      addParcelAndShow: (trackNumber) => AppRoutePath.addParcels(
        initialTrackNumbers: trackNumber,
      ),
      showAddedParcel: (trackNumber) => AppRoutePath.parcelDetails(trackNumber),
      settings: (subRoute) => AppRoutePath.settings(subRoute: subRoute),
      about: () => const AppRoutePath.about(),
    );
    return current ?? _initRoute;
  }

  @override
  Future<void> setNewRoutePath(AppRoutePath configuration) {
    return SynchronousFuture(_setRoute(configuration));
  }

  @override
  Future<void> setInitialRoutePath(AppRoutePath configuration) async {
    if (configuration is AppRoutePathHome) {
      return;
    }
    setNewRoutePath(configuration);
  }

  void _setRoute(AppRoutePath route) => _currentState = _routeToState(route);

  static RouterState _routeToState(AppRoutePath route) {
    return route.when(
      unknown: () => const RouterState.unknown(),
      home: (subRoute) => RouterState.home(subRoute),
      addAccount: () => const RouterState.addAccount(),
      editAccount: (serviceType) => RouterState.editAccount(serviceType),
      addParcels: (initialTrackNumbers) => RouterState.addParcels(
        initialTrackNumbers: TrackingNumbers(
          value: initialTrackNumbers ?? '',
        ),
      ),
      parcelDetails: (trackNumber) => RouterState.parcelDetails(trackNumber),
      settings: (subRoute) => RouterState.settings(subRoute: subRoute),
      about: () => const RouterState.about(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final pages = _buildPages(context);

    return Navigator(
      key: navigatorKey,
      reportsRouteUpdateToEngine: true,
      pages: pages,
      onDidRemovePage: (page) {
        if (page.key == _stateStack.peek()?.key) {
          _stateStack.pop();
        }
      },
    );
  }

  List<Page> _buildPages(BuildContext context) {
    final pages = _PagesStack();
    final states = _stateStack.toList();
    for (var i = 0; i < states.length; i++) {
      final state = states[i];
      state.when(
        unknown: () {
          pages.push(_buildUnknownPage());
        },
        home: (subRoute) {
          pages.popAll();
          pages.push(_buildHomePage(state.key, subRoute));
        },
        addAccount: () {
          pages.push(_buildAddAccountPage(state.key, context));
        },
        editAccount: (serviceType) {
          pages.push(_buildEditAccountPage(state.key, context, serviceType));
        },
        addParcels: (initialTrackNumbers) {
          pages.push(
              _buildAddParcelsPage(state.key, context, initialTrackNumbers));
        },
        parcelDetails: (trackNumber) {
          pages.push(_buildParcelDetailsPage(state.key, context, trackNumber));
        },
        addMissingParcel: (trackNumber) {
          pages.push(
            _buildAddParcelsPage(
                state.key, context, TrackingNumbers(value: trackNumber)),
          );
        },
        addParcelAndShow: (trackNumber) {
          pages.push(
            _buildAddParcelsPage(
                state.key, context, TrackingNumbers(value: trackNumber)),
          );
        },
        showAddedParcel: (trackNumber) {
          if (i > 0 && states[i - 1] is RouterStateParcelDetails) {
            // Remove current details dialog
            pages.pop();
          }
          pages.push(_buildParcelDetailsPage(state.key, context, trackNumber));
        },
        settings: (subRoute) {
          pages.push(_buildSettings(state.key, context, subRoute: subRoute));
        },
        about: () {
          pages.push(_buildAboutPage(state.key, context));
        },
      );
    }

    return pages.toList();
  }

  Page _buildHomePage(ValueKey key, HomeRoutePath subRoute) {
    return MaterialPage(
      key: key,
      child: MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: getIt<ParcelsCubit>(),
          ),
          BlocProvider.value(
            value: getIt<FirstStartCubit>(),
          ),
          BlocProvider.value(
            value: getIt<SelectableParcelsCubit>(),
          ),
          BlocProvider.value(
            value: getIt<AccountsCubit>(),
          ),
          BlocProvider.value(
            value: getIt<ParcelsActionsCubit>(),
          ),
          BlocProvider.value(
            value: getIt<AccountsActionsCubit>(),
          ),
        ],
        child: HomePage(
          initRoute: subRoute,
          onLoadRoute: (route) => _setRoute(route),
        ),
      ),
    );
  }

  Page _buildUnknownPage() {
    return const MaterialPage(
      key: ValueKey('UnknownPage'),
      child: PageNotFound(),
    );
  }

  Page _buildAddAccountPage(ValueKey key, BuildContext context) {
    return AdaptiveScaffoldPage(
      key: key,
      child: MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: getIt<ServiceListCubit>(),
          ),
          BlocProvider.value(
            value: getIt<AddAccountCubit>(),
          ),
          BlocProvider.value(
            value: getIt<ErrorReportCubit>(),
          ),
        ],
        child: const AddAccountPage(),
      ),
    );
  }

  Page _buildEditAccountPage(
    ValueKey key,
    BuildContext context,
    TrackingServiceType serviceType,
  ) {
    return DialogPage(
      key: key,
      child: MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: getIt<ServiceInfoCubit>(),
          ),
          BlocProvider.value(
            value: getIt<EditAccountCubit>(),
          ),
          BlocProvider.value(
            value: getIt<ErrorReportCubit>(),
          ),
        ],
        child: EditAccountPage(
          serviceType: serviceType,
        ),
      ),
    );
  }

  Page _buildAddParcelsPage(
    ValueKey key,
    BuildContext context,
    TrackingNumbers? initialTrackNumbers,
  ) {
    return AdaptiveScaffoldPage(
      key: key,
      child: MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: getIt<AddParcelsCubit>(),
          ),
          BlocProvider.value(
            value: getIt<ErrorReportCubit>(),
          ),
        ],
        child: AddParcelsPage(
          initialTrackNumbers: initialTrackNumbers,
          onAdd: () {
            _currentState?.maybeWhen(
              addMissingParcel: (trackNumber) {
                _replaceState(RouterState.showAddedParcel(trackNumber));
              },
              addParcelAndShow: (trackNumber) {
                _replaceState(RouterState.showAddedParcel(trackNumber));
              },
              orElse: () {
                _popState();
              },
            );
          },
        ),
      ),
    );
  }

  Page _buildParcelDetailsPage(
    ValueKey key,
    BuildContext context,
    String trackNumber,
  ) {
    return AdaptiveScaffoldPage(
      key: key,
      child: MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: getIt<ParcelDetailsCubit>(),
          ),
          BlocProvider.value(
            value: getIt<EditParcelCubit>(),
          ),
          BlocProvider.value(
            value: getIt<ParcelErrorBannerCubit>(),
          ),
          BlocProvider.value(
            value: getIt<DetailsActionsCubit>(),
          ),
          BlocProvider.value(
            value: getIt<ErrorReportCubit>(),
          ),
        ],
        child: ParcelDetailsPage(
          trackNumber: trackNumber,
          onAddMissingParcel: (trackNumber) {
            _currentState = RouterState.addMissingParcel(trackNumber);
          },
          onAddParcel: (trackNumber) {
            _currentState = RouterState.addParcelAndShow(trackNumber);
          },
        ),
      ),
    );
  }

  Page _buildSettings(
    ValueKey key,
    BuildContext context, {
    SettingsRoutePath? subRoute,
  }) {
    return MaterialPage(
      key: key,
      child: MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: getIt<AppearanceSettingsCubit>(),
          ),
          BlocProvider.value(
            value: getIt<BehaviorSettingsCubit>(),
          ),
        ],
        child: SettingsPage(initRoute: subRoute),
      ),
    );
  }

  Page _buildAboutPage(ValueKey key, BuildContext context) {
    return DialogPage(
      key: key,
      child: BlocProvider.value(
        value: getIt<AboutCubit>(),
        child: const AboutPage(),
      ),
    );
  }
}

class AppRouteInfoParser extends RouteInformationParser<AppRoutePath> {
  const AppRouteInfoParser();

  @override
  Future<AppRoutePath> parseRouteInformation(
    RouteInformation routeInformation,
  ) async {
    final uri = routeInformation.uri;
    final pathSegments = uri.pathSegments;
    final first = pathSegments.getOrNull(0);

    if (first == null) {
      return _initRoute;
    } else if (first == 'accounts') {
      return _parseAccountsPath(pathSegments);
    } else if (first == 'parcels') {
      return _parseParcelsPath(
        pathSegments,
        state: routeInformation.state,
      );
    } else if (first == 'settings') {
      return _parseSettings(pathSegments);
    } else if (first == 'about') {
      return const AppRoutePath.about();
    }

    return const AppRoutePath.unknown();
  }

  AppRoutePath _parseParcelsPath(
    List<String> pathSegments, {
    required Object? state,
  }) {
    final second = pathSegments.getOrNull(1);
    if (second == null) {
      return const AppRoutePath.home(HomeRoutePath.parcels());
    } else if (second == 'add') {
      return AppRoutePath.addParcels(
        initialTrackNumbers: state is String ? state : null,
      );
    } else if (second == 'details') {
      return _parseParcelDetails(pathSegments.getOrNull(2));
    }

    return const AppRoutePath.unknown();
  }

  AppRoutePath _parseAccountsPath(List<String> pathSegments) {
    final second = pathSegments.getOrNull(1);
    if (second == null) {
      return const AppRoutePath.home(HomeRoutePath.accounts());
    } else if (second == 'add') {
      return const AppRoutePath.addAccount();
    } else if (second == 'edit') {
      return _parseEditAccount(pathSegments.getOrNull(2));
    }

    return const AppRoutePath.unknown();
  }

  AppRoutePath _parseEditAccount(String? typeSegment) {
    if (typeSegment == null) {
      return const AppRoutePath.unknown();
    }
    final serviceType = EnumToString.fromString(
      TrackingServiceType.values,
      typeSegment,
    );
    if (serviceType == null) {
      return const AppRoutePath.unknown();
    }

    return AppRoutePath.editAccount(serviceType);
  }

  AppRoutePath _parseParcelDetails(String? trackNumberSegment) {
    if (trackNumberSegment == null) {
      return const AppRoutePath.unknown();
    } else {
      return AppRoutePath.parcelDetails(trackNumberSegment);
    }
  }

  AppRoutePath _parseSettings(List<String> pathSegments) {
    final subRouteSegment = pathSegments.getOrNull(1);
    if (subRouteSegment == 'appearance') {
      return const AppRoutePath.settings(
        subRoute: SettingsRoutePath.appearance(),
      );
    } else if (subRouteSegment == 'behavior') {
      return const AppRoutePath.settings(
        subRoute: SettingsRoutePath.behavior(),
      );
    } else {
      return const AppRoutePath.settings();
    }
  }

  @override
  RouteInformation restoreRouteInformation(
    AppRoutePath configuration,
  ) {
    return RouteInformation(
      uri: Uri.parse(configuration.when(
        unknown: () => '/page-not-found',
        home: (subRoute) {
          final subRouteStr = subRoute.when(
            parcels: () => 'parcels',
            accounts: () => 'accounts',
          );
          return '/$subRouteStr';
        },
        addAccount: () => '/accounts/add',
        editAccount: (serviceType) {
          final type = EnumToString.convertToString(serviceType);
          return '/accounts/edit/$type';
        },
        addParcels: (initialTrackNumbers) => '/parcels/add',
        parcelDetails: (trackNumber) => '/parcels/details/$trackNumber',
        settings: (subRoute) {
          final subRouteStr = subRoute?.when(
            appearance: () => 'appearance',
            behavior: () => 'behavior',
          );
          return subRouteStr == null ? '/settings' : '/settings/$subRouteStr';
        },
        about: () => '/about',
      )),
      state: configuration.maybeWhen(
        addParcels: (initialTrackNumbers) => initialTrackNumbers,
        orElse: () => null,
      ),
    );
  }
}

class AppRouteParserError extends Error {
  String? message;

  AppRouteParserError([this.message]);

  @override
  String toString() =>
      message == null ? 'AppRouteParserError' : 'AppRouteParserError: $message';
}

extension _ListExtension<T> on List<T> {
  T? getOrNull(int index) => index < 0 || index >= length ? null : this[index];
}

class _StateStack {
  final List<RouterState> _stack = [];
  final Set<RouterState> _stateSet = {};

  void push(RouterState state) {
    if (_stateSet.contains(state)) {
      _stateSet.remove(state);
      _stack.remove(state);
    }
    _stateSet.add(state);
    _stack.add(state);
  }

  RouterState? pop() {
    final state = _stack.isEmpty ? null : _stack.removeLast();
    _stateSet.remove(state);

    return state;
  }

  RouterState? peek() => _stack.isEmpty ? null : _stack.last;

  List<RouterState> toList() => _stack;
}

class _PagesStack {
  final List<Page> _stack = [];
  final Map<Key?, Page> _pagesMap = {};

  void push(Page page) {
    final oldPage = _pagesMap[page.key];
    if (oldPage != null) {
      _pagesMap.remove(oldPage.key);
      _stack.remove(oldPage);
    }
    _pagesMap[page.key] = page;
    _stack.add(page);
  }

  Page? pop() {
    final page = _stack.isEmpty ? null : _stack.removeLast();
    _pagesMap.remove(page?.key);

    return page;
  }

  void popAll() {
    _stack.clear();
    _pagesMap.clear();
  }

  List<Page> toList() => _stack;
}
