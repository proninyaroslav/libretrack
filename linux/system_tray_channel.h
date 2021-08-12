/*
 * Copyright (C) 2021 Yaroslav Pronin <proninyaroslav@mail.ru>
 * Copyright (C) 2021 Insurgo Inc. <insurgo@riseup.net>
 *
 * This file is part of LibreTrack.
 *
 * LibreTrack is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * LibreTrack is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with LibreTrack.  If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef SYSTEM_TRAY_CHANNEL_H_
#define SYSTEM_TRAY_CHANNEL_H_

#include <flutter_linux/flutter_linux.h>

namespace SystemTrayChannel {
enum Method {
    ENABLE_TRAY_ICON,
    DISABLE_TRAY_ICON,
    SHOW_WINDOW,
};

typedef void (*CallHandler)(Method method_call);

void init(FlBinaryMessenger *messenger, CallHandler callback);
};

#endif // SYSTEM_TRAY_CHANNEL_H_
