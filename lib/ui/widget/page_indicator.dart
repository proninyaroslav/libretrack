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

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatelessWidget {
  final PageController controller;
  final int pageCount;
  final EdgeInsets padding;

  const PageIndicator({
    Key? key,
    required this.controller,
    required this.pageCount,
    this.padding = const EdgeInsets.all(8.0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (pageCount <= 1) {
      return const SizedBox.shrink();
    }
    final theme = Theme.of(context);
    return Padding(
      padding: padding,
      child: SmoothPageIndicator(
        controller: controller,
        count: pageCount,
        effect: ScrollingDotsEffect(
          dotWidth: 6.0,
          dotHeight: 6.0,
          dotColor: theme.disabledColor,
          activeDotColor: theme.indicatorColor,
        ),
      ),
    );
  }
}

class SwiperIndicatorPaginationBuilder extends SwiperPlugin {
  const SwiperIndicatorPaginationBuilder();

  @override
  Widget build(BuildContext context, SwiperPluginConfig? config) {
    return PageIndicator(
      pageCount: config!.itemCount!,
      controller: config.pageController!,
    );
  }
}
