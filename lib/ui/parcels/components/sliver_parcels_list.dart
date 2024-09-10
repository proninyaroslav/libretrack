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
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/ui/components/widget.dart';
import 'package:libretrack/ui/model/selectable_state.dart';
import 'package:libretrack/ui/model/utils.dart';
import 'package:libretrack/ui/parcels/model/selectable_parcels_item.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../locale.dart';
import '../../theme.dart';
import '../model/callback.dart';
import '../model/parcel_info.dart';
import '../model/parcels_page_type.dart';
import '../model/selectable_parcels_cubit.dart';
import 'parcel_menu.dart';

class SliverParcelList extends StatelessWidget {
  final List<ParcelInfo> parcels;
  final ParcelsPageType pageType;
  final OnSelectionChangedCallback? onSelectionChanged;
  final OnParcelDetailsCallback? onParcelDetails;

  const SliverParcelList({
    super.key,
    required this.parcels,
    required this.pageType,
    this.onSelectionChanged,
    this.onParcelDetails,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SelectableParcelsCubit, SelectableState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          noSelection: () {
            onSelectionChanged?.call(0);
          },
          selected: (items) {
            onSelectionChanged?.call(items.length);
          },
        );
      },
      builder: (context, state) {
        var counter = 0;
        return AnimationLimiter(
          child: DiffUtilSliverList<ParcelInfo>(
            key: const PageStorageKey('parcels_list'),
            items: parcels,
            builder: (context, info) {
              final selectableItem = SelectableParcelsItem(
                info: info,
                pageType: pageType,
              );

              final item = _ParcelListItem(
                parcelInfo: info,
                pageType: pageType,
                isSelected: state.maybeWhen(
                  selected: (items) => items.contains(selectableItem),
                  orElse: () => false,
                ),
                selectableMode: state.maybeWhen(
                  selected: (_) => true,
                  orElse: () => false,
                ),
                onLongPress: () {
                  context.read<SelectableParcelsCubit>().select(selectableItem);
                },
                onTap: () {
                  state.maybeWhen(
                    selected: (items) {
                      final cubit = context.read<SelectableParcelsCubit>();
                      if (items.contains(selectableItem)) {
                        cubit.unselect(selectableItem);
                      } else {
                        cubit.select(selectableItem);
                      }
                    },
                    orElse: () => onParcelDetails?.call(
                      info.trackInfo.trackNumber,
                    ),
                  );
                },
              );

              return AnimationConfiguration.staggeredList(
                position: counter++,
                child: SlideAnimation(
                  verticalOffset: 50.0,
                  child: FadeInAnimation(
                    child: item,
                  ),
                ),
              );
            },
            equalityChecker: (a, b) {
              return a.trackInfo.trackNumber == b.trackInfo.trackNumber;
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
        );
      },
    );
  }
}

class _ParcelListItem extends StatelessWidget {
  final ParcelInfo parcelInfo;
  final ParcelsPageType pageType;
  final bool isSelected;
  final bool selectableMode;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;

