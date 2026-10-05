#!/bin/bash
set -e
cd /mnt/data/r7_work/cas_src/singular-4.4.1-dev
./configure --prefix=/mnt/data/r7_work/cas --without-ntl --without-flint --without-readline --disable-doc-build --disable-maintainer-mode --disable-shared --enable-static --enable-plural --disable-gfanlib --disable-gfanlib-module --disable-polymake-module --disable-pyobject-module --disable-singmathic-module --disable-gitfan-module --disable-interval-module --disable-systhreads-module --disable-loctriv-module --disable-cohomo-module --disable-machinelearning-module --disable-sispasm-module --disable-freealgebra-module
make -j4
make install
