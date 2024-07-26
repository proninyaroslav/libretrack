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
import 'package:libretrack/ui/widget/custom_actions_row.dart';
import 'package:libretrack/ui/widget/widget.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../locale.dart';
import 'parcels.dart';

enum ParcelMenuType {
  delete,
  moveToArchive,
  moveToActive,
  selectAll,
  markAsRead,
  refresh,
  copyTrackNumber,
  share,
}

class ParcelContextualActions extends StatelessWidget {
  const ParcelContextualActions({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectableParcelsCubit,
        SelectableState<SelectableParcelsItem>>(
      buildWhen: (prev, next) => next is SelectableStateSelected,
      builder: (context, state) {
        final actions = state.maybeWhen(
          selected: (items) {
            final pageType = items.last.pageType;
            switch (pageType) {
              case ParcelsPageType.active:
                return _buildActivePageActions(
                  context,
                  onMenuSelected: (type) {
                    final clear = _onMenuItemSelected(
                      context,
                      type,
                      pageType,
                      items.map((item) => item.info),
                    );
                    if (clear) {
                      context.read<SelectableParcelsCubit>().clearSelection();
                    }
                  },
                );
              case ParcelsPageType.archive:
                return _buildArchivePageActions(
                  context,
                  onMenuSelected: (type) {
                    final clear = _onMenuItemSelected(
                      context,
                      type,
                      pageType,
                      items.map((item) => item.info),
                    );
                    if (clear) {
                      context.read<SelectableParcelsCubit>().clearSelection();
                    }
                  },
                );
            }
          },
          orElse: () => <CustomAction>[],
        );
        return LayoutBuilder(
          builder: (context, contraints) => CustomActionsRow(
            availableWidth: MediaQuery.of(context).size.width / 2,
            actionWidth: 48,
            actions: actions,
          ),
        );
      },
    );
  }

  List<CustomAction> _buildActivePageActions(
    BuildContext context, {
    void Function(ParcelMenuType)? onMenuSelected,
  }) {
    return [
      CustomAction(
        visibleWidget: IconButton(
          icon: const Icon(Icons.delete_outline),
          tooltip: S.of(context).delete,
          onPressed: () => onMenuSelected?.call(ParcelMenuType.delete),
        ),
        overflowWidget: Text(S.of(context).delete),
        onPressed: () => onMenuSelected?.call(ParcelMenuType.delete),
        showAsAction: ShowAsAction.ifRoom,
      ),
      CustomAction(
        visibleWidget: IconButton(
          icon: const Icon(Icons.archive_outlined),
          tooltip: S.of(context).moveToArchive,
          onPressed: () => onMenuSelected?.call(ParcelMenuType.moveToArchive),
        ),
        overflowWidget: Text(S.of(context).moveToArchive),
        onPressed: () => onMenuSelected?.call(ParcelMenuType.moveToArchive),
        showAsAction: ShowAsAction.ifRoom,
      ),
      CustomAction(
        visibleWidget: IconButton(
          icon: const Icon(Icons.refresh),
          tooltip: S.of(context).refresh,
          onPressed: () => onMenuSelected?.call(ParcelMenuType.refresh),
        ),
        overflowWidget: Text(S.of(context).refresh),
        onPressed: () => onMenuSelected?.call(ParcelMenuType.refresh),
        showAsAction: ShowAsAction.ifRoom,
      ),
      CustomAction(
        visibleWidget: IconButton(
          icon: const Icon(Icons.copy_outlined),
          tooltip: S.of(context).copyTrackNumber,
          onPressed: () => onMenuSelected?.call(ParcelMenuType.copyTrackNumber),
        ),
        overflowWidget: Text(S.of(context).copyTrackNumber),
        onPressed: () => onMenuSelected?.call(ParcelMenuType.copyTrackNumber),
        showAsAction: ShowAsAction.ifRoom,
      ),
      CustomAction(
        visibleWidget: IconButton(
          icon: const Icon(Icons.share),
          tooltip: S.of(context).share,
          onPressed: () => onMenuSelected?.call(ParcelMenuType.share),
        ),
        overflowWidget: Text(S.of(context).share),
        onPressed: () => onMenuSelected?.call(ParcelMenuType.share),
        showAsAction: ShowAsAction.ifRoom,
      ),
      CustomAction(
        visibleWidget: IconButton(
          icon: const Icon(Icons.select_all),
          tooltip: S.of(context).selectAll,
          onPressed: () => onMenuSelected?.call(ParcelMenuType.selectAll),
        ),
        overflowWidget: Text(S.of(context).selectAll),
        onPressed: () => onMenuSelected?.call(ParcelMenuType.selectAll),
        showAsAction: ShowAsAction.ifRoom,
      ),
    ];
  }

  List<CustomAction> _buildArchivePageActions(
    BuildContext context, {
    void Function(ParcelMenuType)? onMenuSelected,
  }) {
    return [
      CustomAction(
        visibleWidget: IconButton(
          icon: const Icon(Icons.delete_outline),
          tooltip: S.of(context).delete,
          onPressed: () => onMenuSelected?.call(ParcelMenuType.delete),
        ),
        overflowWidget: Text(S.of(context).delete),
        onPressed: () => onMenuSelected?.call(ParcelMenuType.delete),
        showAsAction: ShowAsAction.ifRoom,
      ),
      CustomAction(
        visibleWidget: IconButton(
          icon: Icon(MdiIcons.packageVariantClosed),
          tooltip: S.of(context).moveToActive,
          onPressed: () => onMenuSelected?.call(ParcelMenuType.moveToActive),
        ),
        overflowWidget: Text(S.of(context).moveToActive),
        onPressed: () => onMenuSelected?.call(ParcelMenuType.moveToActive),
        showAsAction: ShowAsAction.ifRoom,
      ),
      CustomAction(
        visibleWidget: IconButton(
          icon: const Icon(Icons.copy_outlined),
          tooltip: S.of(context).copyTrackNumber,
          onPressed: () => onMenuSelected?.call(ParcelMenuType.copyTrackNumber),
        ),
        overflowWidget: Text(S.of(context).copyTrackNumber),
        onPressed: () => onMenuSelected?.call(ParcelMenuType.copyTrackNumber),
        showAsAction: ShowAsAction.ifRoom,
      ),
      CustomAction(
        visibleWidget: IconButton(
          icon: const Icon(Icons.share),
          tooltip: S.of(context).share,
          onPressed: () => onMenuSelected?.call(ParcelMenuType.share),
        ),
        overflowWidget: Text(S.of(context).share),
        onPressed: () => onMenuSelected?.call(ParcelMenuType.share),
        showAsAction: ShowAsAction.ifRoom,
      ),
      CustomAction(
        visibleWidget: IconButton(
          icon: const Icon(Icons.select_all),
          tooltip: S.of(context).selectAll,
          onPressed: () => onMenuSelected?.call(ParcelMenuType.selectAll),
        ),
        overflowWidget: Text(S.of(context).selectAll),
        onPressed: () => onMenuSelected?.call(ParcelMenuType.selectAll),
        showAsAction: ShowAsAction.ifRoom,
      ),
    ];
  }
}

class ParcelPopupMenuButton extends StatelessWidget {
  final ParcelInfo parcelInfo;
  final ParcelsPageType pageType;
  final bool enabled;

