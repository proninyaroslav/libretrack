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
import 'package:flutter_test/flutter_test.dart';
import 'package:libretrack/core/entity/entity.dart';
import 'package:libretrack/ui/app_router.dart';

void main() {
  group('App route parser |', () {
    late final AppRouteInfoParser parser;

    setUpAll(() {
      parser = const AppRouteInfoParser();
    });

    test('Home page, default route', () async {
      final routeInfo = RouteInformation(uri: Uri.parse('/'));
      final path = await parser.parseRouteInformation(routeInfo);
      final actualRouteInfo = parser.restoreRouteInformation(
        const AppRoutePath.home(HomeRoutePath.parcels()),
      );
      expect(path, const AppRoutePath.home(HomeRoutePath.parcels()));
      expect(actualRouteInfo.uri, Uri.parse('/parcels'));
    });

    test('Home page, parcels page', () async {
      final routeInfo = RouteInformation(uri: Uri.parse('/parcels'));
      final path = await parser.parseRouteInformation(routeInfo);
      final actualRouteInfo = parser.restoreRouteInformation(
        const AppRoutePath.home(HomeRoutePath.parcels()),
      );
      expect(path, const AppRoutePath.home(HomeRoutePath.parcels()));
      expect(actualRouteInfo.uri, Uri.parse('/parcels'));
    });

    test('Home page, accounts page', () async {
      final routeInfo = RouteInformation(uri: Uri.parse('/accounts'));
      final path = await parser.parseRouteInformation(routeInfo);
      final actualRouteInfo = parser.restoreRouteInformation(
        const AppRoutePath.home(HomeRoutePath.accounts()),
      );
      expect(path, const AppRoutePath.home(HomeRoutePath.accounts()));
      expect(actualRouteInfo.uri, Uri.parse('/accounts'));
    });

    test('Unknown page', () async {
      final path = await parser.parseRouteInformation(
        RouteInformation(uri: Uri.parse('/some-unknown-page/')),
      );
      final actualRouteInfo = parser.restoreRouteInformation(
        const AppRoutePath.unknown(),
      );
      expect(path, const AppRoutePath.unknown());
      expect(actualRouteInfo.uri, Uri.parse('/page-not-found'));
    });

    test('Add account page', () async {
      final routeInfo = RouteInformation(uri: Uri.parse('/accounts/add/'));
      final path = await parser.parseRouteInformation(routeInfo);
      final actualRouteInfo = parser.restoreRouteInformation(
        const AppRoutePath.addAccount(),
      );
      expect(path, const AppRoutePath.addAccount());
      expect(actualRouteInfo.uri, Uri.parse('/accounts/add'));
    });

    test('Edit account page', () async {
      final routeInfo = RouteInformation(
        uri: Uri.parse('/accounts/edit/ups/'),
      );
      const path = AppRoutePath.editAccount(TrackingServiceType.ups);
      final actualPath = await parser.parseRouteInformation(routeInfo);
      final actualRouteInfo = parser.restoreRouteInformation(path);
      expect(actualPath, path);
      expect(actualRouteInfo.uri, Uri.parse('/accounts/edit/ups'));
    });

    test('Edit account page, missing service type', () async {
      final routeInfo = RouteInformation(
        uri: Uri.parse('/accounts/edit'),
      );
      expect(
        await parser.parseRouteInformation(routeInfo),
        const AppRoutePath.unknown(),
      );
    });

    test('Edit account page, invalid service type', () async {
      final routeInfo = RouteInformation(
        uri: Uri.parse('/accounts/edit/invalid/'),
      );
      expect(
        await parser.parseRouteInformation(routeInfo),
        const AppRoutePath.unknown(),
      );
    });

    test('Add parcels page', () async {
      final routeInfo = RouteInformation(uri: Uri.parse('/parcels/add/'));
      final path = await parser.parseRouteInformation(routeInfo);
      final actualRouteInfo = parser.restoreRouteInformation(
        const AppRoutePath.addParcels(),
      );
      expect(path, const AppRoutePath.addParcels());
      expect(actualRouteInfo.uri, Uri.parse('/parcels/add'));
    });

    test('Add parcels page with initial tracking number', () async {
      final routeInfo = RouteInformation(
        uri: Uri.parse('/parcels/add/'),
        state: '123',
      );
      final path = await parser.parseRouteInformation(routeInfo);
      final actualRouteInfo = parser.restoreRouteInformation(
        const AppRoutePath.addParcels(initialTrackNumbers: '123'),
      );
      expect(path, const AppRoutePath.addParcels(initialTrackNumbers: '123'));
      expect(actualRouteInfo.uri, Uri.parse('/parcels/add'));
    });

    test('Parcel details page', () async {
      final routeInfo = RouteInformation(
        uri: Uri.parse('/parcels/details/123/'),
      );
      const path = AppRoutePath.parcelDetails('123');
      final actualPath = await parser.parseRouteInformation(routeInfo);
      final actualRouteInfo = parser.restoreRouteInformation(path);
      expect(actualPath, path);
      expect(actualRouteInfo.uri, Uri.parse('/parcels/details/123'));
    });

    test('Parcel details page, missing tracking number', () async {
      final routeInfo = RouteInformation(
        uri: Uri.parse('/parcels/details'),
      );
      expect(
        await parser.parseRouteInformation(routeInfo),
        const AppRoutePath.unknown(),
      );
    });

    test('Settings page, missing sub-route', () async {
      final routeInfo = RouteInformation(
        uri: Uri.parse('/settings'),
      );
      expect(
        await parser.parseRouteInformation(routeInfo),
        const AppRoutePath.settings(),
      );
    });

    test('Settings page, appearance page', () async {
      final routeInfo =
          RouteInformation(uri: Uri.parse('/settings/appearance'));
      final path = await parser.parseRouteInformation(routeInfo);
      final actualRouteInfo = parser.restoreRouteInformation(
        const AppRoutePath.settings(subRoute: SettingsRoutePath.appearance()),
      );
      expect(
        path,
        const AppRoutePath.settings(subRoute: SettingsRoutePath.appearance()),
      );
      expect(actualRouteInfo.uri, Uri.parse('/settings/appearance'));
    });

    test('Settings page, behavior page', () async {
      final routeInfo = RouteInformation(uri: Uri.parse('/settings/behavior'));
      final path = await parser.parseRouteInformation(routeInfo);
      final actualRouteInfo = parser.restoreRouteInformation(
        const AppRoutePath.settings(subRoute: SettingsRoutePath.behavior()),
      );
      expect(
        path,
        const AppRoutePath.settings(subRoute: SettingsRoutePath.behavior()),
      );
      expect(actualRouteInfo.uri, Uri.parse('/settings/behavior'));
    });

    test('About page', () async {
      final routeInfo = RouteInformation(
        uri: Uri.parse('/about'),
      );
      const path = AppRoutePath.about();
      final actualPath = await parser.parseRouteInformation(routeInfo);
      final actualRouteInfo = parser.restoreRouteInformation(path);
      expect(actualPath, path);
      expect(actualRouteInfo.uri, Uri.parse('/about'));
    });
  });
}
