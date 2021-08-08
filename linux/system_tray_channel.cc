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

#include "system_tray_channel.h"

#include <string_view>

const char *CHANNEL_NAME = "org.proninyaroslav.libretrack.system_tray";

SystemTrayChannel::CallHandler cb = nullptr;

void method_call_cb(
    FlMethodChannel *channel,
    FlMethodCall *method_call,
    gpointer user_data)
{
    g_autoptr(FlMethodResponse) response = nullptr;

    const std::string_view method = fl_method_call_get_name(method_call);

    if (method == "enableTrayIcon") {
        response = FL_METHOD_RESPONSE(fl_method_success_response_new(nullptr));
        (*cb)(SystemTrayChannel::Method::ENABLE_TRAY_ICON);
    } else if (method == "disableTrayIcon") {
        response = FL_METHOD_RESPONSE(fl_method_success_response_new(nullptr));
        cb(SystemTrayChannel::Method::DISABLE_TRAY_ICON);
    } else {
        response = FL_METHOD_RESPONSE(fl_method_not_implemented_response_new());
    }

    fl_method_call_respond(method_call, response, nullptr);
}

void SystemTrayChannel::init(
    FlBinaryMessenger *messenger,
    CallHandler callback)
{
    cb = callback;
    g_autoptr(FlStandardMethodCodec) codec = fl_standard_method_codec_new();
    g_autoptr(FlMethodChannel) channel = fl_method_channel_new(
        messenger,
        CHANNEL_NAME,
        FL_METHOD_CODEC(codec));
    fl_method_channel_set_method_call_handler(
        channel,
        method_call_cb,
        nullptr,
        nullptr);
}
