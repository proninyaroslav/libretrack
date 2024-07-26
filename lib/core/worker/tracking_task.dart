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
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:libretrack/core/date_time_provider.dart';
import 'package:libretrack/core/storage/shipment_repository.dart';
import 'package:libretrack/logger.dart';

import '../entity/entity.dart';
import '../model/fetcher.dart';
import '../model/parser.dart';
import '../model/tracking_service.dart';
import '../model/type/type.dart';
import '../storage/service_repository.dart';
import '../tracking_id_generator.dart';
import '../transaction_id_generator.dart';

part 'tracking_task.freezed.dart';

@freezed
class TrackingTaskState with _$TrackingTaskState {
  const factory TrackingTaskState.loading({
    required List<TrackingInfo> trackingInfoList,
  }) = TrackingTaskStateLoading;

  const factory TrackingTaskState.loaded({
    required List<TrackingTaskResult> result,
    required List<TrackingInfo> trackingInfoList,
    required List<TrackingResponseInfo> responseInfoList,

    /// Services that returned the "invalid tracking number" status
    List<TrackNumberService>? unsupportedServices,

    /// Services with non-temporary, hard error, or have a final status
    /// (for example, the parcel is delivered).
    /// `isActive` fields of items are set to `false`
    List<TrackNumberService>? disabledServices,
  }) = TrackingTaskStateLoaded;
}

@freezed
class TrackingTaskResult with _$TrackingTaskResult {
  const factory TrackingTaskResult({
    required TrackNumberService trackService,
    required ShipmentInfo info,
    required List<ShipmentActivityInfo> activity,
    List<String>? alternateTracks,
  }) = _TrackingTaskResult;
}

@freezed
class TrackingTaskParams with _$TrackingTaskParams {
  const factory TrackingTaskParams({
    Locale? locale,
  }) = _TrackingTaskParams;
}

@injectable
class TrackingTask {
  final TrackingService _trackingService;
  final ServiceRepository _serviceRepo;
  final ShipmentRepository _shipmentRepo;
  final TransactionIdGenerator _transactionIdGenerator;
  final TrackingIdGenerator _trackingIdGenerator;
  final DateTimeProvider _dateTimeProvider;

  TrackingTask({
    required TrackingService trackingService,
    required ServiceRepository serviceRepo,
    required ShipmentRepository shipmentRepo,
    required TransactionIdGenerator transactionIdGenerator,
    required TrackingIdGenerator trackingIdGenerator,
    required DateTimeProvider dateTimeProvider,
  })  : _trackingService = trackingService,
        _serviceRepo = serviceRepo,
        _shipmentRepo = shipmentRepo,
        _transactionIdGenerator = transactionIdGenerator,
        _trackingIdGenerator = trackingIdGenerator,
        _dateTimeProvider = dateTimeProvider;

  Stream<TrackingTaskState> run(
    Set<TrackNumberService> infoList, {
    TrackingTaskParams? params,
  }) async* {
    final res = await _buildRequestList(infoList, params: params);

    final initInfo = _buildInitTrackingInfoList(infoList);
    yield TrackingTaskState.loading(
      trackingInfoList: initInfo.values.toList(),
    );
    yield await _buildLoadedState(res, initInfo);
  }

  Future<_BuildRequestResult> _buildRequestList(
    Set<TrackNumberService> infoList, {
    TrackingTaskParams? params,
  }) async {
    final requestList = <TrackingRequest>[];
    final failedRequestList = <_FailedRequest>[];

    for (final trackService in infoList) {
      final TrackingServiceInfo? service = await _serviceRepo
          .getHighPriorityService(trackService.serviceType)
          .then(
            (result) => result.when(
              (service) => service,
              error: (e) {
                e.when(database: (e, stackTrace) {
                  log().e('Unable to get service',
                      error: e, stackTrace: stackTrace);
                });
                return null;
              },
            ),
          );
      if (service == null) {
        failedRequestList.add(
          _FailedRequest(
            id: _transactionIdGenerator.randomUnique(),
            trackService: trackService,
            reason: const _FailedRequestReason.missingService(),
          ),
        );
        continue;
      }
      final AuthData? authData = await _serviceRepo
          .getAuthDataByType(
            service.type,
          )
          .then(
            (result) => result.when(
              (authData) => authData,
              error: (e) {
                e.when(database: (e, stackTrace) {
                  log().e('Unable to get auth data',
                      error: e, stackTrace: stackTrace);
                });
                return null;
              },
            ),
          );
      if (authData == null) {
        failedRequestList.add(
          _FailedRequest(
            id: _transactionIdGenerator.randomUnique(),
            trackService: trackService,
            reason: const _FailedRequestReason.missingAuthData(),
          ),
        );
        continue;
      }
      final request = TrackingRequest(
        id: _transactionIdGenerator.randomUnique(),
        trackService: trackService,
        serviceInfo: service,
        authData: authData,
        locale: params?.locale,
      );
      requestList.add(request);
    }

    return _BuildRequestResult(
      requestList: requestList,
      failedRequestList: failedRequestList,
    );
  }

