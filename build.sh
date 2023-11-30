#!/usr/bin/env bash

mkdir -p obj contrib/{antlr,lemur,xpdf}/obj
CXXFLAGS="-g -O2" CFLAGS="-g -O2" ./configure
pushd indri
make -j$((`nproc` / 2))
popd