  const ParcelPopupMenuButton({
    super.key,
    required this.parcelInfo,
    required this.pageType,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).disabledColor),
      child: PopupMenuButton<ParcelMenuType>(
        tooltip: MaterialLocalizations.of(context).moreButtonTooltip,
        enabled: enabled,
        onSelected: (option) => _onMenuItemSelected(
          context,
          option,
          pageType,
          [parcelInfo],
        ),
        itemBuilder: (context) => _buildMenuItems(
          context,
          pageType,
          hasNewInfo: parcelInfo.lastTrackingInfo?.hasNewInfo ?? false,
        ),
      ),
    );
  }

  List<PopupMenuEntry<ParcelMenuType>> _buildMenuItems(
    BuildContext context,
    ParcelsPageType pageType, {
    required bool hasNewInfo,
  }) {
    return [
      PopupMenuItem(
        value: ParcelMenuType.delete,
        child: Text(S.of(context).delete),
      ),
      ..._pageDependendActions(context, pageType),
      if (hasNewInfo)
        PopupMenuItem(
          value: ParcelMenuType.markAsRead,
          child: Text(S.of(context).markAsRead),
        ),
      PopupMenuItem(
        value: ParcelMenuType.copyTrackNumber,
        child: Text(S.of(context).copyTrackNumber),
      ),
      PopupMenuItem(
        value: ParcelMenuType.share,
        child: Text(S.of(context).share),
      ),
    ];
  }

  List<PopupMenuItem<ParcelMenuType>> _pageDependendActions(
    BuildContext context,
    ParcelsPageType pageType,
  ) {
    switch (pageType) {
      case ParcelsPageType.active:
        return [
          PopupMenuItem(
            value: ParcelMenuType.moveToArchive,
            child: Text(S.of(context).moveToArchive),
          ),
          PopupMenuItem(
            value: ParcelMenuType.refresh,
            child: Text(S.of(context).refresh),
          ),
        ];
      case ParcelsPageType.archive:
        return [
          PopupMenuItem(
            value: ParcelMenuType.moveToActive,
            child: Text(S.of(context).moveToActive),
          ),
        ];
    }
  }
}

