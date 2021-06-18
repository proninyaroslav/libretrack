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

import 'package:collection/collection.dart' show IterableExtension;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/settings/settings.dart';
import 'package:libretrack/ui/parcels/parcels.dart';
import 'package:libretrack/ui/theme.dart';
import 'package:libretrack/ui/utils/service_metadata.dart';
import 'package:libretrack/ui/utils/shipment_metadata.dart';
import 'package:libretrack/ui/widget/widget.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../locale.dart';
import 'parcels_cubit.dart';

class ParcelsFilterDrawer extends StatelessWidget {
  final double frontLayerVisibleSize;

  const ParcelsFilterDrawer({
    Key? key,
    required this.frontLayerVisibleSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: _getForegroundColor(context),
            width: 0.5,
          ),
        ),
      ),
      child: ScreenTypeLayout(
        key: const PageStorageKey('parcels_filter_drawer'),
        mobile: OrientationLayoutBuilder(
          portrait: (context) => _buildContent(
            context,
            frontLayerVisibleSize: frontLayerVisibleSize,
          ),
          landscape: (context) => SizedBox(
            width: 300,
            child: _buildContent(context),
          ),
        ),
        tablet: OrientationLayoutBuilder(
          portrait: (context) => SizedBox(
            width: 300,
            child: _buildContent(context),
          ),
          landscape: (context) => _buildContent(context),
        ),
      ),
    );
  }

  Widget _buildContent(
    BuildContext context, {
    double frontLayerVisibleSize = 0.0,
  }) {
    return MediaQuery.removePadding(
      context: context,
      removeRight: true,
      removeLeft: true,
      child: Scrollbar(
        child: SingleChildScrollView(
          key: const PageStorageKey('ParcelsFilterDrawerContent'),
          padding: EdgeInsets.fromLTRB(
            0.0,
            8.0,
            0.0,
            8.0 + frontLayerVisibleSize,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _SectionHeader(
                title: S.of(context).filters,
                icon: const Icon(MdiIcons.filter),
              ),
              const SizedBox(height: 20.0),
              _FiltersList(),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 4.0),
                child: Divider(
                  color: _getForegroundColor(context),
                ),
              ),
              _SectionHeader(
                title: S.of(context).sorting,
                icon: const Icon(MdiIcons.sortVariant),
              ),
              const SizedBox(height: 20.0),
              _SortList(),
            ],
          ),
        ),
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  final Icon icon;

  const _SectionHeader({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconTheme(
        data: _getIconTheme(context),
        child: icon,
      ),
      title: Text(
        title.toUpperCase(),
        style: _getTextTheme(context)
            .overline!
            .copyWith(fontSize: 16.0, fontWeight: FontWeight.w500),
      ),
    );
  }
}

class _FiltersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ParcelsCubit, ParcelsState>(
      buildWhen: (prev, next) => next.filters != prev.filters,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _StatusFilterList(
              statusType: state.filters.statusFilter?.statusType,
            ),
            const SizedBox(height: 8.0),
            _PostalServiceFilter(
              serviceType: state.filters.postalServiceFilter?.serviceType,
            ),
            const SizedBox(height: 8.0),
            _NewInfoFilter(enabled: state.filters.newInfoFilter != null),
            const SizedBox(height: 8.0),
            _ErrorFilter(enabled: state.filters.errorFilter != null),
          ],
        );
      },
    );
  }
}

class _StatusFilterList extends StatelessWidget {
  final ShipmentStatusType? statusType;

  const _StatusFilterList({
    Key? key,
    this.statusType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      DropdownMenuItem<ShipmentStatusType>(
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: const RRectIcon(
            iconData: RRectIconData(
              iconData: MdiIcons.allInclusive,
              iconColor: Colors.white,
              backgroundColor: Colors.blueGrey,
            ),
            size: 32.0,
          ),
          title: Text(S.of(context).all),
        ),
      ),
      ...ShipmentStatusType.values
          .map((type) => _makeMenuItem(context, type))
          .where((item) => item != null)
          .map((item) => item!),
    ];

    return _FilterDropdownListTile<ShipmentStatusType>(
      icon: const Icon(MdiIcons.cubeSend),
      title: S.of(context).status,
      value: statusType,
      items: items,
      onChanged: (newValue) =>
          context.read<ParcelsCubit>().setStatusFilter(newValue),
    );
  }

  DropdownMenuItem<ShipmentStatusType>? _makeMenuItem(
    BuildContext context,
    ShipmentStatusType type,
  ) {
    final metadata = ShipmentStatusMetadataMapper.of(context, type);
    if (metadata.localizedName == null) {
      return null;
    } else {
      return DropdownMenuItem(
        value: type,
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: RRectIcon(
            iconData: metadata.iconData,
            size: 32.0,
          ),
          title: Text(metadata.localizedName!),
        ),
      );
    }
  }
}

