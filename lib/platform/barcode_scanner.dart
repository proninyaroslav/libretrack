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

class BarcodeScanner {
  static const _channel = MethodChannel(
    'org.proninyaroslav.libretrack.barcode_scanner',
  );

  Future<String?> scan() async {
    try {
      return await _channel.invokeMethod('scan');
    } on PlatformException catch (e) {
      throw BarcodeScannerException(e.message);
    }
  }
}

class BarcodeScannerException implements Exception {
  final String? message;

  BarcodeScannerException(this.message);

  @override
  String toString() => message == null
      ? 'BarcodeScannerException'
      : 'BarcodeScannerException: $message';
}
