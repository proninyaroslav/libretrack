#include "path_provider.h"

#include <cstdio>

gchar *PathProvider::get_app_dir(GError **err)
{
    g_autofree gchar *exec_path = g_file_read_link("/proc/self/exe", err);
    if (*err) {
        return nullptr;
    }
    return g_path_get_dirname(exec_path);
}

gchar *PathProvider::get_locale_dir(GError **err)
{
    g_autofree gchar *dir_path = get_app_dir(err);
    if (*err) {
        return g_strdup(GETTEXT_LOCALE_DIR);
    }
    return g_build_filename(dir_path, GETTEXT_LOCALE_DIR, nullptr);
}

gchar *PathProvider::get_icons_dir(GError **err)
{
    g_autofree gchar *dir_path = get_app_dir(err);
    if (*err) {
        return g_strdup(ICONS_DIR);
    }
    return g_build_filename(dir_path, ICONS_DIR, nullptr);
}
