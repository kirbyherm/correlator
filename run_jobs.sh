#!/bin/bash
# Runs with $ sh quickrun.sh # # # ...
#
# Compile code.
#
# make
#
# Execute tests.
#
# echo -e "version\tn\tmax\tl2norm\ttime" 
VETO=3650

for TOSSES in $(seq 1037 1 1068) 
#for TOSSES in $(seq 1051 1 1053) 
do
    JOB_NAME=$1$TOSSES
#    sbatch -J $JOB_NAME --output="slurmfiles/"$TOSSES"_1_${VETO}.txt" ./corr1.sh $TOSSES ${VETO}
#    sbatch -J $JOB_NAME --output="slurmfiles/"$TOSSES"_3_${VETO}.txt" ./corr3.sh $TOSSES ${VETO}
#    sbatch -J $JOB_NAME --output="slurmfiles/"$TOSSES"_5_${VETO}.txt" ./corr5.sh $TOSSES ${VETO}
#    sbatch -J $JOB_NAME --output="slurmfiles/"$TOSSES"_1_${VETO}_200000.txt" ./corr1_200000.sh $TOSSES ${VETO}
#    sbatch -J $JOB_NAME --output="slurmfiles/"$TOSSES"_3_${VETO}_200000.txt" ./corr3_200000.sh $TOSSES ${VETO}
    sbatch -J $JOB_NAME --output="slurmfiles/"$TOSSES"_5_${VETO}_200000.txt" ./corr5_200000.sh $TOSSES ${VETO}
#    sbatch -J $JOB_NAME --output="slurmfiles/"$TOSSES"_7_${VETO}.txt" ./corr7.sh $TOSSES ${VETO}
#    sbatch -J $JOB_NAME --output="slurmfiles/"$TOSSES"_9.txt" --mem=MaxMemPerNode ./corr9.sh $TOSSES
#    sbatch -J $JOB_NAME --output="slurmfiles/"$TOSSES"_11.txt" --mem=MaxMemPerNode ./corr11.sh $TOSSES
#    sbatch -J $JOB_NAME --output="slurmfiles/"$TOSSES"_13.txt" --mem=MaxMemPerNode ./corr13.sh $TOSSES
#    sbatch -J $JOB_NAME --output="slurmfiles/"$TOSSES"_15_${VETO}.txt" --mem=MaxMemPerNode ./corr15.sh $TOSSES ${VETO}
#    sbatch -J $JOB_NAME --output="slurmfiles/"$TOSSES"_17.txt" ./corr17.sh $TOSSES
#    sbatch -J $JOB_NAME --output="slurmfiles/"$TOSSES"_19.txt" ./corr19.sh $TOSSES
#    sbatch -J $JOB_NAME --output="slurmfiles/"$TOSSES"_21.txt" ./corr21.sh $TOSSES
#    sbatch -J $JOB_NAME --output="slurmfiles/"$TOSSES"_23.txt" ./corr23.sh $TOSSES
#    sbatch -J $JOB_NAME --output="slurmfiles/"$TOSSES"_25.txt" ./corr25.sh $TOSSES
#    sbatch -J $JOB_NAME --output="slurmfiles/"$TOSSES"_27.txt" ./corr27.sh $TOSSES
#    sbatch -J $JOB_NAME --output="slurmfiles/"$TOSSES"_29.txt" ./corr29.sh $TOSSES
#    sbatch -J $JOB_NAME --output="slurmfiles/"$TOSSES"_31.txt" ./corr31.sh $TOSSES
#    sbatch -J $JOB_NAME --output="slurmfiles/"$TOSSES"_33.txt" ./corr33.sh $TOSSES
#    sbatch -J $JOB_NAME --output="slurmfiles/"$TOSSES"_35.txt" ./corr35.sh $TOSSES
#    sbatch -J $JOB_NAME --output="slurmfiles/"$TOSSES"_37.txt" ./corr37.sh $TOSSES
#    sbatch -J $JOB_NAME --output="slurmfiles/"$TOSSES"_39.txt" ./corr39.sh $TOSSES
done
