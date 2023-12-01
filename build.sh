#!/usr/bin/env bash

pushd indri
mkdir -p obj contrib/{antlr,lemur,xpdf}/obj
CXXFLAGS="-g -O2" CFLAGS="-g -O2" ./configure
make -j$((`nproc` / 2))
popd