  Map<String, TrackingInfo> _buildInitTrackingInfoList(
    Set<TrackNumberService> infoList,
  ) {
    final trackingDate = _dateTimeProvider.now();
    final initInfo = <String, TrackingInfo>{};
    for (final info in infoList) {
      final trackNumber = info.trackNumber;
      if (initInfo[trackNumber] == null) {
        initInfo[trackNumber] = TrackingInfo(
          id: _trackingIdGenerator.randomUnique(),
          trackNumber: trackNumber,
          dateTime: trackingDate,
          hasNewInfo: false,
          hasNonRetryableError: false,
          invalidTrackNumber: false,
          status: TrackingStatus.inProgress,
        );
      }
    }
    return initInfo;
  }

  Future<TrackingTaskState> _buildLoadedState(
    _BuildRequestResult res,
    Map<String, TrackingInfo> initInfo,
  ) async {
    final resultList = await _trackingService.fetch(res.requestList);
    final trackingDate = _dateTimeProvider.now();
    final trackingInfoList = <TrackingInfo>[];
    final responseList = <TrackingResponseInfo>[];
    final successResult = <TrackingServiceResultData>[];
    final unsupportedServices = <TrackNumberService>[];
    final disabledServices = <TrackNumberService>[];

    for (final request in res.failedRequestList) {
      final trackNumber = request.trackService.trackNumber;
      final TrackingId trackingId = initInfo[trackNumber]!.id;

      responseList.add(
        _failedRequestToTrackingResponse(
          trackingId,
          trackNumber,
          request,
          trackingDate,
        ),
      );
    }

    final removedServices = <String, Set<TrackNumberService>>{};
    final allServices = <String, Set<TrackNumberService>>{};
    for (final result in resultList) {
      final trackService = result.request.trackService;
      allServices
          .putIfAbsent(trackService.trackNumber, () => {})
          .add(trackService);
      final unsupportedService = _handleUnsupportedService(result);

      if (unsupportedService != null) {
        unsupportedServices.add(unsupportedService);
        removedServices
            .putIfAbsent(unsupportedService.trackNumber, () => {})
            .add(unsupportedService);
      } else {
        result.maybeMap(
          (value) {
            successResult.add(value);
            final trackService = _handleStatusDeliveredService(value.activity);
            if (trackService != null) {
              disabledServices.add(trackService);
            }
          },
          error: (value) {
            final trackService = _handleNonRetryableService(value);
            if (trackService != null) {
              disabledServices.add(trackService);
            }
          },
          orElse: () {},
        );
      }
    }

    final invalidTrackNumber = <TrackingId, bool>{};
    final hasNonRetryableError = <TrackingId, bool>{};
    final hasNewInfo = <TrackingId, bool>{};
    for (final result in resultList) {
      final trackService = result.request.trackService;
      final trackNumber = trackService.trackNumber;

      final allServicesRemoved = removedServices[trackNumber]?.length ==
          allServices[trackNumber]?.length;
      final skip = !allServicesRemoved &&
          (removedServices[trackNumber]?.contains(trackService) ?? false);
      if (skip) {
        continue;
      }

      final trackingId = initInfo[trackNumber]!.id;
      final responseInfo = _resultToTrackingResponseInfo(
        trackingId,
        trackNumber,
        result,
        trackingDate,
      );
      responseList.add(responseInfo);

      hasNonRetryableError[trackingId] = _hasNonRetryableError(
        hasNonRetryableError[trackingId],
        responseInfo,
      );
      invalidTrackNumber[trackingId] = _invalidTrackNumber(
        invalidTrackNumber[trackingId],
        responseInfo,
      );
      hasNewInfo[trackingId] = await _hasNewInfo(
        hasNewInfo[trackingId],
        result,
      );
    }

    for (final info in initInfo.values) {
      trackingInfoList.add(
        TrackingInfo(
          id: info.id,
          trackNumber: info.trackNumber,
          status: TrackingStatus.complete,
          hasNewInfo: hasNewInfo[info.id] ?? false,
          hasNonRetryableError: hasNonRetryableError[info.id] ?? false,
          invalidTrackNumber: invalidTrackNumber[info.id] ?? false,
          dateTime: trackingDate,
        ),
      );
    }

    final result = successResult
        .map(
          (result) => TrackingTaskResult(
            trackService: result.request.trackService,
            info: result.info,
            activity: result.activity,
            alternateTracks: result.alternateTracks,
          ),
        )
        .toList();

    return TrackingTaskState.loaded(
      result: result,
      trackingInfoList: trackingInfoList,
      responseInfoList: responseList,
      unsupportedServices:
          unsupportedServices.isEmpty ? null : unsupportedServices.toList(),
      disabledServices: disabledServices.isEmpty ? null : disabledServices,
    );
  }

