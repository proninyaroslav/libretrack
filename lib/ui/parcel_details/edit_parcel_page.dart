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
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/locale.dart';
import 'package:libretrack/ui/parcel_details/components/parcel_details.dart';
import 'package:libretrack/ui/parcel_details/model/edit_parcel_state.dart';

import '../../logger.dart';
import '../components/toast.dart';

class EditParcelPage extends StatefulWidget {
  final TrackNumberInfo trackInfo;

  const EditParcelPage({
    super.key,
    required this.trackInfo,
  });

  @override
  State<EditParcelPage> createState() => _EditParcelPageState();
}

class _EditParcelPageState extends State<EditParcelPage> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();

    _controller = TextEditingController(text: widget.trackInfo.description);
    context.read<EditParcelCubit>().nameChanged(_controller.text);
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      title: Text(S.of(context).edit),
      content: TextField(
        controller: _controller,
        decoration: InputDecoration(
          labelText: S.of(context).name,
          hintText: S.of(context).optionalField,
        ),
        onChanged: (text) => context.read<EditParcelCubit>().nameChanged(text),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(
            S.of(context).cancel,
            textAlign: TextAlign.end,
          ),
        ),
        _ApplyButton(trackInfo: widget.trackInfo),
      ],
    );
  }
}

class _ApplyButton extends StatelessWidget {
  final TrackNumberInfo trackInfo;

  const _ApplyButton({
    required this.trackInfo,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditParcelCubit, EditParcelState>(
      listener: (context, state) {
        state.maybeWhen(
          edited: (name) => Navigator.of(context).pop(),
          editFailed: (name, e, stackTrace) {
            log().e("Unable to edit parcel", error: e, stackTrace: stackTrace);
            Toast.of(context).show(
              text: S.of(context).editParcelFailed,
            );
          },
          orElse: () {},
        );
      },
      buildWhen: (prev, next) => next is! EditParcelStateFieldChanged,
      builder: (context, state) {
        return state.maybeWhen(
          initial: (name) => TextButton(
            onPressed: null,
            child: Text(S.of(context).apply),
          ),
          editing: () => const CircularProgressIndicator(),
          orElse: () => TextButton(
            onPressed: () {
              context.read<EditParcelCubit>().apply(trackInfo: trackInfo);
            },
            child: Text(
              S.of(context).apply,
              textAlign: TextAlign.end,
            ),
          ),
        );
      },
    );
  }
}
