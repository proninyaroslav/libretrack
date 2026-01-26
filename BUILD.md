# ⚙️ Building

To build, you need to install [Flutter](https://flutter.dev/docs/get-started/install).

Enter the following command in the terminal to build the project:

- **Android APK**

  ```
  flutter build apk --flavor base
  ```
  or

  ```
  flutter build apk --flavor base --target-platform [android-arm|android-arm64|android-x64]
  ```

  The built APK will be located in the `build/app/outputs/flutter-apk/` directory.

- **Linux binary**

  Note: for support system tray in GNOME, please install [gnome-shell-extension-appindicator](https://extensions.gnome.org/extension/615/appindicator-support/) or similar extension.

  Before building, make sure that the following dependencies are installed on the system:

  - **gtk3**
  - **libsecret**
  - **libjsoncpp**
  - **libappindicator** (GTK3)
  - **libsqlite3** (and development version)
  - **gettext** (for build only)

  Development versions for these packages are also required for building.

  To enable Linux support, enter the following command (runs once):

  ```
  flutter config --enable-linux-desktop
  ```

  Then run the following command:

  ```
  flutter build linux
  ```

  The built binary will be located in the `build/linux/x64/debug/bundle/` directory (or `build/linux/arm64/` for arm64 builds). The contents of the `bundle` directory must be fully copied.

- **Linux Snap package**

  Note: for support system tray in GNOME, please install [gnome-shell-extension-appindicator](https://extensions.gnome.org/extension/615/appindicator-support/) or similar extension.

  Before building, make sure that the `snapcraft` dependency is installed on the system.

  Then run the following command:

  ```
  snapcraft
  ```

  The resulting `.snap` file can be installed as follows:

  ```
  sudo snap install output_file_name.snap --dangerous
  ```

- **Linux Flatpak package**

  Note: for support system tray in GNOME, please install [gnome-shell-extension-appindicator](https://extensions.gnome.org/extension/615/appindicator-support/) or similar extension.

  Before building, make sure that the `flatpak` and `flatpak-builder` dependencies are installed on the system.

  Then run the following commands:

  ```
  flatpak install org.freedesktop.Sdk
  ```

  ```
  cd flatpak
  ```

  ```
  flatpak-builder --user --install builddir ru.proninyaroslav.libretrack.yaml --force-clean
  ```
