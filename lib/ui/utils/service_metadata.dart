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

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/ui/widget/widget.dart';

import '../../locale.dart';

part 'service_metadata.freezed.dart';

@freezed
class TrackingServiceMetadata with _$TrackingServiceMetadata {
  const factory TrackingServiceMetadata({
    required TrackingServiceType type,
    required String localizedName,
    required RRectIconData iconData,
    required Set<PostalServiceMetadata> postalServices,
  }) = _TrackingServiceMetadata;
}

@freezed
class PostalServiceMetadata with _$PostalServiceMetadata {
  const factory PostalServiceMetadata({
    required PostalServiceType type,
    required String localizedName,
    required RRectIconData iconData,
  }) = _PostalServiceMetadata;
}

class TrackingServiceMetadataMapper {
  static TrackingServiceMetadata of(
    BuildContext context,
    TrackingServiceType type,
  ) {
    switch (type) {
      case TrackingServiceType.ups:
        return TrackingServiceMetadata(
          type: TrackingServiceType.ups,
          localizedName: S.of(context).ups,
          iconData: ServiceLogoIconsData.ups,
          postalServices: {
            PostalServiceMetadata(
              type: PostalServiceType.ups,
              localizedName: S.of(context).ups,
              iconData: ServiceLogoIconsData.ups,
            )
          },
        );
      case TrackingServiceType.russianPost:
        return TrackingServiceMetadata(
          type: TrackingServiceType.russianPost,
          localizedName: S.of(context).russianPost,
          iconData: ServiceLogoIconsData.russianPost,
          postalServices: {
            PostalServiceMetadata(
              type: PostalServiceType.russianPost,
              localizedName: S.of(context).russianPost,
              iconData: ServiceLogoIconsData.russianPost,
            )
          },
        );
      case TrackingServiceType.usps:
        return TrackingServiceMetadata(
          type: TrackingServiceType.usps,
          localizedName: S.of(context).usps,
          iconData: ServiceLogoIconsData.usps,
          postalServices: {
            PostalServiceMetadata(
              type: PostalServiceType.usps,
              localizedName: S.of(context).usps,
              iconData: ServiceLogoIconsData.usps,
            )
          },
        );
    }
  }
}

class PostalServiceMetadataMapper {
  static PostalServiceMetadata of(
    BuildContext context,
    PostalServiceType type,
  ) {
    switch (type) {
      case PostalServiceType.ups:
        return PostalServiceMetadata(
          type: PostalServiceType.ups,
          localizedName: S.of(context).ups,
          iconData: ServiceLogoIconsData.ups,
        );
      case PostalServiceType.russianPost:
        return PostalServiceMetadata(
          type: PostalServiceType.russianPost,
          localizedName: S.of(context).russianPost,
          iconData: ServiceLogoIconsData.russianPost,
        );
      case PostalServiceType.usps:
        return PostalServiceMetadata(
          type: PostalServiceType.usps,
          localizedName: S.of(context).usps,
          iconData: ServiceLogoIconsData.usps,
        );
    }
  }
}
