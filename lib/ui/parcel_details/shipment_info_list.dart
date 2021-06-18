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

import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/ui/parcel_details/utils.dart';
import 'package:libretrack/ui/utils/service_metadata.dart';
import 'package:libretrack/ui/widget/widget.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../locale.dart';
import '../utils/utils.dart';
import 'callback.dart';
import 'parcel_info.dart';
import 'section_header.dart';

class ShipmentInfoList extends StatefulWidget {
  final List<ShipmentInfoEntry> shipmentInfoList;
  final OnAddParcelCallback? onAddParcel;

  const ShipmentInfoList({
    Key? key,
    required this.shipmentInfoList,
    this.onAddParcel,
  }) : super(key: key);

  @override
  _ShipmentInfoListState createState() => _ShipmentInfoListState();
}

class _ShipmentInfoListState extends State<ShipmentInfoList>
    with AutomaticKeepAliveClientMixin {
  static const _maxVisibleStrings = 3;

  late PageController _pageController;

  @override
  void initState() {
    super.initState();

    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final children = widget.shipmentInfoList
        .map((entry) => _ShipmentInfoItem(
              entry: entry,
              maxVisibleStrings: _maxVisibleStrings,
              onAddParcel: widget.onAddParcel,
            ))
        .toList();

    if (widget.shipmentInfoList.isEmpty) {
      return const SizedBox.shrink();
    } else {
      return Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
              child: SectionHeader(
                icon: MdiIcons.packageVariantClosed,
                title: S.of(context).parcelInfo,
              ),
            ),
            _ShipmentInfoPageView(
              controller: _pageController,
              children: children,
            ),
            if (children.length <= 1)
              const SizedBox(height: 8.0)
            else
              PageIndicator(
                controller: _pageController,
                pageCount: children.length,
              ),
          ],
        ),
      );
    }
  }
}

class _ShipmentInfoPageView extends StatelessWidget {
  final PageController controller;
  final List<Widget> children;

  const _ShipmentInfoPageView({
    Key? key,
    required this.controller,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Disable default scroll indicator, see
    // https://github.com/flutter/flutter/issues/36474#issuecomment-513325171
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) => true,
      child: ExpandablePageView(
        key: const PageStorageKey('shipment_info_page_view'),
        controller: controller,
        children: children,
      ),
    );
  }
}

class _ShipmentInfoItem extends StatelessWidget {
  final ShipmentInfoEntry entry;
  final int maxVisibleStrings;
  final OnAddParcelCallback? onAddParcel;

  const _ShipmentInfoItem({
    Key? key,
    required this.entry,
    required this.maxVisibleStrings,
    this.onAddParcel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final info = entry.shipmentInfo;
    final alternateTrackNumbers = entry.alternateTrackNumbers;

    final children = [
      if (alternateTrackNumbers.isNotEmpty)
        _AlternateTrackNumbersList(
          infoList: alternateTrackNumbers,
          onAddParcel: onAddParcel,
        ),
      if (info.scheduledDeliveryDate != null)
        _InfoString(
          iconData: MdiIcons.calendarClock,
          title: S.of(context).shipmentScheduledDeliveryDate,
          content: formatDateTime(info.scheduledDeliveryDate!),
        ),
      if (info.estimatedDeliveryDate != null)
        _InfoString(
          iconData: MdiIcons.calendarClock,
          title: S.of(context).shipmentEstimatedDeliveryDate,
          content: formatDateTime(info.estimatedDeliveryDate!),
        ),
      if (info.serviceDescription != null)
        _InfoString(
          iconData: MdiIcons.mail,
          title: S.of(context).shipmentServiceDescription,
          content: info.serviceDescription!,
        ),
      if (info.shipmentDescription != null)
        _InfoString(
          iconData: MdiIcons.packageVariantClosed,
          title: S.of(context).shipmentTypeDescription,
          content: info.shipmentDescription!,
        ),
      if (info.weight != null && info.weight!.value != 0)
        _InfoString(
          iconData: MdiIcons.weight,
          title: S.of(context).shipmentWeight,
          content: info.weight!.format(context),
        ),
      if (info.volume != null && info.volume!.value != 0)
        _InfoString(
          iconData: MdiIcons.cubeOutline,
          title: S.of(context).shipmentVolume,
          content: info.volume!.format(context),
        ),
      if (info.cashOnDelivery != null && info.cashOnDelivery!.value != 0)
        _InfoString(
          iconData: Icons.payment,
          title: S.of(context).shipmentCashOnDelivery,
          content: info.cashOnDelivery!.format(context),
        ),
      if (info.deliveryDate != null)
        _InfoString(
          iconData: MdiIcons.calendarCheck,
          title: S.of(context).shipmentDeliveryDate,
          content: formatDateTime(info.deliveryDate!),
        ),
      if (info.signedForByName != null)
        _InfoString(
          iconData: MdiIcons.clipboardCheckOutline,
          title: S.of(context).shipmentSignedBy,
          content: info.signedForByName!,
        ),
      if (info.pickupDate != null)
        _InfoString(
          iconData: MdiIcons.calendar,
          title: S.of(context).shipmentPickupDate,
          content: formatDateTime(info.pickupDate!),
        ),
      if (info.receiverAddress != null)
        _InfoString(
          iconData: Icons.location_on_outlined,
          title: S.of(context).shipmentReceiverAddress,
          content: info.receiverAddress!.format(context),
        ),
      if (info.shipperAddress != null)
        _InfoString(
          iconData: Icons.location_on_outlined,
          title: S.of(context).shipmentShipperAddress,
          content: info.shipperAddress!.format(context),
        ),
    ];
    final visibleChildren = children.length <= maxVisibleStrings
        ? children
        : children.getRange(0, maxVisibleStrings);
    final invisibleChildren = children.length <= maxVisibleStrings
        ? <Widget>[]
        : children.sublist(maxVisibleStrings);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _ServiceInfoHeader(info: info),
        ...visibleChildren,
        if (invisibleChildren.isNotEmpty)
          _ExpandableInfoContainer(
            key: const PageStorageKey('expandable_info_container'),
            children: invisibleChildren,
          ),
      ],
    );
  }
}

