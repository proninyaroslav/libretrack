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

#ifndef PATH_PROVIDER_H_
#define PATH_PROVIDER_H_

#include <glib.h>

namespace PathProvider {
/*
 * Returns the absolute path to the locale dir or
 * nullptr if an error occurs.
 *
 * The data is owned by the caller of the function.
 */
gchar *get_app_dir(GError **err);

/*
 * Returns the absolute path to the locale dir or
 * GETTEXT_LOCALE_DIR if an error occurs.
 *
 * The data is owned by the caller of the function.
 */
gchar *get_locale_dir(GError **err);

/*
 * Returns the absolute path to the locale dir or
 * ICONS_DIR if an error occurs.
 *
 * The data is owned by the caller of the function.
 */
gchar *get_icons_dir(GError **err);
}

#endif // PATH_PROVIDER_H_
