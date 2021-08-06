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

#include <flutter_linux/flutter_linux.h>
#ifdef GDK_WINDOWING_X11
#include <gdk/gdkx.h>
#endif
#include <glib/gi18n.h>
#include <libappindicator/app-indicator.h>

#include <string_view>

#include "flutter/generated_plugin_registrant.h"
#include "path_provider.h"

struct _MyApplication {
    GtkApplication parent_instance;
    char **dart_entrypoint_arguments;
};

G_DEFINE_TYPE(MyApplication, my_application, GTK_TYPE_APPLICATION)

const char *WINDOWS_TITLE = "LibreTrack";
const unsigned int WINDOW_WINDTH = 1280;
const unsigned int WINDOW_HEIGHT = 720;

GtkWindow *window = nullptr;

static void show_hide_window()
{
    if (gtk_widget_is_visible(GTK_WIDGET(window))) {
        gtk_widget_hide(GTK_WIDGET(window));
    } else {
        gtk_window_deiconify(window);
        gtk_widget_show(GTK_WIDGET(window));
    }
}

static void quit(GtkMenuItem *item, gpointer application)
{
    g_application_quit(G_APPLICATION(application));
}

static void build_app_indicator(GApplication *application, gchar *app_icon)
{
    AppIndicator *indicator;
    GtkWidget *indicator_menu;
    GtkWidget *show_hide_button;
    GtkWidget *quit_button;

    indicator = app_indicator_new(
        APPLICATION_ID,
        app_icon,
        APP_INDICATOR_CATEGORY_APPLICATION_STATUS);
    app_indicator_set_status(indicator, APP_INDICATOR_STATUS_ACTIVE);

    indicator_menu = gtk_menu_new();

    show_hide_button = gtk_menu_item_new_with_label(gettext("Show/Hide"));
    g_signal_connect(
        show_hide_button,
        "activate",
        G_CALLBACK(show_hide_window),
        nullptr);
    gtk_menu_shell_insert(GTK_MENU_SHELL(indicator_menu), show_hide_button, 0);
    gtk_widget_show(show_hide_button);

    quit_button = gtk_menu_item_new_with_label(gettext("Quit"));
    g_signal_connect(
        quit_button,
        "activate",
        G_CALLBACK(quit),
        application);
    gtk_menu_shell_insert(GTK_MENU_SHELL(indicator_menu), quit_button, 1);
    gtk_widget_show(quit_button);

    app_indicator_set_menu(indicator, GTK_MENU(indicator_menu));
    gtk_widget_show_all(indicator_menu);
}

static void show_window()
{
    if (!gtk_widget_is_visible(GTK_WIDGET(window))) {
        gtk_window_deiconify(window);
        gtk_widget_show(GTK_WIDGET(window));
    }
}

static gchar *get_app_icon(gchar *icons_path)
{
    GtkIconTheme *theme = gtk_icon_theme_get_default();
    if (gtk_icon_theme_has_icon(theme, APPLICATION_ID)) {
        return g_strdup(APPLICATION_ID);
    } else {
        return g_build_filename(
            icons_path,
            "app-icon.svg",
            nullptr);
    }
}

