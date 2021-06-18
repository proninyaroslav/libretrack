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

import 'package:flutter/material.dart';
import 'package:libretrack/locale.dart';
import 'package:libretrack/ui/widget/widget.dart';

typedef OnReportCallback = FutureOr<bool> Function(String? message);

class CrashReportDialog extends StatefulWidget {
  final Object error;
  final StackTrace? stackTrace;
  final OnReportCallback? onReport;

  const CrashReportDialog({
    Key? key,
    required this.error,
    this.stackTrace,
    this.onReport,
  }) : super(key: key);

  @override
  _CrashReportDialogState createState() => _CrashReportDialogState();
}

class _CrashReportDialogState extends State<CrashReportDialog> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();

    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(S.of(context).error),
      scrollable: true,
      content: _Body(
        controller: _controller,
        error: widget.error,
        stackTrace: widget.stackTrace,
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            S.of(context).close,
            textAlign: TextAlign.end,
          ),
        ),
        TextButton(
          onPressed: () async {
            if (await widget.onReport?.call(_getComment()) ?? true) {
              Navigator.of(context).pop();
            }
          },
          child: Text(
            S.of(context).crashDialogReport,
            textAlign: TextAlign.end,
          ),
        ),
      ],
    );
  }

  String? _getComment() {
    final text = _controller.text;
    return text.isEmpty ? null : text;
  }
}

class _Body extends StatelessWidget {
  final TextEditingController controller;
  final Object error;
  final StackTrace? stackTrace;

  const _Body({
    Key? key,
    required this.controller,
    required this.error,
    this.stackTrace,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(S.of(context).crashDialogSummary),
        const SizedBox(height: 8.0),
        Text(S.of(context).crashDialogExtraInfo),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: TextField(controller: controller),
        ),
        CustomExpansionTile(
          title: Text(S.of(context).crashDialogMoreDetails),
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText(
              [
                error.toString(),
                if (stackTrace != null) stackTrace.toString(),
              ].join('\n'),
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(fontFamily: 'Monospace'),
            ),
          ],
        ),
      ],
    );
  }
}
