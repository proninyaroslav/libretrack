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

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:libretrack/core/app_database_isolate_binder.dart';
import 'package:libretrack/core/crash_catcher/crash_catcher.dart';
import 'package:libretrack/core/crash_catcher/hook/flutter_crash_hook.dart';
import 'package:libretrack/core/date_time_provider.dart';
import 'package:libretrack/core/entity/entity.dart';
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

const _kDefaultFrequency = Duration(minutes: 15);

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

@Singleton(as: WorkManager, env: [Env.prod])
class WorkManagerImpl extends _WorkManagerImpl {
  WorkManagerImpl(
    super.repo,
    super.platform,
    super.workersProvider,
    super.dateTimeProvider,
  ) : super(
          isDebug: false,
        );
}

@Singleton(as: WorkManager, env: [Env.dev])
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

abstract class _PlatformWorkManager extends WorkManager {
  Future<void> execute();
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

  static _PlatformWorkManager _getPlatfowmWm(
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
    } else if (platform.isLinux || platform.isWindows || platform.isMacOS) {
      return _DesktopWorkManager(
        repo,
        platform,
        workersProvider,
        dateTimeProvider,
      );
    } else {
      // TODO: Web support
      throw UnsupportedError('Unsupported platform');
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

final _crashHandlers = [
  DefaultCrashHandler(),
  NotificationCrashHandler(),
];

final _debugCrashHandlers = [
  DefaultCrashHandler(),
];

@pragma('vm:entry-point')
Future<void> callbackDispatcher() async {
  WidgetsFlutterBinding.ensureInitialized();

  Future<void> dispatcher() async {
    await initInjector(kDebugMode ? Env.dev : Env.prod);
    getIt<AppDatabaseIsolateBinder>().emitChanges();
    await getIt<NotificationManager>().init();

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
    await platformWm.execute();
  }

  if (kDebugMode) {
    return dispatcher();
  } else {
    return crashCatcher(
      hooks: [
        ZonedCrashHook(mainEntry: dispatcher),
        IsolateCrashHook(),
        FlutterCrashHook(),
      ],
      handlers: _crashHandlers,
    );
  }
}

class _MobileWorkManager implements _PlatformWorkManager {
  final PlatformInfo _platform;
  final _IOSWorkManager _iosWm;
  final WorkersProvider _workersProvider;
  final bool _isDebug;
  final wm.Workmanager _wm;

  _MobileWorkManager(
    WorkManagerRepository repo,
    this._platform,
    this._workersProvider,
    DateTimeProvider dateTimeProvider, {
    required bool isDebug,
  })  : _iosWm = _IOSWorkManager(
          FallbackWorkManager(
            repo: repo,
            constraintsManager: _getConstraintsManager(_platform),
            workersProvider: _workersProvider,
            dateTimeProvider: dateTimeProvider,
          ),
        ),
        _isDebug = isDebug,
        _wm = wm.Workmanager();

  static ConstraintsManager _getConstraintsManager(PlatformInfo platform) =>
      ConstraintsManagerImpl(platform);

  @override
  Future<void> init() async {
    await _wm.initialize(callbackDispatcher, isInDebugMode: _isDebug);
    if (_platform.isIOS) {
      _iosWm.init();
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
      await _iosWm.registerOneTime(
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
        existingWorkPolicy:
            _convertPeriodicWorkPolicy(params?.existingWorkPolicy),
      );
    } else {
      await _iosWm.registerPeriodic(
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
      await _iosWm.cancelById(workId);
    }
  }

  @override
  Future<void> execute() async {
    wm.Workmanager().executeTask((taskName, inputData) async {
      await crashCatcher(
        hooks: [
          _WorkmanagerCrashHook(
            taskHandler: () async {
              if (taskName == wm.Workmanager.iOSBackgroundTask) {
                if (!await _iosWm.executeAll()) {
                  throw _WorkFailedException();
                }
              } else {
                final worker = _workersProvider.getWorkerByName(taskName);
                if (worker == null) {
                  throw _WorkFailedException();
                }
                final workerData = _convertData(inputData);
                final result = await worker.doWork(workerData);

                result.when(
                  success: () {},
                  failure: () => throw _WorkFailedException(),
                );
              }
            },
          ),
        ],
        handlers: [
          _WorkmanagerCrashHandler(
            handlers: kDebugMode ? _debugCrashHandlers : _crashHandlers,
          ),
        ],
      );

      return true;
    });
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
        return wm.NetworkType.notRequired;
      case NetworkType.notRoaming:
        return wm.NetworkType.notRoaming;
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

  wm.ExistingPeriodicWorkPolicy? _convertPeriodicWorkPolicy(
      ExistingWorkPolicy? policy) {
    if (policy == null) {
      return null;
    }

    switch (policy) {
      case ExistingWorkPolicy.keep:
        return wm.ExistingPeriodicWorkPolicy.keep;
      case ExistingWorkPolicy.replace:
        return wm.ExistingPeriodicWorkPolicy.replace;
    }
  }
}

class _IOSWorkManager implements WorkManager {
  final FallbackWorkManager _fallbackWm;

  _IOSWorkManager(FallbackWorkManager fallbackWm) : _fallbackWm = fallbackWm;

  @override
  Future<void> cancelById(String workId) => _fallbackWm.cancelById(workId);

  @override
  Future<void> init() async {
    await _fallbackWm.init();
    await _fallbackWm.executeAll();
  }

  @override
  Future<void> registerOneTime({
    required String workId,
    required String workerName,
    WorkParams? params,
    Duration? initialDelay,
  }) async {
    await _fallbackWm.registerOneTime(
      workId: workId,
      workerName: workerName,
      params: params,
      initialDelay: initialDelay,
    );
    await _fallbackWm.execute(workId);
  }

  @override
  Future<void> registerPeriodic({
    required String workId,
    required String workerName,
    Duration? frequency,
    WorkParams? params,
  }) =>
      _fallbackWm.registerPeriodic(
        workId: workId,
        workerName: workerName,
        params: params,
        frequency: frequency,
      );

  Future<bool> executeAll() => _fallbackWm.executeAll();
}

class _DesktopWorkManager implements _PlatformWorkManager {
  final FallbackWorkManager _fallbackWm;
  final WorkManagerRepository _repo;

  final Map<String, Timer> _timers = {};

  _DesktopWorkManager(
    WorkManagerRepository repo,
    PlatformInfo platform,
    WorkersProvider workersProvider,
    DateTimeProvider dateTimeProvider,
  )   : _repo = repo,
        _fallbackWm = FallbackWorkManager(
          repo: repo,
          constraintsManager: _getConstraintsManager(platform),
          workersProvider: workersProvider,
          dateTimeProvider: dateTimeProvider,
        );

  static ConstraintsManager _getConstraintsManager(PlatformInfo platform) =>
      ConstraintsManagerImpl(platform);

  @override
  Future<void> cancelById(String workId) async {
    _timers.remove(workId);
    await _fallbackWm.cancelById(workId);
  }

  @override
  Future<void> init() async {
    await _fallbackWm.init();
    await _fallbackWm.executeAll();
    await _registerTimers();
  }

  Future<void> _registerTimers() async {
    for (final info in await _repo.getAll()) {
      if (info.type != WorkType.periodic) {
        continue;
      }
      _timers[info.id] = _buildTimer(
        info.id,
        info.frequency ?? _kDefaultFrequency,
      );
    }
  }

  @override
  Future<void> registerOneTime({
    required String workId,
    required String workerName,
    WorkParams? params,
    Duration? initialDelay,
  }) async {
    await _fallbackWm.registerOneTime(
      workId: workId,
      workerName: workerName,
      params: params,
      initialDelay: initialDelay,
    );
    await _fallbackWm.execute(workId);
    _timers.remove(workId);
  }

  @override
  Future<void> registerPeriodic({
    required String workId,
    required String workerName,
    Duration? frequency,
    WorkParams? params,
  }) async {
    final timer = _timers[workId];
    if (timer != null &&
        params?.existingWorkPolicy != ExistingWorkPolicy.replace) {
      return;
    }
    _timers[workId] = _buildTimer(workId, frequency);
    await _fallbackWm.registerPeriodic(
      workId: workId,
      workerName: workerName,
      frequency: frequency,
      params: params,
    );
  }

  Timer _buildTimer(String workId, Duration? frequency) {
    return Timer.periodic(
      frequency ?? _kDefaultFrequency,
      (timer) => _fallbackWm.execute(workId),
    );
  }

  @override
  Future<void> execute() {
    throw UnimplementedError();
  }
}

class _WorkFailedException implements Exception {
  final String? message = null;

  _WorkFailedException();

  @override
  String toString() =>
      message == null ? 'WorkFailedException' : 'WorkFailedException: $message';
}

class _WorkmanagerCrashHook implements CrashHook {
  final Future<void> Function() taskHandler;

  _WorkmanagerCrashHook({required this.taskHandler});

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

class _WorkmanagerCrashHandler implements CrashHandler {
  final List<CrashHandler> handlers;

  _WorkmanagerCrashHandler({required this.handlers});

  @override
  Future<void> handle(Object error, StackTrace? stackTrace) async {
    if (error is! _WorkFailedException) {
      await Future.wait(handlers.map(
        (handler) => handler.handle(error, stackTrace),
      ));
    }
  }
}
