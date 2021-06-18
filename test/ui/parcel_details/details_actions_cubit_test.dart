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
import 'package:libretrack/ui/parcel_details/parcel_details.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock/mock.dart';

void main() {
  group('DetailsActionsCubit |', () {
    late DetailsActionsCubit cubit;
    late TrackNumberRepository mockTrackNumberRepo;
    late TrackingRepository mockTrackingRepo;
    late TrackingScheduler mockTrackingScheduler;

    setUpAll(() {
      registerFallbackValue<TrackingInfo>(FakeTrackingInfo());
      mockTrackNumberRepo = MockTrackNumberRepository();
      mockTrackingRepo = MockTrackingRepository();
      mockTrackingScheduler = MockTrackingScheduler();
    });

    setUp(() {
      cubit = DetailsActionsCubit(
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
      'Delete',
      build: () => cubit,
      act: (DetailsActionsCubit cubit) async {
        const trackInfo = TrackNumberInfo('123');
        const parcelInfo = ParcelInfo(trackInfo: trackInfo);
        when(() => mockTrackNumberRepo.deleteTrack(trackInfo)).thenAnswer(
          (_) async => StorageResult.empty,
        );
        await cubit.deleteParcel(parcelInfo);
        verify(() => mockTrackNumberRepo.deleteTrack(trackInfo)).called(1);
      },
      expect: () => [
        const DetailsActionsState.deleting(),
        const DetailsActionsState.deleteSuccess(),
      ],
    );

    blocTest(
      'Move to archive',
      build: () => cubit,
      act: (DetailsActionsCubit cubit) async {
        const trackInfo = TrackNumberInfo('123');
        const parcelInfo = ParcelInfo(trackInfo: trackInfo);
        when(
          () => mockTrackNumberRepo
              .updateTrack(trackInfo.copyWith(isArchived: true)),
        ).thenAnswer(
          (_) async => StorageResult.empty,
        );
        await cubit.moveToArchive(parcelInfo);
        verify(
          () => mockTrackNumberRepo
              .updateTrack(trackInfo.copyWith(isArchived: true)),
        ).called(1);
      },
      expect: () => [
        const DetailsActionsState.movingToArchive(),
        const DetailsActionsState.moveToArchiveSuccess(),
      ],
    );

    blocTest(
      'Move to active',
      build: () => cubit,
      act: (DetailsActionsCubit cubit) async {
        const trackInfo = TrackNumberInfo('123', isArchived: true);
        const parcelInfo = ParcelInfo(trackInfo: trackInfo);
        when(
          () => mockTrackNumberRepo.updateTrack(
            trackInfo.copyWith(isArchived: false),
          ),
        ).thenAnswer(
          (_) async => StorageResult.empty,
        );
        await cubit.moveToActive(parcelInfo);
        verify(
          () => mockTrackNumberRepo.updateTrack(
            trackInfo.copyWith(isArchived: false),
          ),
        ).called(1);
      },
      expect: () => [
        const DetailsActionsState.movingToActive(),
        const DetailsActionsState.moveToActiveSuccess(),
      ],
    );

    blocTest(
      'Refresh',
      build: () => cubit,
      act: (DetailsActionsCubit cubit) async {
        const trackNumber = '123';
        const trackInfo = TrackNumberInfo(trackNumber);
        const parcelInfo = ParcelInfo(trackInfo: trackInfo);
        const trackNumberServiceList = [
          TrackNumberService(
            trackNumber: trackNumber,
            serviceType: PostalServiceType.ups,
          ),
        ];
        when(
          () => mockTrackNumberRepo.getTrackNumberServices(trackNumber),
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
        await cubit.refresh(parcelInfo);

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
        await cubit.refresh(parcelInfo);

        when(
          () => mockTrackingScheduler.enqueueOneshot([trackNumber]),
        ).thenAnswer(
          (_) async => const [
            EnqueueOneshotResult.success(
              trackNumber: trackNumber,
            )
          ],
        );
        await cubit.refresh(parcelInfo);
      },
      expect: () => [
        const DetailsActionsState.refreshing(),
        const DetailsActionsState.refreshFreqLimited(
          remainingTime: Duration(minutes: 10),
        ),
        const DetailsActionsState.refreshing(),
        const DetailsActionsState.refreshFailed(
          error: StorageError.database(),
        ),
        const DetailsActionsState.refreshing(),
        const DetailsActionsState.refreshSuccess(),
      ],
    );

    blocTest(
      'Copy track number',
      build: () => cubit,
      act: (DetailsActionsCubit cubit) async {
        const trackInfo = TrackNumberInfo('123');
        const parcelInfo = ParcelInfo(trackInfo: trackInfo);
        cubit.copyTrackNumber(parcelInfo);
      },
      expect: () => [
        const DetailsActionsState.copyingTrack(),
        const DetailsActionsState.copyTrackSuccess(trackNumber: '123'),
      ],
    );

    blocTest(
      'Build share string',
      build: () => cubit,
      act: (DetailsActionsCubit cubit) async {
        cubit.buildShareString(
          const ParcelInfo(
            trackInfo: TrackNumberInfo('123'),
          ),
        );
        cubit.buildShareString(
          const ParcelInfo(
            trackInfo: TrackNumberInfo('123'),
          ),
        );
        cubit.buildShareString(
          const ParcelInfo(
            trackInfo: TrackNumberInfo('123', description: 'Test'),
          ),
        );
      },
      expect: () => [
        const DetailsActionsState.sharingString(),
        const DetailsActionsState.shareStringSuccess(text: '123'),
        const DetailsActionsState.sharingString(),
        const DetailsActionsState.shareStringSuccess(text: '123'),
        const DetailsActionsState.sharingString(),
        const DetailsActionsState.shareStringSuccess(text: 'Test: 123'),
      ],
    );

    blocTest(
      'Mark as read',
      build: () => cubit,
      act: (DetailsActionsCubit cubit) async {
        when(
          () => mockTrackingRepo.updateTrackingInfo(any()),
        ).thenAnswer(
          (_) async => StorageResult.empty,
        );

        var info = ParcelInfo(
          trackInfo: const TrackNumberInfo('123'),
          trackingHistory: [
            TrackingHistoryEntry(
              trackingInfo: TrackingInfo(
                id: const TrackingId('1'),
                trackNumber: '123',
                status: TrackingStatus.complete,
                hasNewInfo: true,
                hasNonRetryableError: false,
                invalidTrackNumber: false,
                dateTime: DateTime.now(),
              ),
              responseList: [],
            ),
          ],
        );
        await cubit.markAsRead(info);
        verify(
          () => mockTrackingRepo.updateTrackingInfo(
            info.trackingHistory.first.trackingInfo.copyWith(hasNewInfo: false),
          ),
        ).called(1);

        info = ParcelInfo(
          trackInfo: const TrackNumberInfo('123'),
          trackingHistory: [
            TrackingHistoryEntry(
              trackingInfo: TrackingInfo(
                id: const TrackingId('1'),
                trackNumber: '123',
                status: TrackingStatus.complete,
                hasNewInfo: false,
                hasNonRetryableError: false,
                invalidTrackNumber: false,
                dateTime: DateTime.now(),
              ),
              responseList: [],
            ),
          ],
        );
        await cubit.markAsRead(info);
        verifyNever(() => mockTrackingRepo.updateTrackingInfo(any()));

        info = const ParcelInfo(
          trackInfo: TrackNumberInfo('123'),
        );
        await cubit.markAsRead(info);
        verifyNever(() => mockTrackingRepo.updateTrackingInfo(any()));
      },
      expect: () => [
        const DetailsActionsState.markingAsRead(),
        const DetailsActionsState.markAsReadSuccess(),
        const DetailsActionsState.markingAsRead(),
        const DetailsActionsState.markAsReadSuccess(),
      ],
    );

    blocTest(
      'Activate tracking',
      build: () => cubit,
      act: (DetailsActionsCubit cubit) async {
        const trackInfo = TrackNumberInfo('123');
        final parcelInfo = ParcelInfo(
          trackInfo: trackInfo,
          trackServices: [
            TrackNumberService(
              trackNumber: trackInfo.trackNumber,
              serviceType: PostalServiceType.ups,
              isActive: false,
            ),
          ],
        );
        final expectedTrackServices = [
          TrackNumberService(
            trackNumber: trackInfo.trackNumber,
            serviceType: PostalServiceType.ups,
          ),
        ];
        when(
          () => mockTrackNumberRepo
              .updateTrackNumberServices(expectedTrackServices),
        ).thenAnswer(
          (_) async => StorageResult.empty,
        );
        await cubit.activateTracking(parcelInfo);
        verify(
          () => mockTrackNumberRepo
              .updateTrackNumberServices(expectedTrackServices),
        ).called(1);
      },
      expect: () => [
        const DetailsActionsState.activating(),
        const DetailsActionsState.activateSuccess(),
      ],
    );
  });
}
