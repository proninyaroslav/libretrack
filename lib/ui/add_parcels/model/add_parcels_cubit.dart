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

import 'package:bloc/bloc.dart';
import 'package:libretrack/core/date_time_provider.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/settings/settings.dart';
import 'package:libretrack/core/storage/storage_result.dart';
import 'package:libretrack/core/storage/track_number_repository.dart';
import 'package:libretrack/core/tracking_scheduler.dart';
import 'package:libretrack/ui/add_parcels/model/add_parcels_state.dart';

class AddParcelsCubit extends Cubit<AddParcelsState> {
  final TrackNumberRepository _trackRepo;
  final TrackingScheduler _trackingScheduler;
  final DateTimeProvider _dateTimeProvider;
  final AppSettings _pref;

  AddParcelsCubit(
    this._trackRepo,
    this._trackingScheduler,
    this._dateTimeProvider,
    this._pref,
  ) : super(const AddParcelsState.initial());

  Future<void> load({TrackingNumbers? trackingNumbers}) async {
    final customerType = await _pref.addParcelsCustomerType;
    emit(
      AddParcelsState.loaded(
        trackingNumbers: trackingNumbers ?? TrackingNumbers(),
        customerType: customerType,
      ),
    );
  }

  void trackingNumbersChanged(String value) {
    _handleCurrentState((trackingNumbers, parcelNames, customerType) {
      emit(
        AddParcelsState.fieldChanged(
          trackingNumbers: TrackingNumbers(value: value),
          parcelNames: parcelNames,
          customerType: customerType,
        ),
      );
    });
  }

  void parcelNamesChanged(String value) {
    _handleCurrentState((trackingNumbers, parcelNames, customerType) {
      emit(
        AddParcelsState.fieldChanged(
          trackingNumbers: trackingNumbers,
          parcelNames: ParcelNames(value: value),
          customerType: customerType,
        ),
      );
    });
  }

  void customerTypeChanged(CustomerType type) async {
    _handleCurrentState((trackingNumbers, parcelNames, _) async {
      await _pref.setAddParcelsCustomerType(type);
      emit(
        AddParcelsState.customerTypeChanged(
          trackingNumbers: trackingNumbers,
          parcelNames: parcelNames,
          customerType: type,
        ),
      );
    });
  }

  void _handleCurrentState(
      void Function(TrackingNumbers, ParcelNames, CustomerType) onEmit) {
    state.when(
      loaded: onEmit,
      fieldChanged: onEmit,
      customerTypeChanged: onEmit,
      validationFailed: onEmit,
      addFailed: (
        trackingNumbers,
        parcelNames,
        customerType,
        exception,
        stackTrace,
      ) {
        onEmit(trackingNumbers, parcelNames, customerType);
      },
      adding: () => throw StateError('Cannot change fields while adding'),
      added: (_) => throw StateError('Cannot change fields after adding'),
      initial: (trackingNumbers, parcelNames) =>
          throw StateError('Cannot change fields before initialize'),
    );
  }

  Future<void> submit() async {
    await state.when(
      loaded: _submit,
      fieldChanged: _submit,
      validationFailed: _submit,
      customerTypeChanged: _submit,
      addFailed: (
        trackingNumbers,
        parcelNames,
        customerType,
        exception,
        stackTrace,
      ) =>
          _submit(trackingNumbers, parcelNames, customerType),
      adding: () {},
      added: (_) {},
      initial: (trackingNumbers, parcelNames) {},
    );
  }

  Future<void> _submit(
    TrackingNumbers trackingNumbers,
    ParcelNames parcelNames,
    CustomerType customerType,
  ) async {
    final trackingNumbersRes =
        TrackingNumbersParser.of(trackingNumbers).parse();
    final parcelNamesRes = ParcelNamesParser.of(parcelNames).parse();

    TrackingNumbersError? trackingNumbersError;
    ParcelNamesError? parcelNamesError;
    List<String>? trackList;
    List<String>? namesList;

    trackingNumbersRes.when(success: (list) {
      trackList = list;
    }, error: (reason) {
      trackingNumbersError = reason;
    });
    parcelNamesRes.when(success: (list) {
      namesList = list;
    }, error: (reason) {
      parcelNamesError = reason;
    });
    if (trackingNumbersError != null || parcelNamesError != null) {
      emit(
        AddParcelsState.validationFailed(
          trackingNumbers: trackingNumbers.copyWith(
            error: trackingNumbersError,
          ),
          parcelNames: parcelNames.copyWith(
            error: parcelNamesError,
          ),
          customerType: customerType,
        ),
      );
    } else {
      emit(const AddParcelsState.adding());

      final infoList = _makeInfoList(trackList, namesList, customerType);
      final trackNumberServiceList = _makeTrackNumberServiceList(infoList);
      try {
        await _trackRepo.addTrackList(infoList).then(
              (res) => res.when(
                (value) => value,
                error: (e) => throw e,
              ),
            );
        await _trackRepo.addTrackNumberServices(trackNumberServiceList).then(
              (res) => res.when(
                (value) => value,
                error: (e) => throw e,
              ),
            );
      } on StorageError catch (e) {
        e.when(
          database: (e, stackTrace) {
            emit(AddParcelsState.addFailed(
              trackingNumbers: trackingNumbers,
              parcelNames: parcelNames,
              customerType: customerType,
              exception: e,
              stackTrace: stackTrace,
            ));
          },
        );
        return;
      }

      emit(AddParcelsState.added(addedTrackInfoList: infoList));
    }
  }

  List<TrackNumberInfo> _makeInfoList(
    List<String>? trackList,
    List<String>? namesList,
    CustomerType customerType,
  ) {
    final infoList = <TrackNumberInfo>[];
    final trackNumberSet = <String>{};
    if (trackList == null) {
      return infoList;
    }
    for (int i = 0; i < trackList.length; i++) {
      final track = trackList[i];
      if (track.isEmpty || trackNumberSet.contains(track)) {
        continue;
      }
      trackNumberSet.add(track);
      if (namesList != null && i < namesList.length) {
        final name = namesList[i];
        infoList.add(TrackNumberInfo(
          track,
          description: name.isEmpty ? null : name,
          dateAdded: _dateTimeProvider.now(),
          customerType: customerType,
        ));
      } else {
        infoList.add(
          TrackNumberInfo(
            track,
            dateAdded: _dateTimeProvider.now(),
            customerType: customerType,
          ),
        );
      }
    }

    return infoList;
  }

  List<TrackNumberService> _makeTrackNumberServiceList(
    List<TrackNumberInfo> infoList,
  ) {
    final list = <TrackNumberService>[];
    for (final info in infoList) {
      for (final serviceType in PostalServiceType.values) {
        list.add(
          TrackNumberService(
            trackNumber: info.trackNumber,
            serviceType: serviceType,
          ),
        );
      }
    }

    return list;
  }

  Future<void> track(List<TrackNumberInfo> trackInfoList) async =>
      _trackingScheduler.enqueueOneshot(
        trackInfoList.map((info) => info.trackNumber).toList(),
      );
}
