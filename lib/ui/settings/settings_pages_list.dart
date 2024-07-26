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
import 'package:libretrack/ui/theme.dart';

import '../../locale.dart';
import '../app_router.dart';

const _routes = [
  SettingsRoutePath.appearance(),
  SettingsRoutePath.behavior(),
];

class SettingsPagesList extends StatelessWidget {
  final ValueChanged<SettingsRoutePath>? onSelected;
  final SettingsRoutePath? selectedRoute;

  const SettingsPagesList({
    super.key,
    this.selectedRoute,
    this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final textDirection = Directionality.of(context);
    return SafeArea(
      right: textDirection == TextDirection.rtl,
      left: textDirection != TextDirection.rtl,
      child: Scrollbar(
        child: ListView.separated(
          padding: const EdgeInsets.all(8.0),
          itemCount: _routes.length,
          itemBuilder: (context, position) {
            final route = _routes[position];
            return route.when(
              appearance: () => _buildItem(
                context,
                route,
                icon: Icons.palette_outlined,
                title: S.of(context).settingsAppearance,
              ),
              behavior: () => _buildItem(
                context,
                route,
                icon: Icons.tune,
                title: S.of(context).settingsBehavior,
              ),
            );
          },
          separatorBuilder: (context, position) {
            return const SizedBox(height: 8.0);
          },
        ),
      ),
    );
  }

  Widget _buildItem(
    BuildContext context,
    SettingsRoutePath route, {
    required IconData icon,
    required String title,
  }) {
    return MediaQuery.removePadding(
      context: context,
      removeRight: true,
      removeLeft: true,
      child: _SettingsItem(
        icon: icon,
        title: title,
        isSelected: selectedRoute == route,
        onTap: () {
          onSelected?.call(route);
        },
      ),
    );
  }
}

class _SettingsItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback? onTap;
  final bool isSelected;

  const _SettingsItem({
    required this.title,
    required this.icon,
    required this.isSelected,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(8.0),
      color: isSelected ? AppTheme.itemSelectableColor(context) : null,
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
        leading: Icon(icon),
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: TextAlign.start,
        ),
        onTap: onTap,
      ),
    );
  }
}
