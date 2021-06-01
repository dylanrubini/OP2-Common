#!/bin/bash

#SBATCH --partition=devel

#SBATCH --nodes=1

#SBATCH --ntasks-per-node=48

##SBATCH --mail-type=ALL
##SBATCH --mail-user=dylan.rubini@eng.ox.ac.uk

#SBATCH --time=00:10:00 

#SBATCH --job-name=TestAirfoil

#SBATCH -e TestAirfoil.err                   #error file name
#SBATCH -o TestAirfoil.log                   #output file name 

## module purge
## module load OpenMPI/4.0.5-iccifort-2020.4.304
## module load ParMETIS/4.0.3-iimpi-2020a
## module load HDF5/1.10.5-iimpi-2020a
## module load Valgrind/3.16.1-iimpi-2020a

module purge
module load intel/2020a
module load impi/2019.7.217-iccifort-2020.1.217
module load ParMETIS/4.0.3-iimpi-2020a
module load HDF5/1.10.5-iimpi-2020a
module load Valgrind/3.16.1-iimpi-2020a

mpirun $MPI_HOSTS ./airfoil_hdf5_mpi
