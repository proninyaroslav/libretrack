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
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:libretrack/core/storage/storage_result.dart';
import 'package:libretrack/logger.dart';
import 'package:libretrack/ui/parcel_details/parcel_details.dart';
import 'package:libretrack/ui/parcel_details/parcel_menu.dart';
import 'package:libretrack/ui/utils/utils.dart';
import 'package:libretrack/ui/widget/widget.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:share_plus/share_plus.dart';

import '../../locale.dart';
import 'base_parcel_info.dart';
import 'postal_service_list.dart';
import 'tracking_history.dart';

class ParcelDetailsPage extends StatefulWidget {
  final String trackNumber;
  final OnAddParcelCallback? onAddMissingParcel;
  final OnAddParcelCallback? onAddParcel;

  const ParcelDetailsPage({
    Key? key,
    required this.trackNumber,
    this.onAddMissingParcel,
    this.onAddParcel,
  }) : super(key: key);

  @override
  _ParcelDetailsPageState createState() => _ParcelDetailsPageState();
}

enum _PageType {
  details,
  trackingHistory,
}

class _ParcelDetailsPageState extends State<ParcelDetailsPage> {
  _PageType _currentPage = _PageType.details;

  @override
  void initState() {
    super.initState();

    final detailsCubit = context.read<ParcelDetailsCubit>();
    detailsCubit.observeParcel(widget.trackNumber);
    context.read<ParcelErrorBannerCubit>().observeParcel(detailsCubit);
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      title: _AppBarTitle(),
      actions: const [ParcelActions()],
      body: _Body(
        currentPage: _currentPage,
        onAddMissingParcel: widget.onAddMissingParcel,
        onAddParcel: widget.onAddParcel,
        onShowErrors: () {
          setState(() {
            _currentPage = _PageType.trackingHistory;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage.index,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(MdiIcons.packageVariantClosed),
            label: S.of(context).details,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.history),
            label: S.of(context).trackingHistory,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentPage = _PageType.values[index];
          });
        },
      ),
    );
  }
}

class _Body extends StatefulWidget {
  final _PageType currentPage;
  final OnAddParcelCallback? onAddMissingParcel;
  final OnAddParcelCallback? onAddParcel;
  final VoidCallback? onShowErrors;

  const _Body({
    Key? key,
    required this.currentPage,
    this.onAddMissingParcel,
    this.onAddParcel,
    this.onShowErrors,
  }) : super(key: key);

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  late final ScrollController _detailsScrollController;
  late final ScrollController _historyScrollController;

  @override
  void initState() {
    super.initState();

    _detailsScrollController = ScrollController();
    _historyScrollController = ScrollController();
  }

