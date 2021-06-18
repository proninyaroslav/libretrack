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
import 'package:uuid/uuid.dart';

import 'entity/entity.dart';

abstract class TrackingIdGenerator {
  /// Generates a unique `TrackingId` for the current instance.
  /// Throws `GenerateIdException` if failed to generate unique id
  TrackingId randomUnique();
}

class GenerateIdException implements Exception {
  final String message;

  GenerateIdException(this.message);

  @override
  String toString() => 'GenerateIdException: $message';
}

@Injectable(as: TrackingIdGenerator)
class TrackingIdGeneratorImpl implements TrackingIdGenerator {
  static const _maxNumAttempts = 100;

  final Set<String> _uuidMap = {};
  final _uuidGenerator = const Uuid();

  /// Generates a unique `TransactionId` for the current instance.
  /// Throws `GenerateIdException` if failed to generate unique id
  @override
  TrackingId randomUnique() {
    for (var i = 0; i < _maxNumAttempts; i++) {
      final uuid = _uuidGenerator.v4();
      if (!_uuidMap.contains(uuid)) {
        return TrackingId(uuid);
      }
    }
    throw GenerateIdException('Unable to generate unique id');
  }
}
