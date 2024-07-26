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
import 'package:responsive_builder/responsive_builder.dart';

class AdaptiveFab extends StatelessWidget {
  final Widget? icon;
  final Widget label;
  final String? tooltip;
  final VoidCallback? onPressed;
  final String? heroTag;

  const AdaptiveFab({
    super.key,
    this.icon,
    required this.label,
    this.tooltip,
    this.heroTag,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => OrientationLayoutBuilder(
        portrait: (context) => _build(context),
        landscape: (context) => _build(context, wide: false),
      ),
      tablet: (context) => _build(context, wide: false),
    );
  }

  Widget _build(
    BuildContext context, {
    bool wide = true,
  }) {
    return SizedBox(
      width: wide ? 200 : 150,
      child: FloatingActionButton.extended(
        heroTag: heroTag,
        onPressed: onPressed,
        icon: icon,
        label: label,
        tooltip: tooltip,
      ),
    );
  }
}
