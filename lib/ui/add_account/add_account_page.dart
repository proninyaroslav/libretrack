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
import 'package:libretrack/locale.dart';
import 'package:libretrack/logger.dart';
import 'package:libretrack/ui/add_account/add_account_cubit.dart';
import 'package:libretrack/ui/add_account/service_list_cubit.dart';
import 'package:libretrack/ui/crash_report_dialog/send_report_error_dialog.dart';
import 'package:libretrack/ui/cubit/error_report_cubit.dart';
import 'package:libretrack/ui/widget/widget.dart';

import '../utils/service_metadata.dart';

class AddAccountPage extends StatefulWidget {
  const AddAccountPage({Key? key}) : super(key: key);

  @override
  _AddAccountPageState createState() => _AddAccountPageState();
}

class _AddAccountPageState extends State<AddAccountPage> {
  @override
  void initState() {
    super.initState();

    context.read<ServiceListCubit>().loadServices();
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      title: Text(S.of(context).addAccount),
      body: BlocConsumer<ServiceListCubit, ServiceListState>(
        listener: (context, state) {
          state.maybeWhen(
            loadingFailed: (error) {
              error?.when(database: (e, stackTrace) {
                log().e('Unable to load service list', e, stackTrace);
              });
            },
            orElse: () {},
          );
        },
        builder: (context, state) => state.when(
          initial: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loadingFailed: (e) => LoadingPageError(
            onRefresh: () {
              context.read<ServiceListCubit>().loadServices();
            },
          ),
          loaded: _buildStepper,
        ),
      ),
    );
  }

  Widget _buildStepper(
    List<TrackingServiceType> nonExistenServices,
    bool isAuthStorageEncrypted,
  ) {
    if (nonExistenServices.isEmpty) {
      return EmptyListStub(
        icon: Icons.supervisor_account,
        text: Text(
          S.of(context).allAccountsAlreadyAdded,
          style: Theme.of(context).textTheme.headline6,
        ),
      );
    } else {
      return Unfocus(
        child: Scrollbar(
          child: SafeArea(
            child: SizedBox(
              height: double.infinity,
              child: _Stepper(
                services: nonExistenServices,
                isAuthStorageEncrypted: isAuthStorageEncrypted,
              ),
            ),
          ),
        ),
      );
    }
  }
}

void _addAccountFailedMsg(
  BuildContext context,
  Exception? e,
  StackTrace? stackTrace,
) {
  const msg = 'Failed to add account';
  log().e(msg, e, stackTrace);

  final action = SnackBarAction(
    label: S.of(context).crashDialogReport,
    onPressed: () {
      context.read<ErrorReportCubit>().sendReport(
            error: e!,
            stackTrace: stackTrace,
            message: msg,
          );
    },
  );
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(S.of(context).addAccountFailed),
      action: e == null ? null : action,
    ),
  );
}

void _showErrorReportFailedDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => const SendReportErrorDialog(),
  );
}

class _Stepper extends StatefulWidget {
  final List<TrackingServiceType> services;
  final bool isAuthStorageEncrypted;

  const _Stepper({
    Key? key,
    required this.services,
    required this.isAuthStorageEncrypted,
  }) : super(key: key);

  @override
  _StepperState createState() => _StepperState();
}

enum _StepperSteps {
  selectAccountType,
  accountForm,
}

class _StepperState extends State<_Stepper> {
  late _StepperSteps _currentStep;
  TrackingServiceType? _selectedService;
  final _serviceAuthFormKey = GlobalKey<ServiceAuthFormState>();

  @override
  void initState() {
    super.initState();

    _currentStep = _StepperSteps.selectAccountType;
  }

