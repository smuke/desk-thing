cmake_minimum_required(VERSION 3.16)

project(spotify-desk-thing VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 REQUIRED COMPONENTS Quick)

qt_add_executable(appspotify-desk-thing
    main.cpp
)

qt_add_qml_module(appspotify-desk-thing
    URI spotify-desk-thing
    VERSION 1.0
    QML_FILES Main.qml
    SOURCES backend.h backend.cpp
)

set_target_properties(appspotify-desk-thing PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appspotify-desk-thing
    PRIVATE Qt6::Quick
)

install(TARGETS appspotify-desk-thing
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

