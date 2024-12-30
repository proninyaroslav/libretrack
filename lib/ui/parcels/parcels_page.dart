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

import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/settings/settings.dart';
import 'package:libretrack/core/storage/storage_result.dart';
import 'package:libretrack/injector.dart';
import 'package:libretrack/locale.dart';
import 'package:libretrack/ui/components/widget.dart';
import 'package:libretrack/ui/model/utils.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:share_plus/share_plus.dart';

import '../../logger.dart';
import '../theme.dart';
import 'parcels.dart';

class ParcelsPage extends StatelessWidget {
  final VoidCallback? onAddAccount;
  final VoidCallback? onAddParcels;
  final OnSelectionChangedCallback? onSelectionChanged;
  final OnParcelDetailsCallback? onParcelDetails;

  const ParcelsPage({
    super.key,
    this.onAddAccount,
    this.onAddParcels,
    this.onSelectionChanged,
    this.onParcelDetails,
  });

  @override
  Widget build(BuildContext context) {
    final pref = getIt<AppSettings>();

    return OrientationBuilder(
      builder: (context, orientation) => Scaffold(
        body: FutureBuilder(
          future: pref.parcelsPageType,
          builder: (context, snapshot) {
            final pageType = snapshot.data;
            if (pageType == null) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return _Body(
                initialPage: pageType,
                onAddAccount: onAddAccount,
                onSelectionChanged: onSelectionChanged,
                onParcelDetails: onParcelDetails,
                onPageChanged: (type) async {
                  await pref.setParcelsPageType(type);
                },
              );
            }
          },
        ),
        floatingActionButtonLocation: UiUtils.getAdaptiveFabLocation(
          context,
          orientation,
        ),
        floatingActionButton: AdaptiveFab(
          heroTag: 'FabAddParcels',
          icon: const Icon(Icons.add),
          label: Text(S.of(context).add),
          tooltip: S.of(context).add,
          onPressed: onAddParcels,
        ),
      ),
    );
  }
}

class _Body extends StatefulWidget {
  final ParcelsPageType initialPage;
  final VoidCallback? onAddAccount;
  final OnSelectionChangedCallback? onSelectionChanged;
  final OnParcelDetailsCallback? onParcelDetails;
  final ValueChanged<ParcelsPageType> onPageChanged;

  const _Body({
    required this.initialPage,
    this.onAddAccount,
    this.onSelectionChanged,
    this.onParcelDetails,
    required this.onPageChanged,
  });

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<_Body> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  int _pageToIndex(ParcelsPageType type) => ParcelsPageType.all.indexOf(type);

