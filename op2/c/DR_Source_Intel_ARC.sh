#!/bin/bash
#A rough example of environmental variables for compiling with Portland compilers

module purge
module load git

#unset and set defaults
# export PATH=/opt/openmpi4/bin:/usr/local/cuda/bin:/usr/local/cuda/bin:/usr/lib64/qt-3.3/bin:/home/orie3565/perl5/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/home/orie3565/.local/bin:/home/orie3565/bin:/var/lib/snapd/snap/bin
unset LD_LIBRARY_PATH
. ~/.bashrc

#OP2 specifics
export OP2_COMPILER=intel
OP2_DIR="op2/"
OP2_INSTALL_PATH_MINUS1="/data/engs-cfd-combusterflow/orie3565/UTBLOCK-OP2-Devel/OP2-Common/"
export OP2_INSTALL_PATH=$OP2_INSTALL_PATH_MINUS1$OP2_DIR
export DEBUG=1
unset OP_AUTO_SOA
#export OP_AUTO_SOA=1

# load modules 
module load intel/2020a
module load impi/2019.7.217-iccifort-2020.1.217
module load ParMETIS/4.0.3-iimpi-2020a
module load HDF5/1.10.5-iimpi-2020a
module load Valgrind/3.16.1-iimpi-2020a
module load SCOTCH/6.0.9-iimpi-2020a

# #External libraries
export PARMETIS_INSTALL_PATH=/apps/system/easybuild/software/ParMETIS/4.0.3-iimpi-2020a/
export PTSCOTCH_INSTALL_PATH=/apps/system/easybuild/software/SCOTCH/6.0.9-iimpi-2020a/
export HDF5_INSTALL_PATH=/apps/system/easybuild/software/HDF5/1.10.5-iimpi-2020a/
# #export HDF5_INSTALL_PATH=/home/mudalige/hdf5-1.10.1-intel
# export HDF5_INSTALL_PATH=/opt/hdf5_Portland/
# #export LD_LIBRARY_PATH=/opt/parmetis-intel/lib:/opt/ptscotch-intel/lib:/home/mudalige/hdf5-1.10.1-intel/lib/:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/apps/system/easybuild/software/HDF5/1.10.5-iimpi-2020a/lib:/apps/system/easybuild/software/HDF5/1.10.5-iimpi-2020a/lib:/apps/system/easybuild/software/SCOTCH/6.0.9-iimpi-2020a/lib:$LD_LIBRARY_PATH


#NVIDIA CUDA
# export PATH=/usr/local/cuda/bin:$PATH
# export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH
# export CUDA_INSTALL_PATH=/usr/local/cuda
# export NV_ARCH=Turing
# export PATH=/usr/local/cuda/bin:$PATH
#export LD_LIBRARY_PATH=/usr/local/cuda-6.5.14/lib64:$LD_LIBRARY_PATH
#export CUDA_INSTALL_PATH=/usr/local/cuda-6.5.14/

#export PATH=/usr/local/cuda-7.5.7_rc/bin:$PATH
#export LD_LIBRARY_PATH=/usr/local/cuda-7.5.7_rc/lib64:$LD_LIBRARY_PATH
#export CUDA_INSTALL_PATH=/usr/local/cuda-7.5.7_rc


#Intel MPI and Compilers
# module load pgi/19.4
export MPI_INSTALL_PATH=/apps/system/easybuild/software/impi/2019.7.217-iccifort-2020.1.217/intel64/
# export PATH=/opt/openmpi4_Portland/bin/:$PATH
export LD_LIBRARY_PATH=/apps/system/easybuild/software/impi/2019.7.217-iccifort-2020.1.217/intel64lib/:$LD_LIBRARY_PATH
# export PATH=/opt/pgi/linux86-64/2019/bin:$PATH
#source /opt/compilers/intel/intelPS-2015/composerxe/bin/compilervars.sh intel64
#source /opt/compilers/intel/intelPS-2015/impi_latest/intel64/bin/mpivars.sh intel64

# export INTEL_PATH=/opt/openmpi4/
# export MPICH_CXX=/opt/compilers/bin/mpic++
# export MPICH_CC=/opt/compilers/bin/mpicc
# export MPICH_F90=/opt/compilers/bin/mpifor

# export MPICXX=/opt/openmpi4_Portland/bin/mpicxx
# export MPICC=/opt/openmpi4_Portland/bin/mpicc
# export MPIF90=/opt/openmpi4_Portland/bin/mpif90
# export MPIFC=/opt/openmpi4_Portland/bin/mpif90

make clean 

make