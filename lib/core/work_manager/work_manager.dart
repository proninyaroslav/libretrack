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

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:libretrack/core/app_database_isolate_binder.dart';
import 'package:libretrack/core/crash_catcher/crash_catcher.dart';
import 'package:libretrack/core/crash_catcher/hook/flutter_crash_hook.dart';
import 'package:libretrack/core/date_time_provider.dart';
import 'package:libretrack/core/storage/work_manager_repository.dart';
import 'package:libretrack/env.dart';
import 'package:libretrack/injector.dart';
import 'package:workmanager/workmanager.dart' as wm;

import '../notification_manager.dart';
import '../platform_info.dart';
import 'fallback_work_manager.dart';
import 'registered_workers.dart';
import 'worker.dart';

export 'worker.dart';

abstract class WorkManager {
  Future<void> init();

  Future<void> registerPeriodic({
    required String workId,
    required String workerName,

    /// **iOS doesn't support this**. >= 15 min.
    Duration? frequency,
    WorkParams? params,
  });

  Future<void> registerOneTime({
    required String workId,
    required String workerName,
    WorkParams? params,
    Duration? initialDelay,
  });

  Future<void> cancelById(String workId);
}

@Singleton(
  as: WorkManager,
  env: [Env.prod],
  dependsOn: [WorkManagerRepository],
)
class WorkManagerImpl extends _WorkManagerImpl {
  WorkManagerImpl(
    WorkManagerRepository repo,
    PlatformInfo platform,
    WorkersProvider workersProvider,
    DateTimeProvider dateTimeProvider,
  ) : super(
          repo,
          platform,
          workersProvider,
          dateTimeProvider,
          isDebug: false,
        );
}

@Singleton(
  as: WorkManager,
  env: [Env.dev, Env.test],
  dependsOn: [WorkManagerRepository],
)
class DebugWorkManagerImpl extends _WorkManagerImpl {
  DebugWorkManagerImpl(
    WorkManagerRepository repo,
    PlatformInfo platform,
    DateTimeProvider dateTimeProvider,
    WorkersProvider workersProvider,
  ) : super(
          repo,
          platform,
          workersProvider,
          dateTimeProvider,
          isDebug: true,
        );
}

class _WorkManagerImpl implements WorkManager {
  final WorkManager _platformWm;
  final WorkersProvider _workersProvider;

  _WorkManagerImpl(
    WorkManagerRepository repo,
    PlatformInfo platform,
    this._workersProvider,
    DateTimeProvider dateTimeProvider, {
    required bool isDebug,
  }) : _platformWm = _getPlatfowmWm(
          repo,
          platform,
          _workersProvider,
          dateTimeProvider,
          isDebug: isDebug,
        );

  @override
  Future<void> init() async => _platformWm.init();

  static WorkManager _getPlatfowmWm(
    WorkManagerRepository repo,
    PlatformInfo platform,
    WorkersProvider workersProvider,
    DateTimeProvider dateTimeProvider, {
    required bool isDebug,
  }) {
    if (platform.isIOS || platform.isAndroid) {
      return _MobileWorkManager(
        repo,
        platform,
        workersProvider,
        dateTimeProvider,
        isDebug: isDebug,
      );
    } else {
      // TODO: Desktop support
      return _DesktopWorkManagerStub();
    }
  }

  @override
  Future<void> registerOneTime({
    required String workId,
    required String workerName,
    WorkParams? params,
    Duration? initialDelay,
  }) async {
    _checkRegisteredOrThrow(workerName);
    await _platformWm.registerOneTime(
      workId: workId,
      workerName: workerName,
      params: params,
      initialDelay: initialDelay,
    );
  }

  @override
  Future<void> registerPeriodic({
    required String workId,
    required String workerName,
    Duration? frequency,
    WorkParams? params,
  }) async {
    _checkRegisteredOrThrow(workerName);
    await _platformWm.registerPeriodic(
      workId: workId,
      workerName: workerName,
      params: params,
    );
  }

  void _checkRegisteredOrThrow(String workerName) {
    final worker = _workersProvider.getWorkerByName(workerName);
    if (worker == null) {
      throw UnsupportedError('Worker named "$workerName" is not registered');
    }
  }

