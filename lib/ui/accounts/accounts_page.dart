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
import 'package:libretrack/logger.dart';
import 'package:libretrack/ui/accounts/accounts.dart';
import 'package:libretrack/ui/accounts/model/accounts_actions_state.dart';
import 'package:libretrack/ui/accounts/model/accounts_state.dart';
import 'package:libretrack/ui/components/widget.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:quiver/collection.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../locale.dart';
import '../model/utils.dart';

class AccountsPage extends StatefulWidget {
  final VoidCallback? onAddAccount;
  final void Function(TrackingServiceType)? onEditAccount;

  const AccountsPage({
    super.key,
    this.onAddAccount,
    this.onEditAccount,
  });

  @override
  State<AccountsPage> createState() => _AccountsPageState();
}

class _AccountsPageState extends State<AccountsPage> {
  @override
  void initState() {
    super.initState();

    context.read<AccountsCubit>().observeServices();
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return Scaffold(
          body: _Body(onEditAccount: widget.onEditAccount),
          floatingActionButtonLocation: UiUtils.getAdaptiveFabLocation(
            context,
            orientation,
          ),
          floatingActionButton: AdaptiveFab(
            heroTag: 'FabAddAccount',
            icon: const Icon(Icons.add),
            label: Text(S.of(context).add),
            tooltip: S.of(context).add,
            onPressed: widget.onAddAccount,
          ),
        );
      },
    );
  }
}

class _Body extends StatelessWidget {
  final void Function(TrackingServiceType)? onEditAccount;

  const _Body({this.onEditAccount});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AccountsActionsCubit, AccountsActionsState>(
      listener: (context, state) {
        state.maybeWhen(
          deleteFailed: (error) {
            error.when(
              database: (e, stackTrace) {
                log().e('Unable to delete account',
                    error: e, stackTrace: stackTrace);
              },
            );
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  S.of(context).deleteAccountFailed,
                ),
              ),
            );
          },
          orElse: () {},
        );
      },
      child: BlocConsumer<AccountsCubit, AccountsState>(
        listener: (context, state) {
          state.maybeWhen(
            loadingFailed: (error) {
              error.when(
                database: (e, stackTrace) {
                  log().e('Unable to load accounts list',
                      error: e, stackTrace: stackTrace);
                },
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.when(
            initial: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loadingFailed: (error) => LoadingPageError(
              onRefresh: () {
                context.read<AccountsCubit>().observeServices();
              },
            ),
            loaded: (serviceList) => _AccountsList(
              servicesList: serviceList,
              onTap: (info) => onEditAccount?.call(info.type),
              onMenuSelected: (info, option) =>
                  _onMenuSelected(context, info, option),
            ),
          );
        },
      ),
    );
  }

  void _onMenuSelected(
    BuildContext context,
    TrackingServiceInfo info,
    AccountItemMenu option,
  ) {
    switch (option) {
      case AccountItemMenu.delete:
        showDialog(
          context: context,
          builder: (_) {
            return _DeleteAccountDialog(
              onDelete: () {
                context.read<AccountsActionsCubit>().deleteService(info);
              },
            );
          },
        );
        break;
    }
  }
}

typedef AccountItemMenuCallback = void Function(
  TrackingServiceInfo,
  AccountItemMenu,
);

class _AccountsList extends StatefulWidget {
  final List<TrackingServiceInfo> servicesList;
  final void Function(TrackingServiceInfo)? onTap;
  final AccountItemMenuCallback? onMenuSelected;

  const _AccountsList({
    required this.servicesList,
    this.onTap,
    this.onMenuSelected,
  });

  @override
  _AccountsListState createState() => _AccountsListState();

  static const _listPadding = EdgeInsets.fromLTRB(
    8.0,
    16.0,
    8.0,
    UiUtils.fabBottomMargin,
  );
}

class _AccountsListState extends State<_AccountsList> {
  late List<GlobalKey> _itemsKeys;

  @override
  void initState() {
    super.initState();

    _itemsKeys = widget.servicesList.map((e) => GlobalKey()).toList();
  }

