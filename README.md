GNU Guitar
==========

GNU Guitar is a free, cross platform application for manipulating guitar audio in real time.

### Building on Linux

You'll need Qt and at least one of the supported audio libraries installed.

```
sudo apt install libasound-dev
sudo apt install qtbase5-dev
```

In the source directory, run the bash script.

```
./setup.bash
```

That should install the project into a directory called 'package'.

The executables can be found in `package/bin`.

You can run it with the `run.bash` script, which sets the LADSPA path.

```
./run.bash
```

### Building on Windows

On Windows you'll need Visual Studio 2017 and Qt installed.

If CMake has trouble finding the Qt installation, be sure to set:

 - `Qt5Core_DIR`
 - `Qt5Gui_DIR`
 - `Qt5Widgets_DIR`

all to `C:\Qt\5.9.2\msvc2017_64` or something similar.

In the source directory, run the batch script.

```
.\setup.bat
```

That, like the Linux build, should create a directory called 'package'.

The executable lives in `package\bin`.

```
.\package\bin\gnu-guitar-qt.exe
```
