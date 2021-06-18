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

import 'package:freezed_annotation/freezed_annotation.dart';

part 'locale.freezed.dart';
part 'locale.g.dart';

/// This represents a [Unicode Language
/// Identifier](https://www.unicode.org/reports/tr35/#Unicode_language_identifier)
/// (i.e. without Locale extensions), except variants are not supported.
@freezed
class Locale with _$Locale {
  /// Creates a new Locale object. The first argument is the
  /// primary language subtag, the second is the region (also
  /// referred to as 'country') subtag.
  ///
  /// For example:
  ///
  /// ```dart
  /// const Locale swissFrench = Locale('fr', 'CH');
  /// const Locale canadianFrench = Locale('fr', 'CA');
  /// ```
  ///
  /// The primary language subtag must not be null. The region subtag is
  /// optional. When there is no region/country subtag, the parameter should
  /// be omitted or passed `null` instead of an empty-string.
  ///
  /// The subtag values are _case sensitive_ and must be one of the valid
  /// subtags according to CLDR supplemental data:
  /// [language](http://unicode.org/cldr/latest/common/validity/language.xml),
  /// [region](http://unicode.org/cldr/latest/common/validity/region.xml). The
  /// primary language subtag must be at least two and at most eight lowercase
  /// letters, but not four letters. The region region subtag must be two
  /// uppercase letters or three digits. See the [Unicode Language
  /// Identifier](https://www.unicode.org/reports/tr35/#Unicode_language_identifier)
  /// specification.
  ///
  /// Validity is not checked by default, but some methods may throw away
  /// invalid data.
  const factory Locale(
    String languageCode, [
    String? countryCode,
  ]) = _Locale;

  const Locale._();

  factory Locale.fromJson(Map<String, dynamic> json) => _$LocaleFromJson(json);

  /// Returns a string representing the locale.
  ///
  /// This identifier happens to be a valid Unicode Locale Identifier using
  /// underscores as separator.
  String toLocaleString() => countryCode == null || countryCode!.isEmpty
      ? languageCode
      : '${languageCode}_$countryCode';
}
