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

import '../../locale.dart';

class DeleteParcelDialog extends StatelessWidget {
  final int parcelsCount;
  final VoidCallback onDelete;

  const DeleteParcelDialog({
    Key? key,
    required this.parcelsCount,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(S.of(context).delete),
      scrollable: true,
      content: Text(
        S.of(context).deleteParcelDialogMsg(parcelsCount),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            S.of(context).cancel,
            textAlign: TextAlign.end,
          ),
        ),
        TextButton(
          onPressed: () {
            onDelete.call();
            Navigator.of(context).pop();
          },
          child: Text(
            S.of(context).delete,
            textAlign: TextAlign.end,
          ),
        ),
      ],
    );
  }
}