  TrackNumberService? _handleUnsupportedService(
    TrackingServiceResult result,
  ) {
    if (result is TrackingResultError) {
      final request = result.request;
      final error = result.error;
      return error.maybeWhen(
        parse: (e) => e.maybeWhen(
          invalidTrackNumber: () => request.trackService,
          orElse: () => null,
        ),
        orElse: () => null,
      );
    }
    return null;
  }

  TrackingResponseInfo _resultToTrackingResponseInfo(
    TrackingId id,
    String trackNumber,
    TrackingServiceResult result,
    DateTime trackingDate,
  ) {
    final serviceType = result.request.trackService.serviceType;
    return result.when(
      (request, info, activity, alternateTracks) => TrackingResponseInfo.from(
        trackingId: id,
        trackNumber: trackNumber,
        dateTime: trackingDate,
        serviceType: serviceType,
        status: TrackingResponseStatus.success,
      ),
      noInfo: (request) => TrackingResponseInfo.from(
        trackingId: id,
        trackNumber: trackNumber,
        dateTime: trackingDate,
        serviceType: serviceType,
        status: TrackingResponseStatus.noInfo,
      ),
      error: (request, error, isRetryable) => TrackingResponseInfo.from(
        trackingId: id,
        trackNumber: trackNumber,
        dateTime: trackingDate,
        serviceType: serviceType,
        status: TrackingResponseStatus.fail,
        error: _makeTrackingError(
          error,
          isRetryable: isRetryable,
        ),
      ),
    );
  }

  TrackingError _makeTrackingError(
    TrackingServiceError error, {
    required bool isRetryable,
  }) =>
      error.when(
        fetch: (e) => _handleFetchError(e, isRetryable: isRetryable),
        parse: (e) => _handleParseError(e, isRetryable: isRetryable),
      );

  TrackingError _handleFetchError(
    FetchError error, {
    required bool isRetryable,
  }) {
    const type = TrackingErrorType.network;
    return error.when(
      (msg) => TrackingError(
        type: type,
        isRetryable: isRetryable,
        message: msg,
      ),
      exception: (e, stackTrace) => TrackingError(
        type: type,
        isRetryable: isRetryable,
        message: e.toString(),
        stackTrace: stackTrace?.toString(),
      ),
    );
  }

