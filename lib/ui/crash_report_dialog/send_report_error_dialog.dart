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
import 'package:libretrack/core/crash_report/crash_report_manager.dart';
import 'package:libretrack/ui/components/widget.dart';

import '../../locale.dart';

class SendReportErrorDialog extends StatelessWidget {
  const SendReportErrorDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(S.of(context).error),
      scrollable: true,
      content: ConstrainedBox(
        constraints: const BoxConstraints.tightFor(width: 300),
        child: LinkText(
          text: S.of(context).crashDialogNoEmailApp(
                CrashReportManager.reportEmail,
                S.of(context).projectIssuesPage,
              ),
          selectable: true,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            MaterialLocalizations.of(context).okButtonLabel,
            textAlign: TextAlign.end,
          ),
        ),
      ],
    );
  }
}
