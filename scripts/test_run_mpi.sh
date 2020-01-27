#!/bin/bash

export OTMMPIHOME=/global/homes/j/juliette/OTM/new-otm-mpi/otm-mpi/

#export PATH=$HOME/local/open-mpi/bin:$PATH
module load openmpi
export OMPI_MCA_btl=self,vader,tcp
#export PATH=$PATH:/usr/common/software/metis/5.1.0/bin
#export OMPI_MCA_btl=self,vader,tcp

n=2
#prefix=$OTMMPIHOME/test/low_dem_miami/$n/low_dem_miami
prefix=$OTMMPIHOME/test/small_Miami/s_Miami
duration=100
writeoutput=true
outdt=10
verbose=true

time $OTMMPIHOME/scripts/run_mpi.sh $n $prefix 1 $duration $writeoutput $outdt $verbose
