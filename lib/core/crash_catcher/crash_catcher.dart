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

export 'handler/default_crash_handler.dart';
export 'handler/notification_crash_handler.dart';
export 'hook/isolate_crash_hook.dart';
export 'hook/zoned_crash_hook.dart';

abstract class CrashHandler {
  Future<void> handle(Object error, StackTrace? stackTrace);
}

abstract class CrashHook {
  Future<void> setup({
    required List<CrashHandler> handlers,
  });
}

Future<void> crashCatcher({
  required List<CrashHook> hooks,
  required List<CrashHandler> handlers,
}) async {
  await Future.wait(hooks.map(
    (hook) => hook.setup(handlers: handlers),
  ));
}
