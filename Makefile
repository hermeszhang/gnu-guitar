#!/bin/make -f

# Makefile for GNU guitar.

# The main purpose of this file is
# simply to provide a way for developers
# use to typing in 'make' into the terminal
# an easy way to build the project.

# There is no requirement to use this file
# instead of the scripts directly.

.PHONY: all
all:
	./setup.bash

.PHONY: build
build:
	./build.bash

.PHONY: clean
clean:
	./clean.bash
