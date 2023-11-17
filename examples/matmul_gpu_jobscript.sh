#!/bin/bash

#SBATCH --partition=atesting_a100
#SBATCH --nodes=1
#SBATCH --ntasks=16
#SBATCH --time=10:00
#SBATCH --gres=gpu:1
#SBATCH --job-name=matmul
#SBATCH --output=matmul.%j.out

module purge
module load anaconda
conda activate /curc/sw/conda_env/tf-gpu-cuda11.2

python tf.matmul-gpu.py

