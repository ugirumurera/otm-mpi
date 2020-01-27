#!/bin/bash

#SBATCH --nodes=1                                                                                  
#SBATCH --time=02:00:00                                                                            
#SBATCH --job-name=two_parts
#SBATCH --constraint=haswell                                                                       
#SBATCH --qos=regular                                                                   
#SBATCH --output=my_job.o%j 

export OTMMPIHOME=/global/homes/j/juliette/OTM/new-otm-mpi/otm-mpi/


module load openmpi
export OMPI_MCA_btl=self,vader,tcp


n=2
prefix=$OTMMPIHOME/test/miami_dade/$n/miami_dade
#prefix=$OTMMPIHOME/test/small_Miami/s_Miami
duration=3600
writeoutput=true
outdt=10
verbose=true

$OTMMPIHOME/scripts/run_mpi.sh $n $prefix 1 $duration $writeoutput $outdt $verbose
