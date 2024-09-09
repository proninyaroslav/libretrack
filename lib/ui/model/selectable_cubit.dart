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

import 'package:bloc/bloc.dart';
import 'package:libretrack/ui/model/selectable_state.dart';

abstract class SelectableCubit<T> extends Cubit<SelectableState<T>> {
  SelectableCubit() : super(SelectableState<T>.initial());

  void select(T item) {
    state.maybeWhen(
      selected: (items) {
        emit(SelectableState<T>.selected({...items, item}));
      },
      orElse: () {
        emit(SelectableState<T>.selected({item}));
      },
    );
  }

  void selectSet(Set<T> items) {
    state.maybeWhen(
      selected: (currentItems) {
        emit(SelectableState<T>.selected({...currentItems, ...items}));
      },
      orElse: () {
        emit(SelectableState<T>.selected(items));
      },
    );
  }

  void unselect(T item) {
    state.maybeWhen(
      selected: (items) {
        final newItems = items.where((i) => i != item).toSet();
        if (newItems.isNotEmpty) {
          emit(SelectableState<T>.selected(newItems));
        } else {
          emit(SelectableState<T>.noSelection());
        }
      },
      orElse: () {
        // Nothing
      },
    );
  }

  void clearSelection() {
    emit(SelectableState<T>.noSelection());
  }
}
