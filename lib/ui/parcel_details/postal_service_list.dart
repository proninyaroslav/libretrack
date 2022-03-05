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

import 'package:card_swiper/card_swiper.dart' hide PageIndicator;
import 'package:flutter/material.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/ui/utils/utils.dart';
import 'package:libretrack/ui/widget/widget.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../locale.dart';
import 'parcel_info.dart';
import 'section_header.dart';

class PostalServiceList extends StatefulWidget {
  final ParcelInfo info;

  const PostalServiceList({
    Key? key,
    required this.info,
  }) : super(key: key);

  @override
  _PostalServiceListState createState() => _PostalServiceListState();
}

class _PostalServiceListState extends State<PostalServiceList>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final trackServices = widget.info.trackServices;
    if (trackServices.isEmpty) {
      return const SizedBox.shrink();
    }
    return Card(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final children = _buildItems(trackServices, constraints);
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                child: SectionHeader(
                  icon: MdiIcons.mail,
                  title: S.of(context).whoDeliveresParcel,
                ),
              ),
              _PostalServicePageView(
                children: children,
              ),
            ],
          );
        },
      ),
    );
  }

  List<Widget> _buildItems(
    List<TrackNumberService> trackServices,
    BoxConstraints constraints,
  ) {
    if (constraints.maxWidth <= 500) {
      return trackServices
          .map(
            (info) => Center(
              child: _PostalServiceListItem(
                trackService: info,
              ),
            ),
          )
          .toList();
    } else {
      final children = <Widget>[];
      final iter = trackServices.iterator;
      while (iter.moveNext()) {
        final i1 = iter.current;
        final i2 = iter.moveNext() ? iter.current : null;
        if (i2 != null) {
          children.add(
            Row(
              children: [
                Flexible(
                  child: _PostalServiceListItem(
                    trackService: i1,
                  ),
                ),
                Flexible(
                  child: _PostalServiceListItem(
                    trackService: i2,
                  ),
                ),
              ],
            ),
          );
        } else {
          children.add(
            Center(
              child: _PostalServiceListItem(
                trackService: i1,
              ),
            ),
          );
        }
      }
      return children;
    }
  }
}

class _PostalServicePageView extends StatelessWidget {
  final List<Widget> children;

  const _PostalServicePageView({
    Key? key,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88,
      child: Swiper(
        itemBuilder: (context, index) {
          return Padding(
            padding: children.length == 1
                ? EdgeInsets.zero
                : const EdgeInsets.symmetric(horizontal: 40.0),
            child: children[index],
          );
        },
        itemCount: children.length,
        pagination: const SwiperPagination(
          margin: EdgeInsets.symmetric(horizontal: 8.0),
          builder: SwiperIndicatorPaginationBuilder(),
        ),
        control: const CustomSwiperControl(
          margin: EdgeInsets.symmetric(horizontal: 8.0),
        ),
      ),
    );
  }
}

class _PostalServiceListItem extends StatelessWidget {
  final TrackNumberService trackService;

  const _PostalServiceListItem({
    Key? key,
    required this.trackService,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final metadata = PostalServiceMetadataMapper.of(
      context,
      trackService.serviceType,
    );
    return ListTile(
      leading: RRectIcon(
        iconData: metadata.iconData,
        size: 40.0,
      ),
      title: Text(
        metadata.localizedName,
        maxLines: 3,
      ),
    );
  }
}
