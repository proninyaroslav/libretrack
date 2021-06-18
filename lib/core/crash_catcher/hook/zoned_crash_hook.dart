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

import 'package:libretrack/core/crash_catcher/crash_catcher.dart';

class ZonedCrashHook implements CrashHook {
  final void Function() mainEntry;

  ZonedCrashHook({required this.mainEntry});

  @override
  Future<void> setup({
    required List<CrashHandler> handlers,
  }) async {
    runZonedGuarded(
      mainEntry,
      (error, stackTrace) async {
        await Future.wait(handlers.map(
          (handler) => handler.handle(error, stackTrace),
        ));
      },
    );
  }
}
