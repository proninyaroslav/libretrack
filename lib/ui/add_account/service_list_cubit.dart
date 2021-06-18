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

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/storage/service_repository.dart';
import 'package:libretrack/core/storage/storage_result.dart';

part 'service_list_cubit.freezed.dart';

@freezed
class ServiceListState with _$ServiceListState {
  const factory ServiceListState.initial() = ServiceListStateInitial;

  const factory ServiceListState.loaded({
    required List<TrackingServiceType> nonExistenServices,
    required bool isAuthStorageEncrypted,
  }) = ServiceListStateLoaded;

  const factory ServiceListState.loadingFailed({
    StorageError? error,
  }) = ServiceListStateLoadingFailed;
}

@injectable
class ServiceListCubit extends Cubit<ServiceListState> {
  final ServiceRepository _serviceRepo;

  ServiceListCubit(this._serviceRepo) : super(const ServiceListState.initial());

  Future<void> loadServices() async {
    emit(const ServiceListState.initial());

    final result = await _serviceRepo.getAllServices();
    result.when(
      (serviceList) {
        final types = serviceList.map((info) => info.type).toSet();
        final nonExistenServices = TrackingServiceType.values
            .where((type) => !types.contains(type))
            .toList();

        emit(
          ServiceListState.loaded(
            nonExistenServices: nonExistenServices,
            isAuthStorageEncrypted: _serviceRepo.isAuthStorageEncrypted,
          ),
        );
      },
      error: (e) {
        ServiceListState.loadingFailed(error: e);
      },
    );
  }
}
