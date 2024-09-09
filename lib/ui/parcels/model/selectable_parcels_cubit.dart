// Copyright (C) 2021-2024 Yaroslav Pronin <proninyaroslav@mail.ru>
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

import 'package:libretrack/ui/parcels/model/selectable_parcels_item.dart';
import 'package:libretrack/ui/parcels/parcels.dart';

export 'package:libretrack/ui/model/selectable_cubit.dart';

class SelectableParcelsCubit extends SelectableCubit<SelectableParcelsItem> {
  @override
  void select(SelectableParcelsItem item) {
    state.maybeWhen(
      selected: (items) {
        if (item.pageType != items.last.pageType) {
          clearSelection();
        }
      },
      orElse: () {},
    );

    super.select(item);
  }

  @override
  void selectSet(Set<SelectableParcelsItem> items) {
    state.maybeWhen(
      selected: (currentItems) {
        final last = currentItems.last.pageType;
        final differentPageType = items.any(
          (item) => item.pageType != last,
        );
        if (differentPageType) {
          clearSelection();
        }
      },
      orElse: () {},
    );

    super.selectSet(items);
  }
}
