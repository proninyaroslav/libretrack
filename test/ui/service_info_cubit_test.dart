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
import 'package:libretrack/ui/edit_account/service_info_cubit.dart';
import 'package:mocktail/mocktail.dart';

import '../mock/mock.dart';

void main() {
  group('ServiceInfoCubit |', () {
    late ServiceInfoCubit cubit;
    late ServiceRepository mockServiceRepo;

    setUpAll(() async {
      mockServiceRepo = MockServiceRepository();
    });

    setUp(() async {
      cubit = ServiceInfoCubit(mockServiceRepo);
    });

    blocTest(
      'Initial state',
      build: () => cubit,
      expect: () => [],
    );

    blocTest(
      'Load service',
      build: () => cubit,
      act: (ServiceInfoCubit cubit) async {
        when(() => mockServiceRepo.getServiceByType(TrackingServiceType.ups))
            .thenAnswer(
          (_) async => const StorageResult(
            TrackingServiceInfo(
              type: TrackingServiceType.ups,
            ),
          ),
        );
        when(() => mockServiceRepo.getAuthDataByType(TrackingServiceType.ups))
            .thenAnswer(
          (_) async => const StorageResult(
            AuthData(
              {'login': 'foo', 'password': 'bar'},
            ),
          ),
        );
        when(() => mockServiceRepo.isAuthStorageEncrypted).thenReturn(true);
        await cubit.loadService(TrackingServiceType.ups);
      },
      expect: () => [
        const ServiceInfoState.initial(),
        const ServiceInfoState.loaded(
          info: TrackingServiceInfo(
            type: TrackingServiceType.ups,
          ),
          authData: AuthData({'login': 'foo', 'password': 'bar'}),
          isAuthStorageEncrypted: true,
        ),
      ],
    );
  });
}
