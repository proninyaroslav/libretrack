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
import 'package:libretrack/locale.dart';
import 'package:libretrack/ui/accounts/accounts.dart';
import 'package:libretrack/ui/parcels/parcels.dart';
import 'package:libretrack/ui/parcels/parcels_filter_drawer.dart';
import 'package:libretrack/ui/widget/widget.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../app_router.dart';
import 'navigation_page.dart';

class HomePage extends StatefulWidget {
  final ValueChanged<AppRoutePath>? onLoadRoute;
  final HomeRoutePath initRoute;

  const HomePage({
    super.key,
    this.onLoadRoute,
    required this.initRoute,
  });

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _navigationKey = GlobalKey<NavigationPageState>();

  // It's necessary to save the pages state when changing orientation,
  // measuring the screen, etc.
  final _parcelsKey = GlobalKey();
  final _accountsKey = GlobalKey();

  static const _frontLayerVisibleSize = 65.0;

  final _pageIdMap = <HomeRoutePath, PageId>{
    const HomeRoutePath.parcels(): const PageId('ParcelsPage'),
    const HomeRoutePath.accounts(): const PageId('AccountsPage'),
  };

  @override
  Widget build(BuildContext context) {
    return NavigationPage(
      key: _navigationKey,
      frontLayerVisibleSize: _frontLayerVisibleSize,
      initPageId: _pageIdMap[const HomeRoutePath.parcels()],
      items: [
        NavItem.page(
          name: S.of(context).parcels,
          icon: Icon(MdiIcons.packageVariantClosed),
          pageInfo: PageInfo(
            id: _pageIdMap[const HomeRoutePath.parcels()]!,
            page: Unfocus(
              child: ParcelsPage(
                key: _parcelsKey,
                onAddAccount: () {
                  widget.onLoadRoute?.call(const AppRoutePath.addAccount());
                },
                onAddParcels: () {
                  widget.onLoadRoute?.call(const AppRoutePath.addParcels());
                },
                onSelectionChanged: (itemsCount) {
                  if (itemsCount > 0) {
                    _navigationKey.currentState?.enableContextualAppBar(
                      itemsCount,
                    );
                  } else {
                    _navigationKey.currentState?.disableContextualAppBar();
                  }
                },
                onParcelDetails: (trackNumber) {
                  widget.onLoadRoute?.call(
                    AppRoutePath.parcelDetails(trackNumber),
                  );
                },
              ),
            ),
            appBarTitle: const ParcelsAppBarTitle(),
            appBarTitleSpacing: 0.0,
            sheetInfo: SheetInfo(
              name: S.of(context).filtersAndSorting,
              sheet: const ParcelsFilterDrawer(
                frontLayerVisibleSize: _frontLayerVisibleSize,
              ),
              toggleIcon: Icons.tune,
              appBarTitle: Text(S.of(context).filtersAndSorting),
            ),
            contextualActions: [const ParcelContextualActions()],
            onContextualAppBarClosed: () {
              context.read<SelectableParcelsCubit>().clearSelection();
            },
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.refresh,
                ),
                tooltip: S.of(context).refreshAll,
                onPressed: () =>
                    context.read<ParcelsActionsCubit>().refreshAll(),
              ),
            ],
          ),
        ),
        NavItem.page(
          name: S.of(context).accounts,
          icon: Icon(MdiIcons.accountBoxMultiple),
          pageInfo: PageInfo(
            id: _pageIdMap[const HomeRoutePath.accounts()]!,
            appBarTitle: Text(S.of(context).accounts),
            page: AccountsPage(
              key: _accountsKey,
              onAddAccount: () {
                widget.onLoadRoute?.call(const AppRoutePath.addAccount());
              },
              onEditAccount: (serviceType) {
                widget.onLoadRoute?.call(AppRoutePath.editAccount(serviceType));
              },
            ),
          ),
        ),
        NavItem.action(
          name: S.of(context).settings,
          icon: const Icon(Icons.settings_outlined),
          onPressed: () {
            widget.onLoadRoute?.call(const AppRoutePath.settings());
          },
        ),
        NavItem.action(
          name: S.of(context).aboutApp,
          icon: const Icon(Icons.info_outline),
          onPressed: () {
            widget.onLoadRoute?.call(const AppRoutePath.about());
          },
        ),
      ],
    );
  }
}