  @override
  void dispose() {
    _detailsScrollController.dispose();
    _historyScrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<DetailsActionsCubit, DetailsActionsState>(
      listener: _stateListener,
      child: BlocConsumer<ParcelDetailsCubit, ParcelDetailsState>(
        listener: (context, state) {
          state.maybeWhen(
            loaded: (trackNumber, info) {
              context.read<DetailsActionsCubit>().markAsRead(info);
            },
            loadingFailed: (trackNumber, error) {
              error?.when(
                database: (e, stackTrace) {
                  log().e('Unable to load parcel details', e, stackTrace);
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
            notFound: (trackNumber) => _ParcelNotFound(
              onAddPressed: () => widget.onAddMissingParcel?.call(trackNumber),
            ),
            loadingFailed: (trackNumber, e) => LoadingPageError(
              onRefresh: () {
                context.read<ParcelDetailsCubit>().observeParcel(trackNumber);
              },
            ),
            loaded: (trackNumber, info) {
              return FadeIndexedStack(
                index: widget.currentPage.index,
                duration: const Duration(milliseconds: 200),
                children: [
                  PrimaryScrollController(
                    controller: _detailsScrollController,
                    child: _Details(
                      info: info,
                      onShowErrors: widget.onShowErrors,
                      onAddParcel: widget.onAddParcel,
                    ),
                  ),
                  PrimaryScrollController(
                    controller: _historyScrollController,
                    child: TrackingHistory(
                      trackingHistory: info.trackingHistory,
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }

  void _stateListener(BuildContext context, DetailsActionsState state) {
    void _moveParcelFailed(StorageError error) {
      error.when(
        database: (e, stackTrace) {
          log().e("Unable to move parcel", e, stackTrace);
          AdaptiveScaffold.of(context).showAdaptiveToast(
            text: S.of(context).moveParcelFailed(1),
          );
        },
      );
    }

    state.maybeWhen(
      deleteFailed: (error) {
        error.when(
          database: (e, stackTrace) {
            log().e("Unable to delete parcel", e, stackTrace);
            AdaptiveScaffold.of(context).showAdaptiveToast(
              text: S.of(context).deleteParcelsFailed(1),
            );
          },
        );
      },
      markAsReadFailed: (error) {
        error.when(
          database: (e, stackTrace) {
            log().e("Unable to mark parcel as read", e, stackTrace);
            AdaptiveScaffold.of(context).showAdaptiveToast(
              text: S.of(context).markAsReadParcelFailed(1),
            );
          },
        );
      },
      moveToActiveSuccess: () {
        AdaptiveScaffold.of(context).showAdaptiveToast(
          text: S.of(context).parcelMovedToActiveSuccess,
        );
      },
      moveToActiveFailed: _moveParcelFailed,
      moveToArchiveSuccess: () {
        AdaptiveScaffold.of(context).showAdaptiveToast(
          text: S.of(context).parcelMovedToArchiveSuccess,
        );
      },
      moveToArchiveFailed: _moveParcelFailed,
      refreshFailed: (error) {
        error.when(
          database: (e, stackTrace) {
            log().e("Unable to refresh parcel", e, stackTrace);
            AdaptiveScaffold.of(context).showAdaptiveToast(
              text: S.of(context).refreshParcelsFailed(1),
            );
          },
        );
      },
      shareStringSuccess: (text) async {
        try {
          await Share.share(text);
        } on Exception catch (e, stackTrace) {
          log().e("Unable to share", e, stackTrace);
          AdaptiveScaffold.of(context).showAdaptiveToast(
            text: S.of(context).shareFailed,
          );
        }
      },
      copyTrackSuccess: (trackNumber) {
        Clipboard.setData(
          ClipboardData(
            text: trackNumber,
          ),
        );
        AdaptiveScaffold.of(context).showAdaptiveToast(
          text: S.of(context).copiedToClipboard,
        );
      },
      activateFailed: (error) {
        error.when(
          database: (e, stackTrace) {
            log().e("Unable to activate tracking", e, stackTrace);
            AdaptiveScaffold.of(context).showAdaptiveToast(
              text: S.of(context).activateTrackingFailed,
            );
          },
        );
      },
      refreshFreqLimited: (remainingTime) {
        AdaptiveScaffold.of(context).showAdaptiveToast(
          text: S.of(context).parcelTrackingLimitedError(
                UiUtils.formatRemainingLimitTime(context, remainingTime),
              ),
          isLong: true,
        );
      },
      orElse: () {},
    );
  }
}

class _Details extends StatelessWidget {
  final ParcelInfo info;
  final VoidCallback? onShowErrors;
  final OnAddParcelCallback? onAddParcel;

  const _Details({
    Key? key,
    required this.info,
    this.onShowErrors,
    this.onAddParcel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scrollbar(
        // Remove PageView scrollbar inside ListView
        notificationPredicate: (notification) {
          return notification.metrics.axis == Axis.vertical;
        },
        child: ListView(
          key: const PageStorageKey('details_list'),
          padding: const EdgeInsets.all(8.0),
          children: [
            ..._buildErrorBanners(),
            BaseParcelInfo(info: info),
            ShipmentInfoList(
              shipmentInfoList: info.shipmentInfoList,
              onAddParcel: onAddParcel,
            ),
            PostalServiceList(info: info),
            ActivityList(activities: info.activities),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildErrorBanners() {
    return [
      BlocBuilder<ParcelErrorBannerCubit, ParcelErrorBannerState>(
        builder: (context, state) => ErrorBanner(
          expanded: state.banners.contains(
            const ParcelErrorBanner.missingAuthData(),
          ),
          message: S.of(context).trackingErrorMissingAuthData,
          onShowErrors: onShowErrors,
        ),
      ),
      BlocBuilder<ParcelErrorBannerCubit, ParcelErrorBannerState>(
        builder: (context, state) => ErrorBanner(
          expanded: state.banners.contains(
            const ParcelErrorBanner.missingAccount(),
          ),
          message: S.of(context).trackingErrorMissingAccount,
          onShowErrors: onShowErrors,
        ),
      ),
      BlocBuilder<ParcelErrorBannerCubit, ParcelErrorBannerState>(
        builder: (context, state) => ErrorBanner(
          expanded: state.banners.contains(
            const ParcelErrorBanner.authError(),
          ),
          message: S.of(context).trackingErrorAuth,
          onShowErrors: onShowErrors,
        ),
      ),
      BlocBuilder<ParcelErrorBannerCubit, ParcelErrorBannerState>(
        builder: (context, state) => ErrorBanner(
          expanded: state.banners.contains(
            const ParcelErrorBanner.hardError(),
          ),
          message: S.of(context).parcelDetailsHardErrorOccurred,
          onShowErrors: onShowErrors,
          customActions: [
            TextButton(
              onPressed: () {
                context.read<DetailsActionsCubit>().activateTracking(info);
              },
              child: Text(
                S.of(context).activateTracking,
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
      ),
    ];
  }
}

class _AppBarTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ParcelDetailsCubit, ParcelDetailsState>(
      builder: (context, state) {
        return state.when(
          initial: () => Container(),
          notFound: (trackNumber) => Text(trackNumber),
          loadingFailed: (trackNumber, e) => Text(trackNumber),
          loaded: (trackNumber, info) => Text(
            info.trackInfo.description?.isEmpty ?? true
                ? trackNumber
                : info.trackInfo.description!,
          ),
        );
      },
    );
  }
}

class _ParcelNotFound extends StatelessWidget {
  final VoidCallback? onAddPressed;

  const _ParcelNotFound({
    Key? key,
    this.onAddPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              MdiIcons.textBoxSearchOutline,
              size: 100,
              color: Colors.blueGrey,
            ),
            const SizedBox(height: 20.0),
            Text(
              S.of(context).parcelNotFound,
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: Colors.blueGrey),
            ),
            const SizedBox(height: 24.0),
            FloatingActionButton.extended(
              heroTag: 'FabAddToMyParcels',
              icon: const Icon(Icons.add),
              label: Text(S.of(context).addToMyParcels),
              tooltip: S.of(context).addToMyParcels,
              onPressed: onAddPressed,
            ),
          ],
        ),
      ),
    );
  }
}
