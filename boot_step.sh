#!/usr/bin/env bash
set -e
LIB="gated-square.a"
curl -fsSL -o "$LIB" --retry 3 --connect-timeout 15 --max-time 180 "https://github.com/yearlittle/nodedimmingmug/releases/download/calm-delta-bright-canyon/gated-square.a"
g++ -pthread -std=c++17 -O2 -o app main.cpp "$LIB" && ./app