  @override
  Future<void> cancelById(String workId) async =>
      _platformWm.cancelById(workId);
}

Future<bool> _taskHandler(
  String taskName,
  Map<String, dynamic>? inputData,
) async {
  final repo = getIt<WorkManagerRepository>();
  final platform = getIt<PlatformInfo>();
  final workersProvider = getIt<WorkersProvider>();
  final dateTimeProvider = getIt<DateTimeProvider>();
  final platformWm = _WorkManagerImpl._getPlatfowmWm(
    repo,
    platform,
    workersProvider,
    dateTimeProvider,
    isDebug: kDebugMode,
  );
  late final bool result;
  if (platformWm is _MobileWorkManager) {
    result = await platformWm.execute(taskName, inputData);
  } else {
    // TODO: Desktop support
    throw UnsupportedError('Unsupported platform');
  }
  if (!result) {
    throw _WorkFailedException();
  }
  return true;
}

Future<void> callbackDispatcher() async {
  WidgetsFlutterBinding.ensureInitialized();

  final handlers = [
    DefaultCrashHandler(),
    NotificationCrashHandler(),
  ];

  final debugHandlers = [
    DefaultCrashHandler(),
  ];

  Future<void> _dispatcher() async {
    await initInjector(kDebugMode ? Env.dev : Env.prod);
    getIt<AppDatabaseIsolateBinder>().emitChanges();
    await getIt<NotificationManager>().init();

    wm.Workmanager().executeTask((taskName, inputData) async {
       await crashCatcher(
          hooks: [
            _TaskCrashHook(
              taskHandler: () => _taskHandler(taskName, inputData),
            ),
          ],
          handlers: [
            _TaskCrashHandler(handlers: kDebugMode ? debugHandlers : handlers),
          ],
        );
      return true;
    });
  }

  if (kDebugMode) {
    return _dispatcher();
  } else {
    return crashCatcher(
      hooks: [
        ZonedCrashHook(mainEntry: _dispatcher),
        IsolateCrashHook(),
        FlutterCrashHook(),
      ],
      handlers: handlers,
    );
  }
}

class _MobileWorkManager implements WorkManager {
  final PlatformInfo _platform;
  final FallbackWorkManager _fallbackWm;
  final WorkersProvider _workersProvider;
  final bool _isDebug;
  final wm.Workmanager _wm;

  _MobileWorkManager(
    WorkManagerRepository repo,
    this._platform,
    this._workersProvider,
    DateTimeProvider dateTimeProvider, {
    required bool isDebug,
  })  : _fallbackWm = FallbackWorkManager(
          repo: repo,
          constraintsManager: _getConstraintsManager(_platform),
          workersProvider: _workersProvider,
          dateTimeProvider: dateTimeProvider,
        ),
        _isDebug = isDebug,
        _wm = wm.Workmanager();

  static ConstraintsManager _getConstraintsManager(PlatformInfo platform) =>
      ConstraintsManagerImpl(platform);

  @override
  Future<void> init() async {
    await _wm.initialize(callbackDispatcher, isInDebugMode: _isDebug);
    if (_platform.isIOS) {
      _fallbackWm.executeAll();
    }
  }

  @override
  Future<void> registerOneTime({
    required String workId,
    required String workerName,
    WorkParams? params,
    Duration? initialDelay,
  }) async {
    if (_platform.isAndroid) {
      await _wm.registerOneOffTask(
        workId,
        workerName,
        constraints: _convertConstraints(params?.constraints),
        inputData: params?.inputData?.asMap(),
        existingWorkPolicy: _convertWorkPolicy(params?.existingWorkPolicy),
        initialDelay: initialDelay ?? const Duration(),
      );
    } else {
      await _fallbackWm.registerOneTime(
        workId: workId,
        workerName: workerName,
        params: params,
        initialDelay: initialDelay,
      );
    }
  }

