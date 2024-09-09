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

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/locale.dart';
import 'package:libretrack/ui/components/widget.dart';
import 'package:libretrack/ui/crash_report_dialog/send_report_error_dialog.dart';
import 'package:libretrack/ui/model/error_report_cubit.dart';
import 'package:libretrack/ui/model/error_report_state.dart';
import 'package:libretrack/ui/model/tracking_error_metadata.dart';

import '../model/parcel_info.dart';

class TrackingErrorDialog extends StatelessWidget {
  final TrackingError error;

  const TrackingErrorDialog({
    super.key,
    required this.error,
  });

  @override
  Widget build(BuildContext context) {
    return Unfocus(
      child: AlertDialog(
        content: DialogScrollableContent(
          borderPadding: 8.0,
          child: _Body(error: error),
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
          if (error.isReportable())
            TextButton(
              onPressed: () {
                context
                    .read<ErrorReportCubit>()
                    .sendReport(error: jsonEncode(error));
              },
              child: Text(
                S.of(context).crashDialogReport,
                textAlign: TextAlign.end,
              ),
            ),
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final TrackingError error;

  const _Body({
    required this.error,
  });

  @override
  Widget build(BuildContext context) {
    final metadata = TrackingErrorMetadataMapper.of(context, error);

    return BlocListener<ErrorReportCubit, ErrorReportState>(
      listener: (context, state) {
        state.maybeWhen(
          emailUnsupported: () {
            _showErrorReportFailedDialog(context);
          },
          orElse: () {},
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(metadata.localizedMessage),
          if (error.message != null) ...[
            const SizedBox(height: 24.0),
            _ErrorSection(
              title: S.of(context).trackingErrorReason,
              body: error.message!,
            ),
          ],
          if (error.code != null) ...[
            const SizedBox(height: 16.0),
            _ErrorSection(
              title: S.of(context).trackingErrorCode,
              body: error.code!,
            ),
          ],
          if (error.stackTrace != null) ...[
            const SizedBox(height: 16.0),
            _ErrorSection(
              title: S.of(context).trackingErrorStackTrace,
              body: error.stackTrace!,
              bodyStyle: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontFamily: 'Monospace'),
            ),
          ],
        ],
      ),
    );
  }

  void _showErrorReportFailedDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const SendReportErrorDialog(),
    );
  }
}

class _ErrorSection extends StatelessWidget {
  final String title;
  final String body;
  final TextStyle? bodyStyle;

  const _ErrorSection({
    required this.title,
    required this.body,
    this.bodyStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(height: 8.0),
        SelectableText(
          body,
          style: bodyStyle ?? Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
