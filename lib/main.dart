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
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:libretrack/core/app_database_isolate_binder.dart';
import 'package:libretrack/core/crash_catcher/crash_catcher.dart';
import 'package:libretrack/core/crash_catcher/hook/flutter_crash_hook.dart';
import 'package:libretrack/core/notification_manager.dart';
import 'package:libretrack/platform/system_tray.dart';

import 'core/tracking_scheduler.dart';
import 'core/work_manager/work_manager.dart';
import 'env.dart';
import 'injector.dart';
import 'ui/app.dart';
import 'ui/crash_report_dialog/dialog_crash_handler.dart';

final navigatorKey = GlobalKey<NavigatorState>();

Future<void> _main() async {
  await initInjector(kDebugMode ? Env.dev : Env.prod);
  GestureBinding.instance!.resamplingEnabled = true;

  await getIt<SystemTray>().init();
  getIt<AppDatabaseIsolateBinder>().listenChanges();
  await getIt<NotificationManager>().init();
  await getIt<WorkManager>().init();
  await getIt<TrackingScheduler>().init();

  runApp(
    App(
      enableDevicePreview: false,
      navigatorKey: navigatorKey,
    ),
  );
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kDebugMode) {
    return _main();
  } else {
    return crashCatcher(
      hooks: [
        ZonedCrashHook(mainEntry: _main),
        IsolateCrashHook(),
        FlutterCrashHook(),
      ],
      handlers: [
        DefaultCrashHandler(),
        DialogCrashHandler(
          navigatorKey: navigatorKey,
          fallbackHandler: NotificationCrashHandler(),
        ),
      ],
    );
  }
}
