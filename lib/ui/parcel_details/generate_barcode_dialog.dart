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

import 'dart:math';

import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:libretrack/logger.dart';
import 'package:libretrack/ui/theme.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../locale.dart';

class GenerateBarcodeDialog extends StatelessWidget {
  final String trackNumber;

  const GenerateBarcodeDialog({
    super.key,
    required this.trackNumber,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final minSize = min(size.width, size.height);
    final deviceType = getDeviceType(size);

    return Theme(
      data: AppTheme.getThemeData(),
      child: AlertDialog(
        title: Text(S.of(context).generateBarcode),
        scrollable: true,
        content: BarcodeWidget(
          width: deviceType == DeviceScreenType.mobile ? minSize : 300,
          height: deviceType == DeviceScreenType.mobile ? minSize / 3 : 150,
          barcode: Barcode.code128(),
          data: trackNumber,
          errorBuilder: (context, error) {
            log().e(
              'Unable to generate barcode for tracking number $trackNumber',
              error: error,
            );
            return _GenerateBarcodeError(
              error: error,
            );
          },
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
        ],
      ),
    );
  }
}

class _GenerateBarcodeError extends StatelessWidget {
  final String error;

  const _GenerateBarcodeError({
    required this.error,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.error_outline,
          size: 48,
          color: Colors.blueGrey,
        ),
        const SizedBox(width: 8.0),
        Flexible(
          child: Text(
            S.of(context).generateBarcodFailed(error),
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Colors.blueGrey),
          ),
        ),
      ],
    );
  }
}
