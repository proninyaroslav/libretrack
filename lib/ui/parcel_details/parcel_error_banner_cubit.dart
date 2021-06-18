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

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:libretrack/core/entity/entity.dart';

import 'parcel_details_cubit.dart';

part 'parcel_error_banner_cubit.freezed.dart';

@freezed
class ParcelErrorBannerState with _$ParcelErrorBannerState {
  const factory ParcelErrorBannerState.show({
    required Set<ParcelErrorBanner> banners,
  }) = ParcelErrorBannerStateShow;
}

@freezed
class ParcelErrorBanner with _$ParcelErrorBanner {
  const factory ParcelErrorBanner.hardError() = ParcelErrorBannerHardError;

  const factory ParcelErrorBanner.missingAuthData() =
      ParcelErrorBannerMissingAuthData;

  const factory ParcelErrorBanner.missingAccount() =
      ParcelErrorBannerMissingAccount;

  const factory ParcelErrorBanner.authError() = ParcelErrorBannerAuth;
}

@injectable
class ParcelErrorBannerCubit extends Cubit<ParcelErrorBannerState> {
  ParcelErrorBannerCubit()
      : super(const ParcelErrorBannerState.show(banners: {}));

  Future<void> observeParcel(ParcelDetailsCubit detailsCubit) async {
    await for (final state in detailsCubit.stream) {
      state.maybeWhen(
        loaded: (trackNumber, info) {
          final lastTrackingInfo = info.trackingHistory.isEmpty
              ? null
              : info.trackingHistory.first.trackingInfo;
          final lastTrackingResponse = info.trackingHistory.isEmpty
              ? null
              : info.trackingHistory.first.responseList;

          final showHardError = lastTrackingInfo != null &&
              lastTrackingInfo.hasNonRetryableError &&
              !lastTrackingInfo.invalidTrackNumber &&
              info.trackServices.any((trackService) => !trackService.isActive);
          bool showMissingAuthData = false;
          bool showMissingAccount = false;
          bool showAuthError = false;
          if (lastTrackingResponse != null) {
            for (final info in lastTrackingResponse) {
              showMissingAuthData =
                  info.error?.type == TrackingErrorType.missingAuthData;
              showMissingAccount =
                  info.error?.type == TrackingErrorType.missingTrackingService;
              showAuthError = info.error?.type == TrackingErrorType.auth;
              if (showMissingAuthData && showMissingAccount && showAuthError) {
                break;
              }
            }
          }

          final banners = {
            if (showHardError) const ParcelErrorBanner.hardError(),
            if (showMissingAuthData) const ParcelErrorBanner.missingAuthData(),
            if (showMissingAccount) const ParcelErrorBanner.missingAccount(),
            if (showAuthError) const ParcelErrorBanner.authError(),
          };
          emit(ParcelErrorBannerState.show(banners: banners));
        },
        orElse: () {
          emit(const ParcelErrorBannerState.show(banners: {}));
        },
      );
    }
  }
}
