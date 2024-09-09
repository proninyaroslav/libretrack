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

class AdaptiveScaffoldPage<T> extends Page<T> {
  final Widget child;
  final bool maintainState;
  final bool barrierDismissible;
  final Color barrierColor;

  const AdaptiveScaffoldPage({
    required this.child,
    this.maintainState = true,
    this.barrierDismissible = true,
    this.barrierColor = Colors.black54,
    super.key,
    super.name,
    super.arguments,
  });

  @override
  Route<T> createRoute(BuildContext context) {
    return _FullscreenRoute<T>(context: context, page: this);
  }
}

class _FullscreenRoute<T> extends PageRoute<T>
    with MaterialRouteTransitionMixin<T> {
  final String _barrierLabel;

  _FullscreenRoute({
    required BuildContext context,
    required AdaptiveScaffoldPage<T> page,
  })  : _barrierLabel = MaterialLocalizations.of(
          context,
        ).modalBarrierDismissLabel,
        super(settings: page);

  AdaptiveScaffoldPage<T> get _page => settings as AdaptiveScaffoldPage<T>;

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => _page.barrierDismissible;

  @override
  String get barrierLabel => _barrierLabel;

  @override
  Color get barrierColor => _page.barrierColor;

  @override
  Widget buildContent(BuildContext context) => _page.child;

  @override
  bool get maintainState => _page.maintainState;

  @override
  bool get fullscreenDialog => true;

  @override
  String get debugLabel => '${super.debugLabel}(${_page.name})';
}
