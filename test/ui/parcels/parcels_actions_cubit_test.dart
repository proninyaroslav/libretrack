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
import 'package:libretrack/core/storage/storage_result.dart';
import 'package:libretrack/core/storage/track_number_repository.dart';
import 'package:libretrack/core/storage/tracking_repository.dart';
import 'package:libretrack/core/tracking_limiter.dart';
import 'package:libretrack/core/tracking_scheduler.dart';
import 'package:libretrack/ui/parcels/parcels.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock/mock.dart';

void main() {
  group('ParcelsActionsCubit |', () {
    late ParcelsActionsCubit cubit;
    late TrackNumberRepository mockTrackNumberRepo;
    late TrackingRepository mockTrackingRepo;
    late TrackingScheduler mockTrackingScheduler;

    setUpAll(() {
      registerFallbackValue<List<TrackingInfo>>(
        FakeList<TrackingInfo>(),
      );
      mockTrackNumberRepo = MockTrackNumberRepository();
      mockTrackingRepo = MockTrackingRepository();
      mockTrackingScheduler = MockTrackingScheduler();
    });

    setUp(() async {
      cubit = ParcelsActionsCubit(
        mockTrackNumberRepo,
        mockTrackingRepo,
        mockTrackingScheduler,
      );
    });

    blocTest(
      'Initial state',
      build: () => cubit,
    );

    blocTest(
      'Delete tracks',
      build: () => cubit,
      act: (ParcelsActionsCubit cubit) async {
        const trackInfo = TrackNumberInfo('123');
        const parcelInfo = ParcelInfo(trackInfo: trackInfo);
        when(() => mockTrackNumberRepo.deleteTrackList([trackInfo])).thenAnswer(
          (_) async => StorageResult.empty,
        );
        await cubit.deleteParcels([parcelInfo]);
        verify(() => mockTrackNumberRepo.deleteTrackList([trackInfo]))
            .called(1);
      },
      expect: () => [
        const ParcelsActionsState.deleting(),
        const ParcelsActionsState.deleteSuccess(),
      ],
    );

    blocTest(
      'Move to archive',
      build: () => cubit,
      act: (ParcelsActionsCubit cubit) async {
        const trackInfo = TrackNumberInfo('123');
        const parcelInfo = ParcelInfo(trackInfo: trackInfo);
        when(
          () => mockTrackNumberRepo.updateTrackList([
            trackInfo.copyWith(isArchived: true),
          ]),
        ).thenAnswer(
          (_) async => StorageResult.empty,
        );
        when(
          () => mockTrackingRepo.updateTrackingInfoList(any()),
        ).thenAnswer(
          (_) async => StorageResult.empty,
        );
        await cubit.moveToArchive([parcelInfo]);
        verify(
          () => mockTrackNumberRepo.updateTrackList([
            trackInfo.copyWith(isArchived: true),
          ]),
        ).called(1);
      },
      expect: () => [
        const ParcelsActionsState.movingToArchive(),
        const ParcelsActionsState.moveToArchiveSuccess(),
        const ParcelsActionsState.markingAsRead(),
        const ParcelsActionsState.markAsReadSuccess(),
      ],
    );

    blocTest(
      'Move to active',
      build: () => cubit,
      act: (ParcelsActionsCubit cubit) async {
        const trackInfo = TrackNumberInfo('123', isArchived: true);
        const parcelInfo = ParcelInfo(trackInfo: trackInfo);
        when(
          () => mockTrackNumberRepo.updateTrackList([
            trackInfo.copyWith(isArchived: false),
          ]),
        ).thenAnswer(
          (_) async => StorageResult.empty,
        );
        await cubit.moveToActive([parcelInfo]);
        verify(
          () => mockTrackNumberRepo.updateTrackList([
            trackInfo.copyWith(isArchived: false),
          ]),
        ).called(1);
      },
      expect: () => [
        const ParcelsActionsState.movingToActive(),
        const ParcelsActionsState.moveToActiveSuccess(),
      ],
    );

    blocTest(
      'Mark as read',
      build: () => cubit,
      act: (ParcelsActionsCubit cubit) async {
        const trackInfo = TrackNumberInfo('123');
        final trackingInfo = TrackingInfo(
          id: const TrackingId('1'),
          trackNumber: trackInfo.trackNumber,
          status: TrackingStatus.complete,
          hasNewInfo: true,
          hasNonRetryableError: false,
          invalidTrackNumber: false,
          dateTime: DateTime.now(),
        );
        final parcelInfo = ParcelInfo(
          trackInfo: trackInfo,
          lastTrackingInfo: trackingInfo,
        );
        when(
          () => mockTrackingRepo.updateTrackingInfoList(
            [trackingInfo.copyWith(hasNewInfo: false)],
          ),
        ).thenAnswer(
          (_) async => StorageResult.empty,
        );
        await cubit.markAsRead([parcelInfo]);
        verify(
          () => mockTrackingRepo.updateTrackingInfoList(
            [trackingInfo.copyWith(hasNewInfo: false)],
          ),
        ).called(1);
      },
      expect: () => [
        const ParcelsActionsState.markingAsRead(),
        const ParcelsActionsState.markAsReadSuccess(),
      ],
    );

    blocTest(
      'Refresh',
      build: () => cubit,
      act: (ParcelsActionsCubit cubit) async {
        const trackNumberList = ['1', '2', '3'];
        final parcelInfoList = trackNumberList
            .map(
              (trackNumber) => ParcelInfo(
                trackInfo: TrackNumberInfo(trackNumber),
              ),
            )
            .toList();
        final trackNumberServiceList = trackNumberList
            .map(
              (trackNumber) => TrackNumberService(
                trackNumber: trackNumber,
                serviceType: PostalServiceType.ups,
              ),
            )
            .toList();
        when(
          () =>
              mockTrackNumberRepo.getTrackNumberServicesByList(trackNumberList),
        ).thenAnswer(
          (_) async => StorageResult(trackNumberServiceList),
        );

        when(
          () => mockTrackingScheduler.enqueueOneshot(trackNumberList),
        ).thenAnswer(
          (_) async => trackNumberList
              .map(
                (trackNumber) => EnqueueOneshotResult.success(
                  trackNumber: trackNumber,
                ),
              )
              .toList(),
        );

        await cubit.refresh(parcelInfoList);
      },
      expect: () => [
        const ParcelsActionsState.refreshing(),
        const ParcelsActionsState.refreshSuccess(),
      ],
    );

    blocTest(
      'Refresh all',
      build: () => cubit,
      act: (ParcelsActionsCubit cubit) async {
        when(
          () => mockTrackingScheduler.enqueueOneshotAll(),
        ).thenAnswer(
          (_) async {},
        );
        cubit.refreshAll();
      },
    );

    blocTest(
      'Copy track numbers',
      build: () => cubit,
      act: (ParcelsActionsCubit cubit) {
        cubit.copyTrackNumbers(const [
          ParcelInfo(trackInfo: TrackNumberInfo('1')),
          ParcelInfo(trackInfo: TrackNumberInfo('2')),
          ParcelInfo(trackInfo: TrackNumberInfo('3')),
        ]);
      },
      expect: () => [
        const ParcelsActionsState.copyingTrack(),
        const ParcelsActionsState.copyTrackSuccess(trackNumbers: '1\n2\n3'),
      ],
    );

    blocTest(
      'Build share string',
      build: () => cubit,
      act: (ParcelsActionsCubit cubit) {
        cubit.buildShareString(const [
          ParcelInfo(trackInfo: TrackNumberInfo('1', description: 'Test1')),
          ParcelInfo(trackInfo: TrackNumberInfo('2')),
          ParcelInfo(trackInfo: TrackNumberInfo('3', description: 'Test3')),
        ]);
      },
      expect: () => [
        const ParcelsActionsState.sharingString(),
        const ParcelsActionsState.shareStringSuccess(
          text: 'Test1: 1\n2\nTest3: 3',
        ),
      ],
    );

    blocTest(
      'Refresh with limited frequency',
      build: () => cubit,
      act: (ParcelsActionsCubit cubit) async {
        const trackNumber = '1';
        const parcelInfo = ParcelInfo(
          trackInfo: TrackNumberInfo(trackNumber),
        );
        const trackNumberServiceList = [
          TrackNumberService(
            trackNumber: trackNumber,
            serviceType: PostalServiceType.ups,
          ),
        ];
        when(
          () => mockTrackNumberRepo.getTrackNumberServicesByList([trackNumber]),
        ).thenAnswer(
          (_) async => const StorageResult(trackNumberServiceList),
        );

        when(
          () => mockTrackingScheduler.enqueueOneshot([trackNumber]),
        ).thenAnswer(
          (_) async => const [
            EnqueueOneshotResult.dissalowed(
              trackNumber: trackNumber,
              remainingLimitTime: Duration(minutes: 10),
            )
          ],
        );
        await cubit.refresh([parcelInfo]);

        when(
          () => mockTrackingScheduler.enqueueOneshot([trackNumber]),
        ).thenAnswer(
          (_) async => [
            const EnqueueOneshotResult.error(
              trackNumber: trackNumber,
              error: EnqueueOneshotError.limiter(
                TrackingLimiterError.storage(
                  StorageError.database(),
                ),
              ),
            )
          ],
        );
        await cubit.refresh([parcelInfo]);

        when(
          () => mockTrackingScheduler.enqueueOneshot([trackNumber]),
        ).thenAnswer(
          (_) async => const [
            EnqueueOneshotResult.success(
              trackNumber: trackNumber,
            )
          ],
        );
        await cubit.refresh([parcelInfo]);
      },
      expect: () => [
        const ParcelsActionsState.refreshing(),
        const ParcelsActionsState.refreshFreqLimited(
          remainingTime: Duration(minutes: 10),
        ),
        const ParcelsActionsState.refreshing(),
        const ParcelsActionsState.refreshFailed(
          errors: {
            '1': EnqueueOneshotError.limiter(
              TrackingLimiterError.storage(
                StorageError.database(),
              ),
            ),
          },
        ),
        const ParcelsActionsState.refreshing(),
        const ParcelsActionsState.refreshSuccess(),
      ],
    );
  });
}
