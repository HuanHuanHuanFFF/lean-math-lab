#!/bin/bash
set -e
S=/mnt/data/r7_work/cas_src/singular-4.4.1-dev
M=/mnt/data/r7_work/cas/lib/singular/MOD
I="-I$S/libpolys/polys -I$S/Singular -I$S -I$S/libpolys -I$S/factory -I$S/factory/include"
for f in FieldIndep FieldGeneral FieldQ FieldZp; do
 g++ -std=c++11 -O2 -fPIC -shared -DHAVE_CONFIG_H -DDYNAMIC_VERSION -Dp_Procs_$f $I "$S/libpolys/polys/templates/p_Procs_Lib.cc" -o "$M/p_Procs_$f.so" &
done
wait
g++ -std=c++11 -O2 -fPIC -shared -DHAVE_CONFIG_H -DDYNAMIC_VERSION $I "$S/Singular/dyn_modules/customstd/customstd.cc" -o "$M/customstd.so"
