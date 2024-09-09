import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../locale.dart';

class CustomSwiperControl extends SwiperPlugin {
  final EdgeInsets padding;
  final EdgeInsets? margin;

  const CustomSwiperControl({
    this.padding = const EdgeInsets.all(8.0),
    this.margin,
  });

  @override
  Widget build(BuildContext context, SwiperPluginConfig? config) {
    if (config!.itemCount == 1) {
      return const SizedBox.shrink();
    }

    final themeData = Theme.of(context);
    final color = themeData.colorScheme.onSurface;
    final disableColor = themeData.disabledColor;
    Color prevColor;
    Color nextColor;

    if (config.loop) {
      prevColor = nextColor = color;
    } else {
      final next = config.activeIndex < config.itemCount - 1;
      final prev = config.activeIndex > 0;
      prevColor = prev ? color : disableColor;
      nextColor = next ? color : disableColor;
    }

    Widget child;
    if (config.scrollDirection == Axis.horizontal) {
      child = Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildButton(context, config, prevColor, MdiIcons.chevronLeft, true),
          _buildButton(
              context, config, nextColor, MdiIcons.chevronRight, false),
        ],
      );
    } else {
      child = Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildButton(context, config, prevColor, MdiIcons.chevronDown, true),
          _buildButton(context, config, nextColor, MdiIcons.chevronUp, false),
        ],
      );
    }

    return Container(
      height: double.infinity,
      width: double.infinity,
      margin: margin,
      child: child,
    );
  }

  Widget _buildButton(
    BuildContext context,
    SwiperPluginConfig? config,
    Color color,
    IconData iconDaga,
    bool previous,
  ) {
    return InkWell(
      borderRadius: BorderRadius.circular(32.0),
      onTap: () {
        if (previous) {
          config!.controller.previous(animation: true);
        } else {
          config!.controller.next(animation: true);
        }
      },
      child: Padding(
        padding: padding,
        child: Icon(
          iconDaga,
          semanticLabel:
              previous ? S.of(context).previousPage : S.of(context).nextPage,
          size: 25.0,
          color: color,
        ),
      ),
    );
  }
}
