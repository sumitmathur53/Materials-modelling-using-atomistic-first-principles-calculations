#!/bin/bash
#PBS -j oe
#PBS -o pbs.out
#PBS -l nodes=1:ppn=4
#PBS -l walltime=4:00:00
#PBS -N manual_420
#PBS -q dft_class

export NUM_PROC=4

module load vasp_5.4.4
cd $PBS_O_WORKDIR
mkdir -p /scratch/ankit_D06_structure_relax_manual_420
cp -r $PBS_O_WORKDIR/* /scratch/ankit_D06_structure_relax_manual_420/
cd /scratch/ankit_D06_structure_relax_manual_420/
python3 run.py
cp -r /scratch/ankit_D06_structure_relax_manual_420/* $PBS_O_WORKDIR/
cd $PBS_O_WORKDIR
rm -rf /scratch/ankit_D06_structure_relax_manual_420
