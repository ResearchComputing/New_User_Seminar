#!/bin/bash
#SBATCH --nodes=1                               # Number of requested nodes
#SBATCH --ntasks=1                              # Number of requested cores
#SBATCH --time=0:01:00                          # Max walltime
#SBATCH --qos=testing                           # Specify debug QOS
#SBATCH --partition=atesting                # Specify Summit haswell nodes
#SBATCH --output=R_code_%j.out                  # Output file name

# purge all existing modules
module purge

# Load the R module
module load R/4.4.0

# Run R Script
Rscript R_program.R
