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

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:libretrack/core/crash_report/crash_report_manager.dart';
import 'package:libretrack/ui/model/error_report_cubit.dart';
import 'package:libretrack/ui/model/error_report_state.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock/mock.dart';

void main() {
  group('ErrorReportCubit |', () {
    late CrashReportManager mockReportManager;
    late ErrorReportCubit cubit;

    setUpAll(() {
      mockReportManager = MockCrashReportManager();
    });

    setUp(() {
      cubit = ErrorReportCubit(mockReportManager);
    });

    blocTest(
      'Initial state',
      build: () => cubit,
      expect: () => [],
    );

    blocTest(
      'Report success',
      build: () => cubit,
      act: (ErrorReportCubit cubit) async {
        const info = CrashInfo(
          error: 'test',
          message: 'comment',
        );
        when(
          () => mockReportManager.sendReport(info),
        ).thenAnswer(
          (_) async => const CrashReportSendResult.success(),
        );
        await cubit.sendReport(
          error: info.error,
          stackTrace: info.stackTrace,
          message: info.message,
        );
      },
      expect: () => [
        const ErrorReportState.inProgress(),
        const ErrorReportState.success(),
      ],
    );

    blocTest(
      'Email unsupported',
      build: () => cubit,
      act: (ErrorReportCubit cubit) async {
        const info = CrashInfo(error: 'test');
        when(
          () => mockReportManager.sendReport(info),
        ).thenAnswer(
          (_) async => const CrashReportSendResult.emailUnsupported(),
        );
        await cubit.sendReport(error: info.error);
      },
      expect: () => [
        const ErrorReportState.inProgress(),
        const ErrorReportState.emailUnsupported(),
      ],
    );
  });
}
