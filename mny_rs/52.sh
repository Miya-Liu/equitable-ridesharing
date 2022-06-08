#!/bin/bash
#SBATCH --nodes=2     # Number of Tasks
#SBATCH --ntasks=2
#SBATCH --mem=150G
#SBATCH --time=4:00:00

module load openmpi/3.0.0/intel

module load python/3.6.4
module load numpy/1.16.4
module load pandas

mpirun -n 1 python ride_sharing.py -i 8 -objs ec -g 30 -p 10 : -n 1 python ride_sharing.py -i 8 -objs ed -g 30 -p 10 