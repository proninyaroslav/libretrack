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
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:libretrack/core/settings/model.dart';
import 'package:libretrack/locale.dart';
import 'package:libretrack/ui/components/widget.dart';
import 'package:libretrack/ui/model/utils.dart';
import 'package:libretrack/ui/settings/model/behavior_state.dart';
import 'package:libretrack/ui/settings/settings.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../components/settings_list.dart';

class BehaviorPage extends StatelessWidget {
  const BehaviorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsScaffold(
      appBar: AppBar(
        title: Text(S.of(context).settingsBehavior),
      ),
      body: BlocBuilder<BehaviorSettingsCubit, BehaviorState>(
        buildWhen: (prev, next) => next is BehaviorStateLoaded,
        builder: (context, state) {
          return switch (state) {
            BehaviorStateInitial() =>
              const Center(child: CircularProgressIndicator()),
            _ => SettingsList(
                key: const PageStorageKey('behavior_list'),
                groups: [
                  SettingsListGroup(
                    title: S.of(context).settingsTrackingSection,
                    items: [
                      _buildTrackingFreqLimitOption(context),
                      _buildTrackingHistorySizeOption(context),
                    ],
                  ),
                  SettingsListGroup(
                    items: [
                      _buildAutoTrackingOption(context),
                      _buildAutoTrackingFreqOption(context),
                    ],
                  ),
                ],
              ),
          };
        },
      ),
    );
  }

  Widget _buildTrackingFreqLimitOption(BuildContext context) {
    return ListTile(
      title: Text(S.of(context).settingsTrackingFreqLimit),
      subtitle: BlocBuilder<BehaviorSettingsCubit, BehaviorState>(
        buildWhen: (prev, current) =>
            current is BehaviorStateTrackingLimitChanged,
        builder: (context, state) {
          return Text(
            state.info!.trackingLimit.maybeWhen(
              unlimited: () =>
                  state.info!.trackingLimit.toLocalizedString(context),
              orElse: () => S.of(context).settingsTrackingFreqLimitSummary(
                    state.info!.trackingLimit.toLocalizedString(context),
                  ),
            ),
          );
        },
      ),
      leading: Icon(MdiIcons.clockOutline),
      onTap: () => _showTrackingLimitDialog(context),
    );
  }

  void _showTrackingLimitDialog(BuildContext context) {
    final cubit = context.read<BehaviorSettingsCubit>();
    SettingsPage.of(context).showAlertDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(S.of(context).settingsTrackingFreqLimit),
          contentPadding: const EdgeInsets.symmetric(vertical: 16.0),
          content: DialogScrollableContent(
            child: BlocBuilder<BehaviorSettingsCubit, BehaviorState>(
              bloc: cubit,
              buildWhen: (prev, current) =>
                  current is BehaviorStateTrackingLimitChanged,
              builder: (context, state) {
                return _TrackingLimitList(
                  initialValue: state.info!.trackingLimit,
                  onSelected: (limit) async {
                    await cubit.setTrackingLimit(limit);
                    if (context.mounted) {
                      Navigator.of(context).pop();
                    }
                  },
                );
              },
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                S.of(context).cancel,
                textAlign: TextAlign.end,
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildAutoTrackingOption(BuildContext context) {
    return BlocBuilder<BehaviorSettingsCubit, BehaviorState>(
      buildWhen: (prev, current) => current is BehaviorStateAutoTrackingChanged,
      builder: (context, state) {
        return SwitchListTile(
          value: state.info!.autoTracking,
          title: Text(S.of(context).settingsAutoTracking),
          secondary: const Icon(Icons.refresh),
          onChanged: (value) async {
            await context
                .read<BehaviorSettingsCubit>()
                .autoTracking(enable: value);
          },
        );
      },
    );
  }

  Widget _buildAutoTrackingFreqOption(BuildContext context) {
    return BlocBuilder<BehaviorSettingsCubit, BehaviorState>(
      buildWhen: (prev, current) =>
          current is BehaviorStateAutoTrackingFreqChanged ||
          current is BehaviorStateAutoTrackingChanged,
      builder: (context, state) {
        final freq = state.info!.autoTrackingFreq.toLocalizedString(context);
        return ListTile(
          enabled: state.info!.autoTracking,
          isThreeLine: true,
          title: Text(S.of(context).settingsAutoTrackingFreq),
          subtitle: Text(
            '$freq\n\n${S.of(context).settingsAutoTrackingFreqDescr}',
          ),
          leading: Icon(MdiIcons.clockOutline),
          onTap: () => _showAutoTrackingFreqDialog(context),
        );
      },
    );
  }

  void _showAutoTrackingFreqDialog(BuildContext context) {
    final cubit = context.read<BehaviorSettingsCubit>();
    SettingsPage.of(context).showAlertDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(S.of(context).settingsAutoTrackingFreq),
          contentPadding: const EdgeInsets.symmetric(vertical: 16.0),
          content: DialogScrollableContent(
            child: BlocBuilder<BehaviorSettingsCubit, BehaviorState>(
              bloc: cubit,
              buildWhen: (prev, current) =>
                  current is BehaviorStateAutoTrackingFreqChanged,
              builder: (context, state) {
                return _AutoTrackingFreqList(
                  initialValue: state.info!.autoTrackingFreq,
                  onSelected: (limit) async {
                    await cubit.setAutoTrackingFreq(limit);
                    if (context.mounted) {
                      Navigator.of(context).pop();
                    }
                  },
                );
              },
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                S.of(context).cancel,
                textAlign: TextAlign.end,
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildTrackingHistorySizeOption(BuildContext context) {
    return ListTile(
      title: Text(S.of(context).settingsTrackingHistorySize),
      subtitle: BlocBuilder<BehaviorSettingsCubit, BehaviorState>(
        buildWhen: (prev, current) =>
            current is BehaviorStateTrackingHistorySizeChanged,
        builder: (context, state) {
          final size = state.info!.trackingHistorySize;
          return Text(
            '$size\n\n${S.of(context).settingsTrackingHistorySizeDescr}',
          );
        },
      ),
      isThreeLine: true,
      leading: const Icon(Icons.history),
      onTap: () => _showTrackingHistorySizeDialog(context),
    );
  }

  void _showTrackingHistorySizeDialog(BuildContext context) {
    final cubit = context.read<BehaviorSettingsCubit>();
    SettingsPage.of(context).showAlertDialog(
      context: context,
      builder: (context) => BlocBuilder<BehaviorSettingsCubit, BehaviorState>(
        bloc: cubit,
        buildWhen: (prev, current) =>
            current is BehaviorStateTrackingHistorySizeChanged,
        builder: (context, state) {
          return _TrackingHistoryDialog(
            initialValue: state.info!.trackingHistorySize,
            onChanged: (value) async =>
                await cubit.setTrackingHistorySize(value),
          );
        },
      ),
    );
  }
}

class _TrackingLimitList extends StatefulWidget {
  final TrackingFreqLimit initialValue;
  final ValueChanged<TrackingFreqLimit>? onSelected;

  const _TrackingLimitList({
    required this.initialValue,
    this.onSelected,
  });

  @override
  _TrackingLimitListState createState() => _TrackingLimitListState();
}

class _TrackingLimitListState extends State<_TrackingLimitList> {
  final _values = const [
    TrackingFreqLimit.unlimited(),
    TrackingFreqLimit.fifteenMin(),
    TrackingFreqLimit.thirtyMin(),
    TrackingFreqLimit.fortyFiveMin(),
    TrackingFreqLimit.oneHour(),
  ];

  late TrackingFreqLimit _currentLimit;

  @override
  void initState() {
    super.initState();

    _currentLimit = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: _values
          .map(
            (value) => RadioListTile(
              value: value,
              groupValue: _currentLimit,
              title: Text(value.toLocalizedString(context)),
              onChanged: (_) {
                setState(() => _currentLimit = value);
                widget.onSelected?.call(value);
              },
            ),
          )
          .toList(),
    );
  }
}

class _AutoTrackingFreqList extends StatefulWidget {
  final AutoTrackingFreq initialValue;
  final ValueChanged<AutoTrackingFreq>? onSelected;

  const _AutoTrackingFreqList({
    required this.initialValue,
    this.onSelected,
  });

  @override
  _AutoTrackingFreqListState createState() => _AutoTrackingFreqListState();
}

class _AutoTrackingFreqListState extends State<_AutoTrackingFreqList> {
  final _values = const [
    AutoTrackingFreq.sixHours(),
    AutoTrackingFreq.twelveHours(),
    AutoTrackingFreq.oneDay(),
    AutoTrackingFreq.threeDays(),
    AutoTrackingFreq.oneWeek(),
  ];

  late AutoTrackingFreq _currentLimit;

  @override
  void initState() {
    super.initState();

    _currentLimit = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: _values
          .map(
            (value) => RadioListTile(
              value: value,
              groupValue: _currentLimit,
              title: Text(value.toLocalizedString(context)),
              onChanged: (_) {
                setState(() => _currentLimit = value);
                widget.onSelected?.call(value);
              },
            ),
          )
          .toList(),
    );
  }
}

class _TrackingHistoryDialog extends StatefulWidget {
  final int initialValue;
  final ValueChanged<int>? onChanged;

  const _TrackingHistoryDialog({
    required this.initialValue,
    this.onChanged,
  });

  @override
  _TrackingHistoryDialogState createState() => _TrackingHistoryDialogState();
}

class _TrackingHistoryDialogState extends State<_TrackingHistoryDialog> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();

    _controller = TextEditingController(text: '${widget.initialValue}');
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(S.of(context).settingsTrackingHistorySize),
      scrollable: true,
      content: TextField(
        controller: _controller,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            S.of(context).cancel,
            textAlign: TextAlign.end,
          ),
        ),
        TextButton(
          onPressed: () {
            if (_controller.text.isNotEmpty) {
              widget.onChanged?.call(
                int.parse(_controller.text),
              );
            }
            Navigator.of(context).pop();
          },
          child: Text(
            S.of(context).apply,
            textAlign: TextAlign.end,
          ),
        ),
      ],
    );
  }
}
