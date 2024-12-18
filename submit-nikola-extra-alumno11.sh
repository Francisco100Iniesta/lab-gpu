#!/bin/bash
#SBATCH --job-name=nombre_del_trabajo
#SBATCH -o extra_%j_%u.txt
#SBATCH --partition=hpc-bio-nikola-cpu
#SBATCH --chdir=/home/alumno11/lab5

module load anaconda/2023.03

# Ejecutar el script

echo "Ejecutamos el scrip extra con value = $1"

srun ipython extra-nikola-alumno11.ipynb $1
#descargamos el modulo para evitar conflictos posteriores
module unload anaconda/2023.03

