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
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/storage/shipment_repository.dart';
import 'package:libretrack/core/storage/track_number_repository.dart';
import 'package:libretrack/core/storage/tracking_repository.dart';
import 'package:libretrack/core/settings/settings.dart';
import 'package:libretrack/ui/parcels/parcels.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock/mock.dart';

void main() {
  group('ParcelsCubit |', () {
    late ParcelsCubit cubit;
    late TrackNumberRepository mockTrackNumberRepo;
    late TrackingRepository mockTrackingRepo;
    late ShipmentRepository mockShipmentRepo;
    late AppSettings mockPref;

    setUpAll(() async {
      mockTrackNumberRepo = MockTrackNumberRepository();
      mockTrackingRepo = MockTrackingRepository();
      mockShipmentRepo = MockShipmentRepository();
      mockPref = MockAppSettings();
    });

    setUp(() async {
      cubit = ParcelsCubit(
        mockTrackNumberRepo,
        mockTrackingRepo,
        mockShipmentRepo,
        mockPref,
      );
    });

    blocTest(
      'Initial state',
      build: () => cubit,
    );

    blocTest(
      'Search',
      build: () => cubit,
      act: (ParcelsCubit cubit) {
        cubit.search('test1');
        cubit.search('test2');
        cubit.emit(ParcelsState.loaded(
          active: [],
          archive: [],
          filters: cubit.state.filters,
          search: const ParcelsFilter.search(query: 'test2'),
        ));
        cubit.search('test3');
        cubit.search(null);
      },
      expect: () => [
        ParcelsState.initial(
          filters: ParcelsFilterBatch(),
          search: const ParcelsFilter.search(query: 'test1'),
        ),
        ParcelsState.initial(
          filters: ParcelsFilterBatch(),
          search: const ParcelsFilter.search(query: 'test2'),
        ),
        ParcelsState.loaded(
          active: [],
          archive: [],
          filters: ParcelsFilterBatch(),
          search: const ParcelsFilter.search(query: 'test2'),
        ),
        ParcelsState.loaded(
          active: [],
          archive: [],
          filters: ParcelsFilterBatch(),
          search: const ParcelsFilter.search(query: 'test3'),
        ),
        ParcelsState.loaded(
          active: [],
          archive: [],
          filters: ParcelsFilterBatch(),
          search: const ParcelsFilter.search(),
        ),
      ],
    );

    blocTest(
      'Status filter',
      build: () => cubit,
      act: (ParcelsCubit cubit) {
        cubit.setStatusFilter(ShipmentStatusType.inTransit);
        verify(
          () => mockPref.parcelsFilters = ParcelsFilterBatch()
            ..statusFilter = const ParcelsFilter.status(
              statusType: ShipmentStatusType.inTransit,
            ),
        ).called(1);

        cubit.setStatusFilter(ShipmentStatusType.delivered);
        verify(
          () => mockPref.parcelsFilters = ParcelsFilterBatch()
            ..statusFilter = const ParcelsFilter.status(
              statusType: ShipmentStatusType.delivered,
            ),
        ).called(1);

        cubit.setStatusFilter(null);
        verify(
          () => mockPref.parcelsFilters = ParcelsFilterBatch()
            ..statusFilter = const ParcelsFilter.status(),
        ).called(1);
      },
      expect: () => [
        ParcelsState.initial(
          filters: ParcelsFilterBatch()
            ..statusFilter = const ParcelsFilter.status(
              statusType: ShipmentStatusType.inTransit,
            ),
        ),
        ParcelsState.initial(
          filters: ParcelsFilterBatch()
            ..statusFilter = const ParcelsFilter.status(
              statusType: ShipmentStatusType.delivered,
            ),
        ),
        ParcelsState.initial(
          filters: ParcelsFilterBatch()
            ..statusFilter = const ParcelsFilter.status(),
        ),
      ],
    );

    blocTest(
      'New info filter',
      build: () => cubit,
      act: (ParcelsCubit cubit) {
        cubit.setNewInfoFilter(enable: true);
        verify(
          () => mockPref.parcelsFilters = ParcelsFilterBatch()
            ..newInfoFilter = const ParcelsFilter.newInfo(),
        ).called(1);

        cubit.setNewInfoFilter(enable: false);
        verify(
          () => mockPref.parcelsFilters = ParcelsFilterBatch()
            ..newInfoFilter = null,
        ).called(1);
      },
      expect: () => [
        ParcelsState.initial(
          filters: ParcelsFilterBatch()
            ..newInfoFilter = const ParcelsFilter.newInfo(),
        ),
        ParcelsState.initial(
          filters: ParcelsFilterBatch()..newInfoFilter = null,
        ),
      ],
    );

    blocTest(
      'Error filter',
      build: () => cubit,
      act: (ParcelsCubit cubit) {
        cubit.setErrorFilter(enable: true);
        verify(
          () => mockPref.parcelsFilters = ParcelsFilterBatch()
            ..errorFilter = const ParcelsFilter.error(),
        ).called(1);

        cubit.setErrorFilter(enable: false);
        verify(
          () => mockPref.parcelsFilters = ParcelsFilterBatch()
            ..errorFilter = null,
        ).called(1);
      },
      expect: () => [
        ParcelsState.initial(
          filters: ParcelsFilterBatch()
            ..errorFilter = const ParcelsFilter.error(),
        ),
        ParcelsState.initial(
          filters: ParcelsFilterBatch()..errorFilter = null,
        ),
      ],
    );

    blocTest(
      'Postal service filter',
      build: () => cubit,
      act: (ParcelsCubit cubit) {
        cubit.setPostalServiceFilter(PostalServiceType.ups);
        verify(
          () => mockPref.parcelsFilters = ParcelsFilterBatch()
            ..postalServiceFilter = const ParcelsFilter.postalService(
              serviceType: PostalServiceType.ups,
            ),
        ).called(1);

        cubit.setPostalServiceFilter(null);
        verify(
          () => mockPref.parcelsFilters = ParcelsFilterBatch()
            ..postalServiceFilter = const ParcelsFilter.postalService(),
        ).called(1);
      },
      expect: () => [
        ParcelsState.initial(
          filters: ParcelsFilterBatch()
            ..postalServiceFilter = const ParcelsFilter.postalService(
              serviceType: PostalServiceType.ups,
            ),
        ),
        ParcelsState.initial(
          filters: ParcelsFilterBatch()
            ..postalServiceFilter = const ParcelsFilter.postalService(),
        ),
      ],
    );

    blocTest(
      'Alphabetically sort',
      build: () => cubit,
      act: (ParcelsCubit cubit) {
        cubit.setAlphabeticallySort();
        verify(
          () => mockPref.parcelsSort = const ParcelsSort.alphabetically(),
        ).called(1);

        cubit.setAlphabeticallySort(isDesc: true);
        verify(
          () => mockPref.parcelsSort =
              const ParcelsSort.alphabetically(isDesc: true),
        ).called(1);
      },
      expect: () => [
        ParcelsState.initial(
          filters: ParcelsFilterBatch(),
          sort: const ParcelsSort.alphabetically(),
        ),
        ParcelsState.initial(
          filters: ParcelsFilterBatch(),
          sort: const ParcelsSort.alphabetically(isDesc: true),
        ),
      ],
    );

    blocTest(
      'Activity date sort',
      build: () => cubit,
      act: (ParcelsCubit cubit) {
        cubit.setActivityDateSort();
        verify(
          () => mockPref.parcelsSort = const ParcelsSort.activityDate(),
        ).called(1);

        cubit.setActivityDateSort(oldestFirst: true);
        verify(
          () => mockPref.parcelsSort =
              const ParcelsSort.activityDate(oldestFirst: true),
        ).called(1);
      },
      expect: () => [
        ParcelsState.initial(
          filters: ParcelsFilterBatch(),
          sort: const ParcelsSort.activityDate(),
        ),
        ParcelsState.initial(
          filters: ParcelsFilterBatch(),
          sort: const ParcelsSort.activityDate(oldestFirst: true),
        ),
      ],
    );

    blocTest(
      'Date added sort',
      build: () => cubit,
      act: (ParcelsCubit cubit) {
        cubit.setDateAddedSort();
        verify(
          () => mockPref.parcelsSort = const ParcelsSort.dateAdded(),
        ).called(1);

        cubit.setDateAddedSort(oldestFirst: true);
        verify(
          () => mockPref.parcelsSort =
              const ParcelsSort.dateAdded(oldestFirst: true),
        ).called(1);
      },
      expect: () => [
        ParcelsState.initial(
          filters: ParcelsFilterBatch(),
          sort: const ParcelsSort.dateAdded(),
        ),
        ParcelsState.initial(
          filters: ParcelsFilterBatch(),
          sort: const ParcelsSort.dateAdded(oldestFirst: true),
        ),
      ],
    );
  });
}
