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

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:libretrack/ui/cubit/selectable_cubit.dart';

class _TestSelectableCubit<T> extends SelectableCubit<T> {}

void main() {
  group('SelectableCubit |', () {
    late SelectableCubit<int> cubit;

    setUp(() async {
      cubit = _TestSelectableCubit();
    });

    blocTest(
      'Initial state',
      build: () => cubit,
      expect: () => [],
    );

    blocTest(
      'Select',
      build: () => cubit,
      act: (SelectableCubit<int> cubit) {
        cubit.select(1);
        cubit.select(2);
        cubit.select(3);
      },
      expect: () => [
        const SelectableState.selected({1}),
        const SelectableState.selected({1, 2}),
        const SelectableState.selected({1, 2, 3}),
      ],
    );

    blocTest(
      'Select set',
      build: () => cubit,
      act: (SelectableCubit<int> cubit) {
        cubit.selectSet({1, 2, 3});
      },
      expect: () => [
        const SelectableState.selected({1, 2, 3}),
      ],
    );

    blocTest(
      'Unselect',
      build: () => cubit,
      act: (SelectableCubit<int> cubit) {
        cubit.select(1);
        cubit.select(2);
        cubit.select(3);
        cubit.unselect(2);
        cubit.unselect(1);
        cubit.unselect(3);
      },
      expect: () => [
        const SelectableState.selected({1}),
        const SelectableState.selected({1, 2}),
        const SelectableState.selected({1, 2, 3}),
        const SelectableState.selected({1, 3}),
        const SelectableState.selected({3}),
        const SelectableState.noSelection(),
      ],
    );

    blocTest(
      'Clear selection',
      build: () => cubit,
      act: (SelectableCubit<int> cubit) {
        cubit.select(1);
        cubit.select(2);
        cubit.select(3);
        cubit.clearSelection();
      },
      expect: () => [
        const SelectableState.selected({1}),
        const SelectableState.selected({1, 2}),
        const SelectableState.selected({1, 2, 3}),
        const SelectableState.noSelection(),
      ],
    );
  });
}
