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

import 'package:async/async.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/storage/shipment_repository.dart';
import 'package:libretrack/core/storage/storage_result.dart';
import 'package:libretrack/core/storage/track_number_repository.dart';
import 'package:libretrack/core/storage/tracking_repository.dart';
import 'package:libretrack/ui/parcel_details/parcel_details.dart';
import 'package:libretrack/ui/parcel_details/parcel_info.dart';

part 'parcel_details_cubit.freezed.dart';

@freezed
class ParcelDetailsState with _$ParcelDetailsState {
  const factory ParcelDetailsState.initial() = ParcelDetailsStateInitial;

  const factory ParcelDetailsState.notFound({
    required String trackNumber,
  }) = ParcelDetailsStateNotFound;

  const factory ParcelDetailsState.loadingFailed({
    required String trackNumber,
    StorageError? error,
  }) = ParcelDetailsStateLoadingFailed;

  const factory ParcelDetailsState.loaded({
    required String trackNumber,
    required ParcelInfo info,
  }) = ParcelDetailsStateLoaded;
}

@injectable
class ParcelDetailsCubit extends Cubit<ParcelDetailsState> {
  final TrackNumberRepository _trackRepo;
  final ShipmentRepository _shipmentRepo;
  final TrackingRepository _trackingRepo;

  ParcelDetailsCubit(
    this._trackRepo,
    this._shipmentRepo,
    this._trackingRepo,
  ) : super(const ParcelDetailsState.initial());

  Future<void> observeParcel(String trackNumber) async {
    emit(const ParcelDetailsState.initial());

    final group = StreamGroup.mergeBroadcast([
      _trackRepo.observeTrack(trackNumber).asyncMap(
            (res) => res.when(
              (info) async {
                if (info == null) {
                  return const _BuildResult.notFound();
                } else {
                  return _buildParcelInfo(
                    trackNumber: trackNumber,
                    trackInfo: info,
                  );
                }
              },
              error: (e) async => _BuildResult.failed(error: e),
            ),
          ),
      _trackRepo.observeTrackNumberServices(trackNumber).asyncMap(
            (res) => res.when(
              (list) => _buildParcelInfo(
                trackNumber: trackNumber,
                trackServices: list,
              ),
              error: (e) async => _BuildResult.failed(error: e),
            ),
          ),
      _shipmentRepo.observeShipmentInfoByTrack(trackNumber).asyncMap(
            (res) => res.when(
              (list) => _buildParcelInfo(
                trackNumber: trackNumber,
                shipmentInfoList: list,
              ),
              error: (e) async => _BuildResult.failed(error: e),
            ),
          ),
      _shipmentRepo.observeActivitiesByTrack(trackNumber).asyncMap(
            (res) => res.when(
              (list) => _buildParcelInfo(
                trackNumber: trackNumber,
                activities: list,
              ),
              error: (e) async => _BuildResult.failed(error: e),
            ),
          ),
      _trackingRepo.observeTrackingInfoByTrack(trackNumber).asyncMap(
            (res) => res.when(
              (list) => _buildParcelInfo(
                trackNumber: trackNumber,
                trackingList: list,
              ),
              error: (e) async => _BuildResult.failed(error: e),
            ),
          ),
    ]);

    await for (final result in group) {
      if (isClosed) {
        continue;
      }
      result.when(
        (info) => emit(
          ParcelDetailsState.loaded(
            trackNumber: trackNumber,
            info: info,
          ),
        ),
        notFound: () => emit(
          ParcelDetailsState.notFound(trackNumber: trackNumber),
        ),
        failed: (error) => emit(
          ParcelDetailsState.loadingFailed(
            trackNumber: trackNumber,
            error: error,
          ),
        ),
      );

      if (result is _BuildResultFailed) {
        break;
      }
    }
  }

  Future<_BuildResult> _buildParcelInfo({
    required String trackNumber,
    TrackNumberInfo? trackInfo,
    List<TrackNumberService>? trackServices,
    List<ShipmentInfo>? shipmentInfoList,
    List<ShipmentActivityInfo>? activities,
    List<TrackingInfo>? trackingList,
  }) async {
    try {
      final TrackNumberInfo? trackInfo0 = trackInfo ??
          await _trackRepo.getTrackByTrackNumber(trackNumber).then(
                (res) => res.when(
                  (value) => value,
                  error: (e) => throw e,
                ),
              );
      if (trackInfo0 == null) {
        return const _BuildResult.notFound();
      }
      final List<TrackNumberService> trackServices0 = trackServices ??
          await _trackRepo.getTrackNumberServices(trackNumber).then(
                (res) => res.when(
                  (value) => value,
                  error: (e) => throw e,
                ),
              );
      final List<ShipmentInfo> shipmentInfoList0 = shipmentInfoList ??
          await _shipmentRepo.getShipmentInfoByTrack(trackNumber).then(
                (res) => res.when(
                  (value) => value,
                  error: (e) => throw e,
                ),
              );
      final List<ShipmentActivityInfo> activities0 = activities ??
          await _shipmentRepo.getActivitiesByTrack(trackNumber).then(
                (res) => res.when(
                  (value) => value,
                  error: (e) => throw e,
                ),
              );
      final List<TrackingInfo> trackingList0 = trackingList ??
          await _trackingRepo.getTrackingInfoByTrack(trackNumber).then(
                (res) => res.when(
                  (value) => value,
                  error: (e) => throw e,
                ),
              );
      final trackingHistory = await Future.wait(
        trackingList0.map((info) async {
          final res = await _trackingRepo.getResponseByTrackingId(info.id);
          final List<TrackingResponseInfo> responseList = res.when(
            (value) => value,
            error: (e) => throw e,
          );
          return TrackingHistoryEntry(
            trackingInfo: info,
            responseList: responseList,
          );
        }),
      );
      final shipmentInfoEntries = await Future.wait(
        shipmentInfoList0.map((info) async {
          final res = await _shipmentRepo.getAlternateTracksById(info.id!);
          final List<AlternateTrackNumber> alternateTrackNumbers = res.when(
            (value) => value,
            error: (e) => throw e,
          );
          return ShipmentInfoEntry(
            shipmentInfo: info,
            alternateTrackNumbers: alternateTrackNumbers,
          );
        }),
      );

      return _BuildResult(
        info: ParcelInfo(
          trackInfo: trackInfo0,
          trackServices: trackServices0,
          shipmentInfoList: shipmentInfoEntries,
          activities: activities0,
          trackingHistory: trackingHistory,
        ),
      );
    } on StorageError catch (e) {
      return _BuildResult.failed(error: e);
    }
  }
}

@freezed
class _BuildResult with _$BuildResult {
  const factory _BuildResult({
    required ParcelInfo info,
  }) = _BuildResultData;

  const factory _BuildResult.notFound() = _BuildResultNotFound;

  const factory _BuildResult.failed({
    required StorageError error,
  }) = _BuildResultFailed;
}