  ParcelsPageType _indexToPage(int index) => ParcelsPageType.all[index];

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      length: ParcelsPageType.all.length,
      vsync: this,
      initialIndex: _pageToIndex(widget.initialPage),
    );
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        widget.onPageChanged(_indexToPage(_tabController.index));
      }
    });
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final firstStartCubit = context.read<FirstStartCubit>();
      final parcelsCubit = context.read<ParcelsCubit>();

      await firstStartCubit.showAddAccountTip();
      await parcelsCubit.observeParcels();
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ParcelsActionsCubit, ParcelsActionsState>(
      listener: _stateListener,
      child: SafeArea(
        top: false,
        child: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: _headerSliverBuilder,
          body: Scrollbar(
            child: NotificationListener<ScrollNotification>(
              onNotification: (notification) {
                // Disable horizontal scrollbars
                return notification.metrics.axis == Axis.horizontal;
              },
              child: TabBarView(
                controller: _tabController,
                children: UnmodifiableListView(
                  ParcelsPageType.all.map(
                    (type) => SliverParcelsPage(
                      type: type,
                      onSelectionChanged: widget.onSelectionChanged,
                      onParcelDetails: widget.onParcelDetails,
                      onPageRefresh: () {
                        context.read<ParcelsCubit>().observeParcels();
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _headerSliverBuilder(
    BuildContext context,
    bool innerBoxIsScrolled,
  ) {
    return [
      SliverOverlapAbsorber(
        sliver: _SliverTopBar(
          tabController: _tabController,
          tabs: [
            _Tab(
              icon: Icon(MdiIcons.packageDown),
              label: Text(S.of(context).receiverParcels),
              trailing: BlocBuilder<ParcelsCubit, ParcelsState>(
                builder: (context, state) => _buildUnreadCounter(
                  context,
                  state,
                  type: ParcelsPageType.receiver(),
                ),
              ),
            ),
            _Tab(
              icon: Icon(MdiIcons.packageUp),
              label: Text(S.of(context).shipperParcels),
              trailing: BlocBuilder<ParcelsCubit, ParcelsState>(
                builder: (context, state) => _buildUnreadCounter(
                  context,
                  state,
                  type: ParcelsPageType.shipper(),
                ),
              ),
            ),
            _Tab(
              icon: Icon(MdiIcons.archiveOutline),
              label: Text(S.of(context).archiveParcels),
            ),
          ],
        ),
        // This widget takes the overlapping behavior of the SliverAppBar,
        // and redirects it to the SliverOverlapInjector below. If it is
        // missing, then it is possible for the nested "inner" scroll view
        // below to end up under the SliverAppBar even when the inner
        // scroll view thinks it has not been scrolled.
        // This is not necessary if the "headerSliverBuilder" only builds
        // widgets that do not overlap the next sliver.
        handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
      ),
      SliverToBoxAdapter(
        child: BlocBuilder<FirstStartCubit, FirstStartState>(
          builder: (context, state) {
            final expanded = state.when(
              initial: () => false,
              showAddAccountTip: () => true,
              hideAddAccountTip: () => false,
            );
            return _AddAccountBanner(
              expanded: expanded,
              onAddAccount: () async {
                await context.read<FirstStartCubit>().addAccountTipShown();
                widget.onAddAccount?.call();
              },
              onClose: () async =>
                  await context.read<FirstStartCubit>().addAccountTipShown(),
            );
          },
        ),
      ),
    ];
  }

  Widget _buildUnreadCounter(
    BuildContext context,
    ParcelsState state, {
    required ParcelsPageType type,
  }) {
    final count = state.map(
      initial: (value) => 0,
      loadingFailed: (value) => 0,
      loaded: (value) => _countUnreadParcels(
        switch (type) {
          ParcelsPageTypeReceiver() =>
            value.receiver.where(value.filters.applyAll),
          ParcelsPageTypeShipper() =>
            value.shipper.where(value.filters.applyAll),
          ParcelsPageTypeArchive() => []
        },
      ),
    );
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 200),
      transitionBuilder: (child, animation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      child: count > 0 ? _UnreadCounter(count: count) : const SizedBox.shrink(),
    );
  }

  int _countUnreadParcels(Iterable<ParcelInfo> infoList) {
    return infoList.fold(0, (sum, info) {
      final lastTrackingInfo = info.lastTrackingInfo;
      if (lastTrackingInfo == null) {
        return sum;
      }
      if (!lastTrackingInfo.hasNewInfo ||
          lastTrackingInfo.status == TrackingStatus.inProgress) {
        return sum;
      } else {
        return sum + 1;
      }
    });
  }

  void _stateListener(BuildContext context, ParcelsActionsState state) {
    void moveParcelFailed(StorageError error, int parcelsCount) {
      error.when(
        database: (e, stackTrace) {
          log().e("Unable to move selected parcels",
              error: e, stackTrace: stackTrace);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                S.of(context).moveParcelFailed(parcelsCount),
              ),
            ),
          );
        },
      );
    }

    state.maybeWhen(
      deleteFailed: (error, parcelsCount) {
        error.when(
          database: (e, stackTrace) {
            log().e("Unable to delete selected parcels",
                error: e, stackTrace: stackTrace);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  S.of(context).deleteParcelsFailed(parcelsCount),
                ),
              ),
            );
          },
        );
      },
      markAsReadFailed: (error, parcelsCount) {
        error.when(
          database: (e, stackTrace) {
            log().e("Unable to mark selected parcels as read",
                error: e, stackTrace: stackTrace);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  S.of(context).markAsReadParcelFailed(parcelsCount),
                ),
              ),
            );
          },
        );
      },
      moveToActiveSuccess: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              S.of(context).parcelMovedToActiveSuccess,
            ),
          ),
        );
      },
      moveToActiveFailed: moveParcelFailed,
      moveToArchiveSuccess: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              S.of(context).parcelMovedToArchiveSuccess,
            ),
          ),
        );
      },
      moveToArchiveFailed: moveParcelFailed,
      refreshFailed: (errors) {
        for (final entry in errors.entries) {
          final trackNumber = entry.key;
          final error = entry.value;
          error.when(
            storage: (e) => e.when(
              database: (e, stackTrace) {
                log().e("Unable to refresh $trackNumber",
                    error: e, stackTrace: stackTrace);
              },
            ),
            limiter: (e) => e.when(
              storage: (e) => e.when(
                database: (e, stackTrace) {
                  log().e("Unable to refresh $trackNumber",
                      error: e, stackTrace: stackTrace);
                },
              ),
            ),
          );
        }
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              S.of(context).refreshParcelsFailed(errors.length),
            ),
          ),
        );
      },
      shareStringSuccess: (text) async {
        try {
          await Share.share(text);
        } on Exception catch (e, stackTrace) {
          log().e("Unable to share", error: e, stackTrace: stackTrace);
          if (context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(S.of(context).shareFailed),
              ),
            );
          }
        }
      },
      copyTrackSuccess: (trackNumbers) {
        Clipboard.setData(ClipboardData(text: trackNumbers));
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              S.of(context).copiedToClipboard,
            ),
          ),
        );
      },
      refreshFreqLimited: (remainingTime) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              S.of(context).parcelTrackingLimitedError(
                    UiUtils.formatRemainingLimitTime(context, remainingTime),
                  ),
            ),
            duration: UiUtils.snackBarDisplayLongDuration,
          ),
        );
      },
      orElse: () {},
    );
  }
}

