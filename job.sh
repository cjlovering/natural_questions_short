#!/bin/sh

# Request half an hour of runtime:
#SBATCH --time=24:00:00

# Use more memory (8GB) and correct partition.
#SBATCH --mem=32G

# Specify a job name:
#SBATCH -J data

# Specify an output file
#SBATCH -o ./out/%x-%a.out
#SBATCH -e ./err/%x-%a.out

#SBATCH -n 1

module load python/3.7.4; module load cuda/11.3.1; module load cudnn/8.2.0; module load gcc/10.2; module load git/2.29.2
python data.py --split train
# python data.py --split dev