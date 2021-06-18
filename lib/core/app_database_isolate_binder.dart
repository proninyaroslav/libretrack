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

// ignore_for_file: invalid_use_of_protected_member

import 'dart:isolate';
import 'dart:ui';

import 'package:injectable/injectable.dart';
import 'package:libretrack/core/storage/database.dart';

/// Helper class that binds database events between Isolates
@Singleton(dependsOn: [AppDatabase])
class AppDatabaseIsolateBinder {
  static const _portName = 'libretrack_app_database_changed';

  final AppDatabase _db;

  AppDatabaseIsolateBinder(this._db);

  /// Note: use it before emitting Isolate init
  void listenChanges() {
    final port = ReceivePort();
    IsolateNameServer.registerPortWithName(port.sendPort, _portName);
    port.listen((dynamic event) {
      assert(event is String);
      _db.changeListener.add(event as String);
    });
  }

  void emitChanges() {
    _db.changeListener.stream.listen((event) {
      final sendPort = IsolateNameServer.lookupPortByName(_portName);
      if (sendPort != null) {
        sendPort.send(event);
      }
    });
  }
}