// Implements GApplication::activate.
static void my_application_activate(GApplication *application)
{
    if (window) {
        show_window();
        return;
    }
    MyApplication *self = MY_APPLICATION(application);
    window = GTK_WINDOW(gtk_application_window_new(GTK_APPLICATION(application)));

    // Use a header bar when running in GNOME as this is the common style used
    // by applications and is the setup most users will be using (e.g. Ubuntu
    // desktop).
    // If running on X and not using GNOME then just use a traditional title bar
    // in case the window manager does more exotic layout, e.g. tiling.
    // If running on Wayland assume the header bar will work (may need changing
    // if future cases occur).
    auto use_header_bar = true;
#ifdef GDK_WINDOWING_X11
    GdkScreen *screen = gtk_window_get_screen(window);
    if (GDK_IS_X11_SCREEN(screen)) {
        const std::string_view wm_name = gdk_x11_screen_get_window_manager_name(screen);
        if (wm_name != "GNOME Shell") {
            use_header_bar = false;
        }
    }
#endif
    if (use_header_bar) {
        GtkHeaderBar *header_bar = GTK_HEADER_BAR(gtk_header_bar_new());
        gtk_widget_show(GTK_WIDGET(header_bar));
        gtk_header_bar_set_title(header_bar, WINDOWS_TITLE);
        gtk_header_bar_set_show_close_button(header_bar, TRUE);
        gtk_window_set_titlebar(window, GTK_WIDGET(header_bar));
    } else {
        gtk_window_set_title(window, WINDOWS_TITLE);
    }

    g_signal_connect(
        window,
        "delete-event",
        G_CALLBACK(show_hide_window),
        nullptr);

    GError *err = nullptr;
    g_autofree gchar *icons_path = PathProvider::get_icons_dir(&err);
    if (err != nullptr) {
        g_error("Unable to get icons dir path: %s", err->message);
        g_error_free(err);
    }
    g_autofree gchar *app_icon = get_app_icon(icons_path);

    if (strcmp(app_icon, APPLICATION_ID) == 0) {
        gtk_window_set_icon_name(window, app_icon);
    } else {
        err = nullptr;
        gtk_window_set_icon_from_file(window, app_icon, &err);
        if (err != nullptr) {
            g_error("Unable to set window icon: %s", err->message);
            g_error_free(err);
        }
    }

    GdkRectangle workarea = { 0 };
    auto display = gdk_display_get_default();
    if (display) {
        auto monitor = gdk_display_get_primary_monitor(display);
        if (monitor) {
            gdk_monitor_get_workarea(monitor, &workarea);
        }
    }
    if (workarea.width == 0 && workarea.height == 0) {
        gtk_window_set_default_size(window, WINDOW_WINDTH, WINDOW_HEIGHT);
    } else {
        gtk_window_set_default_size(window,
            WINDOW_WINDTH > workarea.width ? workarea.width : WINDOW_WINDTH,
            WINDOW_HEIGHT > workarea.height ? workarea.height : WINDOW_HEIGHT);
    }

    gtk_widget_show(GTK_WIDGET(window));

    g_autoptr(FlDartProject) project = fl_dart_project_new();
    fl_dart_project_set_dart_entrypoint_arguments(project, self->dart_entrypoint_arguments);

    FlView *view = fl_view_new(project);
    gtk_widget_show(GTK_WIDGET(view));
    gtk_container_add(GTK_CONTAINER(window), GTK_WIDGET(view));

    fl_register_plugins(FL_PLUGIN_REGISTRY(view));

    gtk_widget_grab_focus(GTK_WIDGET(view));

    build_app_indicator(application, app_icon);
}

// Implements GApplication::local_command_line.
static gboolean my_application_local_command_line(
    GApplication *application,
    gchar ***arguments,
    int *exit_status)
{
    MyApplication *self = MY_APPLICATION(application);
    // Strip out the first argument as it is the binary name.
    self->dart_entrypoint_arguments = g_strdupv(*arguments + 1);

    g_autoptr(GError) error = nullptr;
    if (!g_application_register(application, nullptr, &error)) {
        g_warning("Failed to register: %s", error->message);
        *exit_status = 1;
        return true;
    }

    g_application_activate(application);
    *exit_status = 0;

    return true;
}

// Implements GObject::dispose.
static void my_application_dispose(GObject *object)
{
    MyApplication *self = MY_APPLICATION(object);
    g_clear_pointer(&self->dart_entrypoint_arguments, g_strfreev);
    G_OBJECT_CLASS(my_application_parent_class)->dispose(object);
}

static void my_application_class_init(MyApplicationClass *klass)
{
    G_APPLICATION_CLASS(klass)->activate = my_application_activate;
    G_APPLICATION_CLASS(klass)->local_command_line = my_application_local_command_line;
    G_OBJECT_CLASS(klass)->dispose = my_application_dispose;
}

static void my_application_init(MyApplication *self) { }

MyApplication *my_application_new()
{
    return MY_APPLICATION(g_object_new(my_application_get_type(),
        "application-id", APPLICATION_ID,
        "flags", G_APPLICATION_FLAGS_NONE,
        nullptr));
}
