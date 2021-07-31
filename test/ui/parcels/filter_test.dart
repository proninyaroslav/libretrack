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

import 'package:flutter_test/flutter_test.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/settings/settings.dart';
import 'package:libretrack/ui/parcels/parcels.dart';

void main() {
  group('Parcels filter |', () {
    group('Parcels filter batch |', () {
      test('Add', () {
        final batch = ParcelsFilterBatch()
          ..statusFilter = const ParcelsFilter.status(
            statusType: ShipmentStatusType.inTransit,
          )
          ..errorFilter = const ParcelsFilter.error()
          ..statusFilter = const ParcelsFilter.status(
            statusType: ShipmentStatusType.delivered,
          )
          ..newInfoFilter = const ParcelsFilter.newInfo();

        expect(
          batch,
          ParcelsFilterBatch()
            ..errorFilter = const ParcelsFilter.error()
            ..statusFilter = const ParcelsFilter.status(
              statusType: ShipmentStatusType.delivered,
            )
            ..newInfoFilter = const ParcelsFilter.newInfo(),
        );
      });

      test('Equality', () {
        final batch0 = ParcelsFilterBatch()
          ..statusFilter = const ParcelsFilter.status(
            statusType: ShipmentStatusType.delivered,
          )
          ..newInfoFilter = const ParcelsFilter.newInfo();
        final batch1 = ParcelsFilterBatch()
          ..statusFilter = const ParcelsFilter.status(
            statusType: ShipmentStatusType.delivered,
          )
          ..newInfoFilter = const ParcelsFilter.newInfo();
        final batch2 = ParcelsFilterBatch()
          ..statusFilter = const ParcelsFilter.status(
            statusType: ShipmentStatusType.inTransit,
          )
          ..newInfoFilter = const ParcelsFilter.newInfo();
        final batch3 = ParcelsFilterBatch()
          ..statusFilter = const ParcelsFilter.status(
            statusType: ShipmentStatusType.delivered,
          )
          ..statusFilter = const ParcelsFilter.status();

        expect(batch0 == batch1, isTrue);
        expect(batch0 == batch2, isFalse);
        expect(batch0 == batch3, isFalse);
      });

      test('Apply all', () {
        final batch = ParcelsFilterBatch()
          ..statusFilter = const ParcelsFilter.status(
            statusType: ShipmentStatusType.delivered,
          )
          ..newInfoFilter = const ParcelsFilter.newInfo();
        expect(
          batch.applyAll(
            const ParcelInfo(
              trackInfo: TrackNumberInfo('test1'),
              trackServices: [],
            ),
          ),
          isFalse,
        );
        expect(ParcelsFilterBatch().applyAll(null), isTrue);
      });

      test('Apply nullable filter', () {
        final batch = ParcelsFilterBatch()..statusFilter = null;
        expect(
          batch.applyAll(
            const ParcelInfo(
              trackInfo: TrackNumberInfo('test1'),
              trackServices: [],
            ),
          ),
          isTrue,
        );
      });
    });

    test('Active track number filter', () {
      expect(
        const ParcelsFilter.active().apply(
          const ParcelInfo(
            trackInfo: TrackNumberInfo('1'),
            trackServices: [],
          ),
        ),
        isTrue,
      );
      expect(
        const ParcelsFilter.active().apply(
          const ParcelInfo(
            trackInfo: TrackNumberInfo('1', isArchived: true),
            trackServices: [],
          ),
        ),
        isFalse,
      );
    });

    test('Archived track number filter', () {
      expect(
        const ParcelsFilter.archive().apply(
          const ParcelInfo(
            trackInfo: TrackNumberInfo('1', isArchived: true),
            trackServices: [],
          ),
        ),
        isTrue,
      );
      expect(
        const ParcelsFilter.archive().apply(
          const ParcelInfo(
            trackInfo: TrackNumberInfo('1'),
            trackServices: [],
          ),
        ),
        isFalse,
      );
    });

    test('Search filter', () {
      expect(
        const ParcelsFilter.search(query: 'ab').apply(
          const ParcelInfo(
            trackInfo: TrackNumberInfo('abc'),
            trackServices: [],
          ),
        ),
        isTrue,
      );
      expect(
        const ParcelsFilter.search(query: 'ab').apply(
          const ParcelInfo(
            trackInfo: TrackNumberInfo('123', description: 'Abc'),
            trackServices: [],
          ),
        ),
        isTrue,
      );
      expect(
        const ParcelsFilter.search(query: 'test').apply(
          const ParcelInfo(
            trackInfo: TrackNumberInfo('123'),
            trackServices: [],
          ),
        ),
        isFalse,
      );
      expect(
        const ParcelsFilter.search(query: 'test').apply(
          const ParcelInfo(
            trackInfo: TrackNumberInfo('123', description: 'abc'),
            trackServices: [],
          ),
        ),
        isFalse,
      );
      expect(
        const ParcelsFilter.search(query: '').apply(
          const ParcelInfo(
            trackInfo: TrackNumberInfo('123'),
            trackServices: [],
          ),
        ),
        isTrue,
      );
      expect(
        const ParcelsFilter.search().apply(
          const ParcelInfo(
            trackInfo: TrackNumberInfo('123'),
            trackServices: [],
          ),
        ),
        isTrue,
      );
      expect(
        const ParcelsFilter.search(query: '123').apply(null),
        isFalse,
      );
      expect(
        const ParcelsFilter.search(query: 'Test').apply(
          const ParcelInfo(
            trackInfo: TrackNumberInfo('test123'),
            trackServices: [],
          ),
        ),
        isTrue,
      );
    });

    test('Status filter', () {
      expect(
        const ParcelsFilter.status(
          statusType: ShipmentStatusType.delivered,
        ).apply(
          ParcelInfo(
            trackInfo: const TrackNumberInfo('1'),
            lastActivity: ShipmentActivityInfo.from(
              trackNumber: '1',
              serviceType: PostalServiceType.ups,
              statusType: ShipmentStatusType.delivered,
            ),
            trackServices: [],
          ),
        ),
        isTrue,
      );

      expect(
        const ParcelsFilter.status(
          statusType: ShipmentStatusType.delivered,
        ).apply(
          const ParcelInfo(
            trackInfo: TrackNumberInfo('1'),
            trackServices: [],
          ),
        ),
        isFalse,
      );

      expect(
        const ParcelsFilter.status(
          statusType: ShipmentStatusType.inTransit,
        ).apply(
          ParcelInfo(
            trackInfo: const TrackNumberInfo('1'),
            lastActivity: ShipmentActivityInfo.from(
              trackNumber: '1',
              serviceType: PostalServiceType.ups,
              statusType: ShipmentStatusType.delivered,
            ),
            trackServices: [],
          ),
        ),
        isFalse,
      );

      expect(
        const ParcelsFilter.status().apply(
          ParcelInfo(
            trackInfo: const TrackNumberInfo('1'),
            lastActivity: ShipmentActivityInfo.from(
              trackNumber: '1',
              serviceType: PostalServiceType.ups,
              statusType: ShipmentStatusType.delivered,
            ),
            trackServices: [],
          ),
        ),
        isTrue,
      );

      expect(
        const ParcelsFilter.status().apply(
          const ParcelInfo(
            trackInfo: TrackNumberInfo('1'),
            trackServices: [],
          ),
        ),
        isTrue,
      );

      expect(
        const ParcelsFilter.status(
          statusType: ShipmentStatusType.notAvailable,
        ).apply(
          const ParcelInfo(
            trackInfo: TrackNumberInfo('1'),
            trackServices: [],
          ),
        ),
        isTrue,
      );
    });

    test('New info filter', () {
      expect(
        const ParcelsFilter.newInfo().apply(
          ParcelInfo(
            trackInfo: const TrackNumberInfo('1'),
            lastTrackingInfo: TrackingInfo(
              id: const TrackingId('1'),
              trackNumber: '1',
              status: TrackingStatus.complete,
              hasNewInfo: true,
              hasNonRetryableError: false,
              invalidTrackNumber: false,
              dateTime: DateTime.now(),
            ),
            trackServices: [],
          ),
        ),
        isTrue,
      );

      expect(
        const ParcelsFilter.newInfo().apply(
          const ParcelInfo(
            trackInfo: TrackNumberInfo('1'),
            trackServices: [],
          ),
        ),
        isFalse,
      );
    });

    test('Error filter', () {
      expect(
        const ParcelsFilter.error().apply(
          ParcelInfo(
            trackInfo: const TrackNumberInfo('1'),
            lastTrackingInfo: TrackingInfo(
              id: const TrackingId('1'),
              trackNumber: '1',
              status: TrackingStatus.complete,
              hasNewInfo: true,
              hasNonRetryableError: true,
              invalidTrackNumber: true,
              dateTime: DateTime.now(),
            ),
            trackServices: [],
          ),
        ),
        isTrue,
      );

      expect(
        const ParcelsFilter.error().apply(
          ParcelInfo(
            trackInfo: const TrackNumberInfo('1'),
            lastTrackingInfo: TrackingInfo(
              id: const TrackingId('1'),
              trackNumber: '1',
              status: TrackingStatus.complete,
              hasNewInfo: true,
              hasNonRetryableError: false,
              invalidTrackNumber: true,
              dateTime: DateTime.now(),
            ),
            trackServices: [],
          ),
        ),
        isTrue,
      );

      expect(
        const ParcelsFilter.error().apply(
          ParcelInfo(
            trackInfo: const TrackNumberInfo('1'),
            lastTrackingInfo: TrackingInfo(
              id: const TrackingId('1'),
              trackNumber: '1',
              status: TrackingStatus.complete,
              hasNewInfo: true,
              hasNonRetryableError: false,
              invalidTrackNumber: false,
              dateTime: DateTime.now(),
            ),
            trackServices: [],
          ),
        ),
        isFalse,
      );

      expect(
        const ParcelsFilter.error().apply(
          const ParcelInfo(
            trackInfo: TrackNumberInfo('1'),
            trackServices: [],
          ),
        ),
        isFalse,
      );
    });

    test('Postal service filter', () {
      expect(
        const ParcelsFilter.postalService(
          serviceType: PostalServiceType.ups,
        ).apply(
          const ParcelInfo(
            trackInfo: TrackNumberInfo('1'),
            trackServices: [
              TrackNumberService(
                trackNumber: '1',
                serviceType: PostalServiceType.ups,
              ),
            ],
          ),
        ),
        isTrue,
      );

      expect(
        const ParcelsFilter.postalService(
          serviceType: PostalServiceType.ups,
        ).apply(
          const ParcelInfo(
            trackInfo: TrackNumberInfo('1'),
            trackServices: [
              TrackNumberService(
                trackNumber: '1',
                serviceType: PostalServiceType.russianPost,
              ),
            ],
          ),
        ),
        isFalse,
      );

      expect(
        const ParcelsFilter.postalService().apply(
          const ParcelInfo(
            trackInfo: TrackNumberInfo('1'),
            trackServices: [
              TrackNumberService(
                trackNumber: '1',
                serviceType: PostalServiceType.ups,
              ),
            ],
          ),
        ),
        isTrue,
      );

      expect(
        const ParcelsFilter.postalService(
          serviceType: PostalServiceType.ups,
        ).apply(
          const ParcelInfo(
            trackInfo: TrackNumberInfo('1'),
            trackServices: [],
          ),
        ),
        isFalse,
      );

      expect(
        const ParcelsFilter.postalService().apply(
          const ParcelInfo(
            trackInfo: TrackNumberInfo('1'),
            trackServices: [],
          ),
        ),
        isTrue,
      );
    });
  });
}