  @override
  Widget build(BuildContext context) {
    return Stepper(
      key: const PageStorageKey('add_account_stepper'),
      currentStep: _currentStep.index,
      steps: [
        Step(
          title: Text(S.of(context).selectAccountType),
          subtitle: _getAccountTypeSubtitle(),
          isActive: _currentStep == _StepperSteps.selectAccountType,
          state: _getAccountTypeState(),
          content: _ServicesList(
            nonExistenServices: widget.services,
            onTap: (serviceType) {
              setState(() {
                _currentStep = _StepperSteps.accountForm;
                _selectedService = serviceType;
              });
            },
          ),
        ),
        Step(
          title: Text(S.of(context).enterAuthData),
          isActive: _currentStep == _StepperSteps.accountForm,
          content: Column(
            children: [
              if (_selectedService != null)
                ServiceAuthForm(
                  key: _serviceAuthFormKey,
                  type: _selectedService!,
                  isDataEncrypted: widget.isAuthStorageEncrypted,
                ),
              const SizedBox(height: 32.0),
              BlocListener<ErrorReportCubit, ErrorReportState>(
                listener: (context, state) {
                  state.maybeWhen(
                    emailUnsupported: () {
                      _showErrorReportFailedDialog(context);
                    },
                    orElse: () {},
                  );
                },
                child: BlocConsumer<AddAccountCubit, AddAccountState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      added: () => Navigator.of(context).pop(),
                      addFailed: (e, stackTrace) {
                        _addAccountFailedMsg(context, e, stackTrace);
                      },
                      orElse: () {},
                    );
                  },
                  builder: (context, state) => state.maybeWhen(
                    adding: () => const CircularProgressIndicator(),
                    added: () => const _AddAccountButton(),
                    orElse: () => _AddAccountButton(
                      onPressed: _addAccount,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
      controlsBuilder: (context, {onStepContinue, onStepCancel}) {
        return const SizedBox.shrink();
      },
      onStepTapped: (position) {
        setState(() {
          _currentStep = _StepperSteps.values[position];
        });
      },
    );
  }

  Widget? _getAccountTypeSubtitle() {
    if (_selectedService != null &&
        _currentStep != _StepperSteps.selectAccountType) {
      final metadata = TrackingServiceMetadataMapper.of(
        context,
        _selectedService!,
      );
      return Padding(
        padding: const EdgeInsets.only(top: 4.0),
        child: Row(
          children: [
            RRectIcon(
              iconData: metadata.iconData,
              size: 24.0,
            ),
            const SizedBox(width: 8.0),
            Text(metadata.localizedName),
          ],
        ),
      );
    } else {
      return null;
    }
  }

  StepState _getAccountTypeState() {
    if (_currentStep != _StepperSteps.selectAccountType) {
      return StepState.complete;
    } else {
      return StepState.indexed;
    }
  }

  void _addAccount() {
    if (_selectedService == null) {
      return;
    }
    final authData = _serviceAuthFormKey.currentState?.buildAuthData();
    if (authData == null) {
      return;
    }
    context
        .read<AddAccountCubit>()
        .addAccount(serviceType: _selectedService!, authData: authData);
  }
}

class _ServicesList extends StatelessWidget {
  final List<TrackingServiceType> nonExistenServices;
  final ValueChanged<TrackingServiceType>? onTap;

  const _ServicesList({
    Key? key,
    required this.nonExistenServices,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (nonExistenServices.isEmpty) {
      return Container();
    } else {
      final metadataList = _buildMetadata(context, nonExistenServices);

      return Scrollbar(
        child: ListView.separated(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          itemCount: nonExistenServices.length,
          itemBuilder: (context, position) {
            final metadata = metadataList[position];
            return _ServicesListItem(
              iconData: metadata.iconData,
              name: metadata.localizedName,
              onTap: () => onTap?.call(metadata.type),
            );
          },
          separatorBuilder: (context, position) => const Divider(height: 1),
        ),
      );
    }
  }

  List<TrackingServiceMetadata> _buildMetadata(
    BuildContext context,
    List<TrackingServiceType> servicesList,
  ) {
    final metadataList = servicesList
        .map((type) => TrackingServiceMetadataMapper.of(context, type))
        .toList();
    metadataList.sort((a, b) => a.localizedName.compareTo(b.localizedName));

    return metadataList;
  }
}

class _ServicesListItem extends StatelessWidget {
  final RRectIconData iconData;
  final String name;
  final VoidCallback? onTap;

  const _ServicesListItem({
    Key? key,
    required this.iconData,
    required this.name,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      leading: RRectIcon(
        iconData: iconData,
        size: 40.0,
      ),
      title: Text(name),
      onTap: onTap,
    );
  }
}

class _AddAccountButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const _AddAccountButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45.0,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(S.of(context).add),
      ),
    );
  }
}
