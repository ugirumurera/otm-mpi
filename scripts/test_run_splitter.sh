#!/bin/bash
export OTMMPIHOME=/global/homes/j/juliette/OTM/new-otm-mpi/otm-mpi/

export PATH=$HOME/local/open-mpi/bin:$PATH
export PATH=$PATH:/usr/common/software/metis/5.1.0/bin
export OMPI_MCA_btl=self,vader,tcp

n=1
configfile=/global/homes/j/juliette/OTM/new-otm-mpi/otm-mpi/config/low_dem_miami.xml
prefix=$OTMMPIHOME/test/low_dem_miami/$n/low_dem_miami
#prefix=$OTMMPIHOME/test/small_Miami/s_Miami
verbose=true

$OTMMPIHOME/scripts/run_splitter.sh $prefix $configfile $n $verbose
