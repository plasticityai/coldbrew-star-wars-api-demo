#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
(
  (cd coldbrew; git pull) || git clone https://github.com/plasticityai/coldbrew;
  cd coldbrew;
  ./build.sh;
  cd ..;
  rm -rf ./dist 2>/dev/null || true;
  cp -r ./coldbrew/dist ./dist;
  cp ./src/index.html ./dist/index.html
)
