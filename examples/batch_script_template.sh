#!/bin/bash
#SBATCH --nodes=1                    		# Number of requested nodes
#SBATCH --time=0:05:00               		# Max wall time
#SBATCH --qos=testing                		# Specify debug QOS
#SBATCH --partition=shas-testing     		# Specify Summit haswell nodes
#SBATCH --ntasks=24          	 	        # Number of tasks per job
#SBATCH --job-name=Matlab_Gen_Parallel          # Job submission name
#SBATCH --output=MATLAB_GEN_PARALLEL.%j.out     # Output file name with Job ID


# Written by:	Shelley Knuth
# Updated by: Daniel Trahan
# Date:		24 February 2014
# Updated:	24 April 2018
# Purpose: 	This script calls a Matlab parallel program 

# purge all existing modules
module purge

# load the matlab module
module load matlab

# The directory where you want the job to run
cd /projects/$USER/

# Run matlab without a GUI and ask for all available workers
matlab -nosplash -nodesktop -r "clear; num_workers=$SLURM_NTASKS; parallel_std;"

