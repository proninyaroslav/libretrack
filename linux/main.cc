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

#include "my_application.h"

#include <glib/gi18n.h>
#include <locale>

void setup_locale()
{
    setlocale(LC_ALL, "");
    GError *err = nullptr;
    g_autofree gchar *exec_path = g_file_read_link("/proc/self/exe", &err);
    if (err == nullptr) {
        g_autofree gchar *dir_path = g_path_get_dirname(exec_path);
        g_autofree gchar *locale_path = g_build_filename(
            dir_path,
            GETTEXT_LOCALE_DIR,
            nullptr);
        bindtextdomain(GETTEXT_PACKAGE, locale_path);
    } else {
        g_error("Unable to get app dir path: %s", err->message);
        g_error_free(err);
        bindtextdomain(GETTEXT_PACKAGE, GETTEXT_LOCALE_DIR);
    }

    textdomain(GETTEXT_PACKAGE);
}

int main(int argc, char **argv)
{
    setup_locale();

    g_autoptr(MyApplication) app = my_application_new();
    return g_application_run(G_APPLICATION(app), argc, argv);
}
