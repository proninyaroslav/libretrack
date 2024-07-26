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
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

part 'rrect_icon.freezed.dart';

class RRectIcon extends StatelessWidget {
  static const defaultSize = 64.0;

  static const _borderRadiusRatio = 1.25;
  static const _paddingRatio = 6.0;

  final RRectIconData iconData;
  final double size;

  const RRectIcon({
    super.key,
    required this.iconData,
    this.size = defaultSize,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      height: size,
      width: size,
      alignment: Alignment.center,
      padding: EdgeInsets.all(size / _paddingRatio),
      decoration: ShapeDecoration(
        shape: SuperellipseShape(
          borderRadius: BorderRadius.circular(size / _borderRadiusRatio),
        ),
        color: iconData.backgroundColor,
      ),
      child: SizedBox.expand(
        child: FittedBox(
          child: iconData.when(
            (iconData, iconColor, backgroundColor) => Icon(
              iconData,
              color: iconColor,
            ),
            widget: (icon, backgroundColor) => icon,
          ),
        ),
      ),
    );
  }
}

@freezed
class RRectIconData with _$RRectIconData {
  const factory RRectIconData({
    required IconData iconData,
    required Color iconColor,
    required Color backgroundColor,
  }) = _RRectIconData;

  const factory RRectIconData.widget({
    required Widget icon,
    required Color backgroundColor,
  }) = _RRectIconDataWidget;
}
