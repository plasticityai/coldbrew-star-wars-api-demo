#!/usr/bin/env bash


(cd coldbrew; git pull) || git clone https://github.com/plasticityai/coldbrew
cd coldbrew
./build.sh
cd ..