  const _ParcelListItem({
    required this.parcelInfo,
    required this.pageType,
    this.isSelected = false,
    this.selectableMode = false,
    this.onTap,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    final trackInfo = parcelInfo.trackInfo;
    final lastActivity = parcelInfo.lastActivity;
    final lastTrackingInfo = parcelInfo.lastTrackingInfo;
    final trackServices = parcelInfo.trackServices;
    final lastTrackingResponse = parcelInfo.lastTrackingResponse;

    return LayoutBuilder(
      builder: (context, constraints) {
        final isHorizontal = constraints.biggest.width >= 640;

        final contentChildren = [
          _buildTitle(
            context,
            trackInfo,
            lastTrackingInfo,
            lastTrackingResponse,
            isHorizontal: isHorizontal,
          ),
          _ContentSeparator(thickness: 8.0, isHorizontal: isHorizontal),
          ..._buildTrackingResponseStatus(
            context,
            lastTrackingInfo,
            lastActivity,
            isHorizontal: isHorizontal,
          ),
        ];

        return Card(
          child: InkWell(
            onTap: onTap,
            onLongPress: onLongPress,
            onDoubleTap: onLongPress,
            customBorder: Theme.of(context).cardTheme.shape,
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _ParcelItemSelectionControl(
                    show: selectableMode,
                    isSelected: isSelected,
                    onSelected: onTap,
                  ),
                  const SizedBox(width: 8.0),
                  _AnimatedStatus(
                    child: _buildLeading(
                      context,
                      parcelInfo.currentStatus,
                      lastTrackingInfo,
                      lastActivity,
                      trackServices,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: _buildLayout(
                        contentChildren,
                        isHorizontal: isHorizontal,
                      ),
                    ),
                  ),
                  ParcelPopupMenuButton(
                    parcelInfo: parcelInfo,
                    pageType: pageType,
                    enabled: !isSelected,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildLayout(
    List<Widget> contentChildren, {
    required bool isHorizontal,
  }) {
    if (isHorizontal) {
      return Row(
        children: contentChildren,
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: contentChildren,
      );
    }
  }

  Widget _buildLeading(
    BuildContext context,
    ShipmentStatusType currentStatus,
    TrackingInfo? lastTrackingInfo,
    ShipmentActivityInfo? lastActivity,
    List<TrackNumberService> trackServices,
  ) {
    if (lastTrackingInfo?.status == TrackingStatus.inProgress) {
      return const Padding(
        padding: EdgeInsets.all(4.0),
        child: CircularProgressIndicator(),
      );
    }

    RRectIconData statusIcon;
    if (lastTrackingInfo != null && lastTrackingInfo.invalidTrackNumber) {
      statusIcon = StatusIconsData.invalidTrackNumber;
    } else if (currentStatus != ShipmentStatusType.delivered &&
        trackServices.every((trackService) => !trackService.isActive)) {
      statusIcon = StatusIconsData.trackingStopped;
    } else {
      statusIcon = currentStatus == ShipmentStatusType.notAvailable
          ? StatusIconsData.notAvailable
          : ShipmentStatusMetadataMapper.of(
              context,
              currentStatus,
            ).iconData;
    }
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: RRectIcon(
            iconData: statusIcon,
            size: 40.0,
          ),
        ),
        if (lastTrackingInfo != null && lastTrackingInfo.hasNewInfo)
          const _UnreadIndicator(),
      ],
    );
  }

  Widget _buildTitle(
    BuildContext context,
    TrackNumberInfo trackInfo,
    TrackingInfo? lastTrackingInfo,
    List<TrackingResponseInfo>? lastTrackingResponse, {
    required bool isHorizontal,
  }) {
    final child = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          trackInfo.description?.isEmpty ?? true
              ? trackInfo.trackNumber
              : trackInfo.description!,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontWeight: FontWeight.w500),
        ),
        if (trackInfo.description?.isNotEmpty ?? false) ...[
          const SizedBox(height: 4.0),
          Text(
            trackInfo.trackNumber,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
        ..._buildAuthErrorStatus(context, lastTrackingResponse),
        ..._buildHardErrorStatus(context, lastTrackingInfo),
      ],
    );

    if (isHorizontal) {
      return Expanded(
        flex: 2,
        child: child,
      );
    } else {
      return child;
    }
  }

  List<Widget> _buildTrackingResponseStatus(
    BuildContext context,
    TrackingInfo? lastTrackingInfo,
    ShipmentActivityInfo? lastActivity, {
    required bool isHorizontal,
  }) {
    if (lastActivity == null) {
      final status = Text(
        lastTrackingInfo != null && lastTrackingInfo.invalidTrackNumber
            ? S.of(context).trackingErrorInvalidTrackNumber
            : S.of(context).statusNotAvailable,
        style: Theme.of(context).textTheme.bodyMedium,
      );
      return [
        if (isHorizontal)
          Flexible(
            flex: 3,
            child: status,
          )
        else
          status,
      ];
    } else {
      final metadata = ShipmentStatusMetadataMapper.of(
        context,
        lastActivity.statusType,
      );
      final textTheme = Theme.of(context).textTheme;
      final statusStr =
          metadata.localizedName ?? lastActivity.statusDescription;
      final status = _AnimatedStatus(
        child: statusStr == null
            ? const SizedBox.shrink()
            : _ServiceStatus(
                serviceType: lastActivity.serviceType,
                text: statusStr,
              ),
      );
      final dateTime = Text(
        _formatDateTime(lastActivity.dateTime),
        style: textTheme.bodyMedium!.copyWith(
          color: textTheme.bodySmall!.color,
        ),
        overflow: TextOverflow.ellipsis,
      );

      return [
        if (isHorizontal)
          Flexible(
            flex: 2,
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: status,
            ),
          )
        else
          status,
        _ContentSeparator(thickness: 8.0, isHorizontal: isHorizontal),
        if (isHorizontal)
          Flexible(
            child: Align(
              alignment: AlignmentDirectional.centerEnd,
              child: dateTime,
            ),
          )
        else
          dateTime,
      ];
    }
  }

  String _formatDateTime(DateTime dateTime) {
    final jiffy = Jiffy.parseFromDateTime(dateTime);
    final now = DateTime.now();
    if (dateTime.year != now.year) {
      return jiffy.yMMMM;
    } else if (dateTime.month != now.month) {
      return jiffy.MMMMd;
    } else if (dateTime.day == now.day) {
      return jiffy.jm;
    } else {
      return jiffy.MMMMd;
    }
  }

  List<Widget> _buildHardErrorStatus(
    BuildContext context,
    TrackingInfo? lastTrackingInfo,
  ) {
    final show = lastTrackingInfo != null &&
        !lastTrackingInfo.invalidTrackNumber &&
        lastTrackingInfo.hasNonRetryableError;
    return [
      if (show) const SizedBox(height: 8.0),
      _AnimatedStatus(
        child: show
            ? _ErrorStatus(
                message: S.of(context).parcelsListHardErrorOccurred,
              )
            : const SizedBox.shrink(),
      ),
    ];
  }
}

List<Widget> _buildAuthErrorStatus(
  BuildContext context,
  List<TrackingResponseInfo>? lastTrackingResponse,
) {
  bool missingAuthData = false;
  bool missingAccount = false;
  if (lastTrackingResponse != null && lastTrackingResponse.isNotEmpty) {
    missingAccount = true;

    for (final info in lastTrackingResponse) {
      final errorType = info.error?.type;

      missingAuthData = errorType == TrackingErrorType.missingAuthData;
      if (missingAccount &&
          errorType != TrackingErrorType.missingTrackingService) {
        missingAccount = false;
      }
      if (missingAuthData && missingAccount) {
        break;
      }
    }
  }
  return [
    if (missingAuthData) const SizedBox(height: 8.0),
    _AnimatedStatus(
      child: missingAuthData
          ? _ErrorStatus(
              message: S.of(context).trackingErrorMissingAuthData,
            )
          : const SizedBox.shrink(),
    ),
    if (missingAccount) const SizedBox(height: 8.0),
    _AnimatedStatus(
      child: missingAccount
          ? _ErrorStatus(
              message: S.of(context).trackingErrorMissingAccount,
            )
          : const SizedBox.shrink(),
    ),
  ];
}

class _ContentSeparator extends StatelessWidget {
  final double thickness;
  final bool isHorizontal;

