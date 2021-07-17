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

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:libretrack/core/date_time_provider.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/platform_info.dart';
import 'package:libretrack/core/storage/work_manager_repository.dart';
import 'package:libretrack/core/work_manager/work_manager.dart';

import '../../logger.dart';
import 'registered_workers.dart';
import 'worker.dart';

/// Own implementation of [WorkManager], which is used if the
/// `workmanager` plugin isn't available for this platform or
/// doesn't have the necessary functionality on this platform
class FallbackWorkManager implements WorkManager {
  final WorkManagerRepository _repo;
  final ConstraintsManager _constraintsManager;
  final WorkersProvider _workersProvider;
  final DateTimeProvider _dateTimeProvider;

  FallbackWorkManager({
    required WorkManagerRepository repo,
    required ConstraintsManager constraintsManager,
    required WorkersProvider workersProvider,
    required DateTimeProvider dateTimeProvider,
  })  : _repo = repo,
        _constraintsManager = constraintsManager,
        _workersProvider = workersProvider,
        _dateTimeProvider = dateTimeProvider;

  @override
  Future<void> init() async {}

  @override
  Future<void> registerOneTime({
    required String workId,
    required String workerName,
    WorkParams? params,
    Duration? initialDelay,
  }) async {
    Future<void> register() async {
      final worker = _workersProvider.getWorkerByName(workerName);
      if (worker == null) {
        return;
      }
      final info = WorkInfo.from(
        id: workId,
        workerName: workerName,
        type: WorkType.oneTime,
        inputData: params?.inputData,
        constraints: params?.constraints,
        initialDelay: initialDelay,
      );
      await _repo.addWork(info);
    }

    if (params == null) {
      return register();
    } else {
      switch (params.existingWorkPolicy) {
        case ExistingWorkPolicy.keep:
          if (await _repo.getWorkById(workId) == null) {
            return register();
          } else {
            // Do nothing
            return;
          }
        case ExistingWorkPolicy.replace:
          return register();
      }
    }
  }

  @override
  Future<void> registerPeriodic({
    required String workId,
    required String workerName,
    WorkParams? params,
    Duration? frequency,
  }) async {
    if (params == null) {
      return _registerPeriodic(workId, workerName, params, frequency);
    } else {
      switch (params.existingWorkPolicy) {
        case ExistingWorkPolicy.keep:
          if (await _repo.getWorkById(workId) == null) {
            return _registerPeriodic(workId, workerName, params, frequency);
          } else {
            // Do nothing
            return;
          }
        case ExistingWorkPolicy.replace:
          return _registerPeriodic(workId, workerName, params, frequency);
      }
    }
  }

  Future<void> _registerPeriodic(
    String workId,
    String workerName,
    WorkParams? params,
    Duration? frequency,
  ) async {
    await _repo.addWork(
      WorkInfo.from(
        id: workId,
        workerName: workerName,
        type: WorkType.periodic,
        frequency: frequency,
        inputData: params?.inputData,
        constraints: params?.constraints,
      ),
    );
  }

  @override
  Future<void> cancelById(String workId) async {
    final info = await _repo.getWorkById(workId);
    if (info != null) {
      await _repo.deleteWork(info);
    }
  }

  Future<bool> _execute(WorkInfo info) async {
    WorkResult? result;
    final worker = _workersProvider.getWorkerByName(info.workerName);
    if (worker == null) {
      return false;
    }
    late final Future<void> Function() run;
    if (await _constraintsManager.isWorkAllowed(info.constraints)) {
      if (info.type == WorkType.periodic) {
        if (_isTooFast(info)) {
          return true;
        } else {
          await _repo.updateWork(info.copyWith(
            lastRunning: _dateTimeProvider.now(),
          ));
        }
      }
      run = () async {
        result = await worker.doWork(info.inputData);
        if (info.type == WorkType.oneTime) {
          await _repo.deleteWork(info);
        }
        _printResult(result!, info);
      };
    } else {
      run = () async {
        _constraintsManager.defferedCheck(info.constraints).then(
          (workAllowed) async {
            final currentInfo = await _repo.getWorkById(info.id);
            if (currentInfo == null) {
              return;
            }
            if (info.type == WorkType.oneTime) {
              await _repo.deleteWork(currentInfo);
            }
            if (workAllowed) {
              result = await worker.doWork(currentInfo.inputData);
              _printResult(result!, currentInfo);
            }
          },
        );
      };
    }
    if (info.initialDelay != null) {
      Timer(info.initialDelay!, run);
    } else {
      await run();
    }

    return result?.when(
          success: () => true,
          failure: () => false,
        ) ??
        true;
  }

  Future<bool> execute(String id) async {
    final info = await _repo.getWorkById(id);
    if (info == null) {
      return true;
    }

    return _execute(info);
  }

  Future<bool> executeAll() async {
    final results = <Future<bool>>[];
    final infoList = await _repo.getAll();
    for (final info in infoList) {
      results.add(_execute(info).then((result) => result));
    }
    await Future.wait(results);

    return true;
  }

  bool _isTooFast(WorkInfo info) {
    if (info.lastRunning == null || info.frequency == null) {
      return false;
    }
    final lastRunning = info.lastRunning!;
    final frequency = info.frequency!;
    return lastRunning.add(frequency).isAfter(_dateTimeProvider.now());
  }

  static void _printResult(WorkResult result, WorkInfo info) {
    result.when(
      success: () {
        log(withStack: false)
            .i('[WorkManager] Worker result SUCCESS for $info');
      },
      failure: () {
        log(withStack: false)
            .e('[WorkManager] Worker result FAILURE for $info');
      },
    );
  }
}

abstract class ConstraintsManager {
  Future<bool> isWorkAllowed(WorkConstraints? constraints);

  Future<bool> defferedCheck(WorkConstraints? constraints);
}

class ConstraintsManagerImpl implements ConstraintsManager {
  final PlatformInfo _platform;

  ConstraintsManagerImpl(this._platform);

  @override
  Future<bool> isWorkAllowed(WorkConstraints? constraints) async {
    return _checkNetwork(constraints?.networkType);
  }

  Future<bool> _checkNetwork(NetworkType? type) async {
    if (type == null || type == NetworkType.notRequired) {
      return true;
    }
    if (_platform.isIOS && type == NetworkType.notRoaming) {
      // iOS doesn't support roaming check
      return true;
    }
    final result = await Connectivity().checkConnectivity();
    return _checkConnectivityResult(result, type);
  }

  bool _checkConnectivityResult(ConnectivityResult result, NetworkType? type) {
    if (type == NetworkType.notRequired) {
      return true;
    }
    if (type == NetworkType.notRoaming) {
      // iOS doesn't support roaming check
      return true;
    }
    switch (type) {
      case NetworkType.connected:
        return result != ConnectivityResult.none;
      case NetworkType.metered:
        return result == ConnectivityResult.mobile;
      case NetworkType.unmetered:
        return result != ConnectivityResult.mobile;
      default:
        throw UnsupportedError('Unknown network type');
    }
  }

  @override
  Future<bool> defferedCheck(WorkConstraints? constraints) async {
    if (constraints == null) {
      return true;
    }
    await for (final result in Connectivity().onConnectivityChanged) {
      if (_checkConnectivityResult(result, constraints.networkType)) {
        return true;
      }
    }
    return false;
  }
}
