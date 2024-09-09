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
import 'package:libretrack/ui/accounts/model/accounts_actions_cubit.dart';
import 'package:libretrack/ui/accounts/model/accounts_actions_state.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock/mock.dart';

void main() {
  group('AccountsActionsCubit |', () {
    late AccountsActionsCubit cubit;
    late ServiceRepository mockServiceRepo;

    setUpAll(() {
      mockServiceRepo = MockServiceRepository();
    });

    setUp(() {
      cubit = AccountsActionsCubit(mockServiceRepo);
    });

    blocTest(
      'Initial state',
      build: () => cubit,
    );

    blocTest(
      'Delete',
      build: () => cubit,
      act: (AccountsActionsCubit cubit) async {
        const info = TrackingServiceInfo(
          type: TrackingServiceType.ups,
        );
        when(() => mockServiceRepo.deleteService(info))
            .thenAnswer((_) async => StorageResult.empty);
        await cubit.deleteService(info);
        verify(() => mockServiceRepo.deleteService(info)).called(1);
      },
      expect: () => [
        const AccountsActionsState.deleting(),
        const AccountsActionsState.deleteSuccess(),
      ],
    );
  });
}
