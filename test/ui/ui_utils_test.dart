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

import 'package:flutter_test/flutter_test.dart';
import 'package:libretrack/ui/utils/utils.dart';

void main() {
  test('Split words', () {
    const expectedWordsCount = 27;
    const text =
        'Hello World 123`~!@#%^&*()_-+{}[]\\|>?:., Привет Мир 你好世界 ہیلو ورلڈ హలో వరల్డ్ Chào thế giới ஹலோ வேர்ல்ட் हॅलो वर्ल्ड ওহে বিশ্ব ഹലോ വേൾഡ് Γειά σου Κόσμε สวัสดีชาวโลก שלום עולם';
    expect(UiUtils.splitWords(text).length, expectedWordsCount);
  });
}
