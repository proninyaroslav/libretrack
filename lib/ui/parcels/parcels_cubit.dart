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

import 'package:async/async.dart';
import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/settings/settings.dart';
import 'package:libretrack/core/storage/shipment_repository.dart';
import 'package:libretrack/core/storage/storage_result.dart';
import 'package:libretrack/core/storage/track_number_repository.dart';
import 'package:libretrack/core/storage/tracking_repository.dart';

import 'filter.dart';
import 'parcel_info.dart';

part 'parcels_cubit.freezed.dart';

@freezed
class ParcelsState with _$ParcelsState {
  const factory ParcelsState.initial({
    required ParcelsFilterBatch filters,
    ParcelsFilter? search,
    ParcelsSort? sort,
  }) = ParcelsStateInitial;

  const factory ParcelsState.loaded({
    required List<ParcelInfo> active,
    required List<ParcelInfo> archive,
    required ParcelsFilterBatch filters,
    ParcelsFilter? search,
    ParcelsSort? sort,
  }) = ParcelsStateLoaded;

  const factory ParcelsState.loadingFailed({
    StorageError? error,
    required ParcelsFilterBatch filters,
    ParcelsFilter? search,
    ParcelsSort? sort,
  }) = ParcelsStateLoadingFailed;
}

class ParcelsCubit extends Cubit<ParcelsState> {
  final TrackNumberRepository _trackRepo;
  final TrackingRepository _trackingRepo;
  final ShipmentRepository _shipmentRepo;
  final AppSettings _pref;

  ParcelsCubit(
    this._trackRepo,
    this._trackingRepo,
    this._shipmentRepo,
    this._pref,
  ) : super(ParcelsState.initial(
          filters: _pref.parcelsFilters ?? ParcelsFilterBatch(),
          sort: _pref.parcelsSort,
        ));

  Future<void> observeParcels() async {
    emit(ParcelsState.initial(
      filters: state.filters,
      search: state.search,
      sort: state.sort,
    ));

    final group = StreamGroup.mergeBroadcast([
      _trackRepo.observeAllTracks().asyncMap(
            (res) => res.when(
              (list) => _buildParcelInfoList(trackList: list),
              error: (e) async => _BuildResult.failed(error: e),
            ),
          ),
      _trackRepo.observeAllTrackNumberServices().asyncMap(
            (res) => res.when(
              (list) => _buildParcelInfoList(trackServiceList: list),
              error: (e) async => _BuildResult.failed(error: e),
            ),
          ),
      _trackingRepo.observeAllTrackingInfo().asyncMap(
            (res) => res.when(
              (list) => _buildParcelInfoList(trackingList: list),
              error: (e) async => _BuildResult.failed(error: e),
            ),
          ),
      _shipmentRepo.observeAllActivities().asyncMap(
            (res) => res.when(
              (list) => _buildParcelInfoList(activityList: list),
              error: (e) async => _BuildResult.failed(error: e),
            ),
          ),
    ]);
    await for (final result in group) {
      result.when(
        (infoList) {
          final active = <ParcelInfo>[];
          final archive = <ParcelInfo>[];
          for (final info in infoList) {
            if (const ParcelsFilter.active().apply(info)) {
              active.add(info);
            } else if (const ParcelsFilter.archive().apply(info)) {
              archive.add(info);
            }
          }
          emit(
            ParcelsState.loaded(
              active: active,
              archive: archive,
              filters: state.filters,
              search: state.search,
              sort: state.sort,
            ),
          );
        },
        failed: (error) {
          emit(
            ParcelsState.loadingFailed(
              error: error,
              filters: state.filters,
              search: state.search,
              sort: state.sort,
            ),
          );
        },
      );

      if (result is _BuildResultFailed) {
        break;
      }
    }
  }

  void search(String? query) {
    emit(state.copyWith(
      search: ParcelsFilter.search(query: query),
    ));
  }

  void setErrorFilter({required bool enable}) {
    final filters = ParcelsFilterBatch.from(state.filters)
      ..errorFilter = enable ? const ParcelsFilter.error() : null;
    _pref.parcelsFilters = filters;
    emit(state.copyWith(filters: filters));
  }

  void setNewInfoFilter({required bool enable}) {
    final filters = ParcelsFilterBatch.from(state.filters)
      ..newInfoFilter = enable ? const ParcelsFilter.newInfo() : null;
    _pref.parcelsFilters = filters;
    emit(state.copyWith(filters: filters));
  }

  void setPostalServiceFilter(PostalServiceType? serviceType) {
    final filters = ParcelsFilterBatch.from(state.filters)
      ..postalServiceFilter = ParcelsFilter.postalService(
        serviceType: serviceType,
      );
    _pref.parcelsFilters = filters;
    emit(state.copyWith(filters: filters));
  }

  void setStatusFilter(ShipmentStatusType? statusType) {
    final filters = ParcelsFilterBatch.from(state.filters)
      ..statusFilter = ParcelsFilter.status(statusType: statusType);
    _pref.parcelsFilters = filters;
    emit(state.copyWith(filters: filters));
  }

  void setActivityDateSort({bool oldestFirst = false}) {
    final sort = ParcelsSort.activityDate(oldestFirst: oldestFirst);
    _pref.parcelsSort = sort;
    emit(state.copyWith(sort: sort));
  }

  void setAlphabeticallySort({bool isDesc = false}) {
    final sort = ParcelsSort.alphabetically(isDesc: isDesc);
    _pref.parcelsSort = sort;
    emit(state.copyWith(sort: sort));
  }

