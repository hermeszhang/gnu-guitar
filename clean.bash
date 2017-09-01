#!/bin/bash

set -e
set -u

export root="$PWD"

source "bash/cmake.bash"

cmake_clean "gnu-guitar-qt"
cmake_clean "rtaudio"
