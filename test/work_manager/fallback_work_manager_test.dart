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

import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:libretrack/core/date_time_provider.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/storage/work_manager_repository.dart';
import 'package:libretrack/core/work_manager/fallback_work_manager.dart';
import 'package:libretrack/core/work_manager/registered_workers.dart';
import 'package:libretrack/core/work_manager/worker.dart';
import 'package:mocktail/mocktail.dart';

import '../mock/mock.dart';

void main() {
  group('Fallback WorkManager |', () {
    const workerName = 'test';

    late WorkManagerRepository mockRepo;
    late ConstraintsManager mockConstraintsManager;
    late FallbackWorkManager workManager;
    late WorkersProvider mockWorkersProvider;
    late DateTimeProvider mockDateTimeProvider;
    late Worker mockWorker;

    setUpAll(() {
      mockRepo = MockWorkManagerRepository();
      mockConstraintsManager = MockConstraintsManager();
      mockWorkersProvider = MockWorkersProvider();
      mockDateTimeProvider = MockDateTimeProvider();
    });

    setUp(() {
      mockWorker = MockWorker();
      when(() => mockWorkersProvider.getWorkerByName(workerName))
          .thenReturn(mockWorker);
      workManager = FallbackWorkManager(
        repo: mockRepo,
        constraintsManager: mockConstraintsManager,
        workersProvider: mockWorkersProvider,
        dateTimeProvider: mockDateTimeProvider,
      );
    });

    group('One time task |', () {
      test('Without constraints', () async {
        const inputData = WorkData({'foo': 'bar'});
        final expectedInfo = WorkInfo.from(
          id: '1',
          workerName: workerName,
          type: WorkType.oneTime,
          inputData: inputData,
        );

        when(() => mockConstraintsManager.isWorkAllowed(any()))
            .thenAnswer((_) async => true);
        when(() => mockConstraintsManager.defferedCheck(any()))
            .thenAnswer((_) async => true);
        when(() => mockWorker.doWork(inputData))
            .thenAnswer((_) async => const WorkResult.success());
        when(() => mockRepo.addWork(expectedInfo)).thenAnswer((_) async {});
        when(() => mockRepo.deleteWork(expectedInfo)).thenAnswer((_) async {});
        when(
          () => mockRepo.getWorkById(expectedInfo.id),
        ).thenAnswer((_) async => expectedInfo);

        await workManager.registerOneTime(
          workId: '1',
          workerName: workerName,
          params: const WorkParams(
            inputData: inputData,
          ),
        );
        await workManager.execute(expectedInfo.id);

        verify(() => mockRepo.addWork(expectedInfo)).called(1);
        verify(() => mockRepo.deleteWork(expectedInfo)).called(1);
      });

      test('Connect to the network later', () async {
        const constraints = WorkConstraints(networkType: NetworkType.connected);
        final workerCompleter = Completer();
        final expectedInfo = WorkInfo.from(
          id: '1',
          workerName: workerName,
          type: WorkType.oneTime,
          constraints: constraints,
        );

        when(() => mockConstraintsManager.isWorkAllowed(constraints))
            .thenAnswer((_) async => false);
        when(() => mockConstraintsManager.defferedCheck(constraints))
            .thenAnswer((_) async {
          await Future.delayed(const Duration(seconds: 1));
          return true;
        });
        when(() => mockWorker.doWork(any())).thenAnswer((_) async {
          workerCompleter.complete(true);
          return const WorkResult.success();
        });
        when(
          () => mockRepo.getWorkById(expectedInfo.id),
        ).thenAnswer((_) async => expectedInfo);
        when(() => mockRepo.addWork(expectedInfo)).thenAnswer((_) async {});
        when(() => mockRepo.deleteWork(expectedInfo)).thenAnswer((_) async {});
        when(
          () => mockRepo.getWorkById(expectedInfo.id),
        ).thenAnswer((_) async => expectedInfo);

        await workManager.registerOneTime(
          workId: '1',
          workerName: workerName,
          params: const WorkParams(
            constraints: constraints,
          ),
        );
        await workManager.execute(expectedInfo.id);

        expect(await workerCompleter.future, isTrue);
        verify(() => mockWorker.doWork(any())).called(1);
        verify(() => mockRepo.addWork(expectedInfo)).called(1);
        verify(() => mockRepo.deleteWork(expectedInfo)).called(1);
      });

      test('Execute with initial delay', () async {
        const initialDelay = Duration(seconds: 1);
        const inputData = WorkData({'foo': 'bar'});
        final expectedInfo = WorkInfo.from(
          id: '1',
          workerName: workerName,
          type: WorkType.oneTime,
          inputData: inputData,
          initialDelay: initialDelay,
        );

        when(() => mockConstraintsManager.isWorkAllowed(any()))
            .thenAnswer((_) async => true);
        when(() => mockConstraintsManager.defferedCheck(any()))
            .thenAnswer((_) async => true);
        when(() => mockWorker.doWork(inputData))
            .thenAnswer((_) async => const WorkResult.success());
        when(() => mockRepo.addWork(expectedInfo)).thenAnswer((_) async {});
        when(() => mockRepo.deleteWork(expectedInfo)).thenAnswer((_) async {});
        when(
          () => mockRepo.getWorkById(expectedInfo.id),
        ).thenAnswer((_) async => expectedInfo);

        await workManager.registerOneTime(
          workId: '1',
          workerName: workerName,
          params: const WorkParams(
            inputData: inputData,
          ),
          initialDelay: initialDelay,
        );
        await workManager.execute(expectedInfo.id);

        await Future.delayed(initialDelay);
        verify(() => mockWorker.doWork(any())).called(1);
      });
    });

    group('Periodic task |', () {
      test('Without constraints', () async {
        final expectedWorkInfo = WorkInfo.from(
          id: '1',
          workerName: workerName,
          type: WorkType.periodic,
          inputData: const WorkData(
            {'foo': 'bar'},
          ),
        );

        when(() => mockConstraintsManager.isWorkAllowed(any()))
            .thenAnswer((_) async => true);
        when(() => mockWorker.doWork(expectedWorkInfo.inputData))
            .thenAnswer((_) async => const WorkResult.success());
        when(() => mockRepo.addWork(expectedWorkInfo)).thenAnswer((_) async {});
        when(
          () => mockRepo.getAll(),
        ).thenAnswer((_) async => [expectedWorkInfo]);
        when(
          () => mockRepo.updateWork(
            expectedWorkInfo.copyWith(lastRunning: DateTime(2021)),
          ),
        ).thenAnswer((_) async {});
        when(() => mockDateTimeProvider.now()).thenReturn(DateTime(2021));

        await workManager.registerPeriodic(
          workId: expectedWorkInfo.id,
          workerName: expectedWorkInfo.workerName,
          params: WorkParams(
            inputData: expectedWorkInfo.inputData,
          ),
        );

        await workManager.executeAll();
        verify(() => mockWorker.doWork(expectedWorkInfo.inputData)).called(1);
      });

      test('No network connection', () async {
        final expectedWorkInfo = WorkInfo.from(
          id: '1',
          workerName: workerName,
          type: WorkType.periodic,
          constraints: const WorkConstraints(
            networkType: NetworkType.connected,
          ),
        );

        when(() => mockConstraintsManager.isWorkAllowed(
            expectedWorkInfo.constraints)).thenAnswer((_) async => false);
        when(() => mockWorker.doWork(any()))
            .thenAnswer((_) async => const WorkResult.success());
        when(() => mockRepo.addWork(expectedWorkInfo)).thenAnswer((_) async {});
        when(
          () => mockRepo.getAll(),
        ).thenAnswer((_) async => [expectedWorkInfo]);

        await workManager.registerPeriodic(
          workId: expectedWorkInfo.id,
          workerName: expectedWorkInfo.workerName,
          params: WorkParams(
            inputData: expectedWorkInfo.inputData,
            constraints: expectedWorkInfo.constraints,
          ),
        );

        expect(await workManager.executeAll(), isTrue);
        verifyNever(() => mockWorker.doWork(any()));
      });

      test('Connect to the network later', () async {
        final expectedInfo = WorkInfo.from(
          id: '1',
          workerName: workerName,
          type: WorkType.periodic,
          constraints: const WorkConstraints(
            networkType: NetworkType.connected,
          ),
        );

        when(
          () => mockConstraintsManager.isWorkAllowed(expectedInfo.constraints),
        ).thenAnswer((_) async => false);
        when(
          () => mockConstraintsManager.defferedCheck(expectedInfo.constraints),
        ).thenAnswer((_) async => false);
        when(() => mockWorker.doWork(any()))
            .thenAnswer((_) async => const WorkResult.success());
        when(() => mockRepo.addWork(expectedInfo)).thenAnswer((_) async {});
        when(() => mockRepo.deleteWork(expectedInfo)).thenAnswer((_) async {});
        when(
          () => mockRepo.getAll(),
        ).thenAnswer((_) async => [expectedInfo]);
        when(
          () => mockRepo.updateWork(
            expectedInfo.copyWith(lastRunning: DateTime(2021)),
          ),
        ).thenAnswer((_) async {});
        when(() => mockDateTimeProvider.now()).thenReturn(DateTime(2021));
        when(
          () => mockRepo.getWorkById(expectedInfo.id),
        ).thenAnswer((_) async => expectedInfo);

        await workManager.registerPeriodic(
          workId: expectedInfo.id,
          workerName: expectedInfo.workerName,
          params: WorkParams(
            inputData: expectedInfo.inputData,
            constraints: expectedInfo.constraints,
          ),
        );

        expect(await workManager.executeAll(), isTrue);
        verifyNever(() => mockWorker.doWork(any()));

        when(
          () => mockConstraintsManager.isWorkAllowed(expectedInfo.constraints),
        ).thenAnswer((_) async => true);
        expect(await workManager.executeAll(), isTrue);
        verify(() => mockWorker.doWork(any())).called(1);
      });

      test('Too fast worker calling', () async {
        final expectedWorkInfo = WorkInfo.from(
          id: '1',
          workerName: workerName,
          type: WorkType.periodic,
          frequency: const Duration(hours: 1),
        );

        when(() => mockConstraintsManager.isWorkAllowed(
            expectedWorkInfo.constraints)).thenAnswer((_) async => true);
        when(() => mockWorker.doWork(any()))
            .thenAnswer((_) async => const WorkResult.success());
        when(() => mockRepo.addWork(expectedWorkInfo)).thenAnswer((_) async {});
        when(
          () => mockRepo.getAll(),
        ).thenAnswer((_) async => [expectedWorkInfo]);
        when(
          () => mockRepo.updateWork(
            expectedWorkInfo.copyWith(lastRunning: DateTime(2021)),
          ),
        ).thenAnswer((_) async {});
        when(() => mockDateTimeProvider.now()).thenReturn(DateTime(2021));

        await workManager.registerPeriodic(
          workId: expectedWorkInfo.id,
          workerName: expectedWorkInfo.workerName,
          frequency: expectedWorkInfo.frequency,
          params: WorkParams(
            inputData: expectedWorkInfo.inputData,
          ),
        );

        expect(await workManager.executeAll(), isTrue);
        verify(() => mockWorker.doWork(any())).called(1);
        when(
          () => mockRepo.getAll(),
        ).thenAnswer(
          (_) async => [
            expectedWorkInfo.copyWith(lastRunning: DateTime(2021)),
          ],
        );
        expect(await workManager.executeAll(), isTrue);
        verifyNever(() => mockWorker.doWork(any()));
      });
    });
  });
}
