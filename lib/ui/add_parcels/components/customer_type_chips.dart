// Copyright (C) 2024 Yaroslav Pronin <proninyaroslav@mail.ru>
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
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/locale.dart';
import 'package:libretrack/ui/theme.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomerTypeChips extends StatelessWidget {
  final CustomerType? customerType;
  final ValueChanged<CustomerType> onSelect;

  const CustomerTypeChips({
    super.key,
    required this.customerType,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Theme(
      // ignore: deprecated_member_use
      data: theme.copyWith(useMaterial3: true),
      child: Wrap(
        spacing: 8.0,
        runSpacing: 8.0,
        children: _buildChips(
          context,
          customerType ?? CustomerType.values.first,
          onSelect: (type) {
            onSelect(type);
          },
        ),
      ),
    );
  }

  List<Widget> _buildChips(
    BuildContext context,
    CustomerType initialSelection, {
    required ValueChanged<CustomerType> onSelect,
  }) =>
      CustomerType.values
          .map(
            (type) => switch (type) {
              CustomerType.receiver => _CustomerTypeChip(
                  type: type,
                  selected: initialSelection == type,
                  icon: Icon(MdiIcons.packageDown),
                  label: Text(S.of(context).receiverParcels),
                  onSelect: onSelect,
                ),
              CustomerType.shipper => _CustomerTypeChip(
                  type: type,
                  selected: initialSelection == type,
                  icon: Icon(MdiIcons.packageUp),
                  label: Text(S.of(context).shipperParcels),
                  onSelect: onSelect,
                ),
            },
          )
          .toList();
}

class _CustomerTypeChip extends StatelessWidget {
  final CustomerType type;
  final bool selected;
  final Widget icon;
  final Widget label;
  final ValueChanged<CustomerType> onSelect;

  const _CustomerTypeChip({
    required this.type,
    required this.selected,
    required this.icon,
    required this.label,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final baseColor = AppTheme.textPrimaryColorLight(context);
    final textColor = _ChipTextColor(
      color: theme.colorScheme.onSurface,
      selectedColor: baseColor,
    );

    return ChoiceChip(
      selected: selected,
      label: label,
      avatar: Icon(MdiIcons.packageDown),
      labelStyle: TextStyle(color: textColor),
      iconTheme: IconThemeData(
        color: textColor.resolve(
          {if (selected) WidgetState.selected},
        ),
      ),
      color: WidgetStateProperty.fromMap(
        <WidgetStatesConstraint, Color>{
          WidgetState.selected: baseColor.withValues(alpha: 0.2),
        },
      ),
      showCheckmark: false,
      side: BorderSide(color: theme.dividerColor),
      onSelected: (selected) {
        if (selected) {
          onSelect(type);
        }
      },
    );
  }
}

class _ChipTextColor extends Color implements WidgetStateColor {
  final Color color;
  final Color selectedColor;

  const _ChipTextColor({
    required this.color,
    required this.selectedColor,
  }) : super(_default);

  static const int _default = 0xFF000000;

  @override
  Color resolve(Set<WidgetState> states) {
    if (states.contains(WidgetState.selected)) {
      return selectedColor;
    } else {
      return color;
    }
  }
}
