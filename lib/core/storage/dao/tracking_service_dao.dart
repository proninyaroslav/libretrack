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

import 'package:floor/floor.dart';
import 'package:libretrack/core/entity/converter/converter.dart';
import 'package:libretrack/core/entity/entity.dart';

@TypeConverters([
  TrackingServiceTypeConverter,
  PostalServiceTypeConverter,
])
@dao
abstract class TrackingServiceDao {
  @insert
  Future<void> addService(TrackingServiceInfo info);

  @delete
  Future<void> deleteService(TrackingServiceInfo info);

  @Query('SELECT * FROM TrackingServiceInfo WHERE type = :type')
  Future<TrackingServiceInfo?> getServiceByType(TrackingServiceType type);

  @Query('SELECT * FROM TrackingServiceInfo WHERE type IN (:types)')
  Future<List<TrackingServiceInfo>> getServicesByType(
    List<TrackingServiceType> types,
  );

  @Query('''
  SELECT * FROM TrackingServiceInfo
  WHERE type IN
  (SELECT trackingServiceType FROM PostalServiceInfo
  WHERE priority =
  (SELECT MIN(priority) FROM PostalServiceInfo WHERE type = :postalServiceType)
  )''')
  Future<TrackingServiceInfo?> getHighPriorityService(
    PostalServiceType postalServiceType,
  );

  @Query('SELECT * FROM TrackingServiceInfo')
  Future<List<TrackingServiceInfo>> getAll();

  @Query('SELECT * FROM TrackingServiceInfo')
  Stream<List<TrackingServiceInfo>> observeAll();
}
