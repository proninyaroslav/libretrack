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
import 'package:libretrack/core/model/tracking_service/tracking_service.dart';

import '../../../locale.dart';

part 'model.freezed.dart';

abstract class UPSFormFieldId {
  static const login = FormFieldId('login');
  static const password = FormFieldId('password');
  static const accessKey = FormFieldId('access_key');
}

abstract class RussianPostFormFieldId {
  static const login = FormFieldId('login');
  static const password = FormFieldId('password');
}

@freezed
class AuthFormField with _$AuthFormField {
  const factory AuthFormField({
    required FormFieldId id,
    required String name,
    required bool secured,
    String? value,
  }) = _AuthFormFieldData;
}

@freezed
class FormFieldId with _$FormFieldId {
  const factory FormFieldId(String value) = _FormFieldIdData;
}

AuthData buildModelAuthData(
  Map<FormFieldId, TextEditingController> controllers,
  TrackingServiceType type,
) {
  switch (type) {
    case TrackingServiceType.ups:
      return UPSAuthData(
        username: controllers[UPSFormFieldId.login]!.text,
        password: controllers[UPSFormFieldId.password]!.text,
        accessLicenseNumber: controllers[UPSFormFieldId.accessKey]!.text,
      ).toAuthData();
    case TrackingServiceType.russianPost:
      return RussianPostAuthData(
        login: controllers[RussianPostFormFieldId.login]!.text,
        password: controllers[RussianPostFormFieldId.password]!.text,
      ).toAuthData();
  }
}

List<AuthFormField> buildFormField({
  required BuildContext context,
  required TrackingServiceType type,
  AuthData? authData,
}) {
  switch (type) {
    case TrackingServiceType.ups:
      final upsAuthData = authData == null ? null : UPSAuthData.from(authData);
      return [
        AuthFormField(
          id: UPSFormFieldId.login,
          name: S.of(context).login,
          value: upsAuthData?.username,
          secured: false,
        ),
        AuthFormField(
          id: UPSFormFieldId.password,
          name: S.of(context).password,
          value: upsAuthData?.password,
          secured: true,
        ),
        AuthFormField(
          id: UPSFormFieldId.accessKey,
          name: S.of(context).accessKey,
          value: upsAuthData?.accessLicenseNumber,
          secured: false,
        ),
      ];
    case TrackingServiceType.russianPost:
      final rpAuthData = authData == null ? null : RussianPostAuthData.from(authData);
      return [
        AuthFormField(
          id: UPSFormFieldId.login,
          name: S.of(context).login,
          value: rpAuthData?.login,
          secured: false,
        ),
        AuthFormField(
          id: UPSFormFieldId.password,
          name: S.of(context).password,
          value: rpAuthData?.password,
          secured: true,
        ),
      ];
  }
}

String buildHelperDescriptionText(
  BuildContext context,
  TrackingServiceType type,
) {
  switch (type) {
    case TrackingServiceType.ups:
      return S.of(context).upsAddAccountDescription;
    case TrackingServiceType.russianPost:
      return S.of(context).russianPostAddAccountDescription;
  }
}
