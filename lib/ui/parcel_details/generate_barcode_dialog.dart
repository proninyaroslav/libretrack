// Copyright (C) 2021-2024 Yaroslav Pronin <proninyaroslav@mail.ru>
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
import 'package:libretrack/core/settings/settings.dart';
import 'package:libretrack/injector.dart';
import 'package:libretrack/logger.dart';
import 'package:libretrack/ui/theme.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../locale.dart';

class GenerateBarcodeDialog extends StatefulWidget {
  final String trackNumber;

  const GenerateBarcodeDialog({
    super.key,
    required this.trackNumber,
  });

  @override
  State<GenerateBarcodeDialog> createState() => _GenerateBarcodeDialogState();
}

class _GenerateBarcodeDialogState extends State<GenerateBarcodeDialog> {
  final pref = getIt<AppSettings>();

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
        content: FutureBuilder(
          future: pref.barcodeGeneratorType,
          builder: (context, snapshot) {
            final barcodeType = snapshot.data;
            if (barcodeType == null) {
              return const CircularProgressIndicator();
            } else {
              return BarcodeWidget(
                width: deviceType == DeviceScreenType.mobile ? minSize : 300,
                height:
                    deviceType == DeviceScreenType.mobile ? minSize / 3 : 150,
                barcode: _getBarcodeByType(barcodeType),
                data: widget.trackNumber,
                errorBuilder: (context, error) {
                  log().e(
                    'Unable to generate barcode for tracking number ${widget.trackNumber}',
                    error: error,
                  );
                  return _GenerateBarcodeError(
                    error: error,
                  );
                },
              );
            }
          },
        ),
        actions: [
          FutureBuilder(
            future: pref.barcodeGeneratorType,
            builder: (context, snapshot) {
              final barcodeType = snapshot.data;
              return TextButton(
                onPressed: barcodeType == null
                    ? null
                    : () => _saveBarcodeType(barcodeType),
                child: Text(
                  barcodeType?.when(
                        code128: () => S.of(context).barcodeGeneratorShowQrCode,
                        qrCode: () =>
                            S.of(context).barcodeGeneratorShowBarcodeCode,
                      ) ??
                      "",
                  textAlign: TextAlign.end,
                ),
              );
            },
          ),
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

  Future<void> _saveBarcodeType(BarcodeGeneratorType barcodeType) async {
    await barcodeType.when(
      code128: () async {
        await pref.setBarcodeGeneratorType(
          const BarcodeGeneratorType.qrCode(),
        );
      },
      qrCode: () async {
        await pref.setBarcodeGeneratorType(
          const BarcodeGeneratorType.code128(),
        );
      },
    );
    setState(() {});
  }
}

Barcode _getBarcodeByType(BarcodeGeneratorType type) {
  return type.when(
    code128: () => Barcode.code128(),
    qrCode: () => Barcode.qrCode(),
  );
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
