#!/bin/bash

# Don't ignore errors
set -e
# Uninitialized variables are errors
set -u

export root=$PWD

source "bash/git.bash"
source "bash/cmake.bash"

mkdir -p "repositories"
mkdir -p "build"
mkdir -p "package"

git_repo_update "https://github.com/gnu-guitar/rtaudio.git" "repositories/rtaudio"
git_repo_update "https://github.com/gnu-guitar/gnu-guitar-qt.git" "repositories/gnu-guitar-qt"

cmake_build "rtaudio"
cmake_build "gnu-guitar-qt"
