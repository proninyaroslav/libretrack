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

import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_mailer/flutter_mailer.dart';
import 'package:injectable/injectable.dart';
import 'package:libretrack/logger.dart';
import 'package:url_launcher/url_launcher.dart';

import '../platform_info.dart';
import 'model.dart';

abstract class CrashReportSender {
  Future<CrashReportSendResult> send(CrashReport report);
}

@Injectable(as: CrashReportSender)
class CrashReportSenderImpl implements CrashReportSender {
  final PlatformInfo _platform;

  CrashReportSenderImpl(this._platform);

  @override
  Future<CrashReportSendResult> send(CrashReport report) async {
    if (_platform.isAndroid || _platform.isIOS) {
      if (_platform.isIOS && !await FlutterMailer.canSendMail()) {
        return _sendMailto(report);
      } else {
        return _sendMailIntent(report).then((res) {
          if (res == const CrashReportSendResult.emailUnsupported()) {
            return _sendMailto(report);
          } else {
            return res;
          }
        });
      }
    } else {
      return _sendMailto(report);
    }
  }

  Future<CrashReportSendResult> _sendMailIntent(CrashReport report) async {
    final mailOptions = MailOptions(
      body: jsonEncode(report.data),
      subject: report.subject,
      recipients: [report.email],
    );
    final response = await FlutterMailer.send(mailOptions);

    return response == MailerResponse.unknown
        ? const CrashReportSendResult.emailUnsupported()
        : const CrashReportSendResult.success();
  }

  Future<CrashReportSendResult> _sendMailto(CrashReport report) async {
    final body = Uri.encodeComponent(jsonEncode(report.data));
    final uri = Uri(
      scheme: 'mailto',
      path: report.email,
      query: 'subject=${report.subject}&body=$body',
    );

    try {
      return await launchUrl(uri)
          ? const CrashReportSendResult.success()
          : const CrashReportSendResult.emailUnsupported();
    } on PlatformException catch (e, stackTrace) {
      log()
          .w('Unable to launch email client', error: e, stackTrace: stackTrace);
      return const CrashReportSendResult.emailUnsupported();
    }
  }
}
