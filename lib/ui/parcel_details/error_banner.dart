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

class ErrorBanner extends StatelessWidget {
  final bool expanded;
  final String message;
  final VoidCallback? onShowErrors;
  final List<Widget> customActions;

  const ErrorBanner({
    super.key,
    required this.expanded,
    required this.message,
    this.onShowErrors,
    this.customActions = const [],
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      switchInCurve: Curves.ease,
      switchOutCurve: Curves.ease,
      duration: const Duration(milliseconds: 200),
      transitionBuilder: (child, animation) {
        return SizeTransition(
          sizeFactor: animation,
          child: child,
        );
      },
      child: _buildBanner(context, expanded: expanded),
    );
  }

  Widget _buildBanner(
    BuildContext context, {
    required bool expanded,
  }) {
    if (expanded) {
      return Card(
        elevation: 1.0,
        clipBehavior: Clip.antiAlias,
        child: MaterialBanner(
          leading: CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.error,
            foregroundColor: Theme.of(context).colorScheme.onError,
            child: const Icon(
              Icons.error_outline,
            ),
          ),
          content: Text(message),
          forceActionsBelow: true,
          actions: [
            ...customActions,
            TextButton(
              onPressed: onShowErrors,
              child: Text(
                S.of(context).showErrors,
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
