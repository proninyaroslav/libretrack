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

import 'package:injectable/injectable.dart';
import 'package:libretrack/injector.dart';

import '../worker/tracking_all_worker.dart';
import '../worker/tracking_periodic_worker.dart';
import '../worker/tracking_worker.dart';
import 'worker.dart';

// ignore: avoid_classes_with_only_static_members
/// WARNING: do not change existing worker names
abstract class WorkersList {
  static const trackingWorker = 'TrackingWorker';
  static const trackingAllWorker = 'TrackingAllWorker';
  static const trackingPeriodicWorker = 'TrackingPeriodicWorker';

  /// `key` - unique worker name, `value` - worker object.
  /// The same worker can have many keys
  static final Map<String, Worker?> _workers = {
    trackingWorker: getIt<TrackingWorker>(),
    trackingAllWorker: getIt<TrackingAllWorker>(),
    trackingPeriodicWorker: getIt<TrackingPeriodicWorker>(),
  };
}

abstract class WorkersProvider {
  Worker? getWorkerByName(String name);
}

@Injectable(as: WorkersProvider)
class WorkersProviderImpl implements WorkersProvider {
  @override
  Worker? getWorkerByName(String name) => WorkersList._workers[name];
}
