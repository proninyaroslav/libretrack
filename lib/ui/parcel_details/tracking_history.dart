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

import 'package:diffutil_sliverlist/diffutil_sliverlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:jiffy/jiffy.dart';
import 'package:libretrack/core/crash_report/crash_report_manager.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/ui/cubit/error_report_cubit.dart';
import 'package:libretrack/ui/utils/utils.dart';
import 'package:libretrack/ui/widget/widget.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../injector.dart';
import '../../locale.dart';
import '../theme.dart';
import 'parcel_info.dart';
import 'tracking_error_dialog.dart';

class TrackingHistory extends StatelessWidget {
  final List<TrackingHistoryEntry> trackingHistory;

  const TrackingHistory({
    super.key,
    required this.trackingHistory,
  });

  @override
  Widget build(BuildContext context) {
    if (trackingHistory.isEmpty) {
      return EmptyListStub(
        icon: Icons.history,
        text: Text(
          S.of(context).noTrackingHistory,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      );
    } else {
      return _Body(trackingHistory: trackingHistory);
    }
  }
}

class _Body extends StatelessWidget {
  final List<TrackingHistoryEntry> trackingHistory;

  const _Body({
    required this.trackingHistory,
  });

  @override
  Widget build(BuildContext context) {
    var counter = 0;
    return Scrollbar(
      child: SafeArea(
        child: CustomScrollView(
          slivers: [
            AnimationLimiter(
              child: SliverPadding(
                padding: const EdgeInsets.all(8.0),
                sliver: DiffUtilSliverList<TrackingHistoryEntry>(
                  key: const PageStorageKey('tracking_history_list'),
                  items: trackingHistory,
                  builder: (context, entry) {
                    return AnimationConfiguration.staggeredList(
                      position: counter++,
                      child: SlideAnimation(
                        verticalOffset: 50.0,
                        child: FadeInAnimation(
                          child: _TrackingHistoryItem(historyEntry: entry),
                        ),
                      ),
                    );
                  },
                  equalityChecker: (a, b) {
                    return a.trackingInfo.id == b.trackingInfo.id;
                  },
                  insertAnimationDuration: UiUtils.defaultAnimatedListDuration,
                  removeAnimationDuration: UiUtils.defaultAnimatedListDuration,
                  insertAnimationBuilder: (context, animation, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                  removeAnimationBuilder: (context, animation, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: SizeTransition(
                        sizeFactor: animation,
                        child: child,
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TrackingHistoryItem extends StatelessWidget {
  final TrackingHistoryEntry historyEntry;

  const _TrackingHistoryItem({
    required this.historyEntry,
  });

  @override
  Widget build(BuildContext context) {
    final trackingInfo = historyEntry.trackingInfo;
    final responseList = historyEntry.responseList;

    return Card(
      clipBehavior: Clip.antiAlias,
      child: CustomExpansionTile(
        key: PageStorageKey(
          'tracking_history_item_${historyEntry.trackingInfo.id}',
        ),
        title: Text(
          Jiffy.parseFromDateTime(trackingInfo.dateTime).yMMMdjm,
        ),
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 1.0,
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              color: Theme.of(context).dividerColor,
            ),
          ),
          _TrackingHistoryItemContent(
            responseList: responseList,
          )
        ],
      ),
    );
  }
}

class _TrackingHistoryItemContent extends StatelessWidget {
  final List<TrackingResponseInfo> responseList;

  const _TrackingHistoryItemContent({
    required this.responseList,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        runSpacing: 8.0,
        spacing: 8.0,
        children: responseList
            .map((info) => _TrackingHistoryResponseItem(response: info))
            .toList(),
      ),
    );
  }
}

class _TrackingHistoryResponseItem extends StatelessWidget {
  final TrackingResponseInfo response;

  const _TrackingHistoryResponseItem({
    required this.response,
  });

  @override
  Widget build(BuildContext context) {
    final metadata = PostalServiceMetadataMapper.of(
      context,
      response.serviceType,
    );
    final chipTheme = ChipTheme.of(context);
    late String tooltip;
    switch (response.status) {
      case TrackingResponseStatus.success:
        tooltip = S.of(context).trackingResponseSuccess;
      case TrackingResponseStatus.fail:
        tooltip = S.of(context).trackingResponseError;
      case TrackingResponseStatus.noInfo:
        tooltip = S.of(context).trackingResponseNoInfo;
      case TrackingResponseStatus.trackingStopped:
        tooltip = S.of(context).trackingResponseStopped;
    }

    return Tooltip(
      message: tooltip,
      child: Material(
        shape: chipTheme.shape ?? const StadiumBorder(),
        color: chipTheme.backgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildIcon(context),
              const SizedBox(width: 12.0),
              RRectIcon(
                iconData: metadata.iconData,
                size: 24.0,
              ),
              const SizedBox(width: 8.0),
              Flexible(
                child: Text(
                  metadata.localizedName,
                  style: chipTheme.labelStyle,
                ),
              ),
              if (response.error != null) ...[
                const SizedBox(width: 8.0),
                _ShowResponseErrorButton(error: response.error!),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIcon(BuildContext context) {
    IconData? icon;
    Color? color, iconColor;
    switch (response.status) {
      case TrackingResponseStatus.success:
        icon = Icons.done;
        color = AppTheme.palette(context).ok;
        iconColor = Theme.of(context).colorScheme.onError;
      case TrackingResponseStatus.fail:
        icon = Icons.close;
        color = Theme.of(context).colorScheme.error;
        iconColor = Theme.of(context).colorScheme.onError;
      case TrackingResponseStatus.noInfo:
        icon = MdiIcons.help;
        color = Colors.grey;
        iconColor = Colors.white;
      case TrackingResponseStatus.trackingStopped:
        icon = MdiIcons.minusThick;
        color = Colors.grey;
        iconColor = Colors.white;
    }

    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        size: 18.0,
        color: iconColor,
      ),
    );
  }
}

class _ShowResponseErrorButton extends StatelessWidget {
  final TrackingError error;

  const _ShowResponseErrorButton({
    required this.error,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return BlocProvider(
              create: (context) => ErrorReportCubit(
                getIt<CrashReportManager>(),
              ),
              child: TrackingErrorDialog(error: error),
            );
          },
        );
      },
      style: ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
      ),
      child: Text(S.of(context).showError),
    );
  }
}
