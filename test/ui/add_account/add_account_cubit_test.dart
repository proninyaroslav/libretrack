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
import 'package:libretrack/ui/add_account/add_account_cubit.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock/mock.dart';

void main() {
  group('AddAccountCubit |', () {
    late AddAccountCubit cubit;
    late ServiceRepository mockServiceRepo;

    setUpAll(() async {
      mockServiceRepo = MockServiceRepository();
    });

    setUp(() async {
      cubit = AddAccountCubit(mockServiceRepo);
    });

    blocTest(
      'Initial state',
      build: () => cubit,
      expect: () => [],
    );

    blocTest(
      'Add account',
      build: () => cubit,
      act: (AddAccountCubit cubit) async {
        const info = TrackingServiceInfo(
          type: TrackingServiceType.ups,
        );
        const authData = AuthData({
          'login': 'foo',
          'password': 'bar',
        });
        when(
          () => mockServiceRepo.addService(
            info: info,
            authData: authData,
          ),
        ).thenAnswer(
          (_) async => StorageResult.empty,
        );
        await cubit.addAccount(
          serviceType: TrackingServiceType.ups,
          authData: authData,
        );
        verify(
          () => mockServiceRepo.addService(
            info: info,
            authData: authData,
          ),
        ).called(1);
      },
      expect: () => [
        const AddAccountState.adding(),
        const AddAccountState.added(),
      ],
    );

    blocTest(
      'Add account failed',
      build: () => cubit,
      act: (AddAccountCubit cubit) async {
        const info = TrackingServiceInfo(
          type: TrackingServiceType.ups,
        );
        const authData = AuthData({
          'login': 'foo',
          'password': 'bar',
        });
        when(
          () => mockServiceRepo.addService(
            info: info,
            authData: authData,
          ),
        ).thenAnswer(
          (_) async => StorageResult.error(
            StorageError.database(
              exception: Exception('Failed to add account'),
            ),
          ),
        );
        await cubit.addAccount(
          serviceType: TrackingServiceType.ups,
          authData: authData,
        );
      },
      expect: () => [
        const AddAccountState.adding(),
        isA<AddAccountStateAddFailed>(),
      ],
    );
  });
}
