// Copyright (C) 2021-2024 Yaroslav Pronin <proninyaroslav@mail.ru>
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

import 'package:flutter_test/flutter_test.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/settings/settings.dart';
import 'package:libretrack/ui/parcels/parcels.dart';

void main() {
  group('Parcels sort |', () {
    test('Alphabetically', () {
      final list = [
        const ParcelInfo(
          trackInfo: TrackNumberInfo('2', description: 'b'),
          currentStatus: ShipmentStatusType.notAvailable,
        ),
        const ParcelInfo(
          trackInfo: TrackNumberInfo('1'),
          currentStatus: ShipmentStatusType.notAvailable,
        ),
        const ParcelInfo(
          trackInfo: TrackNumberInfo('2', description: 'a'),
          currentStatus: ShipmentStatusType.notAvailable,
        ),
      ];
      final expectedList = [
        const ParcelInfo(
          trackInfo: TrackNumberInfo('1'),
          currentStatus: ShipmentStatusType.notAvailable,
        ),
        const ParcelInfo(
          trackInfo: TrackNumberInfo('2', description: 'a'),
          currentStatus: ShipmentStatusType.notAvailable,
        ),
        const ParcelInfo(
          trackInfo: TrackNumberInfo('2', description: 'b'),
          currentStatus: ShipmentStatusType.notAvailable,
        ),
      ];

      list.sort(const ParcelsSort.alphabetically().compare);
      expect(list, expectedList);

      list.sort(const ParcelsSort.alphabetically(isDesc: true).compare);
      expect(list, expectedList.reversed);
    });

    test('Activity date', () {
      final list = [
        ParcelInfo(
          trackInfo: TrackNumberInfo('0', dateAdded: DateTime(2020)),
          currentStatus: ShipmentStatusType.infoReceived,
          lastActivity: ShipmentActivityInfo.from(
            trackNumber: '0',
            serviceType: PostalServiceType.ups,
            statusType: ShipmentStatusType.infoReceived,
            dateTime: DateTime(2020),
          ),
        ),
        ParcelInfo(
          trackInfo: TrackNumberInfo('1', dateAdded: DateTime(2020, 1, 2)),
          currentStatus: ShipmentStatusType.delivered,
          lastActivity: ShipmentActivityInfo.from(
            trackNumber: '1',
            serviceType: PostalServiceType.ups,
            statusType: ShipmentStatusType.delivered,
            dateTime: DateTime(2020),
          ),
        ),
        ParcelInfo(
          trackInfo: TrackNumberInfo('2', dateAdded: DateTime(2020, 1, 3)),
          currentStatus: ShipmentStatusType.delivered,
          lastActivity: ShipmentActivityInfo.from(
            trackNumber: '2',
            serviceType: PostalServiceType.russianPost,
            statusType: ShipmentStatusType.delivered,
            dateTime: DateTime(2020, 1, 3),
          ),
        ),
        ParcelInfo(
          trackInfo: TrackNumberInfo(
            '3',
            dateAdded: DateTime(2020, 1, 5),
          ),
          currentStatus: ShipmentStatusType.notAvailable,
        ),
      ];
      final expectedList = [
        ParcelInfo(
          trackInfo: TrackNumberInfo(
            '3',
            dateAdded: DateTime(2020, 1, 5),
          ),
          currentStatus: ShipmentStatusType.notAvailable,
        ),
        ParcelInfo(
          trackInfo: TrackNumberInfo('2', dateAdded: DateTime(2020, 1, 3)),
          lastActivity: ShipmentActivityInfo.from(
            trackNumber: '2',
            serviceType: PostalServiceType.russianPost,
            statusType: ShipmentStatusType.delivered,
            dateTime: DateTime(2020, 1, 3),
          ),
          currentStatus: ShipmentStatusType.delivered,
        ),
        ParcelInfo(
          trackInfo: TrackNumberInfo('1', dateAdded: DateTime(2020, 1, 2)),
          lastActivity: ShipmentActivityInfo.from(
            trackNumber: '1',
            serviceType: PostalServiceType.ups,
            statusType: ShipmentStatusType.delivered,
            dateTime: DateTime(2020),
          ),
          currentStatus: ShipmentStatusType.delivered,
        ),
        ParcelInfo(
          trackInfo: TrackNumberInfo('0', dateAdded: DateTime(2020)),
          lastActivity: ShipmentActivityInfo.from(
            trackNumber: '0',
            serviceType: PostalServiceType.ups,
            statusType: ShipmentStatusType.infoReceived,
            dateTime: DateTime(2020),
          ),
          currentStatus: ShipmentStatusType.infoReceived,
        ),
      ];

      list.sort(const ParcelsSort.activityDate().compare);
      expect(list, expectedList);

      list.sort(const ParcelsSort.activityDate(oldestFirst: true).compare);
      expect(list, expectedList.reversed);
    });

    test('Date added', () {
      final list = [
        ParcelInfo(
          trackInfo: TrackNumberInfo('2', dateAdded: DateTime(2020, 1, 3)),
          currentStatus: ShipmentStatusType.notAvailable,
        ),
        ParcelInfo(
          trackInfo: TrackNumberInfo('1', dateAdded: DateTime(2020)),
          currentStatus: ShipmentStatusType.notAvailable,
        ),
        ParcelInfo(
          trackInfo: TrackNumberInfo('3', dateAdded: DateTime(2020, 1, 2)),
          currentStatus: ShipmentStatusType.notAvailable,
        ),
      ];
      final expectedList = [
        ParcelInfo(
          trackInfo: TrackNumberInfo('2', dateAdded: DateTime(2020, 1, 3)),
          currentStatus: ShipmentStatusType.notAvailable,
        ),
        ParcelInfo(
          trackInfo: TrackNumberInfo('3', dateAdded: DateTime(2020, 1, 2)),
          currentStatus: ShipmentStatusType.notAvailable,
        ),
        ParcelInfo(
          trackInfo: TrackNumberInfo('1', dateAdded: DateTime(2020)),
          currentStatus: ShipmentStatusType.notAvailable,
        ),
      ];

      list.sort(const ParcelsSort.dateAdded().compare);
      expect(list, expectedList);

      list.sort(const ParcelsSort.dateAdded(oldestFirst: true).compare);
      expect(list, expectedList.reversed);
    });
  });
}
