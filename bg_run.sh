#!/bin/bash

cd build

for value in v60 sc56 ti60 #ti57 sc57 ti58 ti59 v61
do
    ./backcorrelator_newsuncalib $1 true 2 md 2.0 0 $value 
done

cd ../
echo "Run"$1
