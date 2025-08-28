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

// ignore_for_file: unused_element

import 'dart:async';

import 'package:collection/collection.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:libretrack/core/crash_report/crash_report_manager.dart';
import 'package:libretrack/core/notification_manager.dart';
import 'package:libretrack/core/platform_info.dart';
import 'package:libretrack/core/settings/settings.dart';
import 'package:libretrack/locale.dart';
import 'package:libretrack/logger.dart';
import 'package:libretrack/platform/system_tray.dart';
import 'package:libretrack/ui/components/intl_locale_bridge.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

import '../injector.dart';
import 'model/app_cubit.dart';
import 'routes/app_router.dart';
import 'theme.dart';

class App extends StatefulWidget {
  final bool enableDevicePreview;
  final GlobalKey<NavigatorState> navigatorKey;

  const App({
    super.key,
    required this.enableDevicePreview,
    required this.navigatorKey,
  });

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final AppRouterDelegate _routerDelegate;
  final AppRouteInfoParser _routeInfoParser = const AppRouteInfoParser();
  StreamSubscription? _sharedTextIntentSubscription;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback(
      (_) async => await context.read<AppCubit>().load(),
    );

    _routerDelegate = AppRouterDelegate(navigatorKey: widget.navigatorKey);

    final platform = getIt<PlatformInfo>();
    final tray = getIt<SystemTray>();

    getIt<NotificationManager>().listenOnSelectNotification().listen(
      (action) {
        final initRoute = _notifyActionToRoute(action);
        if (initRoute != null) {
          _routerDelegate.setNewRoutePath(initRoute);
        } else {
          action.maybeWhen(
            reportCrash: _onReport,
            orElse: () {},
          );
        }
        tray.showWindow();
      },
      onError: (e, StackTrace stackTrace) {
        log().e('Unable to handle notification action',
            error: e, stackTrace: stackTrace);
      },
    );

    // TODO: Desktop/Web support
    if (platform.isAndroid || platform.isIOS) {
      getIt<NotificationManager>().getAppLaunchDetails().then(
        (action) {
          if (action == null) {
            return;
          }
          final initRoute = _notifyActionToRoute(action);
          if (initRoute != null) {
            _routerDelegate.setNewRoutePath(initRoute);
          } else {
            action.maybeWhen(
              reportCrash: _onReport,
              orElse: () {},
            );
          }
        },
        onError: (e, StackTrace stackTrace) {
          log().e(
            'Unable to launch the app from the notification',
            error: e,
            stackTrace: stackTrace,
          );
        },
      );
    }

    // TODO: iOS/Desktop/Web support
    if (platform.isAndroid) {
      _sharedTextIntentSubscription =
          ReceiveSharingIntent.instance.getMediaStream().listen(
        (list) {
          _routerDelegate.setNewRoutePath(
            AppRoutePath.addParcels(
                initialTrackNumbers: list
                    .firstWhereOrNull(
                        (value) => value.type == SharedMediaType.text)
                    ?.path),
          );
        },
        onError: (e, StackTrace stackTrace) {
          log().e('Unable to getting shared text',
              error: e, stackTrace: stackTrace);
        },
      );

      ReceiveSharingIntent.instance.getInitialMedia().then(
        (list) {
          if (list.isNotEmpty) {
            _routerDelegate.setNewRoutePath(
              AppRoutePath.addParcels(
                  initialTrackNumbers: list
                      .firstWhereOrNull(
                          (value) => value.type == SharedMediaType.text)
                      ?.path),
            );
          }
        },
        onError: (e, StackTrace stackTrace) {
          log().e('Unable to getting initial shared text',
              error: e, stackTrace: stackTrace);
        },
      );
    }
  }

  Future<void> _onReport(
    CrashInfo info,
  ) async {
    final res = await getIt<CrashReportManager>().sendReport(info);
    await res.maybeWhen(
      emailUnsupported: () =>
          getIt<NotificationManager>().sendReportErrorNotify(info),
      orElse: () {},
    );
  }

  AppRoutePath? _notifyActionToRoute(NotificationAction action) {
    return action.maybeWhen(
      openParcelDetails: (trackNumber) =>
          AppRoutePath.parcelDetails(trackNumber),
      openParcelsList: () => const AppRoutePath.home(
        HomeRoutePath.parcels(),
      ),
      orElse: () {
        return null;
      },
    );
  }

  @override
  void dispose() {
    _sharedTextIntentSubscription?.cancel();

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
      availableLocales: AppLocalizations.supportedLocales,
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
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        switch (state) {
          case AppStateInitial():
            return const _Loading();
          case AppStateLoaded(locale: var sLocale, theme: final sTheme) ||
                AppStateChanged(locale: var sLocale, theme: final sTheme):
            return MaterialApp.router(
              title: 'LibreTrack',
              themeMode: themeMode ?? _mapThemeMode(sTheme),
              theme: AppTheme.getThemeData(),
              darkTheme: AppTheme.getThemeData(dark: true),
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              locale: locale ?? _mapLocale(sLocale),
              builder: (context, child) {
                return InltLocaleBridge(
                  child: builder == null ? child : builder(context, child),
                );
              },
              routerDelegate: _routerDelegate,
              routeInformationParser: _routeInfoParser,
            );
        }
      },
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

class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: AppTheme.paletteLight.primary,
      child: CircularProgressIndicator(
        color: AppTheme.paletteLight.secondary,
      ),
    );
  }
}