class _ServiceInfoHeader extends StatelessWidget {
  final ShipmentInfo info;

  const _ServiceInfoHeader({
    Key? key,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final serviceType = _ServiceType(serviceType: info.serviceType);

    if (info.serviceMessage != null) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 2,
              child: _ServiceMessage(
                message: info.serviceMessage!,
              ),
            ),
            Flexible(
              child: serviceType,
            ),
          ],
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0.0),
        child: serviceType,
      );
    }
  }
}

class _ServiceType extends StatelessWidget {
  final PostalServiceType serviceType;

  const _ServiceType({
    Key? key,
    required this.serviceType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final metadata = PostalServiceMetadataMapper.of(context, serviceType);

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        RRectIcon(
          iconData: metadata.iconData,
          size: 24.0,
        ),
        const SizedBox(width: 8.0),
        Text(
          metadata.localizedName,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}

class _ServiceMessage extends StatelessWidget {
  final String message;

  const _ServiceMessage({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(Icons.info_outline),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 3.0, 8.0, 0.0),
            child: Text(message),
          ),
        ),
      ],
    );
  }
}

class _InfoString extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String content;

  const _InfoString({
    Key? key,
    required this.iconData,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              children: [
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(end: 8.0),
                    child: Icon(iconData, size: 18.0),
                  ),
                ),
                TextSpan(
                  text: title,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
          const SizedBox(height: 4.0),
          Text(content),
        ],
      ),
    );
  }
}

class _ExpandableInfoContainer extends StatefulWidget {
  final List<Widget>? children;

  const _ExpandableInfoContainer({
    Key? key,
    this.children,
  }) : super(key: key);

  @override
  _ExpandableInfoContainerState createState() =>
      _ExpandableInfoContainerState();
}

class _ExpandableInfoContainerState extends State<_ExpandableInfoContainer> {
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _isExpanded = PageStorage.of(context)?.readState(context) as bool? ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return CustomExpansionTile(
      key: const PageStorageKey('expandable_info_tile'),
      title: Text(
        _isExpanded ? S.of(context).hide : S.of(context).showMore,
        style: Theme.of(context).textTheme.button,
      ),
      expandedCrossAxisAlignment: CrossAxisAlignment.start,
      expandedAlignment: AlignmentDirectional.centerStart.resolve(
        Directionality.of(context),
      ),
      bottomPosition: true,
      onExpansionChanged: (expanded) {
        setState(() => _isExpanded = expanded);
        PageStorage.of(context)?.writeState(context, _isExpanded);
      },
      children: widget.children,
    );
  }
}

class _AlternateTrackNumbersList extends StatelessWidget {
  final List<AlternateTrackNumber> infoList;
  final OnAddParcelCallback? onAddParcel;

  const _AlternateTrackNumbersList({
    Key? key,
    required this.infoList,
    this.onAddParcel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).shipmentAlternateTrackingNumber,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          const SizedBox(height: 8.0),
          ...infoList.map(
            (info) => _AlternateTrackNumberItem(
              info: info,
              onAddParcel: () => onAddParcel?.call(info.trackNumber),
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}

class _AlternateTrackNumberItem extends StatelessWidget {
  final AlternateTrackNumber info;
  final VoidCallback? onAddParcel;

  const _AlternateTrackNumberItem({
    Key? key,
    required this.info,
    this.onAddParcel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Tooltip(
        message: S.of(context).addToMyParcels,
        child: InkWell(
          borderRadius: BorderRadius.circular(4.0),
          onTap: onAddParcel,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(2.0),
                  child: Icon(
                    Icons.add,
                    size: 18.0,
                    color: Theme.of(context).accentIconTheme.color,
                  ),
                ),
                const SizedBox(width: 8.0),
                Flexible(
                  child: Text(info.trackNumber),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
