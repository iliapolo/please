#!/usr/bin/env bash

# This script will create the dev directories if needed

echo "Creating src directory: ${HOME}/dev/src"
mkdir -p ${HOME}/dev/src

echo "Creating tools directory: ${HOME}/dev/tools"
mkdir -p ${HOME}/dev/tools

echo "Creating runtime directory: ${HOME}/dev/runtime"
mkdir -p ${HOME}/dev/runtime

echo "Done!"