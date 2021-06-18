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

import 'dart:async';

import 'package:async/async.dart' show StreamGroup;
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:libretrack/core/date_time_provider.dart';
import 'package:libretrack/core/model/service_response.dart';

import 'http/http_client.dart';
import 'http/http_client_factory.dart';
import 'request_builder.dart';

part 'fetcher.freezed.dart';

abstract class Fetcher {
  Stream<FetchResult> fetch(
    Iterable<ServiceRequest> requestList,
  );
}

@freezed
class FetchResult with _$FetchResult {
  const factory FetchResult(ServiceResponse response) = FetchResultResponse;

  const factory FetchResult.error({
    required ServiceRequest request,
    required FetchError error,
  }) = FetchResultError;
}

@freezed
class FetchError with _$FetchError {
  const factory FetchError(String message) = FetchErrorBase;

  const factory FetchError.exception(
    Exception e, {
    StackTrace? stackTrace,
  }) = FetchErrorException;
}

@Injectable(as: Fetcher)
class FetcherImpl implements Fetcher {
  final HttpClientFactory _clientFactory;
  final DateTimeProvider _dateTimeProvider;

  FetcherImpl(this._clientFactory, this._dateTimeProvider);

  @override
  Stream<FetchResult> fetch(
    Iterable<ServiceRequest> requestList,
  ) async* {
    final sorted = _sortRequestList(requestList);
    final batchRequestList = sorted.values.map((r) {
      return _BatchRequest(r, _clientFactory, _dateTimeProvider);
    });
    final streams = batchRequestList.map((r) => r.send());

    yield* StreamGroup.merge(streams);
  }

  /// Sort by authority to be able to make
  /// parallel requests to different services
  Map<String, List<ServiceRequest>> _sortRequestList(
    Iterable<ServiceRequest> requestList,
  ) {
    final sorted = <String, List<ServiceRequest>>{};
    for (final r in requestList) {
      final list = sorted.putIfAbsent(r.url.authority, () => []);
      list.add(r);
    }

    return sorted;
  }
}

class _BatchRequest {
  // Prevent frequent server access
  static const _minRequestInterval = 1000; //ms

  final List<ServiceRequest> _requestList;
  final HttpClient _client;
  final DateTimeProvider _dateTimeProvider;
  DateTime? _lastRequestTime;

  _BatchRequest(
    this._requestList,
    HttpClientFactory clientFactory,
    this._dateTimeProvider,
  ) : _client = clientFactory.create();

  Stream<FetchResult> send() async* {
    for (final r in _requestList) {
      if (!_isMinIntervalPassed()) {
        await _delay();
      }
      _lastRequestTime = _dateTimeProvider.now();

      final response = await _client.send(r);
      yield response.when(
        success: (body) => FetchResult(ServiceResponse(
          transactionId: r.transactionId,
          payload: body,
        )),
        httpError: (statusCode) => FetchResult.error(
          request: r,
          error: FetchError('HTTP $statusCode'),
        ),
        exception: (e, stackTrace) => FetchResult.error(
          request: r,
          error: FetchError.exception(e, stackTrace: stackTrace),
        ),
      );
    }
  }

  Future<dynamic> _delay() async {
    return Future.delayed(
      const Duration(
        milliseconds: _minRequestInterval,
      ),
    );
  }

  bool _isMinIntervalPassed() {
    return _lastRequestTime == null ||
        (_dateTimeProvider.now().millisecond - _lastRequestTime!.millisecond) >=
            _minRequestInterval;
  }

  void close() => _client.close();
}