class _NewInfoFilter extends StatelessWidget {
  final bool enabled;

  const _NewInfoFilter({Key? key, required this.enabled}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _FilterSwitchListTile(
      icon: const Icon(MdiIcons.newBox),
      title: S.of(context).unreadParcels,
      value: enabled,
      onChanged: (enable) =>
          context.read<ParcelsCubit>().setNewInfoFilter(enable: enable),
    );
  }
}

class _ErrorFilter extends StatelessWidget {
  final bool enabled;

  const _ErrorFilter({Key? key, required this.enabled}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _FilterSwitchListTile(
      icon: const Icon(Icons.error_outline),
      title: S.of(context).error,
      value: enabled,
      onChanged: (enable) =>
          context.read<ParcelsCubit>().setErrorFilter(enable: enable),
    );
  }
}

class _PostalServiceFilter extends StatelessWidget {
  final PostalServiceType? serviceType;

  const _PostalServiceFilter({
    Key? key,
    required this.serviceType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      DropdownMenuItem<PostalServiceType>(
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: const RRectIcon(
            iconData: RRectIconData(
              iconData: MdiIcons.allInclusive,
              iconColor: Colors.white,
              backgroundColor: Colors.blueGrey,
            ),
            size: 32.0,
          ),
          title: Text(S.of(context).all),
        ),
      ),
      ...PostalServiceType.values
          .map((type) => _makeMenuItem(context, type))
          .where((item) => item != null)
          .map((item) => item!),
    ];

    return _FilterDropdownListTile<PostalServiceType>(
      icon: const Icon(MdiIcons.mail),
      title: S.of(context).postalService,
      value: serviceType,
      items: items,
      onChanged: (newValue) =>
          context.read<ParcelsCubit>().setPostalServiceFilter(newValue),
    );
  }

  DropdownMenuItem<PostalServiceType>? _makeMenuItem(
    BuildContext context,
    PostalServiceType type,
  ) {
    final metadata = PostalServiceMetadataMapper.of(context, type);
    return DropdownMenuItem(
      value: type,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: RRectIcon(
          iconData: metadata.iconData,
          size: 32.0,
        ),
        title: Text(metadata.localizedName),
      ),
    );
  }
}

class _FilterSwitchListTile extends StatelessWidget {
  final Icon icon;
  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;

  const _FilterSwitchListTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final iconTheme = _getIconTheme(context);
    return SwitchListTile(
      value: value,
      secondary: IconTheme(
        data: iconTheme.copyWith(
          color: iconTheme.color!.withOpacity(0.87),
        ),
        child: icon,
      ),
      title: Text(
        title,
        style: _getTextTheme(context).subtitle1!.copyWith(
              color: iconTheme.color!.withOpacity(0.87),
            ),
      ),
      onChanged: onChanged,
    );
  }
}

class _FilterDropdownListTile<T> extends StatelessWidget {
  final Icon icon;
  final String title;
  final T? value;
  final List<DropdownMenuItem<T>> items;
  final ValueChanged<T?> onChanged;

  const _FilterDropdownListTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.value,
    required this.items,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = _getTextTheme(context);
    final iconTheme = _getIconTheme(context);
    final selectedItems = items
        .map(
          (item) => Theme(
            data: theme.copyWith(
              textTheme: textTheme,
              iconTheme: iconTheme,
            ),
            child: item,
          ),
        )
        .toList();
    final noValueItem = items.firstWhereOrNull(
      (item) => item.value == null,
    );
    final selectedNoValueItem = noValueItem == null
        ? null
        : Theme(
            data: theme.copyWith(
              textTheme: textTheme,
              iconTheme: iconTheme,
            ),
            child: noValueItem,
          );
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
          leading: IconTheme(
            data: iconTheme.copyWith(
              color: iconTheme.color!.withOpacity(0.87),
            ),
            child: icon,
          ),
          title: Text(
            title,
            style: textTheme.subtitle1!.copyWith(
              color: iconTheme.color!.withOpacity(0.87),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          margin: const EdgeInsets.symmetric(horizontal: 6.0),
          decoration: BoxDecoration(
            color: _getItemSelectableColor(context),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: DropdownButton<T>(
            value: value,
            onChanged: onChanged,
            icon: Icon(
              Icons.keyboard_arrow_down,
              color: iconTheme.color,
            ),
            underline: const SizedBox.shrink(),
            isExpanded: true,
            itemHeight: null,
            items: items,
            selectedItemBuilder: (context) => selectedItems,
            hint: selectedNoValueItem,
          ),
        ),
      ],
    );
  }
}

