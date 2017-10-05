cmake_minimum_required(VERSION 2.6)

project("GNU Guitar")

set (GNU_GUITAR_VERSION_MAJOR 0)
set (GNU_GUITAR_VERSION_MINOR 4)
set (GNU_GUITAR_VERSION_PATCH 0)

set (GNU_GUITAR_QT_WITH_CORE ON)

include_directories("components/core/include")

add_subdirectory("components/core")
add_subdirectory("components/effects")
add_subdirectory("components/gui")

set (CPACK_PACKAGE_NAME "GNU Guitar")
set (CPACK_PACKAGE_DESCRIPTION_SUMMARY "A guitar effects processor application.")
set (CPACK_PACKAGE_VENDOR "Taylor Holberton")
set (CPACK_PACKAGE_VERSION_MAJOR ${GNU_GUITAR_VERSION_MAJOR})
set (CPACK_PACKAGE_VERSION_MINOR ${GNU_GUITAR_VERSION_MINOR})
set (CPACK_PACKAGE_VERSION_PATCH ${GNU_GUITAR_VERSION_PATCH})
set (CPACK_RESOURCE_FILE_LICENSE "${CMAKE_CURRENT_SOURCE_DIR}/LICENSE")
set (CPACK_PACKAGE_CONTACT "taylorcholberton@gmail.com")
set (CPACK_PACKAGE_EXECUTABLES "gnu-guitar-gui;GNU Guitar")
set (CPACK_NSIS_MODIFY_PATH ON)
set (CPACK_NSIS_MUI_FINISHPAGE_RUN "gnu-guitar-gui")
include(CPack)
