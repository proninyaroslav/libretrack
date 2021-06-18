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

part of 'model.dart';

class ParcelsFilterBatch extends Equatable with IterableMixin<ParcelsFilter?> {
  final Map<String, ParcelsFilter?> _filters;

  ParcelsFilterBatch() : _filters = {};

  ParcelsFilterBatch.from(ParcelsFilterBatch other) : _filters = {} {
    _filters.addAll(other._filters);
  }

  set statusFilter(ParcelsFilter? filter) {
    assert(filter == null || filter is ParcelsFilterStatus);
    _filters['status'] = filter;
  }

  ParcelsFilterStatus? get statusFilter {
    return _filters['status'] as ParcelsFilterStatus?;
  }

  set newInfoFilter(ParcelsFilter? filter) {
    assert(filter == null || filter is ParcelsFilterNewInfo);
    _filters['newInfo'] = filter;
  }

  ParcelsFilterNewInfo? get newInfoFilter {
    return _filters['newInfo'] as ParcelsFilterNewInfo?;
  }

  set errorFilter(ParcelsFilter? filter) {
    assert(filter == null || filter is ParcelsFilterError);
    _filters['error'] = filter;
  }

  ParcelsFilterError? get errorFilter {
    return _filters['error'] as ParcelsFilterError?;
  }

  set postalServiceFilter(ParcelsFilter? filter) {
    assert(filter == null || filter is ParcelsFilterPostalService);
    _filters['postalService'] = filter;
  }

  ParcelsFilterPostalService? get postalServiceFilter {
    return _filters['postalService'] as ParcelsFilterPostalService?;
  }

  @override
  List<Object> get props => [_filters];

  @override
  bool get stringify => true;

  @override
  Iterator<ParcelsFilter?> get iterator => _filters.values.iterator;

  ParcelsFilterBatch.fromJson(Map<String, dynamic> json)
      : _filters = Map.fromEntries(
          json.entries.map(
            (entry) => MapEntry(
              entry.key,
              ParcelsFilter.fromJson(entry.value as Map<String, dynamic>),
            ),
          ),
        );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    for (final entry in _filters.entries) {
      final json = entry.value?.toJson();
      if (json != null) {
        map[entry.key] = json;
      }
    }
    return map;
  }
}
