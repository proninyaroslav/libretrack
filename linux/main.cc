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

int main(int argc, char **argv)
{
    setlocale(LC_ALL, "");
    bindtextdomain(GETTEXT_PACKAGE, GETTEXT_LOCALE_DIR);
    textdomain(GETTEXT_PACKAGE);

    g_autoptr(MyApplication) app = my_application_new();
    return g_application_run(G_APPLICATION(app), argc, argv);
}
