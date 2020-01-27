#!/bin/bash                                                                                                                         
export OTMSIMJAR=/global/homes/j/juliette/OTM/OTM_jars/otm-sim.jar
export OTMMPIHOME=/global/homes/j/juliette/OTM/new-otm-mpi/otm-mpi

prefix=$OTMMPIHOME/test/Miami_4/Miami
configfile=$OTMMPIHOME/config/Miami.xml
n=4
duration=1000
writeoutput=true
outdt=100

#$OTMMPIHOME/scripts/run_all.sh $prefix $configfile $n $duration $writeoutput $outdt

#!/bin/bash                                                                                                                         
# 1 int : number of processes                                                                                                       
# 2 string : [prefix]                                                                                                               
# 3 int : [repetitions]                                                                                                             
# 4 float : [duration] sim duration in seconds                                                                                      
# 5 boolean : [writeouput] true->write network state to files                                                                       
# 6 float : [out_dt] sim dt in seconds                                                                                              

export OMPI_MCA_btl=self,vader,tcp
cd $OTMMPIHOME/out_mpijavac
mpirun -np $n java -cp $OTMSIMJAR:$OTMMPIHOME/lib/*:. runner/RunnerMPI $prefix 1 $duration $writeoutput $outdt
