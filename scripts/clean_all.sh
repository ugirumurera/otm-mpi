#!/bin/bash

# This helps when, for some reason, IntelliJ cannot compile because it cannot find some package that actually exists

rm -r $OTMMPIHOME/out_javac/metagraph
rm -r $OTMMPIHOME/out_javac/metis
rm -r $OTMMPIHOME/out_javac/translator
rm -r $OTMMPIHOME/out_javac/xmlsplitter
rm -r $OTMMPIHOME/out_mpijavac/metagraph
rm -r $OTMMPIHOME/out_mpijavac/metis
rm -r $OTMMPIHOME/out_mpijavac/otm
rm -r $OTMMPIHOME/out_mpijavac/runner
rm -r $OTMMPIHOME/out_mpijavac/translator
rm -r $OTMMPIHOME/out_mpijavac/xmlsplitter
rm -r $OTMMPIHOME/target
rm $OTMMPIHOME/test/*.txt
rm $OTMMPIHOME/test/*.xml
rm $OTMMPIHOME/test/*metis*
rm $OTMMPIHOME/test/*.json