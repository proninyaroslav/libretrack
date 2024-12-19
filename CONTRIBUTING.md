Contributor Guide
=====================

## 🌍 Note for translators

Localization files are located in the [lib/l10n](lib/l10n) directory.

The app uses ARB format for localization. If you wonder how to format key-values content inside ARB files, [here](https://github.com/google/app-resource-bundle/wiki/ApplicationResourceBundleSpecification) is detailed explanation.

If you are making changes to the localization files, run the following command:
```
flutter gen-l10n
```
or use `Generate Localizations` button in VSCode when the file is open in the editor.

Detailed documentation about localization [here](https://docs.flutter.dev/ui/accessibility-and-internationalization/internationalization).

### Android localization

The original strings for translation are located in the [android/app/src/main/res/values/strings.xml](android/app/src/main/res/values/strings.xml) file. To translate, you need to create a directory with your localization code, for example: `android/app/src/main/res/values-ru/strings.xml`. More about localization in Android https://developer.android.com/training/basics/supporting-devices/languages.

### Linux localization

The original strings for translation are located in the [linux/po/messages.pot](linux/po/messages.pot) file. To translate, you need to create a file with your localization code, for example: `linux/po/ru.po`. Also add your language code to the [linux/po/CMakeLists.txt](linux/po/CMakeLists.txt) file (`translated_languages` section). More about `GNU gettext` localization https://docs.weblate.org/en/latest/devel/gettext.html#starting-new-translation.

## ⚙️ How to make changes in the code

### 📦 Note for adding new postal services

Service specific code is located in [lib/core/model/tracking_service](lib/core/model/tracking_service). Each new service should be in a separate directory.

To add a new service, examine the code structure of any existing plugin, for example, UPS [lib/core/model/tracking_service/ups](lib/core/model/tracking_service/ups).

### 1. Where to begin

Start by looking at the [open issues](https://github.com/proninyaroslav/libretrack/issues) to contribute code.

Make sure to write your name and e-mail address in format `Name <e-mail>` in the license declaration above every file you make changes to.

Repeat and rinse, if you send enough patches to demonstrate you have a good coding skills, you will be given commit access on the real repo, making you part of the development team.

Also, take a look at [**Coding Guidelines**](#-coding-guidelines) before making code changes.

### 2. After making changes

Be sure to run `build_runner` before creating your commit:
```
flutter pub run build_runner build --delete-conflicting-outputs
```

Detailed documentation on `build_runner` [here](https://pub.dev/packages/build_runner).

If you are making changes to the localization files, also read the [Note for translators](#-note-for-translators) section.

### 3. Testing

Make sure that all existing and new tests are passing:
```
flutter test test
```

## 📋 Coding Guidelines

 - Keep it snimple snupid: [KISS](https://en.wikipedia.org/wiki/KISS_principle)
 - No repeating yourself. [Re-use your own code and that of others](https://en.wikipedia.org/wiki/Don%27t_repeat_yourself).
 - If you want to help, triaging and keeping up with the issue and TODO list is great.
 - Try to follow our coding style and formatting before submitting a patch.
 - All merge requests should come from a feature branch created on your Git fork. Your code will be reviewed, and only merged to the master branch if it doesn't break the build.
 - When you submit a merge request, try to explain what issue you're fixing, and what you're fixing in detail, so it's easier for us to read your patches.
 - Well named methods and code re-usability is preferable to a lot of comments.
