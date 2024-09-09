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

import 'package:libretrack/core/settings/settings.dart';
import 'package:libretrack/ui/parcels/model/parcel_info.dart';

extension ParcelsSortExtension on ParcelsSort {
  int compare(ParcelInfo a, ParcelInfo b) {
    return when(
      alphabetically: (isDesc) =>
          _ComparatorsCollection.alphabetically(a, b, isDesc: isDesc),
      activityDate: (oldestFirst) =>
          _ComparatorsCollection.activityDate(a, b, oldestFirst: oldestFirst),
      dateAdded: (oldestFirst) =>
          _ComparatorsCollection.dateAdded(a, b, oldestFirst: oldestFirst),
    );
  }
}

class _ComparatorsCollection {
  static int alphabetically(
    ParcelInfo a,
    ParcelInfo b, {
    bool isDesc = false,
  }) {
    final name1 = a.trackInfo.description ?? a.trackInfo.trackNumber;
    final name2 = b.trackInfo.description ?? b.trackInfo.trackNumber;
    if (isDesc) {
      return name2.compareTo(name1);
    } else {
      return name1.compareTo(name2);
    }
  }

  static int activityDate(
    ParcelInfo a,
    ParcelInfo b, {
    bool oldestFirst = false,
  }) {
    final date1 = a.lastActivity?.dateTime ?? a.trackInfo.dateAdded;
    final date2 = b.lastActivity?.dateTime ?? b.trackInfo.dateAdded;
    if (date1 == null || date2 == null) {
      return 0;
    }
    if (oldestFirst) {
      final activityCompare = date1.compareTo(date2);
      if (activityCompare != 0) return activityCompare;
      return dateAdded(a, b, oldestFirst: true);
    } else {
      final activityCompare = date2.compareTo(date1);
      if (activityCompare != 0) return activityCompare;
      return dateAdded(a, b);
    }
  }

  static int dateAdded(
    ParcelInfo a,
    ParcelInfo b, {
    bool oldestFirst = false,
  }) {
    final dateAdded1 = a.trackInfo.dateAdded;
    final dateAdded2 = b.trackInfo.dateAdded;
    if (dateAdded1 == null || dateAdded2 == null) {
      return 0;
    }
    if (oldestFirst) {
      return dateAdded1.compareTo(dateAdded2);
    } else {
      return dateAdded2.compareTo(dateAdded1);
    }
  }
}
