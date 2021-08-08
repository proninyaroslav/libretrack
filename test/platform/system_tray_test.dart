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

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:libretrack/core/platform_info.dart';
import 'package:libretrack/core/settings/settings.dart';
import 'package:libretrack/platform/system_tray.dart';
import 'package:mocktail/mocktail.dart';

import '../mock/mock.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('System tray', () {
    const MethodChannel channel = MethodChannel(
      'org.proninyaroslav.libretrack.system_tray',
    );
    late final PlatformInfo mockPlatformInfo;
    late final AppSettings mockPref;
    late SystemTray systemTray;
    final List<MethodCall> log = <MethodCall>[];

    setUpAll(() {
      mockPref = MockAppSettings();
      mockPlatformInfo = MockPlatformInfo();
      when(() => mockPlatformInfo.isLinux).thenReturn(true);
    });

    setUp(() {
      systemTray = SystemTray(mockPlatformInfo, mockPref);
      channel.setMockMethodCallHandler((methodCall) async {
        log.add(methodCall);
      });
    });

    tearDown(() {
      log.clear();
    });

    test('Init', () {
      when(() => mockPref.trayIcon).thenReturn(true);
      systemTray.init();
      expect(log, [
        isMethodCall('enableTrayIcon', arguments: null),
      ]);
    });

    test('Enable/disable', () {
      systemTray.switchTrayIcon(enable: true);
      systemTray.switchTrayIcon(enable: false);
      expect(log, [
        isMethodCall('enableTrayIcon', arguments: null),
        isMethodCall('disableTrayIcon', arguments: null),
      ]);
    });
  });
}