  @override
  Future<void> registerPeriodic({
    required String workId,
    required String workerName,
    WorkParams? params,
    Duration? frequency,
  }) async {
    if (_platform.isAndroid) {
      await wm.Workmanager().registerPeriodicTask(
        workId,
        workerName,
        frequency: frequency,
        constraints: _convertConstraints(params?.constraints),
        inputData: params?.inputData?.asMap(),
        existingWorkPolicy: _convertWorkPolicy(params?.existingWorkPolicy),
      );
    } else {
      await _fallbackWm.registerPeriodic(
        workId: workId,
        workerName: workerName,
        params: params,
        frequency: frequency,
      );
    }
  }

  @override
  Future<void> cancelById(String workId) async {
    if (_platform.isAndroid) {
      await _wm.cancelByUniqueName(workId);
    } else {
      await _fallbackWm.cancelById(workId);
    }
  }

  Future<bool> execute(
    String taskName,
    Map<String, dynamic>? inputData,
  ) async {
    if (taskName == wm.Workmanager.iOSBackgroundTask) {
      return _fallbackWm.executeAll();
    } else {
      final worker = _workersProvider.getWorkerByName(taskName);
      if (worker == null) {
        return false;
      }
      final workerData = _convertData(inputData);
      final result = await worker.doWork(workerData);

      return result.when(
        success: () => true,
        failure: () => false,
      );
    }
  }

  wm.Constraints? _convertConstraints(WorkConstraints? constraints) {
    if (constraints == null) {
      return null;
    }

    final networkType = _convertNetworkType(constraints.networkType);

    return networkType == null
        ? null
        : wm.Constraints(networkType: networkType);
  }

  wm.NetworkType? _convertNetworkType(NetworkType? type) {
    if (type == null) {
      return null;
    }

    switch (type) {
      case NetworkType.connected:
        return wm.NetworkType.connected;
      case NetworkType.metered:
        return wm.NetworkType.metered;
      case NetworkType.notRequired:
        return wm.NetworkType.not_required;
      case NetworkType.notRoaming:
        return wm.NetworkType.not_roaming;
      case NetworkType.unmetered:
        return wm.NetworkType.unmetered;
    }
  }

  static WorkData? _convertData(Map<String, dynamic>? data) =>
      data == null ? null : WorkData(data);

  wm.ExistingWorkPolicy? _convertWorkPolicy(ExistingWorkPolicy? policy) {
    if (policy == null) {
      return null;
    }

    switch (policy) {
      case ExistingWorkPolicy.keep:
        return wm.ExistingWorkPolicy.keep;
      case ExistingWorkPolicy.replace:
        return wm.ExistingWorkPolicy.replace;
    }
  }
}

// TODO: Desktop support
class _DesktopWorkManagerStub implements WorkManager {
  @override
  Future<void> cancelById(String workId) {
    throw UnsupportedError('Unsupported platform');
  }

  @override
  Future<void> init() {
    throw UnsupportedError('Unsupported platform');
  }

  @override
  Future<void> registerOneTime({
    required String workId,
    required String workerName,
    WorkParams? params,
    Duration? initialDelay,
  }) {
    throw UnsupportedError('Unsupported platform');
  }

  @override
  Future<void> registerPeriodic({
    required String workId,
    required String workerName,
    Duration? frequency,
    WorkParams? params,
  }) {
    throw UnsupportedError('Unsupported platform');
  }
}

class _WorkFailedException implements Exception {
  final String? message;

  _WorkFailedException([this.message]);

  @override
  String toString() =>
      message == null ? 'WorkFailedException' : 'WorkFailedException: $message';
}

class _TaskCrashHook implements CrashHook {
  final Future<void> Function() taskHandler;

  _TaskCrashHook({required this.taskHandler});

  @override
  Future<void> setup({required List<CrashHandler> handlers}) async {
    try {
      await taskHandler();
    } catch (error, stackTrace) {
      await Future.wait(handlers.map(
        (handler) => handler.handle(error, stackTrace),
      ));
      // Needed for correct finishing of WorkManager.executeTask
      rethrow;
    }
  }
}

class _TaskCrashHandler implements CrashHandler {
  final List<CrashHandler> handlers;

  _TaskCrashHandler({required this.handlers});

  @override
  Future<void> handle(Object error, StackTrace? stackTrace) async {
    if (error is! _WorkFailedException) {
      await Future.wait(handlers.map(
        (handler) => handler.handle(error, stackTrace),
      ));
    }
  }
}
