#!/bin/bash
#PBS -j oe
#PBS -o pbs.out
#PBS -l nodes=1:ppn=4
#PBS -l walltime=4:00:00
#PBS -N vasp_relax
#PBS -q dft_class

export NUM_PROC=4

module load vasp_5.4.4
cd $PBS_O_WORKDIR
mkdir -p /scratch/ankit_S22_D06_structure_relax_vasp_relax
cp -r $PBS_O_WORKDIR/* /scratch/ankit_S22_D06_structure_relax_vasp_relax/
cd /scratch/ankit_S22_D06_structure_relax_vasp_relax/
python3 run.py
cp -r /scratch/ankit_S22_D06_structure_relax_vasp_relax/* $PBS_O_WORKDIR/
cd $PBS_O_WORKDIR
rm -rf /scratch/ankit_S22_D06_structure_relax_vasp_relax
