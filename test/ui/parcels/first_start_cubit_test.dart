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
import 'package:libretrack/core/settings/settings.dart';
import 'package:libretrack/ui/parcels/first_start_cubit.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock/mock.dart';

void main() {
  group('FirstStartCubit |', () {
    late FirstStartCubit cubit;
    late ServiceRepository mockServiceRepo;
    late AppSettings mockAppSettings;

    setUpAll(() {
      mockServiceRepo = MockServiceRepository();
      mockAppSettings = MockAppSettings();
    });

    setUp(() {
      cubit = FirstStartCubit(mockServiceRepo, mockAppSettings);
    });

    blocTest(
      'Initial state',
      build: () => cubit,
      expect: () => [],
    );

    blocTest(
      'Hide add account tip (first start)',
      build: () => cubit,
      act: (FirstStartCubit cubit) async {
        const info = TrackingServiceInfo(
          type: TrackingServiceType.ups,
        );
        when(() => mockServiceRepo.getAllServices()).thenAnswer(
          (_) async => const StorageResult([info]),
        );
        when(() => mockAppSettings.addAccountTipShown).thenAnswer((_) => false);
        await cubit.showAddAccountTip();
      },
      expect: () => [const FirstStartState.hideAddAccountTip()],
    );

    blocTest(
      'Hide add account tip (not the first start)',
      build: () => cubit,
      act: (FirstStartCubit cubit) async {
        const info = TrackingServiceInfo(
          type: TrackingServiceType.ups,
        );
        when(() => mockServiceRepo.getAllServices()).thenAnswer(
          (_) async => const StorageResult([info]),
        );
        when(() => mockAppSettings.addAccountTipShown).thenAnswer((_) => true);
        await cubit.showAddAccountTip();
      },
      expect: () => [const FirstStartState.hideAddAccountTip()],
    );

    blocTest(
      'Show add account tip (no accounts)',
      build: () => cubit,
      act: (FirstStartCubit cubit) async {
        when(() => mockServiceRepo.getAllServices()).thenAnswer(
          (_) async => const StorageResult([]),
        );
        when(() => mockAppSettings.addAccountTipShown).thenAnswer((_) => false);
        await cubit.showAddAccountTip();
      },
      expect: () => [const FirstStartState.showAddAccountTip()],
    );
  });
}
