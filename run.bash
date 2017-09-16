#!/bin/bash

LADSPA_PATH+="$PWD/package/lib/ladspa"

LD_LIBRARY_PATH+="$PWD/package/lib"

export LADSPA_PATH
export LD_LIBRARY_PATH

package/bin/gnu-guitar-qt
