#!/bin/bash
#SBATCH --nodes=1			# Number of requested nodes
#SBATCH --time=0:02:00			# Max walltime
#SBATCH --qos=debug			# Specify debug QOS
#SBATCH --partition=shas		# Specify Summit haswell nodes
#SBATCH --output=matlab_%j.out		# Rename standard output file


# Written by:	Shelley Knuth
# Date:		24 February 2014
# Updated:      15 July 2016
# Purpose: 	This script is for the Matlab tutorial.  Its purpose is 
#		to demonstrate how to submit a serial Matlab job from a 
#		batch script on the Janus computers.  I also use it to 
#		demonstrate how to run an external Matlab script	

# purge all existing modules
module purge

# Load Matlab module
module load matlab

# Run matlab without a GUI
matlab -nodisplay -nodesktop -r "clear; matlab_tic;"

