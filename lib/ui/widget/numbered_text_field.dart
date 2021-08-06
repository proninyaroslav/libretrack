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

/// A [TextField] with the line numbers bar
class NumberedTextField extends StatefulWidget {
  final int initLineCount;
  final TextEditingController? controller;
  final InputDecoration decoration;
  final TextStyle? style;
  final ValueChanged<String>? onChanged;
  final TextCapitalization textCapitalization;
  final bool enableSuggestions;
  final bool autocorrect;

  const NumberedTextField({
    Key? key,
    this.initLineCount = 3,
    this.controller,
    this.decoration = const InputDecoration(),
    this.style,
    this.onChanged,
    this.textCapitalization = TextCapitalization.none,
    this.enableSuggestions = true,
    this.autocorrect = true,
  }) : super(key: key);

  @override
  _NumberedTextFieldState createState() => _NumberedTextFieldState();
}

class _NumberedTextFieldState extends State<NumberedTextField> {
  late int _lineCount;

  void _updateLineCount(String? value) {
    if (value == null) {
      return;
    }

    final newCount = _calcLineCount(value);
    if (newCount != _lineCount) {
      setState(() {
        _lineCount = newCount;
      });
    }
  }

  @override
  void initState() {
    super.initState();

    final value = widget.controller?.text;
    _lineCount = value != null ? _calcLineCount(value) : 0;

    widget.controller?.addListener(_controllerListener);
  }

  @override
  void dispose() {
    widget.controller?.removeListener(_controllerListener);

    super.dispose();
  }

  void _controllerListener() {
    final value = widget.controller?.text;
    _updateLineCount(value);
  }

  @override
  Widget build(BuildContext context) {
    final style = widget.style ?? Theme.of(context).textTheme.subtitle1!;

    return TextField(
      controller: widget.controller,
      maxLines: _lineCount < widget.initLineCount ? widget.initLineCount : null,
      style: style,
      onChanged: (value) {
        _updateLineCount(value);
        widget.onChanged?.call(value);
      },
      decoration: widget.decoration.copyWith(
        alignLabelWithHint: true,
        prefixIconConstraints: const BoxConstraints(),
        prefixIcon: _buildLineNumbers(context, style),
      ),
      keyboardType: TextInputType.multiline,
      textCapitalization: widget.textCapitalization,
      enableSuggestions: widget.enableSuggestions,
      autocorrect: widget.autocorrect,
    );
  }

  int _calcLineCount(String value) =>
      value.isEmpty ? 0 : '\n'.allMatches(value).length + 1;

  Widget? _buildLineNumbers(BuildContext context, TextStyle style) {
    if (_lineCount <= 0) {
      return null;
    } else {
      return _LineNumbersBar(
        count: _lineCount,
        initPlaceholdersCount: widget.initLineCount,
        style: style.copyWith(
          color: Theme.of(context).textTheme.caption!.color,
        ),
      );
    }
  }
}

class _LineNumbersBar extends StatelessWidget {
  final int count;
  final int initPlaceholdersCount;
  final TextStyle? style;

  const _LineNumbersBar({
    Key? key,
    this.count = 0,
    this.initPlaceholdersCount = 0,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sb = StringBuffer();
    for (var i = 0; i < count; i++) {
      sb.write('${i + 1}.');
      if (i != count - 1) {
        sb.write('\n');
      }
    }
    for (var i = 0; i < initPlaceholdersCount - count; i++) {
      sb.write('\n');
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(sb.toString(), style: style),
    );
  }
}
