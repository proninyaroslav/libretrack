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

import 'dart:collection';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:libretrack/core/entity/entity.dart';

import 'fetcher.dart';
import 'parser.dart';
import 'parser_factory.dart';
import 'request_builder.dart';
import 'request_factory.dart';
import 'type/type.dart';

part 'tracking_service.freezed.dart';

abstract class TrackingService {
  Future<List<TrackingServiceResult>> fetch(
    Iterable<TrackingRequest> requestList,
  );
}

class TrackingRequest extends Equatable {
  final TransactionId id;
  final TrackNumberService trackService;
  final TrackingServiceInfo serviceInfo;
  final AuthData authData;
  final Locale? locale;

  const TrackingRequest({
    required this.id,
    required this.trackService,
    required this.serviceInfo,
    required this.authData,
    this.locale,
  });

  @override
  List<Object> get props => [id];
}

@freezed
class TrackingServiceResult with _$TrackingServiceResult {
  const factory TrackingServiceResult({
    required TrackingRequest request,
    required ShipmentInfo info,
    required List<ShipmentActivityInfo> activity,
    List<String>? alternateTracks,
  }) = TrackingServiceResultData;

  const factory TrackingServiceResult.noInfo(
    TrackingRequest request,
  ) = TrackingServiceResultNoInfo;

  const factory TrackingServiceResult.error({
    required TrackingRequest request,
    required TrackingServiceError error,
    required bool isRetryable,
  }) = TrackingResultError;
}

@freezed
class TrackingServiceError with _$TrackingServiceError {
  const factory TrackingServiceError.fetch(
    FetchError e,
  ) = TrackingServiceErrorFetch;

  const factory TrackingServiceError.parse(
    ParseError e,
  ) = TrackingServiceErrorParse;
}

@Injectable(as: TrackingService)
class TrackingServiceImpl extends TrackingService {
  final RequestFactory _requestFactory;
  final Fetcher _fetcher;
  final ParserFactory _parserFactory;

  TrackingServiceImpl(
    this._requestFactory,
    this._fetcher,
    this._parserFactory,
  );

  @override
  Future<List<TrackingServiceResult>> fetch(
    Iterable<TrackingRequest> requestList,
  ) async {
    final requestMap = _RequestMap({});
    final serviceRequestList = <ServiceRequest>[];

    for (final request in requestList) {
      final requestBuilder = _requestFactory.builderOf(
        info: request.serviceInfo,
        authData: request.authData,
      );
      final serviceRequest = requestBuilder.build(
        transactionId: request.id,
        trackService: request.trackService,
        locale: request.locale,
      );
      serviceRequestList.add(serviceRequest);
      requestMap[request.id] = request;
    }

    return _fetcher
        .fetch(serviceRequestList)
        .map((fetchResult) => _handleFetchResult(fetchResult, requestMap))
        .toList();
  }

  TrackingServiceResult _handleFetchResult(
    FetchResult fetchResult,
    _RequestMap requestMap,
  ) {
    return fetchResult.when(
      (response) {
        final request = requestMap[response.transactionId];
        final parser = _parserFactory.parserOf(request.serviceInfo);
        final parseResult = parser.parse(response, locale: request.locale);

        return _handleParseResult(parseResult, request);
      },
      error: (serviceRequest, e) => TrackingServiceResult.error(
        request: requestMap[serviceRequest.transactionId],
        error: TrackingServiceError.fetch(e),
        isRetryable: true,
      ),
    );
  }

  TrackingServiceResult _handleParseResult(
    ParseResult parseResult,
    TrackingRequest request,
  ) {
    return parseResult.when(
      (info, activity, alternateTracks) {
        if (info.trackNumber.toLowerCase() !=
            request.trackService.trackNumber.toLowerCase()) {
          final error = ParseError.format(
            'Service returned different tracking number. '
            'Expected: ${request.trackService.trackNumber}; '
            'Actual: ${info.trackNumber}',
          );
          return TrackingServiceResult.error(
            request: request,
            error: TrackingServiceError.parse(error),
            isRetryable: _isRetryable(error),
          );
        }
        return TrackingServiceResult(
          request: request,
          info: info,
          activity: activity,
          alternateTracks: alternateTracks,
        );
      },
      noInfo: () => TrackingServiceResult.noInfo(request),
      error: (e) => TrackingServiceResult.error(
        request: request,
        error: TrackingServiceError.parse(e),
        isRetryable: _isRetryable(e),
      ),
    );
  }

  bool _isRetryable(ParseError e) {
    return e.when(
      serviceTemporary: (code, msg) => true,
      format: (msg) => false,
      serviceHard: (code, msg) => false,
      auth: (code, msg) => false,
      badRequest: (code, msg) => false,
      invalidTrackNumber: () => false,
    );
  }
}

class _RequestMap extends MapView<TransactionId?, TrackingRequest> {
  _RequestMap(super.map);

  @override
  TrackingRequest operator [](Object? transactionId) => super[transactionId]!;
}
