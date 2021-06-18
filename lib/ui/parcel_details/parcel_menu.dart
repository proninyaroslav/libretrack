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
import 'package:libretrack/injector.dart';
import 'package:libretrack/ui/parcel_details/edit_parcel_page.dart';
import 'package:libretrack/ui/parcel_details/parcel_details.dart';
import 'package:libretrack/ui/widget/custom_actions_row.dart';
import 'package:libretrack/ui/widget/widget.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../locale.dart';

enum ParcelMenuType {
  delete,
  moveToArchive,
  moveToActive,
  refresh,
  share,
  edit,
  activateTracking,
}

class ParcelActions extends StatelessWidget {
  const ParcelActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ParcelDetailsCubit, ParcelDetailsState>(
      builder: (context, state) {
        final actions = state.maybeWhen(
          loaded: (trackNumber, info) {
            return _buildActions(
              context,
              isArchive: info.trackInfo.isArchived,
              onMenuSelected: (type) => _onMenuItemSelected(
                context,
                type,
                info,
              ),
            );
          },
          orElse: () => <CustomAction>[],
        );
        return CustomActionsRow(
          availableWidth: MediaQuery.of(context).size.width / 2,
          actionWidth: 48,
          actions: actions,
        );
      },
    );
  }

  List<CustomAction> _buildActions(
    BuildContext context, {
    required bool isArchive,
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
          icon: const Icon(Icons.edit),
          tooltip: S.of(context).edit,
          onPressed: () => onMenuSelected?.call(ParcelMenuType.edit),
        ),
        overflowWidget: Text(S.of(context).edit),
        onPressed: () => onMenuSelected?.call(ParcelMenuType.edit),
        showAsAction: ShowAsAction.ifRoom,
      ),
      if (isArchive)
        CustomAction(
          visibleWidget: IconButton(
            icon: const Icon(MdiIcons.packageVariantClosed),
            tooltip: S.of(context).moveToActive,
            onPressed: () => onMenuSelected?.call(ParcelMenuType.moveToActive),
          ),
          overflowWidget: Text(S.of(context).moveToActive),
          onPressed: () => onMenuSelected?.call(ParcelMenuType.moveToActive),
          showAsAction: ShowAsAction.ifRoom,
        )
      else
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
      if (!isArchive)
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
          icon: const Icon(Icons.share),
          tooltip: S.of(context).share,
          onPressed: () => onMenuSelected?.call(ParcelMenuType.share),
        ),
        overflowWidget: Text(S.of(context).share),
        onPressed: () => onMenuSelected?.call(ParcelMenuType.share),
        showAsAction: ShowAsAction.ifRoom,
      ),
      CustomAction(
        overflowWidget: Text(S.of(context).activateTracking),
        onPressed: () => onMenuSelected?.call(ParcelMenuType.activateTracking),
        showAsAction: ShowAsAction.never,
      ),
    ];
  }

  void _onMenuItemSelected(
    BuildContext context,
    ParcelMenuType type,
    ParcelInfo info,
  ) {
    switch (type) {
      case ParcelMenuType.delete:
        showDialog(
          context: context,
          builder: (_) {
            final cubit = context.read<DetailsActionsCubit>();
            return DeleteParcelDialog(
              parcelsCount: 1,
              onDelete: () {
                cubit.deleteParcel(info);
                Navigator.of(context).pop();
              },
            );
          },
        );
        break;
      case ParcelMenuType.moveToArchive:
        context.read<DetailsActionsCubit>().moveToArchive(info);
        break;
      case ParcelMenuType.moveToActive:
        context.read<DetailsActionsCubit>().moveToActive(info);
        break;
      case ParcelMenuType.refresh:
        context.read<DetailsActionsCubit>().refresh(info);
        break;
      case ParcelMenuType.share:
        context.read<DetailsActionsCubit>().buildShareString(info);
        break;
      case ParcelMenuType.edit:
        showDialog(
          context: context,
          builder: (_) {
            return BlocProvider(
              create: (_) => getIt<EditParcelCubit>(),
              child: EditParcelPage(
                trackInfo: info.trackInfo,
              ),
            );
          },
        );
        break;
      case ParcelMenuType.activateTracking:
        context.read<DetailsActionsCubit>().activateTracking(info);
        break;
    }
  }
}
