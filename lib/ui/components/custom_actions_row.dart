// Source: https://stackoverflow.com/a/59908806/5994250

import 'package:collection/collection.dart' show IterableExtension;
import 'package:flutter/material.dart';

class CustomActionsRow extends StatelessWidget {
  final double availableWidth;
  final double actionWidth;
  final List<CustomAction> actions;

  const CustomActionsRow({
    super.key,
    required this.availableWidth,
    required this.actionWidth,
    required this.actions,
  });

  @override
  Widget build(BuildContext context) {
    actions.sort(); // items with ShowAsAction.NEVER are placed at the end

    final visible = actions
        .where(
            (customAction) => customAction.showAsAction == ShowAsAction.always)
        .toList();

    final overflow = <CustomAction>[];

    double getOverflowWidth() => overflow.isEmpty ? 0 : actionWidth;

    for (final customAction in actions) {
      if (customAction.showAsAction == ShowAsAction.ifRoom) {
        if (availableWidth - visible.length * actionWidth - getOverflowWidth() >
            actionWidth) {
          // there is enough room
          visible.insert(
            actions.indexOf(customAction),
            customAction,
          ); // insert in its given position
        } else {
          // there is not enough room
          if (overflow.isEmpty) {
            final lastOptionalAction = visible.lastWhereOrNull(
              (customAction) =>
                  customAction.showAsAction == ShowAsAction.ifRoom,
            );
            if (lastOptionalAction != null) {
              // remove the last optionally visible action to make space for the overflow icon
              visible.remove(lastOptionalAction);
              overflow.add(lastOptionalAction);
              overflow.add(customAction);
            } // else the layout will overflow because there is not enough space for all the visible items and the overflow icon
          } else {
            overflow.add(customAction);
          }
        }
      }
    }
    overflow.addAll(
      actions.where(
        (customAction) => customAction.showAsAction == ShowAsAction.never,
      ),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ...visible.map(
          (customAction) {
            assert(customAction.visibleWidget != null);
            return InkWell(
              onTap: () => customAction.onPressed?.call(),
              child: customAction.visibleWidget,
            );
          },
        ),
        if (overflow.isNotEmpty)
          PopupMenuButton<CustomAction>(
            itemBuilder: (context) => overflow.map(
              (customAction) {
                assert(customAction.overflowWidget != null);
                return PopupMenuItem(
                  value: customAction,
                  child: customAction.overflowWidget,
                );
              },
            ).toList(),
            onSelected: (customAction) => customAction.onPressed?.call(),
          )
      ],
    );
  }
}

class CustomAction implements Comparable<CustomAction> {
  final Widget? visibleWidget;
  final Widget? overflowWidget;
  final ShowAsAction showAsAction;
  final VoidCallback? onPressed;

  const CustomAction({
    this.visibleWidget,
    this.overflowWidget,
    this.onPressed,
    required this.showAsAction,
  });

  @override
  int compareTo(CustomAction other) {
    if (showAsAction == ShowAsAction.never &&
        other.showAsAction == ShowAsAction.never) {
      return 0;
    } else if (showAsAction == ShowAsAction.never) {
      return 1;
    } else if (other.showAsAction == ShowAsAction.never) {
      return -1;
    } else {
      return 0;
    }
  }
}

enum ShowAsAction {
  always,
  ifRoom,
  never,
}
