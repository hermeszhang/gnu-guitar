#!/bin/bash

set -e
set -u

export root="$PWD"

source "bash/cmake.bash"

cmake_clean "gui"
cmake_clean "core"
cmake_clean "effects"
