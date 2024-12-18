#!/bin/bash
#SBATCH --job-name=nombre_del_trabajo
#SBATCH -o salida_%j_%u.txt
#SBATCH --partition=hpc-bio-nikola-gpu
#SBATCH --chdir=/home/alumno11/lab5 

module load anaconda/2023.03

# Ejecutar el script

echo "Ejecutamos el scrip de reduction para value = $1"

srun ipython reduc-operation-array_gpu-alumno11.ipynb $1
#descargamos el modulo para evitar conflictos posteriores
module unload anaconda/2023.03

