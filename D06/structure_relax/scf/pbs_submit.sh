#!/bin/bash
#PBS -j oe
#PBS -o pbs.out
#PBS -l nodes=1:ppn=4
#PBS -l walltime=4:00:00
#PBS -N _relax_scf
#PBS -q dft_class

export NUM_PROC=4

module load vasp_5.4.4
cd $PBS_O_WORKDIR
mkdir -p /scratch/ankit_S22_D06_structure_relax_scf
cp -r $PBS_O_WORKDIR/* /scratch/ankit_S22_D06_structure_relax_scf/
cd /scratch/ankit_S22_D06_structure_relax_scf/
python3 run.py
cp -r /scratch/ankit_S22_D06_structure_relax_scf/* $PBS_O_WORKDIR/
cd $PBS_O_WORKDIR
rm -rf /scratch/ankit_S22_D06_structure_relax_scf
