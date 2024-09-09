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

class DialogScrollableContent extends StatelessWidget {
  final Widget child;
  final double? borderPadding;

  const DialogScrollableContent({
    super.key,
    required this.child,
    this.borderPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: borderPadding == null
          ? null
          : EdgeInsets.only(bottom: borderPadding!),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).dividerColor,
          ),
        ),
      ),
      child: Scrollbar(
        child: SingleChildScrollView(child: child),
      ),
    );
  }
}
