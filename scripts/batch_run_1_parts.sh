#!/bin/bash

#SBATCH --nodes=1                                                                                  
#SBATCH --time=04:00:00                                                                            
#SBATCH --job-name=one_part
#SBATCH --constraint=haswell                                                                       
#SBATCH --qos=regular                                                                   
#SBATCH --output=my_job.o%j 

export OTMMPIHOME=/global/homes/j/juliette/OTM/new-otm-mpi/otm-mpi/

#export PATH=$HOME/local/open-mpi/bin:$PATH
module load openmpi
export OMPI_MCA_btl=self,vader,tcp


n=1
prefix=$OTMMPIHOME/test/miami_dade/$n/miami_dade
#prefix=$OTMMPIHOME/test/small_Miami/s_Miami
duration=3600
writeoutput=true
outdt=10
verbose=true

time $OTMMPIHOME/scripts/run_mpi.sh $n $prefix 1 $duration $writeoutput $outdt $verbose
