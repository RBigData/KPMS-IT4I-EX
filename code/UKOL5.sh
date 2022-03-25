#!/bin/bash
#PBS -N rf
#PBS -l select=1:ncpus=128,walltime=00:05:00
#PBS -q qexp
#PBS -e UKOL5.e
#PBS -o UKOL5.o

cd ~/KPMS-IT4I-EX-1/code
pwd

module load R
echo "loaded R"


time Rscript UKOL5_simulace.r 128