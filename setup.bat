@echo off

if exist "repositories\core" (
  cd "repositories\core"
  git pull origin master
  cd "..\.."
) else (
  git clone "https://github.com/gnu-guitar/artwork" "repositories/core"
)

if exist "repositories\artwork" (
  cd "repositories\artwork"
  git pull origin master
  cd "..\.."
) else (
  git clone "https://github.com/gnu-guitar/artwork" "repositories/artwork"
)

if exist "repositories\gnu-guitar-qt" (
  cd "repositories\gnu-guitar-qt"
  git pull origin master
  cd "..\.."
) else (
  git clone "https://github.com/gnu-guitar/gnu-guitar-qt" "repositories/gnu-guitar-qt"
)

call "build.bat"
