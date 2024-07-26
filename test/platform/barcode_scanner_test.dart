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
import 'package:libretrack/platform/barcode_scanner.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('Barcode scanner', () {
    const MethodChannel channel = MethodChannel(
      'org.proninyaroslav.libretrack.barcode_scanner',
    );
    late BarcodeScanner barcodeScanner;
    final List<MethodCall> log = <MethodCall>[];

    setUp(() {
      barcodeScanner = BarcodeScanner();
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (methodCall) async {
        log.add(methodCall);
        return 'test';
      });
    });

    tearDown(() {
      log.clear();
    });

    test('Scan', () async {
      expect(await barcodeScanner.scan(), 'test');
      expect(log, [isMethodCall('scan', arguments: null)]);
    });
  });
}
