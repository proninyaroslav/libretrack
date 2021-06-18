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

class EmptyListStub extends StatelessWidget {
  final IconData icon;
  final Text text;

  const EmptyListStub({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = (text.style ?? const TextStyle()).copyWith(
      color: Colors.blueGrey,
    );
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 100,
            color: Colors.blueGrey,
          ),
          const SizedBox(height: 20.0),
          if (text.data == null)
            Text.rich(
              text.textSpan!,
              style: textStyle,
            )
          else
            Text(
              text.data!,
              style: textStyle,
            ),
        ],
      ),
    );
  }
}
