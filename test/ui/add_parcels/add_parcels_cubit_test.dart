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
import 'package:libretrack/core/date_time_provider.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/storage/storage_result.dart';
import 'package:libretrack/core/storage/track_number_repository.dart';
import 'package:libretrack/core/tracking_scheduler.dart';
import 'package:libretrack/ui/add_parcels/add_parcels_cubit.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock/mock.dart';

void main() {
  group('AddParcelsCubit |', () {
    late AddParcelsCubit cubit;
    late TrackNumberRepository mockTrackRepo;
    late TrackingScheduler mockTrackingScheduler;
    late DateTimeProvider mockDateTimeProvider;

    setUpAll(() {
      registerFallbackValue<List<TrackNumberInfo>>(
        FakeList<TrackNumberInfo>(),
      );
      registerFallbackValue<List<TrackNumberService>>(
        FakeList<TrackNumberService>(),
      );
      mockTrackRepo = MockTrackNumberRepository();
      mockTrackingScheduler = MockTrackingScheduler();
      mockDateTimeProvider = MockDateTimeProvider();
    });

    setUp(() async {
      cubit = AddParcelsCubit(
        mockTrackRepo,
        mockTrackingScheduler,
        mockDateTimeProvider,
      );
    });

    blocTest(
      'Initial state',
      build: () => cubit,
      expect: () => [],
    );

    blocTest(
      'Fields changed',
      build: () => cubit,
      act: (AddParcelsCubit cubit) {
        cubit.trackingNumbersChanged('1');
        cubit.parcelNamesChanged('name');
      },
      expect: () => [
        const AddParcelsState.fieldChanged(
          trackingNumbers: TrackingNumbers(value: '1'),
          parcelNames: ParcelNames(),
        ),
        const AddParcelsState.fieldChanged(
          trackingNumbers: TrackingNumbers(value: '1'),
          parcelNames: ParcelNames(value: 'name'),
        ),
      ],
    );

    blocTest(
      'Submit empty fields',
      build: () => cubit,
      act: (AddParcelsCubit cubit) async {
        await cubit.submit();
      },
      expect: () => [
        const AddParcelsState.validationFailed(
          trackingNumbers: TrackingNumbers(
            error: TrackingNumbersError.empty(),
          ),
          parcelNames: ParcelNames(),
        ),
      ],
    );

    blocTest(
      'Submit empty tracking numbers',
      build: () => cubit,
      act: (AddParcelsCubit cubit) async {
        cubit.trackingNumbersChanged('');
        await cubit.submit();
      },
      expect: () => [
        const AddParcelsState.fieldChanged(
          trackingNumbers: TrackingNumbers(),
          parcelNames: ParcelNames(),
        ),
        const AddParcelsState.validationFailed(
          trackingNumbers: TrackingNumbers(
            error: TrackingNumbersError.empty(),
          ),
          parcelNames: ParcelNames(),
        ),
      ],
    );

    blocTest(
      'Submit after failed adding',
      build: () => cubit,
      act: (AddParcelsCubit cubit) async {
        const info = TrackNumberInfo('1', description: 'name');
        cubit.trackingNumbersChanged(info.trackNumber);
        cubit.parcelNamesChanged(info.description!);

        when(
          () => mockTrackRepo.addTrackList(any()),
        ).thenAnswer(
          (_) async => StorageResult.error(
            StorageError.database(
              exception: Exception('Failed to add tracking numbers'),
            ),
          ),
        );
        when(() => mockDateTimeProvider.now()).thenReturn(DateTime(2021));

        await cubit.submit();

        when(
          () => mockTrackRepo.addTrackList(any()),
        ).thenAnswer((_) async => StorageResult.empty);
        when(
          () => mockTrackRepo.addTrackNumberServices(any()),
        ).thenAnswer((_) async => StorageResult.empty);
        await cubit.submit();
      },
      expect: () => [
        const AddParcelsState.fieldChanged(
          trackingNumbers: TrackingNumbers(value: '1'),
          parcelNames: ParcelNames(),
        ),
        const AddParcelsState.fieldChanged(
          trackingNumbers: TrackingNumbers(value: '1'),
          parcelNames: ParcelNames(value: 'name'),
        ),
        const AddParcelsState.adding(),
        isA<AddParcelsStateAddFailed>(),
        const AddParcelsState.adding(),
        isA<AddParcelsStateAdded>(),
      ],
    );

    blocTest(
      'Field changed after success adding',
      build: () => cubit,
      act: (AddParcelsCubit cubit) async {
        cubit.trackingNumbersChanged('1');
        cubit.parcelNamesChanged('name');

        when(
          () => mockTrackRepo.addTrackList(any()),
        ).thenAnswer((_) async => StorageResult.empty);
        when(
          () => mockTrackRepo.addTrackNumberServices(any()),
        ).thenAnswer((_) async => StorageResult.empty);
        when(() => mockDateTimeProvider.now()).thenReturn(DateTime(2021));

        await cubit.submit();
        try {
          cubit.trackingNumbersChanged('2');
        } catch (e) {
          expect(e, isInstanceOf<StateError>());
          return;
        }
        fail('Exception not thrown');
      },
      expect: () => [
        const AddParcelsState.fieldChanged(
          trackingNumbers: TrackingNumbers(value: '1'),
          parcelNames: ParcelNames(),
        ),
        const AddParcelsState.fieldChanged(
          trackingNumbers: TrackingNumbers(value: '1'),
          parcelNames: ParcelNames(value: 'name'),
        ),
        const AddParcelsState.adding(),
        AddParcelsState.added(
          addedTrackInfoList: [
            TrackNumberInfo(
              '1',
              description: 'name',
              dateAdded: DateTime(2021),
            ),
          ],
        ),
      ],
    );

    blocTest(
      'Submit valid fields',
      build: () => cubit,
      act: (AddParcelsCubit cubit) {
        cubit.trackingNumbersChanged('1');
        cubit.parcelNamesChanged('name');

        when(
          () => mockTrackRepo.addTrackList(any()),
        ).thenAnswer((_) async => StorageResult.empty);
        when(
          () => mockTrackRepo.addTrackNumberServices(any()),
        ).thenAnswer((_) async => StorageResult.empty);
        when(() => mockDateTimeProvider.now()).thenReturn(DateTime(2021));

        cubit.submit();
      },
      expect: () => [
        const AddParcelsState.fieldChanged(
          trackingNumbers: TrackingNumbers(value: '1'),
          parcelNames: ParcelNames(),
        ),
        const AddParcelsState.fieldChanged(
          trackingNumbers: TrackingNumbers(value: '1'),
          parcelNames: ParcelNames(value: 'name'),
        ),
        const AddParcelsState.adding(),
        AddParcelsState.added(
          addedTrackInfoList: [
            TrackNumberInfo(
              '1',
              description: 'name',
              dateAdded: DateTime(2021),
            ),
          ],
        ),
      ],
    );

    blocTest(
      'Submit only tracking number',
      build: () => cubit,
      act: (AddParcelsCubit cubit) {
        cubit.trackingNumbersChanged('1');

        when(
          () => mockTrackRepo.addTrackList(any()),
        ).thenAnswer((_) async => StorageResult.empty);
        when(
          () => mockTrackRepo.addTrackNumberServices(any()),
        ).thenAnswer((_) async => StorageResult.empty);
        when(() => mockDateTimeProvider.now()).thenReturn(DateTime(2021));

        cubit.submit();
      },
      expect: () => [
        const AddParcelsState.fieldChanged(
          trackingNumbers: TrackingNumbers(value: '1'),
          parcelNames: ParcelNames(),
        ),
        const AddParcelsState.adding(),
        AddParcelsState.added(
          addedTrackInfoList: [
            TrackNumberInfo(
              '1',
              dateAdded: DateTime(2021),
            ),
          ],
        ),
      ],
    );

    blocTest(
      'Submit duplicated track numbers',
      build: () => cubit,
      act: (AddParcelsCubit cubit) {
        cubit.trackingNumbersChanged('''
        1
        2
        1
        ''');
        cubit.parcelNamesChanged('''
        Name1
        Name2
        Name1_2
        ''');
        when(
          () => mockTrackRepo.addTrackList(any()),
        ).thenAnswer((_) async => StorageResult.empty);
        when(
          () => mockTrackRepo.addTrackNumberServices(any()),
        ).thenAnswer((_) async => StorageResult.empty);
        when(() => mockDateTimeProvider.now()).thenReturn(DateTime(2021));

        cubit.submit();
      },
      expect: () => [
        const AddParcelsState.fieldChanged(
          trackingNumbers: TrackingNumbers(
            value: '''
        1
        2
        1
        ''',
          ),
          parcelNames: ParcelNames(),
        ),
        const AddParcelsState.fieldChanged(
          trackingNumbers: TrackingNumbers(
            value: '''
        1
        2
        1
        ''',
          ),
          parcelNames: ParcelNames(
            value: '''
        Name1
        Name2
        Name1_2
        ''',
          ),
        ),
        const AddParcelsState.adding(),
        AddParcelsState.added(
          addedTrackInfoList: [
            TrackNumberInfo(
              '1',
              description: 'Name1',
              dateAdded: DateTime(2021),
            ),
            TrackNumberInfo(
              '2',
              description: 'Name2',
              dateAdded: DateTime(2021),
            ),
          ],
        ),
      ],
    );

    blocTest(
      'There are more names than tracks',
      build: () => cubit,
      act: (AddParcelsCubit cubit) {
        cubit.trackingNumbersChanged('''
        1
        2
        3
        ''');
        cubit.parcelNamesChanged('''
        Name1
        Name2
        Name3
        Name4
        Name5
        ''');

        when(
          () => mockTrackRepo.addTrackList(any()),
        ).thenAnswer((_) async => StorageResult.empty);
        when(
          () => mockTrackRepo.addTrackNumberServices(any()),
        ).thenAnswer((_) async => StorageResult.empty);
        when(() => mockDateTimeProvider.now()).thenReturn(DateTime(2021));

        cubit.submit();
      },
      expect: () => [
        const AddParcelsState.fieldChanged(
          trackingNumbers: TrackingNumbers(
            value: '''
        1
        2
        3
        ''',
          ),
          parcelNames: ParcelNames(),
        ),
        const AddParcelsState.fieldChanged(
          trackingNumbers: TrackingNumbers(
            value: '''
        1
        2
        3
        ''',
          ),
          parcelNames: ParcelNames(
            value: '''
        Name1
        Name2
        Name3
        Name4
        Name5
        ''',
          ),
        ),
        const AddParcelsState.adding(),
        AddParcelsState.added(
          addedTrackInfoList: [
            TrackNumberInfo(
              '1',
              description: 'Name1',
              dateAdded: DateTime(2021),
            ),
            TrackNumberInfo(
              '2',
              description: 'Name2',
              dateAdded: DateTime(2021),
            ),
            TrackNumberInfo(
              '3',
              description: 'Name3',
              dateAdded: DateTime(2021),
            ),
          ],
        ),
      ],
    );
  });
}
