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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/platform_info.dart';
import 'package:libretrack/locale.dart';
import 'package:libretrack/platform/barcode_scanner.dart';
import 'package:libretrack/ui/add_parcels/components/customer_type_chips.dart';
import 'package:libretrack/ui/add_parcels/model/add_parcels_cubit.dart';
import 'package:libretrack/ui/add_parcels/model/add_parcels_state.dart';
import 'package:libretrack/ui/components/widget.dart';
import 'package:libretrack/ui/crash_report_dialog/send_report_error_dialog.dart';
import 'package:libretrack/ui/model/error_report_cubit.dart';
import 'package:libretrack/ui/model/error_report_state.dart';
import 'package:libretrack/ui/model/utils.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../injector.dart';
import '../../logger.dart';

class AddParcelsPage extends StatelessWidget {
  final TrackingNumbers? initialTrackNumbers;
  final VoidCallback? onAdd;

  const AddParcelsPage({
    super.key,
    this.initialTrackNumbers,
    this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) => AdaptiveScaffold(
        title: Text(S.of(context).addParcels),
        body: Unfocus(
          child: _Form(
            trackingNumbers: initialTrackNumbers,
          ),
        ),
        floatingActionButtonLocation: UiUtils.getAdaptiveFabLocation(
          context,
          orientation,
        ),
        floatingActionButton: BlocListener<ErrorReportCubit, ErrorReportState>(
          listener: (context, state) {
            state.maybeWhen(
              emailUnsupported: () {
                _showErrorReportFailedDialog(context);
              },
              orElse: () {},
            );
          },
          child: BlocConsumer<AddParcelsCubit, AddParcelsState>(
            listener: (context, state) {
              state.maybeWhen(
                addFailed: (
                  trackingNumbers,
                  parcelNames,
                  customerType,
                  exception,
                  stackTrace,
                ) {
                  _addParcelsFailedMsg(context, exception, stackTrace);
                },
                added: (addedTrackInfoList) {
                  context.read<AddParcelsCubit>().track(addedTrackInfoList);
                  onAdd?.call();
                },
                orElse: () {},
              );
            },
            buildWhen: (prev, next) {
              return next.maybeMap(
                adding: (_) => true,
                added: (_) => true,
                addFailed: (_) => true,
                orElse: () => false,
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                adding: () => const CircularProgressIndicator(),
                added: (_) => _buildAddParcelsButton(context),
                orElse: () => _buildAddParcelsButton(
                  context,
                  onPressed: context.watch<AddParcelsCubit>().submit,
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildAddParcelsButton(
    BuildContext context, {
    VoidCallback? onPressed,
  }) {
    return AdaptiveFab(
      heroTag: 'FabTrack',
      icon: const Icon(Icons.search),
      label: Text(S.of(context).track),
      onPressed: onPressed,
    );
  }

  void _addParcelsFailedMsg(
    BuildContext context,
    Exception? e,
    StackTrace? stackTrace,
  ) {
    const msg = 'Failed to add parcels';
    log().e(msg, error: e, stackTrace: stackTrace);

    final reportCubit = context.read<ErrorReportCubit>();
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(S.of(context).error),
          content: Text(S.of(context).addParcelsFailed),
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
            if (e != null)
              TextButton(
                onPressed: () {
                  reportCubit.sendReport(
                    error: e,
                    stackTrace: stackTrace,
                    message: msg,
                  );
                },
                child: Text(
                  S.of(context).crashDialogReport,
                  textAlign: TextAlign.end,
                ),
              ),
          ],
        );
      },
    );
  }

  void _showErrorReportFailedDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const SendReportErrorDialog(),
    );
  }
}

class _Form extends StatefulWidget {
  final TrackingNumbers? trackingNumbers;

  static const _listPadding = EdgeInsets.fromLTRB(
    24.0,
    24.0,
    24.0,
    UiUtils.fabBottomMargin,
  );

  const _Form({this.trackingNumbers});

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<_Form> {
  late TextEditingController _trackNumbersController;

  @override
  void initState() {
    super.initState();

    _trackNumbersController = TextEditingController(
      text: widget.trackingNumbers?.value ?? '',
    );
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await context
          .read<AddParcelsCubit>()
          .load(trackingNumbers: widget.trackingNumbers);
    });
  }

  @override
  void dispose() {
    _trackNumbersController.dispose();

    super.dispose();
  }

