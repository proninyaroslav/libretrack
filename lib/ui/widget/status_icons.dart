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
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'rrect_icon.dart';

// ignore: avoid_classes_with_only_static_members
class StatusIconsData {
  static RRectIconData invalidTrackNumber = RRectIconData(
    iconData: MdiIcons.close,
    iconColor: Colors.white,
    backgroundColor: Colors.red.shade400,
  );

  static RRectIconData notAvailable = RRectIconData(
    iconData: MdiIcons.help,
    iconColor: Colors.white,
    backgroundColor: Colors.blueGrey,
  );

  static RRectIconData infoReceived = RRectIconData(
    iconData: MdiIcons.informationVariant,
    iconColor: Colors.white,
    backgroundColor: Colors.blueGrey,
  );

  static RRectIconData pickup = RRectIconData(
    iconData: MdiIcons.packageUp,
    iconColor: Colors.white,
    backgroundColor: Colors.blue,
  );

  static RRectIconData inTransit = RRectIconData(
    iconData: MdiIcons.airplane,
    iconColor: Colors.white,
    backgroundColor: Colors.blue,
  );

  static RRectIconData outForDelivery = RRectIconData(
    iconData: MdiIcons.package,
    iconColor: Colors.white,
    backgroundColor: Colors.orange,
  );

  static RRectIconData delivered = RRectIconData(
    iconData: MdiIcons.packageVariant,
    iconColor: Colors.white,
    backgroundColor: Colors.green,
  );

  static RRectIconData returnedToShipper = RRectIconData(
    iconData: MdiIcons.cubeSend,
    iconColor: Colors.white,
    backgroundColor: Colors.red.shade400,
  );

  static RRectIconData trackingStopped = const RRectIconData(
    iconData: Icons.block,
    iconColor: Colors.white,
    backgroundColor: Colors.blueGrey,
  );

  static RRectIconData notDelivered = RRectIconData(
    iconData: Icons.close,
    iconColor: Colors.white,
    backgroundColor: Colors.red.shade400,
  );

  static RRectIconData inStorage = RRectIconData(
    iconData: Icons.inbox,
    iconColor: Colors.white,
    backgroundColor: Colors.yellow.shade600,
  );
}