  void setDateAddedSort({bool oldestFirst = false}) {
    final sort = ParcelsSort.dateAdded(oldestFirst: oldestFirst);
    _pref.parcelsSort = sort;
    emit(state.copyWith(sort: sort));
  }

  Future<_BuildResult> _buildParcelInfoList({
    List<TrackNumberInfo>? trackList,
    List<TrackNumberService>? trackServiceList,
    List<TrackingInfo>? trackingList,
    List<ShipmentActivityInfo>? activityList,
    List<ShipmentInfo>? shipmentInfoList,
  }) async {
    try {
      final List<TrackNumberInfo> trackList0 = trackList ??
          await _trackRepo.getAllTracks().then(
                (res) => res.when(
                  (value) => value,
                  error: (e) => throw e,
                ),
              );
      final List<TrackNumberService> trackServiceList0 = trackServiceList ??
          await _trackRepo.getAllTrackNumberServices().then(
                (res) => res.when(
                  (value) => value,
                  error: (e) => throw e,
                ),
              );
      final List<TrackingInfo> trackingList0 = trackingList ??
          await _trackingRepo.getAllTrackingInfo().then(
                (res) => res.when(
                  (value) => value,
                  error: (e) => throw e,
                ),
              );
      final List<ShipmentActivityInfo> activityList0 = activityList ??
          await _shipmentRepo.getAllActivities().then(
                (res) => res.when(
                  (value) => value,
                  error: (e) => throw e,
                ),
              );
      final List<ShipmentInfo> shipmentInfoList0 = shipmentInfoList ??
          await _shipmentRepo.getAllShipmentInfo().then(
                (res) => res.when(
                  (value) => value,
                  error: (e) => throw e,
                ),
              );

      final trackServiceMap = _mapTrackToTrackServiceList(trackServiceList0);
      final lastTrackingInfoMap = _mapTrackToLastTrackingInfo(trackingList0);
      final lastActivityMap = _mapTrackToLastActivity(activityList0);
      final lastTrackingResponseMap = await _mapTrackToLastTrackingResponse(
        lastTrackingInfoMap,
      );
      final shipmentInfoMap = _mapTrackToShipmentInfoList(shipmentInfoList0);
      final infoList = trackList0.map((trackInfo) {
        final lastActivity = lastActivityMap[trackInfo.trackNumber];
        final lastShipmentInfo = lastActivity == null
            ? null
            : shipmentInfoMap[trackInfo.trackNumber]?.firstWhereOrNull(
                (i) => i.serviceType == lastActivity.serviceType);

        return ParcelInfo(
          trackInfo: trackInfo,
          currentStatus: lastShipmentInfo?.currentStatus ??
              lastActivity?.statusType ??
              ShipmentStatusType.notAvailable,
          trackServices: trackServiceMap[trackInfo.trackNumber] ?? [],
          lastTrackingInfo: lastTrackingInfoMap[trackInfo.trackNumber],
          lastActivity: lastActivityMap[trackInfo.trackNumber],
          lastTrackingResponse: lastTrackingResponseMap[trackInfo.trackNumber],
        );
      }).toList();

      return _BuildResult(infoList: infoList);
    } on StorageError catch (e) {
      return _BuildResult.failed(error: e);
    }
  }

  Map<String, ShipmentActivityInfo> _mapTrackToLastActivity(
    List<ShipmentActivityInfo> activityList,
  ) {
    final map = <String, ShipmentActivityInfo>{};
    for (final activity in activityList) {
      final current = map[activity.trackNumber];
      if (current == null ||
          current.dateTime.isBefore(activity.dateTime) ||
          current.id! > activity.id!) {
        map[activity.trackNumber] = activity;
      }
    }

    return map;
  }

  Map<String, TrackingInfo> _mapTrackToLastTrackingInfo(
    List<TrackingInfo> trackingList,
  ) {
    final map = <String, TrackingInfo>{};
    for (final tracking in trackingList) {
      final current = map[tracking.trackNumber];
      if (current?.dateTime.isBefore(tracking.dateTime) ?? true) {
        map[tracking.trackNumber] = tracking;
      }
    }

    return map;
  }

  Map<String, List<TrackNumberService>> _mapTrackToTrackServiceList(
    List<TrackNumberService> trackServiceList,
  ) {
    final map = <String, List<TrackNumberService>>{};
    for (final trackService in trackServiceList) {
      final list = map.putIfAbsent(trackService.trackNumber, () => []);
      list.add(trackService);
    }

    return map;
  }

  Future<Map<String, List<TrackingResponseInfo>>>
      _mapTrackToLastTrackingResponse(
    Map<String, TrackingInfo> lastTrackingInfoMap,
  ) async {
    final map = <String, List<TrackingResponseInfo>>{};
    for (final trackingInfo in lastTrackingInfoMap.values) {
      final res = await _trackingRepo.getResponseByTrackingId(trackingInfo.id);
      map[trackingInfo.trackNumber] = res.when(
        (value) => value,
        error: (e) => throw e,
      );
    }

    return map;
  }
}

Map<String, List<ShipmentInfo>> _mapTrackToShipmentInfoList(
  List<ShipmentInfo> shipmentInfoList,
) {
  final map = <String, List<ShipmentInfo>>{};
  for (final shipmentInfo in shipmentInfoList) {
    final list = map.putIfAbsent(shipmentInfo.trackNumber, () => []);
    list.add(shipmentInfo);
  }

  return map;
}

@freezed
class _BuildResult with _$BuildResult {
  const factory _BuildResult({
    required List<ParcelInfo> infoList,
  }) = _BuildResultData;

  const factory _BuildResult.failed({
    required StorageError error,
  }) = _BuildResultFailed;
}