  const _ContentSeparator({
    required this.thickness,
    required this.isHorizontal,
  });

  @override
  Widget build(BuildContext context) {
    if (isHorizontal) {
      return SizedBox(width: thickness);
    } else {
      return SizedBox(height: thickness);
    }
  }
}

class _ServiceStatus extends StatelessWidget {
  final PostalServiceType serviceType;
  final String text;

  const _ServiceStatus({
    required this.serviceType,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final serviceMetadata = PostalServiceMetadataMapper.of(
      context,
      serviceType,
    );
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        RRectIcon(
          iconData: _buildServiceIconMetadata(serviceMetadata),
          size: 24.0,
        ),
        const SizedBox(width: 8.0),
        Flexible(
          child: Text(
            text,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }

  RRectIconData _buildServiceIconMetadata(
    PostalServiceMetadata? metadata,
  ) {
    if (metadata == null) {
      return RRectIconData(
        iconData: MdiIcons.packageVariantClosed,
        iconColor: Colors.white,
        backgroundColor: Colors.blueGrey,
      );
    } else {
      return metadata.iconData;
    }
  }
}

class _ErrorStatus extends StatelessWidget {
  final String message;

  const _ErrorStatus({
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.error_outline,
          color: Theme.of(context).colorScheme.error,
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 3.0, 8.0, 0.0),
            child: Text(
              message,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Theme.of(context).colorScheme.error),
            ),
          ),
        ),
      ],
    );
  }
}

class _ParcelItemSelectionControl extends StatefulWidget {
  final bool show;
  final bool isSelected;
  final VoidCallback? onSelected;

  const _ParcelItemSelectionControl({
    this.show = false,
    this.isSelected = false,
    this.onSelected,
  });

  @override
  _ParcelItemSelectionControlState createState() =>
      _ParcelItemSelectionControlState();
}

class _ParcelItemSelectionControlState
    extends State<_ParcelItemSelectionControl> {
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: AnimatedSize(
        duration: const Duration(milliseconds: 200),
        child: SizedBox(
          width: widget.show ? null : 0,
          child: Transform.scale(
            scale: 1.3,
            child: Checkbox(
              value: widget.isSelected,
              fillColor: WidgetStateProperty.all(
                Theme.of(context).colorScheme.secondary,
              ),
              checkColor: Theme.of(context).cardColor,
              onChanged: (value) => widget.onSelected?.call(),
              shape: const CircleBorder(),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
          ),
        ),
      ),
    );
  }
}

class _UnreadIndicator extends StatelessWidget {
  const _UnreadIndicator();

  @override
  Widget build(BuildContext context) {
    return Positioned.directional(
      textDirection: Directionality.of(context),
      top: 1.0,
      end: 1.0,
      child: Material(
        color: AppTheme.palette(context).newInfo,
        shape: const CircleBorder(),
        elevation: 1.0,
        child: const SizedBox(
          width: 12.0,
          height: 12.0,
        ),
      ),
    );
  }
}

class _AnimatedStatus extends StatelessWidget {
  final Widget child;

  const _AnimatedStatus({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 200),
      transitionBuilder: (child, animation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      child: child,
    );
  }
}
