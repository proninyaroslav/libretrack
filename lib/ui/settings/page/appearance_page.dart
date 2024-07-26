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

import 'package:flutter/material.dart' hide Locale;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:libretrack/core/platform_info.dart';
import 'package:libretrack/core/settings/settings.dart';
import 'package:libretrack/injector.dart';
import 'package:libretrack/locale.dart';
import 'package:libretrack/ui/settings/settings_list.dart';
import 'package:libretrack/ui/utils/utils.dart';
import 'package:libretrack/ui/widget/widget.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../settings.dart';

class AppearanceSettingsPage extends StatelessWidget {
  const AppearanceSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsScaffold(
      appBar: AppBar(
        title: Text(S.of(context).settingsAppearance),
      ),
      body: SettingsList(
        key: const PageStorageKey('appearance_list'),
        groups: [
          SettingsListGroup(
            items: [
              _buildThemeOption(context),
              _buildLanguageOption(context),
            ],
          ),
          SettingsListGroup(
            title: S.of(context).settingsNotificationsSection,
            items: [
              _buildTrackingNotifyOption(context),
              _buildTrackingErrorNotifyOption(context),
            ],
          ),
          // TODO: Windows/macOS support
          if (getIt<PlatformInfo>().isLinux)
            SettingsListGroup(
              title: S.of(context).settingsDesktopSection,
              items: [
                _buildSystemTrayIconOption(context),
              ],
            ),
        ],
      ),
    );
  }

  Widget _buildThemeOption(BuildContext context) {
    return ListTile(
      title: Text(S.of(context).settingsTheme),
      subtitle: BlocBuilder<AppearanceSettingsCubit, AppearanceState>(
        buildWhen: (prev, current) => current is AppearanceStateThemeChanged,
        builder: (context, state) {
          return Text(
            state.info.theme.toLocalizedString(context),
          );
        },
      ),
      leading: const Icon(Icons.palette_outlined),
      onTap: () => _showThemeDialog(context),
    );
  }

  void _showThemeDialog(BuildContext context) {
    final cubit = context.read<AppearanceSettingsCubit>();
    SettingsPage.of(context).showAlertDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(S.of(context).settingsTheme),
          contentPadding: const EdgeInsets.symmetric(vertical: 16.0),
          content: DialogScrollableContent(
            child: BlocBuilder<AppearanceSettingsCubit, AppearanceState>(
              bloc: cubit,
              buildWhen: (prev, current) =>
                  current is AppearanceStateThemeChanged,
              builder: (context, state) {
                return _ThemeList(
                  initialValue: state.info.theme,
                  onSelected: (theme) {
                    cubit.setTheme(theme);
                    Navigator.of(context).pop();
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

  Widget _buildTrackingNotifyOption(BuildContext context) {
    return BlocBuilder<AppearanceSettingsCubit, AppearanceState>(
      buildWhen: (prev, current) {
        return current is AppearanceStateTrackingNotifyChanged;
      },
      builder: (context, state) {
        return SwitchListTile(
          value: state.info.trackingNotify,
          title: Text(S.of(context).settingsTrackingNotifications),
          secondary: Icon(MdiIcons.cubeSend),
          onChanged: (value) => context
              .read<AppearanceSettingsCubit>()
              .trackingNotify(enable: value),
        );
      },
    );
  }

  Widget _buildLanguageOption(BuildContext context) {
    return ListTile(
      title: Text(S.of(context).settingsLanguage),
      subtitle: BlocBuilder<AppearanceSettingsCubit, AppearanceState>(
        buildWhen: (prev, current) => current is AppearanceStateLocaleChanged,
        builder: (context, state) {
          return Text(
            state.info.locale.when(
              system: () => S.of(context).settingsSystemLanguageOption,
              inner: (locale) => UiUtils.localeToLocalizedStr(
                locale.toLocaleString(),
              ),
            ),
          );
        },
      ),
      leading: const Icon(Icons.language),
      onTap: () => _showLanguageDialog(context),
    );
  }

  void _showLanguageDialog(BuildContext context) {
    final cubit = context.read<AppearanceSettingsCubit>();
    SettingsPage.of(context).showAlertDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(S.of(context).settingsLanguage),
          contentPadding: const EdgeInsets.symmetric(vertical: 16.0),
          content: DialogScrollableContent(
            child: BlocBuilder<AppearanceSettingsCubit, AppearanceState>(
              bloc: cubit,
              buildWhen: (prev, current) =>
                  current is AppearanceStateLocaleChanged,
              builder: (context, state) {
                return _LanguageList(
                  initialValue: state.info.locale,
                  onSelected: (locale) {
                    cubit.setLocale(locale);
                    Navigator.of(context).pop();
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

  Widget _buildTrackingErrorNotifyOption(BuildContext context) {
    return BlocBuilder<AppearanceSettingsCubit, AppearanceState>(
      buildWhen: (prev, current) {
        return current is AppearanceStateTrackingErrorNotifyChanged;
      },
      builder: (context, state) {
        return SwitchListTile(
          value: state.info.trackingErrorNotify,
          title: Text(S.of(context).settingsTrackingErrorNotifications),
          secondary: const Icon(Icons.error_outline),
          onChanged: (value) => context
              .read<AppearanceSettingsCubit>()
              .trackingErrorNotify(enable: value),
        );
      },
    );
  }

  Widget _buildSystemTrayIconOption(BuildContext context) {
    return BlocBuilder<AppearanceSettingsCubit, AppearanceState>(
      buildWhen: (prev, current) {
        return current is AppearanceStateTrayIconChanged;
      },
      builder: (context, state) {
        final textTheme = Theme.of(context).textTheme;
        return SwitchListTile(
          value: state.info.trayIcon,
          title: Text(S.of(context).settingsSystemTrayIcon),
          subtitle: getIt<PlatformInfo>().isLinux
              ? LinkText(
                  text: S.of(context).linuxTrayIconWarning,
                  style: textTheme.bodyMedium!.copyWith(
                    color: textTheme.bodySmall!.color,
                  ),
                )
              : null,
          secondary: const Icon(Icons.monitor),
          onChanged: (value) =>
              context.read<AppearanceSettingsCubit>().trayIcon(enable: value),
        );
      },
    );
  }
}

class _ThemeList extends StatefulWidget {
  final AppThemeType initialValue;
  final ValueChanged<AppThemeType>? onSelected;

  const _ThemeList({
    required this.initialValue,
    this.onSelected,
  });

  @override
  _ThemeListState createState() => _ThemeListState();
}

class _ThemeListState extends State<_ThemeList> {
  final _values = const [
    AppThemeType.system(),
    AppThemeType.light(),
    AppThemeType.dark(),
  ];

  late AppThemeType _currentTheme;

  @override
  void initState() {
    super.initState();

    _currentTheme = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: _values
          .map(
            (value) => RadioListTile(
              value: value,
              groupValue: _currentTheme,
              title: Text(value.toLocalizedString(context)),
              onChanged: (_) {
                setState(() => _currentTheme = value);
                widget.onSelected?.call(value);
              },
            ),
          )
          .toList(),
    );
  }
}

class _LanguageList extends StatefulWidget {
  final AppLocaleType initialValue;
  final ValueChanged<AppLocaleType>? onSelected;

  const _LanguageList({
    required this.initialValue,
    this.onSelected,
  });

  @override
  _LanguageListState createState() => _LanguageListState();
}

class _LanguageListState extends State<_LanguageList> {
  late AppLocaleType _currentLocale;
  late List<MapEntry<AppLocaleType, String>> _localesList;

  @override
  void initState() {
    super.initState();

    _currentLocale = widget.initialValue;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _localesList = [
      MapEntry(
        const AppLocaleType.system(),
        S.of(context).settingsSystemLanguageOption,
      ),
      ...UiUtils.supportedLocales.map(
        (entry) => MapEntry(
          AppLocaleType.inner(locale: entry.key),
          entry.value,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: _localesList.map((entry) {
        final locale = entry.key;
        final localeStr = entry.value;
        return RadioListTile(
          value: locale,
          groupValue: _currentLocale,
          title: Text(localeStr),
          onChanged: (_) => _onChanged(locale),
        );
      }).toList(),
    );
  }

  void _onChanged(AppLocaleType locale) {
    setState(() => _currentLocale = locale);
    widget.onSelected?.call(locale);
  }
}
