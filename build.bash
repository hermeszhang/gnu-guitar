#!/bin/bash

set -e
set -u

export root="$PWD"

source "bash/cmake.bash"

cmake_build "effects" -DCMAKE_BUILD_TYPE=Release
cmake_build "core"
cmake_build "gui" -DGNU_GUITAR_QT_WITH_CORE=ON
