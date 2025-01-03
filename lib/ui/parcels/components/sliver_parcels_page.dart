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
import 'package:libretrack/core/settings/model.dart';
import 'package:libretrack/ui/components/widget.dart';
import 'package:libretrack/ui/model/utils.dart';
import 'package:libretrack/ui/parcels/model/parcels_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../locale.dart';
import '../../../logger.dart';
import '../model/callback.dart';
import '../model/filter.dart';
import '../model/parcel_info.dart';
import '../model/parcels_actions_cubit.dart';
import '../model/parcels_cubit.dart';
import '../model/sort.dart';
import 'sliver_parcels_list.dart';

class SliverParcelsPage extends StatelessWidget {
  final ParcelsPageType type;
  final OnSelectionChangedCallback? onSelectionChanged;
  final OnParcelDetailsCallback? onParcelDetails;
  final VoidCallback? onPageRefresh;

  const SliverParcelsPage({
    super.key,
    required this.type,
    this.onSelectionChanged,
    this.onParcelDetails,
    this.onPageRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ParcelsCubit, ParcelsState>(
      listener: (context, state) {
        state.maybeMap(
          loadingFailed: (value) {
            value.error?.when(
              database: (e, stackTrace) {
                log().e('Unable to load parcels list',
                    error: e, stackTrace: stackTrace);
              },
            );
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        final infoList = state.maybeMap(
          loaded: (value) => _currentParcelsList(type, value)
              .where(state.filters.applyAll)
              .where((info) => state.search?.apply(info) ?? true)
              .toList(),
          orElse: () => <ParcelInfo>[],
        );
        if (state.sort != null) {
          infoList.sort(state.sort!.compare);
        }
        final hasUnread = _hasUnread(type, infoList);

        final sliver = state.map(
          initial: (state) => const SliverFillRemaining(
            hasScrollBody: false,
            fillOverscroll: true,
            child: Center(child: CircularProgressIndicator()),
          ),
          loadingFailed: (state) => SliverFillRemaining(
            hasScrollBody: false,
            fillOverscroll: true,
            child: LoadingPageError(onRefresh: onPageRefresh),
          ),
          loaded: (state) {
            if (infoList.isEmpty) {
              return SliverFillRemaining(
                hasScrollBody: false,
                fillOverscroll: true,
                child: EmptyListStub(
                  icon: MdiIcons.packageVariant,
                  text: Text(
                    S.of(context).noParcels,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              );
            } else {
              return SliverPadding(
                padding: EdgeInsets.fromLTRB(
                  8.0,
                  hasUnread ? _MarkAllAsReadButton.heightMargin : 8.0,
                  8.0,
                  UiUtils.fabBottomMargin,
                ),
                sliver: SliverParcelList(
                  parcels: infoList,
                  pageType: type,
                  onSelectionChanged: onSelectionChanged,
                  onParcelDetails: onParcelDetails,
                ),
              );
            }
          },
        );
        final cubit = context.watch<ParcelsActionsCubit>();
        final markAllAsReadButton = state.map(
          initial: (value) => const SizedBox.shrink(),
          loadingFailed: (value) => const SizedBox.shrink(),
          loaded: (value) => _MarkAllAsReadButton(
            show: hasUnread,
            onPressed: () => cubit.markAsRead(infoList),
          ),
        );

        return Stack(
          children: [
            Scrollbar(
              child: CustomScrollView(
                key: PageStorageKey(
                  'SliverParcelsPage_$type',
                ),
                slivers: [
                  SliverOverlapInjector(
                    // This is the flip side of the SliverOverlapAbsorber above
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                        context),
                  ),
                  sliver,
                ],
              ),
            ),
            markAllAsReadButton,
          ],
        );
      },
    );
  }

  List<ParcelInfo> _currentParcelsList(
    ParcelsPageType type,
    ParcelsStateLoaded state,
  ) {
    switch (type) {
      case ParcelsPageTypeReceiver():
        return state.receiver;
      case ParcelsPageTypeShipper():
        return state.shipper;
      case ParcelsPageTypeArchive():
        return state.archive;
    }
  }

  bool _hasUnread(
    ParcelsPageType type,
    List<ParcelInfo> infoList,
  ) {
    switch (type) {
      case ParcelsPageTypeReceiver() || ParcelsPageTypeShipper():
        return infoList.any(
          (info) => info.lastTrackingInfo?.hasNewInfo ?? false,
        );
      case ParcelsPageTypeArchive():
        return false;
    }
  }
}

class _MarkAllAsReadButton extends StatelessWidget {
  static const _height = 35.0;
  static const _margin = 8.0;
  static const heightMargin = _height + _margin * 2;
  static const animateDuration = Duration(milliseconds: 200);

  final bool show;
  final VoidCallback? onPressed;

  const _MarkAllAsReadButton({
    required this.show,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: animateDuration,
      transitionBuilder: (child, animation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      child: _buildButton(context),
    );
  }

  Widget _buildButton(BuildContext context) {
    if (show) {
      return Container(
        height: _height,
        alignment: AlignmentDirectional.topEnd,
        margin: const EdgeInsets.all(_margin),
        child: FittedBox(
          child: FloatingActionButton.extended(
            icon: const Icon(Icons.done),
            label: Text(
              S.of(context).markAllAsRead,
              style: Theme.of(context)
                  .primaryTextTheme
                  .labelLarge!
                  .copyWith(fontSize: 18.0),
            ),
            tooltip: S.of(context).markAllAsRead,
            backgroundColor: Theme.of(context).primaryColor,
            foregroundColor: Theme.of(context).primaryIconTheme.color,
            onPressed: onPressed,
          ),
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
