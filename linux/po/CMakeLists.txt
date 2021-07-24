# Translations

# List of languages this project has been translated into.  Each
# language should match a ${LANGUAGE}.po file in this directory.
set(translated_languages
    ru)

find_package(Gettext REQUIRED)

# Find sources to use process.
file(GLOB gettext_source_files
    ${CMAKE_SOURCE_DIR}/*.cc)

# Create an "update-pot" target.  This will scan the sources and
# update the list of translatable strings.  Note that this will output
# to the source directory, not the build directory.
find_program(XGETTEXT xgettext)
if(NOT "${XGETTEXT}" STREQUAL "XGETTEXT-NOTFOUND")
    add_custom_command(OUTPUT ${CMAKE_CURRENT_SOURCE_DIR}/messages.pot
        COMMAND ${XGETTEXT}
            --package-name ${LOCALIZE_PROJECT_NAME}
            --msgid-bugs-address ${LOCALIZE_MSGID_BUGS_ADDRESS}
            --from-code "UTF-8"
            --no-location
            -o "${CMAKE_CURRENT_SOURCE_DIR}/messages.pot"
            ${gettext_source_files}
        DEPENDS ${gettext_source_files})

    add_custom_target(update-pot DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/messages.pot")
endif()

# Create targets to translate each language's po file into an mo file.
set(mo_files)
foreach(language ${translated_languages})
    list(APPEND mo_files "${CMAKE_CURRENT_BINARY_DIR}/${language}.mo")
    add_custom_command(OUTPUT "${language}.mo"
        COMMAND ${GETTEXT_MSGFMT_EXECUTABLE}
            -o "${CMAKE_CURRENT_BINARY_DIR}/${language}.mo"
            "${language}.po"
        DEPENDS "${language}.po"
        WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
    install(FILES "${CMAKE_CURRENT_BINARY_DIR}/${language}.mo"
        RENAME "${GETTEXT_PACKAGE}.mo"
        DESTINATION "${GETTEXT_LOCALE_DIR}/${language}/LC_MESSAGES/")
endforeach(language)

# Create an "update-mo" target which depends on all the mo files.
add_custom_target(update-mo ALL DEPENDS ${mo_files})
