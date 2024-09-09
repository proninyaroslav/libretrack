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

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/ui/model/selectable_state.dart';
import 'package:libretrack/ui/parcels/parcels.dart';

void main() {
  group('SelectableParcelsCubit |', () {
    late SelectableParcelsCubit cubit;

    setUp(() async {
      cubit = SelectableParcelsCubit();
    });

    blocTest(
      'Initial state',
      build: () => cubit,
      expect: () => [],
    );

    blocTest(
      'Select',
      build: () => cubit,
      act: (SelectableParcelsCubit cubit) {
        cubit.select(
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('1'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
        );
        cubit.select(
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('2'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
        );
        cubit.select(
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('3'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
        );
      },
      expect: () => [
        SelectableState.selected({
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('1'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
        }),
        SelectableState.selected({
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('1'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('2'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
        }),
        SelectableState.selected({
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('1'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('2'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('3'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
        }),
      ],
    );

    blocTest(
      'Select set',
      build: () => cubit,
      act: (SelectableParcelsCubit cubit) {
        cubit.selectSet({
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('1'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('2'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('3'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
        });
      },
      expect: () => [
        SelectableState.selected({
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('1'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('2'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('3'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
        }),
      ],
    );

    blocTest(
      'Select with different page type',
      build: () => cubit,
      act: (SelectableParcelsCubit cubit) {
        cubit.select(
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('1'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
        );
        cubit.select(
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('2'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
        );
        cubit.select(
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('3'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.archive,
          ),
        );
      },
      expect: () => [
        SelectableState.selected({
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('1'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
        }),
        SelectableState.selected({
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('1'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('2'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
        }),
        const SelectableState<SelectableParcelsItem>.noSelection(),
        SelectableState.selected({
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('3'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.archive,
          ),
        }),
      ],
    );

    blocTest(
      'Select set with different page type',
      build: () => cubit,
      act: (SelectableParcelsCubit cubit) {
        cubit.select(
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('1'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
        );
        cubit.selectSet({
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('2'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.archive,
          ),
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('3'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.archive,
          ),
        });
      },
      expect: () => [
        SelectableState.selected({
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('1'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
        }),
        const SelectableState<SelectableParcelsItem>.noSelection(),
        SelectableState.selected({
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('2'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.archive,
          ),
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('3'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.archive,
          ),
        }),
      ],
    );

    blocTest(
      'Unselect',
      build: () => cubit,
      act: (SelectableParcelsCubit cubit) {
        cubit.select(
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('1'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
        );
        cubit.select(
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('2'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
        );
        cubit.select(
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('3'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
        );

        cubit.unselect(
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('2'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
        );
        cubit.unselect(
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('1'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
        );
        cubit.unselect(
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('3'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
        );
      },
      expect: () => [
        SelectableState.selected({
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('1'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
        }),
        SelectableState.selected({
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('1'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('2'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
        }),
        SelectableState.selected({
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('1'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('2'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('3'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
        }),
        SelectableState.selected({
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('1'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('3'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
        }),
        SelectableState.selected({
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('3'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
        }),
        const SelectableState<SelectableParcelsItem>.noSelection(),
      ],
    );

    blocTest(
      'Clear selection',
      build: () => cubit,
      act: (SelectableParcelsCubit cubit) {
        cubit.select(
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('1'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
        );
        cubit.select(
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('2'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
        );
        cubit.select(
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('3'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
        );
        cubit.clearSelection();
      },
      expect: () => [
        SelectableState.selected({
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('1'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
        }),
        SelectableState.selected({
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('1'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('2'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
        }),
        SelectableState.selected({
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('1'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('2'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
          const SelectableParcelsItem(
            info: ParcelInfo(
              trackInfo: TrackNumberInfo('3'),
              currentStatus: ShipmentStatusType.delivered,
            ),
            pageType: ParcelsPageType.active,
          ),
        }),
        const SelectableState<SelectableParcelsItem>.noSelection(),
      ],
    );
  });
}
