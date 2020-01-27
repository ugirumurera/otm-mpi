#!/bin/bash
export OTMSIMJAR=/global/homes/j/juliette/OTM/new-otm-mpi/otm-mpi/target/otm-sim-1.0-SNAPSHOT-jar-with-dependencies.jar
export OTMMPIHOME=/global/homes/j/juliette/OTM/new-otm-mpi/otm-mpi/

export PATH=$HOME/local/open-mpi/bin:$PATH
export PATH=$PATH:/usr/common/software/metis/5.1.0/bin
export OMPI_MCA_btl=self,vader,tcp

cd $OTMMPIHOME/src/main/java
javac -d $OTMMPIHOME/out_javac -cp $OTMSIMJAR:$OTMMPIHOME/lib/* otm/*.java metis/*.java metagraph/*.java translator/*.java xmlsplitter/*.java
#cd $OTMMPIHOME/out_javac
#java -cp $OTMSIMJAR:$OTMMPIHOME/lib/*:. xmlsplitter.XMLSplitter $OTMMPIHOME/test/50/50 $OTMMPIHOME/config/50_nodes.xml 4
# 0 : String prefix                                                                                                      
#cd $OTMMPIHOME
#javac mpijavac -d $OTMMPIHOME/out_javac -cp  