  TrackingError _handleParseError(
    ParseError error, {
    required bool isRetryable,
  }) {
    return error.when(
      format: (msg) => TrackingError(
        isRetryable: isRetryable,
        type: TrackingErrorType.unknown,
        message: msg,
      ),
      serviceTemporary: (code, msg) => TrackingError(
        type: TrackingErrorType.service,
        isRetryable: isRetryable,
        message: msg,
        code: code,
      ),
      serviceHard: (code, msg) => TrackingError(
        type: TrackingErrorType.service,
        isRetryable: isRetryable,
        message: msg,
        code: code,
      ),
      auth: (code, msg) => TrackingError(
        type: TrackingErrorType.auth,
        isRetryable: isRetryable,
        message: msg,
        code: code,
      ),
      badRequest: (code, msg) => TrackingError(
        type: TrackingErrorType.unknown,
        isRetryable: isRetryable,
        message: msg,
        code: code,
      ),
      invalidTrackNumber: () => TrackingError(
        type: TrackingErrorType.invalidTrackNumber,
        isRetryable: isRetryable,
      ),
    );
  }

  TrackNumberService? _handleNonRetryableService(
    TrackingResultError error,
  ) {
    if (!error.isRetryable) {
      final request = error.request;
      return TrackNumberService(
        trackNumber: request.trackService.trackNumber,
        serviceType: request.trackService.serviceType,
        isActive: false,
      );
    }
    return null;
  }

  TrackNumberService? _handleStatusDeliveredService(
    List<ShipmentActivityInfo> activity,
  ) {
    for (final info in activity) {
      if (info.statusType == ShipmentStatusType.delivered) {
        return TrackNumberService(
          trackNumber: info.trackNumber,
          serviceType: info.serviceType,
          isActive: false,
        );
      }
    }
    return null;
  }

  TrackingResponseInfo _failedRequestToTrackingResponse(
    TrackingId trackingId,
    String trackNumber,
    _FailedRequest request,
    DateTime trackingDate,
  ) {
    return TrackingResponseInfo.from(
      trackingId: trackingId,
      trackNumber: trackNumber,
      dateTime: trackingDate,
      serviceType: request.trackService.serviceType,
      status: TrackingResponseStatus.fail,
      error: TrackingError(
        type: request.reason.when(
          missingService: () => TrackingErrorType.missingTrackingService,
          missingAuthData: () => TrackingErrorType.missingAuthData,
        ),
        isRetryable: true,
      ),
    );
  }

  bool _hasNonRetryableError(
    bool? currentValue,
    TrackingResponseInfo responseInfo,
  ) {
    final isRetryable = responseInfo.error?.isRetryable ?? true;
    return !isRetryable || (currentValue ?? false);
  }

  bool _invalidTrackNumber(
    bool? currentValue,
    TrackingResponseInfo responseInfo,
  ) {
    final invalidTrackNumber =
        responseInfo.error?.type == TrackingErrorType.invalidTrackNumber;
    return invalidTrackNumber && (currentValue == null || currentValue);
  }

  Future<bool> _hasNewInfo(
    bool? currentValue,
    TrackingServiceResult result,
  ) async {
    if (currentValue != null && currentValue) {
      return currentValue;
    }
    return result.map(
      (value) async {
        final newActivity = value.activity;
        if (newActivity.isEmpty) {
          return false;
        }
        final trackNumber = value.request.trackService.trackNumber;
        final currentActivity = await _shipmentRepo
            .getActivitiesByTrack(
              trackNumber,
            )
            .then(
              (result) => result.when(
                (currentActivity) => currentActivity,
                error: (e) {
                  e.when(database: (e, stackTrace) {
                    log().e('Unable to get activity list',
                        error: e, stackTrace: stackTrace);
                  });
                  return null;
                },
              ),
            );
        return currentActivity != null &&
            newActivity.length > currentActivity.length;
      },
      noInfo: (_) => false,
      error: (_) => true,
    );
  }
}

class _BuildRequestResult {
  final List<TrackingRequest> requestList;
  final List<_FailedRequest> failedRequestList;

  const _BuildRequestResult({
    required this.requestList,
    required this.failedRequestList,
  });
}

@freezed
class _FailedRequest with _$FailedRequest {
  const factory _FailedRequest({
    required TransactionId id,
    required TrackNumberService trackService,
    required _FailedRequestReason reason,
  }) = _FailedRequestData;
}

@freezed
class _FailedRequestReason with _$FailedRequestReason {
  const factory _FailedRequestReason.missingService() =
      _FailedRequestMissingService;
  const factory _FailedRequestReason.missingAuthData() =
      _FailedRequestMissingAuthData;
}
