#!/bin/bash

# Don't ignore errors
set -e
# Uninitialized variables are errors
set -u

export root=$PWD

source "bash/git.bash"

mkdir -p "repositories"
mkdir -p "build"
mkdir -p "package"

git_repo_update "https://github.com/gnu-guitar/artwork.git" "repositories/artwork"
git_repo_update "https://github.com/gnu-guitar/gnu-guitar-core.git" "repositories/core"
git_repo_update "https://github.com/gnu-guitar/gnu-guitar-qt.git" "repositories/gnu-guitar-qt"

./build.bash
