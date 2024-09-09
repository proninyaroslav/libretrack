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
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/ui/components/widget.dart';
import 'package:libretrack/ui/model/utils.dart';
import 'package:libretrack/ui/parcel_details/model/utils.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../locale.dart';
import 'section_header.dart';

class ActivityList extends StatefulWidget {
  final List<ShipmentActivityInfo> activities;

  const ActivityList({
    super.key,
    required this.activities,
  });

  @override
  State<ActivityList> createState() => _ActivityListState();
}

class _ActivityListState extends State<ActivityList>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    if (widget.activities.isEmpty) {
      return const SizedBox.shrink();
    } else {
      return Card(
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 24.0),
              child: SectionHeader(
                icon: MdiIcons.airplane,
                title: S.of(context).activityHistory,
              ),
            ),
            ..._buildItems(widget.activities),
          ],
        ),
      );
    }
  }

  Iterable<_ActivityListItem> _buildItems(
    List<ShipmentActivityInfo> activities,
  ) sync* {
    for (var i = 0; i < activities.length; i++) {
      final prevActivity = i + 1 < activities.length ? activities[i + 1] : null;
      yield _ActivityListItem(
        activity: activities[i],
        prevActivity: prevActivity,
      );
    }
  }
}

class _ActivityListItem extends StatelessWidget {
  static const _statusIconSize = 24.0;

  final ShipmentActivityInfo activity;
  final ShipmentActivityInfo? prevActivity;

  const _ActivityListItem({
    required this.activity,
    this.prevActivity,
  });

  @override
  Widget build(BuildContext context) {
    final statusMetadata = ShipmentStatusMetadataMapper.of(
      context,
      activity.statusType,
    );
    final prevStatusMetadata = prevActivity == null
        ? null
        : ShipmentStatusMetadataMapper.of(context, prevActivity!.statusType);
    final serviceMetadata = PostalServiceMetadataMapper.of(
      context,
      activity.serviceType,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              alignment: AlignmentDirectional.centerStart,
              child: _StatusIcon(
                size: _statusIconSize,
                metadata: statusMetadata,
                prevMetadata: prevStatusMetadata,
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: _statusIconSize),
              Expanded(
                child: _buildStatus(context, statusMetadata),
              ),
              Tooltip(
                message: serviceMetadata.localizedName,
                child: RRectIcon(
                  iconData: serviceMetadata.iconData,
                  size: 36.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatus(
    BuildContext context,
    ShipmentStatusMetadata statusMetadata,
  ) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 2.0, 16.0, 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            statusMetadata.localizedName ?? activity.statusDescription ?? '',
            style: theme.textTheme.titleMedium,
          ),
          if (activity.statusDescription != null &&
              statusMetadata.localizedName != null) ...[
            const SizedBox(height: 8.0),
            Text(
              activity.statusDescription!,
              style: theme.textTheme.bodyMedium!
                  .copyWith(fontStyle: FontStyle.italic),
            ),
          ],
          if (activity.activityLocation != null) ...[
            const SizedBox(height: 8.0),
            _TextWithIcon(
              icon: MdiIcons.earth,
              text: activity.activityLocation!.format(context),
            ),
          ],
          const SizedBox(height: 8.0),
          _TextWithIcon(
            icon: MdiIcons.calendar,
            text: formatDateTime(activity.dateTime),
          ),
        ],
      ),
    );
  }
}

class _TextWithIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color? tintColor = null;
  final TextStyle? textStyle = null;

  const _TextWithIcon({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final defaultColor = Theme.of(context).textTheme.bodySmall!.color;
    return Text.rich(
      TextSpan(
        children: [
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Padding(
              padding: const EdgeInsetsDirectional.only(end: 8.0),
              child: Icon(
                icon,
                size: 18.0,
                color: tintColor ?? defaultColor,
              ),
            ),
          ),
          TextSpan(
            text: text,
            style: textStyle ??
                Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: defaultColor),
          ),
        ],
      ),
    );
  }
}

class _StatusIcon extends StatelessWidget {
  final double size;
  final ShipmentStatusMetadata metadata;
  final ShipmentStatusMetadata? prevMetadata;

  const _StatusIcon({
    required this.size,
    required this.metadata,
    this.prevMetadata,
  });

  @override
  Widget build(BuildContext context) {
    const lineWidth = 2.0;

    return Column(
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: metadata.iconData.backgroundColor,
            shape: BoxShape.circle,
          ),
          child: metadata.iconData.when(
            (iconData, iconColor, backgroundColor) => Icon(
              iconData,
              color: iconColor,
              size: size / 1.5,
            ),
            widget: (icon, backgroundColor) => Padding(
              padding: const EdgeInsets.all(4.0),
              child: FittedBox(
                child: icon,
              ),
            ),
          ),
        ),
        Flexible(
          child: Container(
            color:
                prevMetadata == null ? null : metadata.iconData.backgroundColor,
            width: lineWidth,
          ),
        ),
      ],
    );
  }
}
