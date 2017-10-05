GNU Guitar
==========

GNU Guitar is a free, cross platform application for manipulating guitar audio in real time.

### Building

You'll need Qt and at least one of the supported audio libraries installed.

```
sudo apt install libasound-dev
sudo apt install qtbase5-dev
```

If you haven't done so already, download the submodules.

```
git submodule update --init --recursive
```

If you're on Windows, make sure CMake knows how to find Qt.
If you need to, make sure the following variables are set:

 - `Qt5Core_DIR`
 - `Qt5Gui_DIR`
 - `Qt5Widgets_DIR`

For example: `C:\Qt\5.9.2\msvc2017_64` or something similar.

Then run CMake in a build directory.

```
mkdir build && cd build
cmake ..
cmake --build .
```

