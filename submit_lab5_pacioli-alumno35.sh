#!/bin/bash

#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno35/laboratory_5
#SBATCH -J alumno_35_lab5
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4 #le decimos que queremos 4 cores
#SBATCH --output=results_lab3_3.2.std
#SBATCH --mail-type=NONE    #END/START/NONE
#SBATCH --mail-user=MAIL@um.es


#### EJECUTAMOS EL SCRIPT DISEÑADO PARA DIVIDIR LOS ARCHIVOS DE LOS FASTAS #####

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
./file-cut Sampl*




