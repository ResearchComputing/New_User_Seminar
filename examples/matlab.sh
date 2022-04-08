#!/bin/bash
#SBATCH --nodes=1                       # Number of requested nodes
#SBATCH --ntasks=1                      # Number of requested cores per node
#SBATCH --time=0:02:00                  # 2 minute walltime
#SBATCH --qos=testing                   # Specify debug QOS
#SBATCH --partition=shas-testing        # Specify Summit haswell nodes
#SBATCH --output=matlab_%j.out          # Rename standard output file


# Written by:   Shelley Knuth
# Modified by:  Joel Frahm
# Date:         24 February 2014
# Updated:      27 Sep 2018
# Purpose:      This script is for the Matlab tutorial.  Its purpose is
#               to demonstrate how to submit a serial Matlab job from a
#               batch script on the Summit cluster. I also use it to
#               demonstrate how to run an external Matlab script

# purge all existing modules
module purge

# Load Matlab module
module load matlab/R2019b

# Run matlab without a GUI
matlab -nodisplay -nodesktop -r "clear; matlab_tic;"

# add a linefeed after Matlab output
echo

#Mark the end of the job
echo "Job done."
