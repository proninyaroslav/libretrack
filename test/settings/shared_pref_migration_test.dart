// Copyright (C) 2024 Yaroslav Pronin <proninyaroslav@mail.ru>
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

import 'package:flutter_test/flutter_test.dart';
import 'package:libretrack/core/settings/shared_pref_migrator.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';
// ignore: depend_on_referenced_packages
import 'package:shared_preferences_platform_interface/in_memory_shared_preferences_async.dart';
// ignore: depend_on_referenced_packages
import 'package:shared_preferences_platform_interface/shared_preferences_async_platform_interface.dart';

void main() {
  group('SharedPreferences migration |', () {
    late SharedPreferencesAsync sharedPref;
    late SharedPreferences sharedPrefOld;
    late SharedPreferences mockSharedPrefOld;

    setUpAll(() async {
      SharedPreferences.setMockInitialValues(<String, Object>{});
      SharedPreferencesAsyncPlatform.instance =
          InMemorySharedPreferencesAsync.empty();

      sharedPref = SharedPreferencesAsync();
      sharedPrefOld = await SharedPreferences.getInstance();
      mockSharedPrefOld = _MockSharedPreferences();
    });

    tearDownAll(() {
      sharedPref.clear();
      sharedPrefOld.clear();
    });

    test('Migrate', () async {
      sharedPref
        ..setBool('bool1', true)
        ..setBool('bool2', false)
        ..setDouble('double1', 1.1)
        ..setDouble('double2', 1.2)
        ..setInt('int1', 1)
        ..setInt('int2', 2)
        ..setString('string1', '1')
        ..setString('string2', '2')
        ..setStringList('stringList1', ['1', '2', '3'])
        ..setStringList('stringList2', ['4', '5', '6']);

      final migrator = SharedPreferencesMigrator(
        oldPrefs: sharedPrefOld,
        newPrefs: sharedPref,
      );
      await migrator.migrate();
      expect(migrator.didMigrate, isTrue);
      expect(
        sharedPrefOld.getBool('shared_preferences_package_did_migrate'),
        isTrue,
      );

      expect(await sharedPref.getBool('bool1'), true);
      expect(await sharedPref.getBool('bool2'), false);
      expect(await sharedPref.getDouble('double1'), 1.1);
      expect(await sharedPref.getDouble('double2'), 1.2);
      expect(await sharedPref.getInt('int1'), 1);
      expect(await sharedPref.getInt('int2'), 2);
      expect(await sharedPref.getString('string1'), '1');
      expect(await sharedPref.getString('string2'), '2');
      expect(await sharedPref.getStringList('stringList1'), ['1', '2', '3']);
      expect(await sharedPref.getStringList('stringList2'), ['4', '5', '6']);
    });

    test('Already migrate', () async {
      final migrator = SharedPreferencesMigrator(
        oldPrefs: mockSharedPrefOld,
        newPrefs: sharedPref,
      );
      expect(
        sharedPrefOld.getBool('shared_preferences_package_did_migrate'),
        isTrue,
      );

      when(() => mockSharedPrefOld.getBool(
            'shared_preferences_package_did_migrate',
          )).thenReturn(true);
      when(() => mockSharedPrefOld.setBool(any(), any()))
          .thenAnswer((_) async => true);
      when(() => mockSharedPrefOld.setDouble(any(), any()))
          .thenAnswer((_) async => true);
      when(() => mockSharedPrefOld.setInt(any(), any()))
          .thenAnswer((_) async => true);
      when(() => mockSharedPrefOld.setString(any(), any()))
          .thenAnswer((_) async => true);
      when(() => mockSharedPrefOld.setStringList(any(), any()))
          .thenAnswer((_) async => true);

      await migrator.migrate();

      verifyNever(() => mockSharedPrefOld.setBool(any(), any()));
      verifyNever(() => mockSharedPrefOld.setDouble(any(), any()));
      verifyNever(() => mockSharedPrefOld.setInt(any(), any()));
      verifyNever(() => mockSharedPrefOld.setString(any(), any()));
      verifyNever(() => mockSharedPrefOld.setStringList(any(), any()));
    });
  });
}

class _MockSharedPreferences extends Mock implements SharedPreferences {}
