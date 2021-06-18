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
import 'package:libretrack/core/storage/storage_result.dart';
import 'package:libretrack/core/storage/track_number_repository.dart';
import 'package:libretrack/ui/parcel_details/parcel_details.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock/mock.dart';

void main() {
  group('EditParcelCubit |', () {
    late TrackNumberRepository mockTrackRepo;
    late EditParcelCubit cubit;

    setUpAll(() {
      mockTrackRepo = MockTrackNumberRepository();
    });

    setUp(() {
      cubit = EditParcelCubit(mockTrackRepo);
    });

    blocTest(
      'Initial state',
      build: () => cubit,
      expect: () => [],
    );

    blocTest(
      'Field changed',
      build: () => cubit,
      act: (EditParcelCubit cubit) {
        cubit.nameChanged('test1');
        cubit.nameChanged('test2');
        cubit.nameChanged(null);
      },
      expect: () => [
        const EditParcelState.fieldChanged(
          name: ParcelName(value: 'test1'),
        ),
        const EditParcelState.fieldChanged(
          name: ParcelName(value: 'test2'),
        ),
        const EditParcelState.fieldChanged(
          name: ParcelName(),
        ),
      ],
    );

    blocTest(
      'Apply',
      build: () => cubit,
      act: (EditParcelCubit cubit) async {
        const info = TrackNumberInfo('123', description: 'test');
        cubit.nameChanged(null);
        when(() => mockTrackRepo.updateTrack(
              info.copyWith(description: ''),
            )).thenAnswer(
          (_) async => StorageResult.empty,
        );
        await cubit.apply(trackInfo: info);

        cubit.nameChanged('test1');
        when(() =>
                mockTrackRepo.updateTrack(info.copyWith(description: 'test1')))
            .thenAnswer(
          (_) async => StorageResult.empty,
        );
        await cubit.apply(trackInfo: info);
      },
      expect: () => [
        const EditParcelState.fieldChanged(
          name: ParcelName(),
        ),
        const EditParcelState.editing(),
        const EditParcelState.edited(
          name: ParcelName(),
        ),
        const EditParcelState.fieldChanged(
          name: ParcelName(value: 'test1'),
        ),
        const EditParcelState.editing(),
        const EditParcelState.edited(
          name: ParcelName(value: 'test1'),
        ),
      ],
    );

    blocTest(
      'Apply after failed editing',
      build: () => cubit,
      act: (EditParcelCubit cubit) async {
        const info = TrackNumberInfo('123');
        cubit.nameChanged('test');
        when(() => mockTrackRepo.updateTrack(
              info.copyWith(description: 'test'),
            )).thenAnswer(
          (_) async => const StorageResult.error(StorageError.database()),
        );
        await cubit.apply(trackInfo: info);

        when(() =>
                mockTrackRepo.updateTrack(info.copyWith(description: 'test')))
            .thenAnswer(
          (_) async => StorageResult.empty,
        );
        await cubit.apply(trackInfo: info);
      },
      expect: () => [
        const EditParcelState.fieldChanged(
          name: ParcelName(value: 'test'),
        ),
        const EditParcelState.editing(),
        const EditParcelState.editFailed(
          name: ParcelName(value: 'test'),
        ),
        const EditParcelState.editing(),
        const EditParcelState.edited(
          name: ParcelName(value: 'test'),
        ),
      ],
    );
  });
}
