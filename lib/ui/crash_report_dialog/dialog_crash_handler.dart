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

import 'package:flutter/material.dart';
import 'package:libretrack/core/crash_catcher/crash_catcher.dart';
import 'package:libretrack/core/crash_report/crash_report_manager.dart';
import 'package:libretrack/ui/crash_report_dialog/crash_report_dialog.dart';
import 'package:libretrack/ui/crash_report_dialog/send_report_error_dialog.dart';

import '../../injector.dart';

class DialogCrashHandler implements CrashHandler {
  final GlobalKey<NavigatorState> navigatorKey;
  final CrashHandler? fallbackHandler;

  DialogCrashHandler({
    required this.navigatorKey,
    this.fallbackHandler,
  });

  @override
  Future<void> handle(Object error, StackTrace? stackTrace) async {
    final context = _getContext();
    if (context == null) {
      return fallbackHandler?.handle(error, stackTrace);
    }
    showDialog(
      context: context,
      useRootNavigator: false,
      barrierDismissible: false,
      builder: (context) {
        return CrashReportDialog(
          error: error,
          stackTrace: stackTrace,
          onReport: (message) => _onReport(
            error,
            stackTrace,
            message,
          ),
        );
      },
    );
  }

  Future<bool> _onReport(
    Object error,
    StackTrace? stackTrace,
    String? message,
  ) async {
    final res = await getIt<CrashReportManager>().sendReport(
      CrashInfo(
        error: error,
        stackTrace: stackTrace,
        message: message,
      ),
    );
    final context = _getContext();
    if (context == null) {
      return true;
    }
    return res.maybeWhen(
      emailUnsupported: () {
        final context = _getContext();
        if (context == null) {
          return true;
        }
        showDialog(
          context: context,
          useRootNavigator: false,
          barrierDismissible: false,
          builder: (context) => const SendReportErrorDialog(),
        );
        return false;
      },
      orElse: () => true,
    );
  }

  BuildContext? _getContext() => navigatorKey.currentState?.overlay?.context;
}
