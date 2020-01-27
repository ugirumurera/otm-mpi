#!/bin/bash
export OTMMPIHOME=/global/homes/j/juliette/OTM/new-otm-mpi/otm-mpi/

#export PATH=$HOME/local/open-mpi/bin:$PATH                                                                                                       
module load openmpi
export OMPI_MCA_btl=self,vader,tcp
export OTMSIMJAR=/global/homes/j/juliette/OTM/new-otm-mpi/otm-mpi/target/otm-sim-1.0-SNAPSHOT-jar-with-dependencies.jar

cd $OTMMPIHOME/src/main/java
mpijavac -d $OTMMPIHOME/out_mpijavac -cp $OTMSIMJAR:$OTMMPIHOME/lib/* runner/Timer.java metis/*.java metagraph/*.java otm/*.java translator/*.java runner/RunnerMPI.java
