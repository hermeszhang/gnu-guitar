@echo off

set current_dir=%cd%

if not exist "package" (
  mkdir "package"
)

if not exist "build\core" (
  mkdir "build\core"
)
cd "build\core"
cmake "%current_dir%\repositories\core" -DCMAKE_INSTALL_PREFIX="%current_dir%\package"
if %errorlevel% neq 0 (
  exit \b %errorlevel%
)
cmake --build . --target install
if %errorlevel% neq 0 (
  exit \b %errorlevel%
)
cd "..\.."


if not exist "build\gnu-guitar-qt" (
  mkdir "build\gnu-guitar-qt"
)
cd "build\gnu-guitar-qt"
cmake "%current_dir%\repositories\gnu-guitar-qt" -DCMAKE_INSTALL_PREFIX="%current_dir%\package"
if %errorlevel% neq 0 (
  exit \b %errorlevel%
)
cmake --build . --target install
if %errorlevel% neq 0 (
  exit \b %errorlevel%
)
cd "..\.."