  @override
  void didUpdateWidget(_AccountsList oldWidget) {
    super.didUpdateWidget(oldWidget);

    final oldServicesList = oldWidget.servicesList;
    final serviceList = widget.servicesList;

    if (!listsEqual(oldServicesList, serviceList)) {
      _itemsKeys = widget.servicesList.map((e) => GlobalKey()).toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.servicesList.isEmpty) {
      return EmptyListStub(
        icon: MdiIcons.accountSearchOutline,
        text: Text(
          S.of(context).noAccounts,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      );
    } else {
      final metadataList = _buildMetadata(context, widget.servicesList);
      final items = <_AccountsListItem>[];
      for (var i = 0; i < metadataList.length; i++) {
        final key = _itemsKeys[i];
        final entry = metadataList[i];
        final info = entry.key;
        final metadata = entry.value;

        items.add(
          _AccountsListItem(
            key: key,
            iconData: metadata.iconData,
            name: metadata.localizedName,
            onTap: () => widget.onTap?.call(info),
            onMenuSelected: (option) =>
                widget.onMenuSelected?.call(info, option),
          ),
        );
      }

      return Scrollbar(
        child: SafeArea(
          child: ResponsiveBuilder(
            builder: (context, sizingInfo) {
              switch (sizingInfo.deviceScreenType) {
                case DeviceScreenType.tablet:
                case DeviceScreenType.desktop:
                  final crossAxisCount =
                      sizingInfo.screenSize.width >= 1200 ? 4 : 3;
                  return _buildGridView(
                    items: items,
                    crossAxisCount: crossAxisCount,
                  );
                default:
                  return OrientationLayoutBuilder(
                    portrait: (context) => _buildListView(items),
                    landscape: (context) => _buildGridView(
                      items: items,
                      crossAxisCount: 3,
                    ),
                  );
              }
            },
          ),
        ),
      );
    }
  }

  Widget _buildListView(List<_AccountsListItem> items) {
    return ListView(
      key: const PageStorageKey('accounts_list'),
      padding: _AccountsList._listPadding,
      children: items,
    );
  }

  Widget _buildGridView({
    required List<_AccountsListItem> items,
    required int crossAxisCount,
  }) {
    return GridView.count(
      key: const PageStorageKey('accounts_list'),
      padding: _AccountsList._listPadding,
      crossAxisCount: crossAxisCount,
      childAspectRatio: 2.5,
      children: items,
    );
  }

  List<MapEntry<TrackingServiceInfo, TrackingServiceMetadata>> _buildMetadata(
    BuildContext context,
    List<TrackingServiceInfo> servicesList,
  ) {
    final metadataList = servicesList
        .map(
          (info) => MapEntry(
            info,
            TrackingServiceMetadataMapper.of(context, info.type),
          ),
        )
        .toList();
    metadataList.sort(
      (a, b) => a.value.localizedName.compareTo(b.value.localizedName),
    );

    return metadataList;
  }
}

enum AccountItemMenu {
  delete,
}

class _AccountsListItem extends StatelessWidget {
  final RRectIconData iconData;
  final String name;
  final VoidCallback? onTap;
  final void Function(AccountItemMenu)? onMenuSelected;

  const _AccountsListItem({
    super.key,
    required this.iconData,
    required this.name,
    this.onTap,
    this.onMenuSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        customBorder: Theme.of(context).cardTheme.shape,
        child: Center(
          child: ListTile(
            contentPadding: const EdgeInsets.all(8.0),
            leading: RRectIcon(
              iconData: iconData,
              size: 40.0,
            ),
            trailing: PopupMenuButton<AccountItemMenu>(
              onSelected: onMenuSelected,
              itemBuilder: _buildMenuItems,
            ),
            title: Text(name),
          ),
        ),
      ),
    );
  }

  List<PopupMenuEntry<AccountItemMenu>> _buildMenuItems(BuildContext context) {
    return [
      PopupMenuItem(
        value: AccountItemMenu.delete,
        child: Text(S.of(context).delete),
      )
    ];
  }
}

class _DeleteAccountDialog extends StatelessWidget {
  final VoidCallback onDelete;

  const _DeleteAccountDialog({
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(S.of(context).delete),
      scrollable: true,
      content: Text(S.of(context).deleteAccountDialogMsg),
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
            onDelete.call();
            Navigator.of(context).pop();
          },
          child: Text(
            S.of(context).delete,
            textAlign: TextAlign.end,
          ),
        ),
      ],
    );
  }
}
