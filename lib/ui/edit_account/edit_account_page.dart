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
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/ui/crash_report_dialog/send_report_error_dialog.dart';
import 'package:libretrack/ui/cubit/error_report_cubit.dart';
import 'package:libretrack/ui/widget/widget.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../locale.dart';
import '../../logger.dart';
import 'edit_account_cubit.dart';
import 'service_info_cubit.dart';

class EditAccountPage extends StatefulWidget {
  final TrackingServiceType serviceType;

  const EditAccountPage({
    super.key,
    required this.serviceType,
  });

  @override
  EditAccountPageState createState() => EditAccountPageState();
}

class EditAccountPageState extends State<EditAccountPage> {
  final _serviceAuthFormKey = GlobalKey<ServiceAuthFormState>();

  @override
  void initState() {
    super.initState();

    context.read<ServiceInfoCubit>().loadService(widget.serviceType);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(S.of(context).editAccount),
      content: BlocListener<ErrorReportCubit, ErrorReportState>(
        listener: (context, state) {
          state.maybeWhen(
            emailUnsupported: () {
              _showErrorReportFailedDialog(context);
            },
            orElse: () {},
          );
        },
        child: BlocListener<EditAccountCubit, EditAccountState>(
          listener: (context, state) {
            state.maybeWhen(
              applyFailed: _editAccountFailedMsg,
              applied: () => Navigator.of(context).pop(),
              orElse: () {},
            );
          },
          child: _DialogContent(
            serviceAuthFormKey: _serviceAuthFormKey,
            onPageRefresh: () {
              context.read<ServiceInfoCubit>().loadService(widget.serviceType);
            },
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(
            S.of(context).cancel,
            textAlign: TextAlign.end,
          ),
        ),
        _ApplyButton(
          onPressed: () {
            final authData = _serviceAuthFormKey.currentState?.buildAuthData();
            if (authData != null) {
              context.read<EditAccountCubit>().apply(
                    type: widget.serviceType,
                    authData: authData,
                  );
            }
          },
        ),
      ],
    );
  }

  void _editAccountFailedMsg(
    Exception? e,
    StackTrace? stackTrace,
  ) {
    const msg = 'Failed to edit account';
    log().e(MdiIcons.signal2G, error: e, stackTrace: stackTrace);

    final reportCubit = context.read<ErrorReportCubit>();
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(S.of(context).error),
          content: Text(S.of(context).editAccountFailed),
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

class _ApplyButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const _ApplyButton({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditAccountCubit, EditAccountState>(
      builder: (context, state) => state.when(
        initial: () => _buildApplyButton(context),
        applying: () => Container(
          width: 25.0,
          height: 25.0,
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          child: const CircularProgressIndicator(),
        ),
        applied: () => _buildApplyButton(context, inactive: true),
        applyFailed: (e, stackTrace) => _buildApplyButton(context),
      ),
    );
  }

  Widget _buildApplyButton(
    BuildContext context, {
    bool inactive = false,
  }) {
    return TextButton(
      onPressed: inactive ? null : onPressed,
      child: Text(
        S.of(context).apply,
        textAlign: TextAlign.end,
      ),
    );
  }
}

class _DialogContent extends StatelessWidget {
  final GlobalKey<ServiceAuthFormState>? serviceAuthFormKey;
  final VoidCallback? onPageRefresh;

  const _DialogContent({
    this.serviceAuthFormKey,
    this.onPageRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tight(const Size(300, 300)),
      child: DialogScrollableContent(
        borderPadding: 8.0,
        child: BlocConsumer<ServiceInfoCubit, ServiceInfoState>(
          listener: (context, state) {
            state.maybeWhen(
              loadingFailed: (error) {
                error?.when(database: (e, stackTrace) {
                  log().e('Unable to load account data',
                      error: e, stackTrace: stackTrace);
                });
              },
              orElse: () {},
            );
          },
          builder: (context, state) => state.when(
            initial: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loadingFailed: (error) => LoadingPageError(
              onRefresh: onPageRefresh,
            ),
            loaded: (info, authData, isAuthDataSecured) {
              return ServiceAuthForm(
                key: serviceAuthFormKey,
                type: info.type,
                initValue: authData,
                isDataSecured: isAuthDataSecured,
              );
            },
          ),
        ),
      ),
    );
  }
}