class _SliverTopBar extends StatelessWidget {
  final List<_Tab> tabs;
  final TabController tabController;

  const _SliverTopBar({
    required this.tabController,
    required this.tabs,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      shadowColor: Colors.transparent,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      toolbarHeight: kToolbarHeight + 8.0,
      flexibleSpace: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 12.0, 8.0, 0.0),
        child: Column(
          children: [
            Expanded(
              child: _TabBar(
                tabController: tabController,
                tabs: tabs,
              ),
            ),
            const SizedBox(height: 8.0),
            Container(
              height: 1.0,
              color: Theme.of(context).dividerColor,
            ),
          ],
        ),
      ),
    );
  }
}

class _Tab extends StatelessWidget {
  final Widget icon;
  final Widget label;
  final Widget? trailing;

  const _Tab({
    required this.icon,
    required this.label,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: ConstrainedBox(
        constraints: BoxConstraints(minWidth: 100.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            icon,
            const SizedBox(width: 8.0),
            Flexible(
              child: FittedBox(child: label),
            ),
            if (trailing != null) const SizedBox(width: 8.0),
            trailing ?? const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}

class _TabBar extends StatelessWidget {
  final List<_Tab> tabs;
  final TabController tabController;

  const _TabBar({
    required this.tabs,
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(32.0);
    return TabBar(
      labelColor: AppTheme.textPrimaryColorLight(context),
      unselectedLabelColor: Theme.of(context).unselectedWidgetColor,
      controller: tabController,
      tabs: tabs,
      indicator: BoxDecoration(
        color: AppTheme.textPrimaryColorLight(context).withValues(alpha: 0.2),
        borderRadius: borderRadius,
      ),
      splashBorderRadius: borderRadius,
      isScrollable: true,
    );
  }
}

class _UnreadCounter extends StatelessWidget {
  final int count;
  final int maxCount = 100;

  const _UnreadCounter({
    required this.count,
  }) : assert(count >= 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.0,
      constraints: const BoxConstraints(
        minWidth: 20.0,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: AppTheme.palette(context).newInfo,
      ),
      child: Center(
        widthFactor: 1.0,
        child: Text(
          count > maxCount ? '$maxCount+' : '$count',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Colors.white,
              ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}

class _AddAccountBanner extends StatelessWidget {
  final bool expanded;
  final VoidCallback? onAddAccount;
  final VoidCallback? onClose;

  const _AddAccountBanner({
    required this.expanded,
    this.onAddAccount,
    this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      switchInCurve: Curves.ease,
      switchOutCurve: Curves.ease,
      duration: const Duration(milliseconds: 200),
      transitionBuilder: (child, animation) {
        return SizeTransition(
          sizeFactor: animation,
          child: child,
        );
      },
      child: _buildBanner(context),
    );
  }

  Widget _buildBanner(BuildContext context) {
    if (expanded) {
      return Card(
        elevation: 1.0,
        clipBehavior: Clip.antiAlias,
        child: MaterialBanner(
          leading: CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor,
            foregroundColor: Theme.of(context).primaryIconTheme.color,
            child: Icon(
              MdiIcons.lightbulbOnOutline,
            ),
          ),
          content: Text(S.of(context).addAccountTip),
          forceActionsBelow: true,
          actions: [
            TextButton(
              onPressed: onAddAccount,
              child: Text(
                S.of(context).addAccount,
                textAlign: TextAlign.end,
              ),
            ),
            TextButton(
              onPressed: onClose,
              child: Text(
                S.of(context).close,
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
