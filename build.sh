#!/bin/bash
set -
cd __build
cmake ..
make -j 8
./grafiek_test
chromium ./output.svg
