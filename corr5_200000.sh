#!/bin/bash
#SBATCH --output=parallel_plot.txt

# standard 1000ms correlations 

#./correlator200000 $1 true 5 md 1 0 ti59 $2 imp2 dec2
#./correlator200000 $1 true 5 md 1 0 v61 $2 imp2 dec2
#./correlator200000 $1 true 5 md 1 0 ca55 $2 imp2 dec2 
#./correlator200000 $1 true 5 md 1 0 sc56 $2 imp2 dec2  
#./correlator200000 $1 true 5 md 1 0 sc57 $2 imp2 dec2


# standard 2000ms correlations 

./correlator200000 $1 true 5 md 2 0 cr61 $2 imp2 dec2
./correlator200000 $1 true 5 md 2 0 v60 $2 imp2 dec2
./correlator200000 $1 true 5 md 2 0 v61 $2 imp2 dec2
./correlator200000 $1 true 5 md 2 0 ca54 $2 imp2 dec2 
./correlator200000 $1 true 5 md 2 0 sc55 $2 imp2 dec2  
./correlator200000 $1 true 5 md 2 0 sc56 $2 imp2 dec2
./correlator200000 $1 true 5 md 2 0 sc57 $2 imp2 dec2
./correlator200000 $1 true 5 md 2 0 ti57 $2 imp2 dec2
./correlator200000 $1 true 5 md 2 0 ti58 $2 imp2 dec2
./correlator200000 $1 true 5 md 2 0 ti59 $2 imp2 dec2


# random 1000ms correlations

#./bg_correlator200000 $1 rand 5 md 1 0 ti59 $2 imp2 dec2
#./bg_correlator200000 $1 rand 5 md 1 0 v61 $2 imp2 dec2
#./bg_correlator200000 $1 rand 5 md 1 0 ca55 $2 imp2 dec2 
#./bg_correlator200000 $1 rand 5 md 1 0 sc56 $2 imp2 dec2  
#./bg_correlator200000 $1 rand 5 md 1 0 sc57 $2 imp2 dec2

# random 2000ms correlations

./bg_correlator200000 $1 rand 5 md 2 0 v60 $2 imp2 dec2
./bg_correlator200000 $1 rand 5 md 2 0 v61 $2 imp2 dec2
./bg_correlator200000 $1 rand 5 md 2 0 ca54 $2 imp2 dec2 
./bg_correlator200000 $1 rand 5 md 2 0 sc55 $2 imp2 dec2  
./bg_correlator200000 $1 rand 5 md 2 0 sc56 $2 imp2 dec2
./bg_correlator200000 $1 rand 5 md 2 0 sc57 $2 imp2 dec2
./bg_correlator200000 $1 rand 5 md 2 0 ti57 $2 imp2 dec2
./bg_correlator200000 $1 rand 5 md 2 0 ti58 $2 imp2 dec2
./bg_correlator200000 $1 rand 5 md 2 0 ti59 $2 imp2 dec2
