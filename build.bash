#!/bin/bash

set -e
set -u

export root="$PWD"

source "bash/cmake.bash"

cmake_build "core"
cmake_build "gnu-guitar-qt" -DGNU_GUITAR_QT_WITH_CORE=ON
