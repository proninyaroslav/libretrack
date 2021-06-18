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

import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:libretrack/core/notification_manager.dart';
import 'package:libretrack/core/settings/settings.dart';
import 'package:libretrack/locale.dart';
import 'package:libretrack/logger.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

import '../injector.dart';
import 'app_cubit.dart';
import 'app_router.dart';
import 'theme.dart';

class App extends StatefulWidget {
  final bool enableDevicePreview;
  final GlobalKey<NavigatorState> navigatorKey;

  const App({
    Key? key,
    required this.enableDevicePreview,
    required this.navigatorKey,
  }) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  late final AppRouterDelegate _routerDelegate;
  final AppRouteInfoParser _routeInfoParser = const AppRouteInfoParser();
  late StreamSubscription _sharedTextIntentSubscription;

  @override
  void initState() {
    super.initState();

    _routerDelegate = AppRouterDelegate(navigatorKey: widget.navigatorKey);

    getIt<NotificationManager>().getAppLaunchDetails().then(
      (action) {
        if (action == null) {
          return;
        }
        final initRoute = _notifyActionToRoute(action);
        if (initRoute != null) {
          _routerDelegate.setNewRoutePath(initRoute);
        }
      },
      onError: (e, StackTrace stackTrace) {
        log().e(
          'Unable to launch the app from the notification',
          e,
          stackTrace,
        );
      },
    );

    getIt<NotificationManager>().listenOnSelectNotification().listen(
      (action) {
        final initRoute = _notifyActionToRoute(action);
        if (initRoute != null) {
          _routerDelegate.setNewRoutePath(initRoute);
        }
      },
      onError: (e, StackTrace stackTrace) {
        log().e('Unable to handle notification action', e, stackTrace);
      },
    );

    // TODO: iOS/Desktop/Web support
    _sharedTextIntentSubscription = ReceiveSharingIntent.getTextStream().listen(
      (value) {
        _routerDelegate.setNewRoutePath(
          AppRoutePath.addParcels(initialTrackNumbers: value),
        );
      },
      onError: (e, StackTrace stackTrace) {
        log().e('Unable to getting shared text', e, stackTrace);
      },
    );

    ReceiveSharingIntent.getInitialText().then(
      (value) {
        if (value != null) {
          _routerDelegate.setNewRoutePath(
            AppRoutePath.addParcels(initialTrackNumbers: value),
          );
        }
      },
      onError: (e, StackTrace stackTrace) {
        log().e('Unable to getting initial shared text', e, stackTrace);
      },
    );
  }

  AppRoutePath? _notifyActionToRoute(NotificationAction action) {
    return action.maybeWhen(
      openParcelDetails: (trackNumber) =>
          AppRoutePath.parcelDetails(trackNumber),
      openParcelsList: () => const AppRoutePath.home(
        HomeRoutePath.parcels(),
      ),
      orElse: () {},
    );
  }

  @override
  void dispose() {
    _sharedTextIntentSubscription.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.enableDevicePreview && kDebugMode
        ? _buildDevicePreview()
        : _buildApp(context);
  }

  Widget _buildDevicePreview() {
    return DevicePreview(
      availableLocales: AppLocale.supportedLocales,
      builder: (context) => _buildApp(
        context,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        themeMode: MediaQuery.of(context).platformBrightness == Brightness.dark
            ? ThemeMode.dark
            : ThemeMode.light,
      ),
    );
  }

  Widget _buildApp(
    BuildContext context, {
    Locale? locale,
    TransitionBuilder? builder,
    ThemeMode? themeMode,
  }) {
    return BlocProvider(
      create: (context) => getIt<AppCubit>(),
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return MaterialApp.router(
            title: 'LibreTrack',
            themeMode: themeMode ?? _mapThemeMode(state.theme),
            theme: AppTheme.getThemeData(),
            darkTheme: AppTheme.getThemeData(dark: true),
            localizationsDelegates: AppLocale.localizationsDelegates,
            supportedLocales: AppLocale.supportedLocales,
            locale: locale ?? _mapLocale(state.locale),
            builder: builder,
            routerDelegate: _routerDelegate,
            routeInformationParser: _routeInfoParser,
          );
        },
      ),
    );
  }

  ThemeMode _mapThemeMode(AppThemeType theme) {
    return theme.when(
      light: () => ThemeMode.light,
      dark: () => ThemeMode.dark,
      system: () => ThemeMode.system,
    );
  }

  Locale? _mapLocale(AppLocaleType locale) {
    return locale.when(
      system: () => null,
      inner: (locale) => Locale(
        locale.languageCode,
        locale.countryCode,
      ),
    );
  }
}
