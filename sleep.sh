#!/bin/bash
#SBATCH --nodes=1                               # Number of requested nodes
#SBATCH --ntasks=1                              # Number of requested cores per node
#SBATCH --time=0:01:00                          # Max walltime
#SBATCH --qos=testing                           # Specify normal QOS
#SBATCH --partition=shas-testing                # Specify Summit SHAS-testing nodes
#SBATCH --output=sleep_%j.out                   # Rename standard output file
#SBATCH --job-name=sleep                        # Job submission name

# Written by:   Shelley Knuth
# Modified by:  Daniel Trahan
# Date:         15 July 2016
# Updated:      24 August 2018
# Purpose:      To demonstrate how to run a batch job on RC resources


# purge all existing modules
module purge

whoami
sleep 30
hostname
