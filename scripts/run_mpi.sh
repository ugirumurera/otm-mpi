#!/bin/bash
# 1 int : number of processes
# 2 string : [prefix]
# 3 int : [repetitions]
# 4 float : [duration] sim duration in seconds
# 5 boolean : [writeouput] true->write network state to files
# 6 float : [out_dt] output dt in seconds
# 7 boolean : verbose

export OTMSIMJAR=/global/homes/j/juliette/OTM/new-otm-mpi/otm-mpi/target/otm-sim-1.0-SNAPSHOT-jar-with-dependencies.jar
cd $OTMMPIHOME/out_mpijavac
mpiexec -n $1 --npernode 2 java -cp $OTMSIMJAR:$OTMMPIHOME/lib/*:. runner/RunnerMPI $2 $3 $4 $5 $6 $7
