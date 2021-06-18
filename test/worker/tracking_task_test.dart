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
import 'package:libretrack/core/date_time_provider.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/model/parser.dart';
import 'package:libretrack/core/model/tracking_service.dart';
import 'package:libretrack/core/model/type/locale.dart';
import 'package:libretrack/core/storage/service_repository.dart';
import 'package:libretrack/core/storage/shipment_repository.dart';
import 'package:libretrack/core/storage/storage_result.dart';
import 'package:libretrack/core/tracking_id_generator.dart';
import 'package:libretrack/core/worker/tracking_task.dart';
import 'package:libretrack/core/transaction_id_generator.dart';
import 'package:mocktail/mocktail.dart';
import 'package:quiver/async.dart' as async;

import '../mock/mock.dart';

void main() {
  group('Tracking task |', () {
    const authData = AuthData({
      'login': 'foo',
      'password': 'bar',
    });
    const service = TrackingServiceInfo(
      type: TrackingServiceType.ups,
    );

    late TrackingService mockTrackingService;
    late ServiceRepository mockServiceRepo;
    late ShipmentRepository mockShipmentRepo;
    late TransactionIdGenerator mockTransactionIdGenerator;
    late TrackingIdGenerator mockTrackingIdGenerator;
    late DateTimeProvider mockDateTimeProvider;
    late TrackingTask task;

    setUpAll(() {
      registerFallbackValue<Iterable<TrackingRequest>>(
        FakeIterable<TrackingRequest>(),
      );
      mockServiceRepo = MockServiceRepository();
      mockShipmentRepo = MockShipmentRepository();
      mockTransactionIdGenerator = MockTransactionIdGenerator();
      mockTrackingIdGenerator = MockTrackingIdGenerator();
      mockTrackingService = MockTrackingService();
      mockDateTimeProvider = MockDateTimeProvider();
      task = TrackingTask(
        trackingService: mockTrackingService,
        serviceRepo: mockServiceRepo,
        shipmentRepo: mockShipmentRepo,
        transactionIdGenerator: mockTransactionIdGenerator,
        trackingIdGenerator: mockTrackingIdGenerator,
        dateTimeProvider: mockDateTimeProvider,
      );
    });

    setUp(() {
      when(
        () => mockServiceRepo.getHighPriorityService(PostalServiceType.ups),
      ).thenAnswer((_) async => const StorageResult(service));
      when(
        () => mockServiceRepo.getAuthDataByType(service.type),
      ).thenAnswer((_) async => const StorageResult(authData));
    });

    test('Success result', () async {
      const trackList = [
        TrackNumberInfo('1'),
        TrackNumberInfo('2'),
        TrackNumberInfo('3'),
      ];
      final trackServices = trackList
          .map(
            (track) => TrackNumberService(
              trackNumber: track.trackNumber,
              serviceType: PostalServiceType.ups,
            ),
          )
          .toList();
      final expectedRequestList = trackServices.map(
        (trackService) => TrackingRequest(
          id: TransactionId(trackService.trackNumber),
          trackService: trackService,
          serviceInfo: service,
          authData: authData,
        ),
      );
      final expectedTrackingResult = expectedRequestList
          .map(
            (request) => TrackingServiceResultData(
              request: request,
              info: ShipmentInfo.from(
                trackNumber: request.trackService.trackNumber,
                serviceType: request.trackService.serviceType,
              ),
              activity: [
                ShipmentActivityInfo.from(
                  trackNumber: request.trackService.trackNumber,
                  serviceType: request.trackService.serviceType,
                  statusType: ShipmentStatusType.infoReceived,
                )
              ],
            ),
          )
          .toList();
      final expectedTaskResult = expectedTrackingResult
          .map(
            (result) => TrackingTaskResult(
              trackService: result.request.trackService,
              info: result.info,
              activity: result.activity,
            ),
          )
          .toList();
      final dateTime = DateTime(2021);
      final expectedTaskStates = [
        TrackingTaskState.loading(
          trackingInfoList: expectedRequestList
              .map(
                (request) => TrackingInfo(
                  id: TrackingId(request.id.toString()),
                  trackNumber: request.trackService.trackNumber,
                  dateTime: dateTime,
                  status: TrackingStatus.inProgress,
                  hasNewInfo: false,
                  hasNonRetryableError: false,
                  invalidTrackNumber: false,
                ),
              )
              .toList(),
        ),
        TrackingTaskState.loaded(
          result: expectedTaskResult,
          trackingInfoList: expectedRequestList
              .map(
                (request) => TrackingInfo(
                  id: TrackingId(request.id.toString()),
                  trackNumber: request.trackService.trackNumber,
                  dateTime: dateTime,
                  status: TrackingStatus.complete,
                  hasNewInfo: true,
                  hasNonRetryableError: false,
                  invalidTrackNumber: false,
                ),
              )
              .toList(),
          responseInfoList: expectedRequestList
              .map(
                (request) => TrackingResponseInfo.from(
                  trackingId: TrackingId(request.id.toString()),
                  trackNumber: request.trackService.trackNumber,
                  dateTime: dateTime,
                  serviceType: request.trackService.serviceType,
                  status: TrackingResponseStatus.success,
                ),
              )
              .toList(),
        ),
      ];

      final requestIter = expectedRequestList.iterator;
      when(() => mockTransactionIdGenerator.randomUnique()).thenAnswer((_) {
        if (requestIter.moveNext()) {
          return requestIter.current.id;
        }
        throw "Cannot be more than ${trackList.length} ID's";
      });
      final trackingIdIter = trackList
          .map(
            (track) => TrackingId(track.trackNumber),
          )
          .iterator;
      when(() => mockTrackingIdGenerator.randomUnique()).thenAnswer((_) {
        if (trackingIdIter.moveNext()) {
          return trackingIdIter.current;
        }
        throw "Cannot be more than ${trackList.length} ID's";
      });
      when(() => mockTrackingService.fetch(expectedRequestList))
          .thenAnswer((_) async => expectedTrackingResult);
      when(() => mockDateTimeProvider.now()).thenReturn(dateTime);
      when(
        () => mockShipmentRepo.getActivitiesByTrack(any()),
      ).thenAnswer((_) async => const StorageResult([]));

      await for (final entry in async.enumerate(
        task.run(Set.from(trackServices)),
      )) {
        expect(
          entry.value,
          expectedTaskStates[entry.index],
        );
      }
    });

    test('Fail result', () async {
      const track = TrackNumberInfo('1');
      final trackService = TrackNumberService(
        trackNumber: track.trackNumber,
        serviceType: PostalServiceType.ups,
      );
      final expectedRequest = TrackingRequest(
        id: TransactionId(track.trackNumber),
        trackService: trackService,
        serviceInfo: service,
        authData: authData,
      );
      final expectedTrackingResult = TrackingServiceResult.error(
        request: expectedRequest,
        error: const TrackingServiceError.parse(
          ParseError.serviceTemporary(
            code: '1',
            message: 'Unavailable service',
          ),
        ),
        isRetryable: true,
      );
      final dateTime = DateTime(2021);
      final expectedTaskStates = [
        TrackingTaskState.loading(
          trackingInfoList: [
            TrackingInfo(
              id: TrackingId(expectedRequest.id.toString()),
              trackNumber: expectedRequest.trackService.trackNumber,
              status: TrackingStatus.inProgress,
              hasNewInfo: false,
              hasNonRetryableError: false,
              invalidTrackNumber: false,
              dateTime: dateTime,
            ),
          ],
        ),
        TrackingTaskState.loaded(
          result: [],
          trackingInfoList: [
            TrackingInfo(
              id: TrackingId(expectedRequest.id.toString()),
              trackNumber: expectedRequest.trackService.trackNumber,
              status: TrackingStatus.complete,
              hasNewInfo: true,
              hasNonRetryableError: false,
              invalidTrackNumber: false,
              dateTime: dateTime,
            ),
          ],
          responseInfoList: [
            TrackingResponseInfo.from(
              trackingId: TrackingId(expectedRequest.id.toString()),
              trackNumber: expectedRequest.trackService.trackNumber,
              dateTime: dateTime,
              serviceType: expectedRequest.trackService.serviceType,
              status: TrackingResponseStatus.fail,
              error: const TrackingError(
                type: TrackingErrorType.service,
                isRetryable: true,
                code: '1',
                message: 'Unavailable service',
              ),
            ),
          ],
        ),
      ];

      when(() => mockTransactionIdGenerator.randomUnique())
          .thenReturn(expectedRequest.id);
      when(() => mockTrackingIdGenerator.randomUnique())
          .thenReturn(TrackingId(track.trackNumber));
      when(() => mockTrackingService.fetch([expectedRequest]))
          .thenAnswer((_) async => [expectedTrackingResult]);
      when(() => mockDateTimeProvider.now()).thenReturn(dateTime);

      await for (final entry in async.enumerate(task.run({trackService}))) {
        expect(
          entry.value,
          expectedTaskStates[entry.index],
        );
      }
    });

    test('No info result', () async {
      const track = TrackNumberInfo('1');
      final trackService = TrackNumberService(
        trackNumber: track.trackNumber,
        serviceType: PostalServiceType.ups,
      );
      final expectedRequest = TrackingRequest(
        id: TransactionId(track.trackNumber),
        trackService: trackService,
        serviceInfo: service,
        authData: authData,
      );
      final expectedTrackingResult = TrackingServiceResult.noInfo(
        expectedRequest,
      );
      final dateTime = DateTime(2021);
      final expectedTaskStates = [
        TrackingTaskState.loading(
          trackingInfoList: [
            TrackingInfo(
              id: TrackingId(expectedRequest.id.toString()),
              trackNumber: expectedRequest.trackService.trackNumber,
              status: TrackingStatus.inProgress,
              hasNewInfo: false,
              hasNonRetryableError: false,
              invalidTrackNumber: false,
              dateTime: dateTime,
            ),
          ],
        ),
        TrackingTaskState.loaded(
          result: [],
          trackingInfoList: [
            TrackingInfo(
              id: TrackingId(expectedRequest.id.toString()),
              trackNumber: expectedRequest.trackService.trackNumber,
              status: TrackingStatus.complete,
              hasNewInfo: false,
              hasNonRetryableError: false,
              invalidTrackNumber: false,
              dateTime: dateTime,
            ),
          ],
          responseInfoList: [
            TrackingResponseInfo.from(
              trackingId: TrackingId(expectedRequest.id.toString()),
              trackNumber: expectedRequest.trackService.trackNumber,
              dateTime: dateTime,
              serviceType: expectedRequest.trackService.serviceType,
              status: TrackingResponseStatus.noInfo,
            ),
          ],
        ),
      ];

      when(() => mockTransactionIdGenerator.randomUnique())
          .thenReturn(expectedRequest.id);
      when(() => mockTrackingIdGenerator.randomUnique())
          .thenReturn(TrackingId(track.trackNumber));
      when(() => mockTrackingService.fetch([expectedRequest]))
          .thenAnswer((_) async => [expectedTrackingResult]);
      when(() => mockDateTimeProvider.now()).thenReturn(dateTime);

      await for (final entry in async.enumerate(task.run({trackService}))) {
        expect(
          entry.value,
          expectedTaskStates[entry.index],
        );
      }
    });

    test('Non retryable error', () async {
      const track = TrackNumberInfo('1');
      final trackService = TrackNumberService(
        trackNumber: track.trackNumber,
        serviceType: PostalServiceType.ups,
        isActive: false,
      );
      final expectedRequest = TrackingRequest(
        id: TransactionId(track.trackNumber),
        trackService: trackService,
        serviceInfo: service,
        authData: authData,
      );
      final expectedTrackingResult = TrackingServiceResult.error(
        request: expectedRequest,
        error: const TrackingServiceError.parse(
          ParseError.badRequest(
            code: '1',
            message: 'Bad request',
          ),
        ),
        isRetryable: false,
      );
      final dateTime = DateTime(2021);
      final expectedTaskStates = [
        TrackingTaskState.loading(
          trackingInfoList: [
            TrackingInfo(
              id: TrackingId(expectedRequest.id.toString()),
              trackNumber: expectedRequest.trackService.trackNumber,
              dateTime: dateTime,
              status: TrackingStatus.inProgress,
              hasNewInfo: false,
              hasNonRetryableError: false,
              invalidTrackNumber: false,
            ),
          ],
        ),
        TrackingTaskState.loaded(
          result: [],
          trackingInfoList: [
            TrackingInfo(
              id: TrackingId(expectedRequest.id.toString()),
              trackNumber: expectedRequest.trackService.trackNumber,
              dateTime: dateTime,
              status: TrackingStatus.complete,
              hasNewInfo: true,
              hasNonRetryableError: true,
              invalidTrackNumber: false,
            ),
          ],
          responseInfoList: [
            TrackingResponseInfo.from(
              trackingId: TrackingId(expectedRequest.id.toString()),
              trackNumber: expectedRequest.trackService.trackNumber,
              dateTime: dateTime,
              serviceType: expectedRequest.trackService.serviceType,
              status: TrackingResponseStatus.fail,
              error: const TrackingError(
                type: TrackingErrorType.unknown,
                isRetryable: false,
                code: '1',
                message: 'Bad request',
              ),
            ),
          ],
          disabledServices: [trackService],
        ),
      ];

      when(() => mockTransactionIdGenerator.randomUnique())
          .thenReturn(expectedRequest.id);
      when(() => mockTrackingIdGenerator.randomUnique())
          .thenReturn(TrackingId(track.trackNumber));
      when(() => mockTrackingService.fetch([expectedRequest]))
          .thenAnswer((_) async => [expectedTrackingResult]);
      when(() => mockDateTimeProvider.now()).thenReturn(dateTime);

      await for (final entry in async.enumerate(task.run({trackService}))) {
        expect(
          entry.value,
          expectedTaskStates[entry.index],
        );
      }
    });

    test('Unsupported service (invalid tracking number)', () async {
      const track = TrackNumberInfo('1');
      final trackService = TrackNumberService(
        trackNumber: track.trackNumber,
        serviceType: PostalServiceType.ups,
        isActive: false,
      );
      final expectedRequest = TrackingRequest(
        id: TransactionId(track.trackNumber),
        trackService: trackService,
        serviceInfo: service,
        authData: authData,
      );
      final expectedTrackingResult = TrackingServiceResult.error(
        request: expectedRequest,
        error: const TrackingServiceError.parse(
          ParseError.invalidTrackNumber(),
        ),
        isRetryable: false,
      );
      final dateTime = DateTime(2021);
      final expectedTaskStates = [
        TrackingTaskState.loading(
          trackingInfoList: [
            TrackingInfo(
              id: TrackingId(expectedRequest.id.toString()),
              trackNumber: expectedRequest.trackService.trackNumber,
              dateTime: dateTime,
              status: TrackingStatus.inProgress,
              hasNewInfo: false,
              hasNonRetryableError: false,
              invalidTrackNumber: false,
            ),
          ],
        ),
        TrackingTaskState.loaded(
          result: [],
          trackingInfoList: [
            TrackingInfo(
              id: TrackingId(expectedRequest.id.toString()),
              trackNumber: expectedRequest.trackService.trackNumber,
              dateTime: dateTime,
              status: TrackingStatus.complete,
              hasNewInfo: true,
              hasNonRetryableError: true,
              invalidTrackNumber: true,
            ),
          ],
          responseInfoList: [
            TrackingResponseInfo.from(
              trackingId: TrackingId(expectedRequest.id.toString()),
              trackNumber: expectedRequest.trackService.trackNumber,
              dateTime: dateTime,
              serviceType: expectedRequest.trackService.serviceType,
              status: TrackingResponseStatus.fail,
              error: const TrackingError(
                type: TrackingErrorType.invalidTrackNumber,
                isRetryable: false,
              ),
            ),
          ],
          unsupportedServices: [trackService],
          disabledServices: [trackService],
        ),
      ];

      when(() => mockTransactionIdGenerator.randomUnique())
          .thenReturn(expectedRequest.id);
      when(() => mockTrackingIdGenerator.randomUnique())
          .thenReturn(TrackingId(track.trackNumber));
      when(() => mockTrackingService.fetch([expectedRequest]))
          .thenAnswer((_) async => [expectedTrackingResult]);
      when(() => mockDateTimeProvider.now()).thenReturn(dateTime);

      await for (final entry in async.enumerate(task.run({trackService}))) {
        expect(
          entry.value,
          expectedTaskStates[entry.index],
        );
      }
    });

    test('Missing service', () async {
      const track = TrackNumberInfo('1');
      final trackService = TrackNumberService(
        trackNumber: track.trackNumber,
        serviceType: PostalServiceType.ups,
      );
      final dateTime = DateTime(2021);
      final expectedTaskStates = [
        TrackingTaskState.loading(
          trackingInfoList: [
            TrackingInfo(
              id: const TrackingId('1'),
              trackNumber: trackService.trackNumber,
              dateTime: dateTime,
              status: TrackingStatus.inProgress,
              hasNewInfo: false,
              hasNonRetryableError: false,
              invalidTrackNumber: false,
            ),
          ],
        ),
        TrackingTaskState.loaded(
          result: [],
          trackingInfoList: [
            TrackingInfo(
              id: const TrackingId('1'),
              trackNumber: trackService.trackNumber,
              dateTime: dateTime,
              status: TrackingStatus.complete,
              hasNewInfo: false,
              hasNonRetryableError: false,
              invalidTrackNumber: false,
            ),
          ],
          responseInfoList: [
            TrackingResponseInfo.from(
              trackingId: const TrackingId('1'),
              trackNumber: trackService.trackNumber,
              dateTime: dateTime,
              serviceType: trackService.serviceType,
              status: TrackingResponseStatus.fail,
              error: const TrackingError(
                type: TrackingErrorType.missingTrackingService,
                isRetryable: true,
              ),
            ),
          ],
        ),
      ];

      when(() => mockTransactionIdGenerator.randomUnique()).thenAnswer(
        (_) => const TransactionId('1'),
      );
      when(() => mockTrackingIdGenerator.randomUnique()).thenAnswer(
        (_) => const TrackingId('1'),
      );
      when(() => mockTrackingService.fetch(any())).thenAnswer(
        (_) async => [],
      );
      when(() => mockDateTimeProvider.now()).thenReturn(dateTime);
      when(
        () => mockServiceRepo.getHighPriorityService(PostalServiceType.ups),
      ).thenAnswer((_) async => const StorageResult(null));

      await for (final entry in async.enumerate(task.run({trackService}))) {
        expect(
          entry.value,
          expectedTaskStates[entry.index],
        );
      }
    });

    test('Missing auth data', () async {
      const track = TrackNumberInfo('1');
      const service = TrackingServiceInfo(
        type: TrackingServiceType.ups,
      );
      final trackService = TrackNumberService(
        trackNumber: track.trackNumber,
        serviceType: PostalServiceType.ups,
      );
      final dateTime = DateTime(2021);
      final expectedTaskStates = [
        TrackingTaskState.loading(
          trackingInfoList: [
            TrackingInfo(
              id: const TrackingId('1'),
              trackNumber: trackService.trackNumber,
              dateTime: dateTime,
              status: TrackingStatus.inProgress,
              hasNewInfo: false,
              hasNonRetryableError: false,
              invalidTrackNumber: false,
            ),
          ],
        ),
        TrackingTaskState.loaded(
          result: [],
          trackingInfoList: [
            TrackingInfo(
              id: const TrackingId('1'),
              trackNumber: trackService.trackNumber,
              dateTime: dateTime,
              status: TrackingStatus.complete,
              hasNewInfo: false,
              hasNonRetryableError: false,
              invalidTrackNumber: false,
            ),
          ],
          responseInfoList: [
            TrackingResponseInfo.from(
              trackingId: const TrackingId('1'),
              trackNumber: trackService.trackNumber,
              dateTime: dateTime,
              serviceType: trackService.serviceType,
              status: TrackingResponseStatus.fail,
              error: const TrackingError(
                type: TrackingErrorType.missingAuthData,
                isRetryable: true,
              ),
            ),
          ],
        ),
      ];

      when(() => mockTransactionIdGenerator.randomUnique()).thenAnswer(
        (_) => const TransactionId('1'),
      );
      when(() => mockTrackingIdGenerator.randomUnique()).thenAnswer(
        (_) => const TrackingId('1'),
      );
      when(() => mockTrackingService.fetch(any())).thenAnswer(
        (_) async => [],
      );
      when(() => mockDateTimeProvider.now()).thenReturn(dateTime);
      when(
        () => mockServiceRepo.getAuthDataByType(service.type),
      ).thenAnswer((_) async => const StorageResult(null));

      await for (final entry in async.enumerate(task.run({trackService}))) {
        expect(
          entry.value,
          expectedTaskStates[entry.index],
        );
      }
    });

    test('No new info', () async {
      const track = TrackNumberInfo('1');
      const service = TrackingServiceInfo(
        type: TrackingServiceType.ups,
      );
      final trackService = TrackNumberService(
        trackNumber: track.trackNumber,
        serviceType: PostalServiceType.ups,
      );
      final expectedRequest = TrackingRequest(
        id: TransactionId(track.trackNumber),
        trackService: trackService,
        serviceInfo: service,
        authData: const AuthData({
          'login': 'foo',
          'password': 'bar',
        }),
      );
      final expectedActivity = ShipmentActivityInfo.from(
        trackNumber: expectedRequest.trackService.trackNumber,
        serviceType: expectedRequest.trackService.serviceType,
        statusType: ShipmentStatusType.infoReceived,
      );
      final expectedTrackingResult = TrackingServiceResultData(
        request: expectedRequest,
        info: ShipmentInfo.from(
          trackNumber: expectedRequest.trackService.trackNumber,
          serviceType: expectedRequest.trackService.serviceType,
        ),
        activity: [expectedActivity],
      );
      final expectedTaskResult = TrackingTaskResult(
        trackService: expectedTrackingResult.request.trackService,
        info: expectedTrackingResult.info,
        activity: expectedTrackingResult.activity,
      );
      final dateTime = DateTime(2021);
      final expectedTaskStates = [
        TrackingTaskState.loading(
          trackingInfoList: [
            TrackingInfo(
              id: TrackingId(expectedRequest.id.toString()),
              trackNumber: expectedRequest.trackService.trackNumber,
              status: TrackingStatus.inProgress,
              hasNewInfo: false,
              hasNonRetryableError: false,
              invalidTrackNumber: false,
              dateTime: dateTime,
            ),
          ],
        ),
        TrackingTaskState.loaded(
          result: [expectedTaskResult],
          trackingInfoList: [
            TrackingInfo(
              id: TrackingId(expectedRequest.id.toString()),
              trackNumber: expectedRequest.trackService.trackNumber,
              status: TrackingStatus.complete,
              hasNewInfo: false,
              hasNonRetryableError: false,
              invalidTrackNumber: false,
              dateTime: dateTime,
            ),
          ],
          responseInfoList: [
            TrackingResponseInfo.from(
              trackingId: TrackingId(expectedRequest.id.toString()),
              trackNumber: expectedRequest.trackService.trackNumber,
              dateTime: dateTime,
              serviceType: expectedRequest.trackService.serviceType,
              status: TrackingResponseStatus.success,
            ),
          ],
        ),
      ];

      when(() => mockTransactionIdGenerator.randomUnique())
          .thenReturn(expectedRequest.id);
      when(() => mockTrackingIdGenerator.randomUnique())
          .thenReturn(TrackingId(track.trackNumber));
      when(() => mockTrackingService.fetch([expectedRequest]))
          .thenAnswer((_) async => [expectedTrackingResult]);
      when(() => mockDateTimeProvider.now()).thenReturn(dateTime);
      when(
        () => mockShipmentRepo.getActivitiesByTrack(track.trackNumber),
      ).thenAnswer((_) async => StorageResult([expectedActivity]));

      await for (final entry in async.enumerate(task.run({trackService}))) {
        expect(
          entry.value,
          expectedTaskStates[entry.index],
        );
      }
    });

    test('Different language code', () async {
      const trackInfo = TrackNumberInfo('1');
      const service = TrackingServiceInfo(
        type: TrackingServiceType.ups,
      );
      final trackService = TrackNumberService(
        trackNumber: trackInfo.trackNumber,
        serviceType: PostalServiceType.ups,
      );
      final expectedRequest = TrackingRequest(
        id: TransactionId(trackService.trackNumber),
        trackService: trackService,
        serviceInfo: service,
        authData: const AuthData({
          'login': 'foo',
          'password': 'bar',
        }),
        locale: const Locale('ru', 'RU'),
      );
      final expectedTrackingResult = TrackingServiceResultData(
        request: expectedRequest,
        info: ShipmentInfo.from(
          trackNumber: expectedRequest.trackService.trackNumber,
          serviceType: expectedRequest.trackService.serviceType,
        ),
        activity: [
          ShipmentActivityInfo.from(
            trackNumber: expectedRequest.trackService.trackNumber,
            serviceType: expectedRequest.trackService.serviceType,
            statusType: ShipmentStatusType.infoReceived,
          )
        ],
      );
      final expectedTaskResult = TrackingTaskResult(
        trackService: expectedTrackingResult.request.trackService,
        info: expectedTrackingResult.info,
        activity: expectedTrackingResult.activity,
      );
      final dateTime = DateTime(2021);
      final expectedTaskStates = [
        TrackingTaskState.loading(
          trackingInfoList: [
            TrackingInfo(
              id: TrackingId(expectedRequest.id.toString()),
              trackNumber: expectedRequest.trackService.trackNumber,
              dateTime: dateTime,
              status: TrackingStatus.inProgress,
              hasNewInfo: false,
              hasNonRetryableError: false,
              invalidTrackNumber: false,
            ),
          ],
        ),
        TrackingTaskState.loaded(
          result: [expectedTaskResult],
          trackingInfoList: [
            TrackingInfo(
              id: TrackingId(expectedRequest.id.toString()),
              trackNumber: expectedRequest.trackService.trackNumber,
              dateTime: dateTime,
              status: TrackingStatus.complete,
              hasNewInfo: true,
              hasNonRetryableError: false,
              invalidTrackNumber: false,
            ),
          ],
          responseInfoList: [
            TrackingResponseInfo.from(
              trackingId: TrackingId(expectedRequest.id.toString()),
              trackNumber: expectedRequest.trackService.trackNumber,
              dateTime: dateTime,
              serviceType: expectedRequest.trackService.serviceType,
              status: TrackingResponseStatus.success,
            ),
          ],
        ),
      ];

      when(() => mockTransactionIdGenerator.randomUnique()).thenAnswer((_) {
        return expectedRequest.id;
      });
      when(() => mockTrackingIdGenerator.randomUnique()).thenAnswer((_) {
        return TrackingId(trackInfo.trackNumber);
      });
      when(() => mockTrackingService.fetch([expectedRequest]))
          .thenAnswer((_) async => [expectedTrackingResult]);
      when(() => mockDateTimeProvider.now()).thenReturn(dateTime);
      when(
        () => mockShipmentRepo.getActivitiesByTrack(any()),
      ).thenAnswer((_) async => const StorageResult([]));

      await for (final entry in async.enumerate(
        task.run({trackService}),
      )) {
        expect(
          entry.value,
          expectedTaskStates[entry.index],
        );
      }
    });

    test('Delivered parcel', () async {
      const track = TrackNumberInfo('1');
      const service = TrackingServiceInfo(
        type: TrackingServiceType.ups,
      );
      final trackService = TrackNumberService(
        trackNumber: track.trackNumber,
        serviceType: PostalServiceType.ups,
        isActive: false,
      );
      final expectedRequest = TrackingRequest(
        id: TransactionId(track.trackNumber),
        trackService: trackService,
        serviceInfo: service,
        authData: const AuthData({
          'login': 'foo',
          'password': 'bar',
        }),
      );
      final shipmentInfo = ShipmentInfo.from(
        trackNumber: track.trackNumber,
        serviceType: trackService.serviceType,
      );
      final activity = [
        ShipmentActivityInfo.from(
          trackNumber: track.trackNumber,
          serviceType: trackService.serviceType,
          statusType: ShipmentStatusType.delivered,
        ),
        ShipmentActivityInfo.from(
          trackNumber: track.trackNumber,
          serviceType: trackService.serviceType,
          statusType: ShipmentStatusType.infoReceived,
        ),
      ];
      final expectedTrackingResult = TrackingServiceResult(
        request: expectedRequest,
        info: shipmentInfo,
        activity: activity,
      );
      final dateTime = DateTime(2021);
      final expectedTaskStates = [
        TrackingTaskState.loading(
          trackingInfoList: [
            TrackingInfo(
              id: TrackingId(expectedRequest.id.toString()),
              trackNumber: expectedRequest.trackService.trackNumber,
              dateTime: dateTime,
              status: TrackingStatus.inProgress,
              hasNewInfo: false,
              hasNonRetryableError: false,
              invalidTrackNumber: false,
            ),
          ],
        ),
        TrackingTaskState.loaded(
          result: [
            TrackingTaskResult(
              trackService: trackService,
              info: shipmentInfo,
              activity: activity,
            ),
          ],
          trackingInfoList: [
            TrackingInfo(
              id: TrackingId(expectedRequest.id.toString()),
              trackNumber: expectedRequest.trackService.trackNumber,
              dateTime: dateTime,
              status: TrackingStatus.complete,
              hasNewInfo: true,
              hasNonRetryableError: false,
              invalidTrackNumber: false,
            ),
          ],
          responseInfoList: [
            TrackingResponseInfo.from(
              trackingId: TrackingId(expectedRequest.id.toString()),
              trackNumber: expectedRequest.trackService.trackNumber,
              dateTime: dateTime,
              serviceType: expectedRequest.trackService.serviceType,
              status: TrackingResponseStatus.success,
            ),
          ],
          disabledServices: [trackService],
        ),
      ];

      when(() => mockTransactionIdGenerator.randomUnique())
          .thenReturn(expectedRequest.id);
      when(() => mockTrackingIdGenerator.randomUnique())
          .thenReturn(TrackingId(track.trackNumber));
      when(() => mockTrackingService.fetch([expectedRequest]))
          .thenAnswer((_) async => [expectedTrackingResult]);
      when(() => mockDateTimeProvider.now()).thenReturn(dateTime);
      when(
        () => mockShipmentRepo.getActivitiesByTrack(any()),
      ).thenAnswer((_) async => const StorageResult([]));

      await for (final entry in async.enumerate(task.run({trackService}))) {
        expect(
          entry.value,
          expectedTaskStates[entry.index],
        );
      }
    });
  });
}
