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

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:libretrack/core/platform_info.dart';
import 'package:libretrack/core/settings/settings.dart';

@injectable
class SystemTray {
  static const _channel = MethodChannel(
    'org.proninyaroslav.libretrack.system_tray',
  );

  final PlatformInfo _platformInfo;
  final AppSettings _pref;

  SystemTray(this._platformInfo, this._pref);

  Future<void> init() async => switchTrayIcon(enable: await _pref.trayIcon);

  Future<void> switchTrayIcon({required bool enable}) async {
    // TODO: Windows/macOS support
    if (!_platformInfo.isLinux) {
      return;
    }
    try {
      await _channel.invokeMethod(
        enable ? 'enableTrayIcon' : 'disableTrayIcon',
      );
    } on PlatformException catch (e) {
      throw SystemTrayException(e.message);
    }
  }

  Future<void> showWindow() async {
    // TODO: Windows/macOS support
    if (!_platformInfo.isLinux) {
      return;
    }
    try {
      await _channel.invokeMethod('showWindow');
    } on PlatformException catch (e) {
      throw SystemTrayException(e.message);
    }
  }
}

class SystemTrayException implements Exception {
  final String? message;

  SystemTrayException(this.message);

  @override
  String toString() =>
      message == null ? 'SystemTrayException' : 'SystemTrayException: $message';
}
