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
import 'package:libretrack/ui/components/search_bar.dart' as search_bar;
import 'package:libretrack/ui/components/widget.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../theme.dart';
import '../model/parcels_cubit.dart';

class ParcelsAppBarTitle extends StatefulWidget {
  const ParcelsAppBarTitle({super.key});

  @override
  State<ParcelsAppBarTitle> createState() => _ParcelsAppBarTitleState();
}

class _ParcelsAppBarTitleState extends State<ParcelsAppBarTitle> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();

    final search = context.read<ParcelsCubit>().state.search;
    _controller = TextEditingController(
      text: search?.maybeWhen(
        search: (query) => query,
        orElse: () => null,
      ),
    );
    _controller.addListener(() {
      context.read<ParcelsCubit>().search(_controller.text);
    });
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searchBar = search_bar.SearchBar(controller: _controller);
    final appLogo = Icon(
      AppLogoInfo.foreground_logo,
      color: AppTheme.palette(context).appLogoColor,
      size: 40.0,
    );
    return Row(
      children: [
        ScreenTypeLayout.builder(
          mobile: (context) => appLogo,
          tablet: (context) => OrientationLayoutBuilder(
            portrait: (context) => Padding(
              padding: const EdgeInsetsDirectional.only(start: 16.0),
              child: appLogo,
            ),
            landscape: (context) => Padding(
              padding: const EdgeInsetsDirectional.only(start: 8.0),
              child: appLogo,
            ),
          ),
        ),
        const SizedBox(width: 8.0),
        Flexible(
          child: ScreenTypeLayout.builder(
            mobile: (context) => OrientationLayoutBuilder(
              portrait: (context) => searchBar,
              landscape: (context) => _buildTightSearchBar(
                context,
                searchBar,
                factor: 2,
              ),
            ),
            tablet: (context) => OrientationLayoutBuilder(
              portrait: (context) => _buildTightSearchBar(
                context,
                searchBar,
                factor: 2,
              ),
              landscape: (context) => _buildTightSearchBar(
                context,
                searchBar,
                factor: 2.5,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTightSearchBar(
    BuildContext context,
    Widget searchBar, {
    required double factor,
  }) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width / factor,
        child: searchBar,
      ),
    );
  }
}