/// Returns `true` if the selection needs to be cleared.
bool _onMenuItemSelected(
  BuildContext context,
  ParcelMenuType type,
  ParcelsPageType pageType,
  Iterable<ParcelInfo> infoList,
) {
  switch (type) {
    case ParcelMenuType.delete:
      showDialog(
        context: context,
        builder: (_) {
          final cubit = context.read<ParcelsActionsCubit>();
          return DeleteParcelDialog(
            parcelsCount: infoList.length,
            onDelete: () => cubit.deleteParcels(infoList),
          );
        },
      );
      return true;
    case ParcelMenuType.moveToArchive:
      context.read<ParcelsActionsCubit>().moveToArchive(infoList);
      return true;
    case ParcelMenuType.moveToActive:
      context.read<ParcelsActionsCubit>().moveToActive(infoList);
      return true;
    case ParcelMenuType.selectAll:
      _selectAll(context, pageType);
      return false;
    case ParcelMenuType.markAsRead:
      context.read<ParcelsActionsCubit>().markAsRead(infoList);
      return true;
    case ParcelMenuType.refresh:
      context.read<ParcelsActionsCubit>().refresh(infoList);
      return true;
    case ParcelMenuType.copyTrackNumber:
      context.read<ParcelsActionsCubit>().copyTrackNumbers(infoList);
      return true;
    case ParcelMenuType.share:
      context.read<ParcelsActionsCubit>().buildShareString(infoList);
      return true;
  }
}

void _selectAll(
  BuildContext context,
  ParcelsPageType pageType,
) {
  final selectableCubit = context.read<SelectableParcelsCubit>();
  final parcelsCubit = context.read<ParcelsCubit>();

  parcelsCubit.state.when(
    initial: (filters, search, sort) {},
    loadingFailed: (error, filters, search, sort) {},
    loaded: (active, archive, filters, search, sort) {
      Iterable<ParcelInfo> infoList;
      switch (pageType) {
        case ParcelsPageType.active:
          infoList = active;
          break;
        case ParcelsPageType.archive:
          infoList = archive;
          break;
      }
      selectableCubit.selectSet(
        infoList
            .where(filters.applyAll)
            .where((info) => search?.apply(info) ?? true)
            .map(
              (info) => SelectableParcelsItem(
                info: info,
                pageType: pageType,
              ),
            )
            .toSet(),
      );
    },
  );
}
