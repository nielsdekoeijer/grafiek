#!/bin/bash
cd __build
cmake ..
make -j 8
./grafiek
chromium ./output.svg
