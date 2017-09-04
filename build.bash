#!/bin/bash

set -e
set -u

export root="$PWD"

source "bash/cmake.bash"

cmake_build "gnu-guitar-core"
cmake_build "gnu-guitar-qt"
