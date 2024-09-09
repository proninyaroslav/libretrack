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
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/core/storage/service_repository.dart';
import 'package:libretrack/ui/edit_account/model/service_info_state.dart';

class ServiceInfoCubit extends Cubit<ServiceInfoState> {
  final ServiceRepository _serviceRepo;

  ServiceInfoCubit(this._serviceRepo) : super(const ServiceInfoState.initial());

  Future<void> loadService(TrackingServiceType type) async {
    emit(const ServiceInfoState.initial());

    final TrackingServiceInfo? info =
        await _serviceRepo.getServiceByType(type).then(
              (res) => res.when(
                (info) => info,
                error: (e) {
                  emit(ServiceInfoState.loadingFailed(error: e));
                  return null;
                },
              ),
            );
    final AuthData? authData = await _serviceRepo.getAuthDataByType(type).then(
          (res) => res.when(
            (authData) => authData,
            error: (e) {
              emit(ServiceInfoState.loadingFailed(error: e));
              return null;
            },
          ),
        );

    if (info != null && authData != null) {
      emit(ServiceInfoState.loaded(
        info: info,
        authData: authData,
        isAuthStorageSecured: _serviceRepo.isAuthStorageSecured,
      ));
    }
  }
}
