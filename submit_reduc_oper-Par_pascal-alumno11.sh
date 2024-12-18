#!/bin/bash 
#SBATCH --job-name=par_reduc 
#SBATCH -o salida_%j_%u.txt 
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4 
#SBATCH --partition=hpc-bio-pascal
#SBATCH --chdir=/home/alumno11/lab5

module load anaconda/2023.03

echo "Numero de la variable value $1"
srun ipython reduc-operation-array.ipynb $1

module unload anaconda/2023.03
