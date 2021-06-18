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
import 'package:libretrack/core/storage/service_repository.dart';
import 'package:libretrack/core/storage/storage_result.dart';
import 'package:libretrack/ui/edit_account/edit_account.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock/mock.dart';

void main() {
  group('EditAccountCubit |', () {
    late EditAccountCubit cubit;
    late ServiceRepository mockServiceRepo;

    setUpAll(() async {
      mockServiceRepo = MockServiceRepository();
    });

    setUp(() async {
      cubit = EditAccountCubit(mockServiceRepo);
    });

    blocTest(
      'Initial state',
      build: () => cubit,
      expect: () => [],
    );

    blocTest(
      'Apply',
      build: () => cubit,
      act: (EditAccountCubit cubit) async {
        const authData = AuthData({
          'login': 'foo',
          'password': 'bar',
        });
        when(
          () => mockServiceRepo.updateAuthData(
            type: TrackingServiceType.ups,
            authData: authData,
          ),
        ).thenAnswer(
          (_) async => StorageResult.empty,
        );
        await cubit.apply(
          type: TrackingServiceType.ups,
          authData: authData,
        );
        verify(
          () => mockServiceRepo.updateAuthData(
            type: TrackingServiceType.ups,
            authData: authData,
          ),
        ).called(1);
      },
      expect: () => [
        const EditAccountState.applying(),
        const EditAccountState.applied(),
      ],
    );

    blocTest(
      'Apply failed',
      build: () => cubit,
      act: (EditAccountCubit cubit) async {
        const authData = AuthData({
          'login': 'foo',
          'password': 'bar',
        });
        when(
          () => mockServiceRepo.updateAuthData(
            type: TrackingServiceType.ups,
            authData: authData,
          ),
        ).thenAnswer(
          (_) async => StorageResult.error(
            StorageError.database(
              exception: Exception('Failed to update account'),
            ),
          ),
        );
        await cubit.apply(
          type: TrackingServiceType.ups,
          authData: authData,
        );
      },
      expect: () => [
        const EditAccountState.applying(),
        isA<EditAccountStateApplyFailed>(),
      ],
    );
  });
}