  @override
  void didUpdateWidget(covariant _Form oldWidget) {
    final trackNumbers = widget.trackingNumbers;
    if (trackNumbers != null && oldWidget.trackingNumbers != trackNumbers) {
      _trackNumbersController.text = trackNumbers.value;
      context
          .read<AddParcelsCubit>()
          .trackingNumbersChanged(_trackNumbersController.text);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scrollbar(
        child: SingleChildScrollView(
          key: const PageStorageKey('AddParcelsPageContent'),
          child: Padding(
            padding: _Form._listPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlocBuilder<AddParcelsCubit, AddParcelsState>(
                  buildWhen: (prev, next) {
                    return next.maybeMap(
                      loaded: (_) => true,
                      customerTypeChanged: (_) => true,
                      orElse: () => false,
                    );
                  },
                  builder: (context, state) {
                    return CustomerTypeChips(
                      customerType: _getCustomerType(state),
                      onSelect: (type) {
                        context
                            .read<AddParcelsCubit>()
                            .customerTypeChanged(type);
                      },
                    );
                  },
                ),

                const SizedBox(height: 16.0),

                BlocBuilder<AddParcelsCubit, AddParcelsState>(
                  buildWhen: (prev, next) {
                    return next.maybeMap(
                      validationFailed: (_) => true,
                      fieldChanged: (_) => true,
                      orElse: () => false,
                    );
                  },
                  builder: (context, state) {
                    return _MultilineFormField(
                      controller: _trackNumbersController,
                      labelText: S.of(context).trackingNumbers,
                      hintText: S.of(context).trackingNumbersFieldHint,
                      errorText: _getTrackingNumbersErrorStr(context, state),
                      enableSuggestions: false,
                      autocorrect: false,
                      onChanged: (value) {
                        context
                            .read<AddParcelsCubit>()
                            .trackingNumbersChanged(value);
                      },
                    );
                  },
                ),

                // TODO: iOS/Desktop/Web support
                if (getIt<PlatformInfo>().isAndroid)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: _BarcodeScanButton(
                      controller: _trackNumbersController,
                      onScanned: () {
                        context.read<AddParcelsCubit>().trackingNumbersChanged(
                              _trackNumbersController.text,
                            );
                      },
                    ),
                  )
                else
                  const SizedBox(height: 8.0),

                const SizedBox(height: 8.0),

                _MultilineFormField(
                  labelText: S.of(context).parcelNames,
                  hintText: S.of(context).parcelNamesFieldHint,
                  textCapitalization: TextCapitalization.sentences,
                  onChanged: (value) {
                    context.read<AddParcelsCubit>().parcelNamesChanged(value);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String? _getTrackingNumbersErrorStr(
    BuildContext context,
    AddParcelsState? state,
  ) {
    final error = state
        ?.maybeMap(
          validationFailed: (s) => s.trackingNumbers,
          fieldChanged: (s) => s.trackingNumbers,
          orElse: () => null,
        )
        ?.error;
    return error?.when(
      empty: () => S.of(context).fieldRequiredError,
    );
  }

  CustomerType? _getCustomerType(AddParcelsState state) => state.maybeMap(
        loaded: (s) => s.customerType,
        fieldChanged: (s) => s.customerType,
        customerTypeChanged: (s) => s.customerType,
        validationFailed: (s) => s.customerType,
        addFailed: (s) => s.customerType,
        orElse: () => null,
      );
}

class _MultilineFormField extends StatelessWidget {
  static const _lineHeight = 2.0;

  final String? labelText;
  final String? hintText;
  final String? errorText;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;
  final TextCapitalization textCapitalization;
  final bool enableSuggestions;
  final bool autocorrect;

  const _MultilineFormField({
    this.labelText,
    this.hintText,
    this.errorText,
    this.onChanged,
    this.controller,
    this.textCapitalization = TextCapitalization.none,
    this.enableSuggestions = true,
    this.autocorrect = true,
  });

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.titleMedium!;
    return NumberedTextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        errorText: errorText,
      ),
      style: style.copyWith(height: _MultilineFormField._lineHeight),
      onChanged: onChanged,
      textCapitalization: textCapitalization,
      enableSuggestions: enableSuggestions,
      autocorrect: autocorrect,
    );
  }
}

class _BarcodeScanButton extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback? onScanned;

  const _BarcodeScanButton({
    required this.controller,
    this.onScanned,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: ElevatedButton.icon(
        onPressed: () async {
          try {
            await _scan();
          } on BarcodeScannerException catch (e, stackTrace) {
            log().e('Failed to scan barcode', error: e, stackTrace: stackTrace);
            if (context.mounted) {
              AdaptiveScaffold.of(context).showAdaptiveToast(
                text: S.of(context).barcodeScanFailed,
              );
            }
          }
        },
        icon: Icon(MdiIcons.barcodeScan),
        label: Text(S.of(context).barcodeScanner),
      ),
    );
  }

  Future<void> _scan() async {
    final resultText = await BarcodeScanner().scan();
    if (resultText != null && resultText.isNotEmpty) {
      final currentText = controller.text;
      if (currentText.isEmpty) {
        controller.text = resultText;
      } else {
        final currentTrackNumbers = TrackingNumbers(value: currentText);
        final result = TrackingNumbers(value: resultText);
        controller.text = (currentTrackNumbers + result).value;
      }
    }
    onScanned?.call();
  }
}
