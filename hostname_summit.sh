#!/bin/bash
#SBATCH --nodes=1                                               # Number of requested nodes
#SBATCH --ntasks=1                                              # Number of requested cores per node
#SBATCH --time=0:01:00                                          # 1 min "walltime" or timelimit
#SBATCH --qos=testing                                           # Specify debug QOS
#SBATCH --partition=shas-testing                                # Specify Summit haswell nodes
#SBATCH --output=hostname_%j.out                                # Rename standard output file

# Written by:   Shelley Knuth
# Updated by:   Daniel Trahan
# Date:         15 July 2016
# Updated:      24 August 2018
# Purpose:      To demonstrate how to run a batch job on RC resources

# purge all existing modules
module purge

hostname
