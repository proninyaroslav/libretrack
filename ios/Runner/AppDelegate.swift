/*
 * Copyright (C) 2021 Yaroslav Pronin <proninyaroslav@mail.ru>
 * Copyright (C) 2021 Insurgo Inc. <insurgo@riseup.net>
 *
 * This file is part of LibreTrack.
 *
 * LibreTrack is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * LibreTrack is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with LibreTrack.  If not, see <http://www.gnu.org/licenses/>.
 */

import UIKit
import Flutter
import workmanager

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    override func application(
      _ application: UIApplication,
      didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
      GeneratedPluginRegistrant.register(with: self)
      UNUserNotificationCenter.current().delegate = self

      UIApplication.shared.setMinimumBackgroundFetchInterval(TimeInterval(60 * 15))

      // TODO: wait for fix https://github.com/fluttercommunity/flutter_workmanager/issues/189
      WorkmanagerPlugin.register(with: self.registrar(forPlugin: "be.tramckrijte.workmanager.WorkmanagerPlugin")!)
      WorkmanagerPlugin.setPluginRegistrantCallback { registry in
          // registry in this case is the FlutterEngine that is created in Workmanager's performFetchWithCompletionHandler
          // This will make other plugins available during a background fetch
          GeneratedPluginRegistrant.register(with: registry)
      }

      return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }

    override func userNotificationCenter(
        _ center: UNUserNotificationCenter,
        willPresent notification: UNNotification,
        withCompletionHandler completionHandler: @escaping
        (UNNotificationPresentationOptions) -> Void
    ) {
        completionHandler(.alert) // Shows banner even if app is in foreground
    }
}
