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

part 'model.freezed.dart';

@freezed
class TrackingNumbers with _$TrackingNumbers {
  const factory TrackingNumbers({
    @Default('') String value,
    TrackingNumbersError? error,
  }) = _TrackingNumbers;
}

@freezed
class TrackingNumbersError with _$TrackingNumbersError {
  const factory TrackingNumbersError.empty() = TrackingNumbersErrorEmpty;
}

@freezed
class ParcelNames with _$ParcelNames {
  const factory ParcelNames({
    @Default('') String value,
    ParcelNamesError? error,
  }) = _ParcelNames;
}

abstract class ParcelNamesError {}

@freezed
class TrackingNumbersParseResult with _$TrackingNumbersParseResult {
  const factory TrackingNumbersParseResult.success({
    required List<String> trackList,
  }) = TrackingNumbersParseResultSuccess;
  const factory TrackingNumbersParseResult.error({
    required TrackingNumbersError reason,
  }) = TrackingNumbersParseResultError;
}

@freezed
class ParcelNamesParseResult with _$ParcelNamesParseResult {
  const factory ParcelNamesParseResult.success({
    required List<String> namesList,
  }) = ParcelNamesParseResultSuccess;
  const factory ParcelNamesParseResult.error({
    required ParcelNamesError reason,
  }) = ParcelNamesParseResultError;
}

class TrackingNumbersParser {
  final TrackingNumbers trackingNumbers;

  TrackingNumbersParser.of(this.trackingNumbers);

  TrackingNumbersParseResult parse() {
    if (trackingNumbers.value.isEmpty) {
      return const TrackingNumbersParseResult.error(
        reason: TrackingNumbersError.empty(),
      );
    }
    return TrackingNumbersParseResult.success(
      trackList: _parseLines(trackingNumbers.value),
    );
  }
}

class ParcelNamesParser {
  final ParcelNames parcelNames;

  ParcelNamesParser.of(this.parcelNames);

  ParcelNamesParseResult parse() {
    return ParcelNamesParseResult.success(
      namesList: _parseLines(parcelNames.value),
    );
  }
}

List<String> _parseLines(String s) {
  return s.split('\n').map((track) => track.trim()).toList();
}

extension TrackingNumbersExtension on TrackingNumbers {
  TrackingNumbers operator +(TrackingNumbers other) {
    return TrackingNumbers(value: '$value\n${other.value}');
  }
}
