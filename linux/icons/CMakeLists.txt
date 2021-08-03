set(icons app-icon.svg)

foreach(icon ${icons})
    install(FILES "${CMAKE_CURRENT_SOURCE_DIR}/${icon}"
        DESTINATION "${ICONS_DIR}")
endforeach(icon)
