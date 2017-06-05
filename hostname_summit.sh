#!/bin/bash
#SBATCH --nodes=1						# Number of requested nodes
#SBATCH --time=0:01:00						# Max wall time
#SBATCH --qos=debug						# Specify debug QOS
#SBATCH --partition=shas					# Specify Summit haswell nodes
#SBATCH --output=hostname_%j.out		          	# Rename standard output file

# Written by:	Shelley Knuth
# Date:		15 July 2016
# Updated:	3 May 2017
# Purpose:	To demonstrate how to run a batch job on RC resources

# purge all existing modules
module purge
 
hostname
