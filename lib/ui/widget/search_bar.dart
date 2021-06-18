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

import '../theme.dart';

class SearchBar extends StatefulWidget {
  final TextEditingController? controller;

  const SearchBar({Key? key, this.controller}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  late FocusNode _focusNode;
  bool _showCloseButton = false;

  @override
  void initState() {
    super.initState();

    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const iconConstraints = BoxConstraints(
      minHeight: 35,
      minWidth: 35,
    );
    final colorScheme = Theme.of(context).colorScheme;

    return Card(
      clipBehavior: Clip.antiAlias,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(50.0),
        ),
      ),
      color: AppTheme.isDark(context)
          ? colorScheme.onSurface.withOpacity(0.24)
          : colorScheme.onPrimary.withOpacity(0.7),
      child: Focus(
        focusNode: _focusNode,
        onFocusChange: (hasFocus) {
          setState(() {
            _showCloseButton = hasFocus;
          });
        },
        child: TextField(
          controller: widget.controller,
          decoration: InputDecoration(
            border: InputBorder.none,
            isDense: true,
            hintText: MaterialLocalizations.of(context).searchFieldLabel,
            prefixIcon: const Icon(Icons.search),
            prefixIconConstraints: iconConstraints,
            suffixIcon: _buildCloseButton(),
            suffixIconConstraints: iconConstraints,
          ),
        ),
      ),
    );
  }

  Widget? _buildCloseButton() {
    if (_showCloseButton) {
      return SizedBox(
        width: 24.0,
        height: 24.0,
        child: IconButton(
          tooltip: MaterialLocalizations.of(context).closeButtonTooltip,
          padding: EdgeInsets.zero,
          splashRadius: 24.0,
          iconSize: 20.0,
          icon: const Icon(Icons.cancel),
          onPressed: () {
            _focusNode.unfocus();
            widget.controller?.clear();
          },
        ),
      );
    } else {
      return null;
    }
  }
}
