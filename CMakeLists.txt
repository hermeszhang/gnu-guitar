cmake_minimum_required(VERSION 2.6)

project("GNU Guitar")

set (GNU_GUITAR_QT_WITH_CORE ON)

include_directories("components/core/include")

add_subdirectory("components/core")
add_subdirectory("components/effects")
add_subdirectory("components/gui")

