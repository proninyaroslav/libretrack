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
import 'package:libretrack/ui/toast.dart';
import 'package:libretrack/ui/utils/utils.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// Depending on the device type, it builds [Scaffold] or [AlertDialog].
class AdaptiveScaffold extends StatefulWidget {
  final Widget? title;
  final Widget? body;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final List<Widget>? actions;
  final Widget? bottomNavigationBar;

  const AdaptiveScaffold({
    Key? key,
    this.title,
    this.body,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.actions,
    this.bottomNavigationBar,
  }) : super(key: key);

  static AdaptiveScaffoldState of(BuildContext context) {
    return context.findAncestorStateOfType<AdaptiveScaffoldState>()!;
  }

  @override
  AdaptiveScaffoldState createState() => AdaptiveScaffoldState();
}

class AdaptiveScaffoldState extends State<AdaptiveScaffold> {
  _ScaffoldType? _currentScaffoldType;

  /// Shows [SnackBar] or [Toast] depending on the type of [AdaptiveScaffold]
  /// (full-screen or dialog).
  void showAdaptiveToast({
    required String text,
    bool isLong = false,
  }) {
    switch (_getScaffoldType(context)) {
      case _ScaffoldType.fullScreen:
        final state = ScaffoldMessenger.maybeOf(context);
        if (state != null) {
          final snackbar = isLong
              ? SnackBar(
                  content: Text(text),
                  duration: UiUtils.snackBarDisplayLongDuration,
                )
              : SnackBar(
                  content: Text(text),
                );
          state.showSnackBar(snackbar);
        } else {
          Toast.of(context).show(text: text, isLong: isLong);
        }
        break;
      case _ScaffoldType.dialog:
        ScaffoldMessenger.maybeOf(context)?.hideCurrentSnackBar();
        Toast.of(context).show(text: text, isLong: isLong);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final newScaffoldType = _getScaffoldType(context);
    final prevScaffoldType = _currentScaffoldType;
    _currentScaffoldType = newScaffoldType;
    switch (newScaffoldType) {
      case _ScaffoldType.fullScreen:
        return Scaffold(
          appBar: AppBar(
            title: widget.title,
            actions: widget.actions,
          ),
          body: widget.body,
          floatingActionButton: widget.floatingActionButton,
          floatingActionButtonLocation: widget.floatingActionButtonLocation,
          bottomNavigationBar: widget.bottomNavigationBar,
        );
      case _ScaffoldType.dialog:
        if (prevScaffoldType == _ScaffoldType.fullScreen) {
          ScaffoldMessenger.maybeOf(context)?.hideCurrentSnackBar();
        }
        return SafeArea(
          child: AlertDialog(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            contentPadding: widget.bottomNavigationBar == null
                ? const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0)
                : const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 8.0),
            title: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.close),
                  tooltip: MaterialLocalizations.of(context).closeButtonTooltip,
                  onPressed: () => Navigator.of(context).pop(),
                ),
                const SizedBox(width: 32.0),
                if (widget.title != null) ...[
                  widget.title!,
                  const SizedBox(width: 32.0),
                ],
                if (widget.actions != null && widget.actions!.isNotEmpty)
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: widget.actions!,
                    ),
                  ),
              ],
            ),
            content: ConstrainedBox(
              constraints: BoxConstraints.tight(
                const Size(600, 600),
              ),
              child: Scaffold(
                body: widget.body,
                floatingActionButton: widget.floatingActionButton,
                floatingActionButtonLocation:
                    widget.floatingActionButtonLocation,
                bottomNavigationBar: BottomNavigationBarTheme(
                  data: BottomNavigationBarTheme.of(context)
                      .copyWith(elevation: 0.0),
                  child: widget.bottomNavigationBar ?? const SizedBox.shrink(),
                ),
              ),
            ),
          ),
        );
    }
  }

  _ScaffoldType _getScaffoldType(BuildContext context) {
    final deviceType = getDeviceType(MediaQuery.of(context).size);
    switch (deviceType) {
      case DeviceScreenType.tablet:
      case DeviceScreenType.desktop:
        return _ScaffoldType.dialog;
      default:
        return _ScaffoldType.fullScreen;
    }
  }
}

enum _ScaffoldType {
  fullScreen,
  dialog,
}