class _SortList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ParcelsCubit, ParcelsState>(
      buildWhen: (prev, next) => next.sort != prev.sort,
      builder: (context, state) {
        final cubit = context.watch<ParcelsCubit>();
        return Column(
          children: [
            _SortListItem(
              sort: const ParcelsSort.activityDate(),
              currentSort: state.sort!,
              title: S.of(context).sortActivityDateAsc,
              icon: const Icon(MdiIcons.sortClockAscendingOutline),
              onSelected: () => cubit.setActivityDateSort(),
            ),
            _SortListItem(
              sort: const ParcelsSort.activityDate(oldestFirst: true),
              currentSort: state.sort!,
              title: S.of(context).sortActivityDateDesc,
              icon: const Icon(MdiIcons.sortClockDescendingOutline),
              onSelected: () => cubit.setActivityDateSort(oldestFirst: true),
            ),
            _SortListItem(
              sort: const ParcelsSort.dateAdded(),
              currentSort: state.sort!,
              title: S.of(context).sortDateAddedAsc,
              icon: const Icon(MdiIcons.sortCalendarAscending),
              onSelected: () => cubit.setDateAddedSort(),
            ),
            _SortListItem(
              sort: const ParcelsSort.dateAdded(oldestFirst: true),
              currentSort: state.sort!,
              title: S.of(context).sortDateAddedDesc,
              icon: const Icon(MdiIcons.sortCalendarDescending),
              onSelected: () => cubit.setDateAddedSort(oldestFirst: true),
            ),
            _SortListItem(
              sort: const ParcelsSort.alphabetically(),
              currentSort: state.sort!,
              title: S.of(context).sortAlphabeticallyAsc,
              icon: const Icon(MdiIcons.sortAlphabeticalAscending),
              onSelected: () => cubit.setAlphabeticallySort(),
            ),
            _SortListItem(
              sort: const ParcelsSort.alphabetically(isDesc: true),
              currentSort: state.sort!,
              title: S.of(context).sortAlphabeticallyDesc,
              icon: const Icon(MdiIcons.sortAlphabeticalDescending),
              onSelected: () => cubit.setAlphabeticallySort(isDesc: true),
            ),
          ],
        );
      },
    );
  }
}

class _SortListItem extends StatelessWidget {
  final ParcelsSort sort;
  final ParcelsSort currentSort;
  final String title;
  final Icon icon;
  final VoidCallback onSelected;

  const _SortListItem({
    Key? key,
    required this.sort,
    required this.currentSort,
    required this.title,
    required this.icon,
    required this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final iconTheme = _getIconTheme(context);
    final textTheme = _getTextTheme(context);
    return Theme(
      data: theme.copyWith(
        unselectedWidgetColor: iconTheme.color,
      ),
      child: RadioListTile(
        value: sort,
        groupValue: currentSort,
        controlAffinity: ListTileControlAffinity.trailing,
        selected: sort == currentSort,
        selectedTileColor: _getItemSelectableColor(context),
        secondary: IconTheme(
          data: iconTheme.copyWith(
            color: iconTheme.color!.withOpacity(0.87),
          ),
          child: icon,
        ),
        title: Text(
          title,
          style: textTheme.subtitle1!.copyWith(
            color: iconTheme.color!.withOpacity(0.87),
          ),
        ),
        onChanged: (dynamic _) => onSelected(),
      ),
    );
  }
}

TextTheme _getTextTheme(BuildContext context) {
  if (AppTheme.isDark(context)) {
    return Theme.of(context).textTheme;
  } else {
    return Theme.of(context).primaryTextTheme;
  }
}

IconThemeData _getIconTheme(BuildContext context) {
  if (AppTheme.isDark(context)) {
    return Theme.of(context).iconTheme;
  } else {
    return Theme.of(context).primaryIconTheme;
  }
}

Color _getForegroundColor(BuildContext context) {
  if (AppTheme.isDark(context)) {
    return Theme.of(context).colorScheme.onSurface.withOpacity(0.24);
  } else {
    return Theme.of(context).colorScheme.onPrimary.withOpacity(0.24);
  }
}

Color _getItemSelectableColor(BuildContext context) {
  if (AppTheme.isDark(context)) {
    return AppTheme.itemSelectableColor(context);
  } else {
    return Theme.of(context).colorScheme.onPrimary.withOpacity(0.24);
  }
}
