#!/bin/bash
echo "Unpacking software"
tar -xzf beast.tar.gz
echo "Setting PATH for beast"
export PATH=$_CONDOR_SCRATCH_DIR/beast/:$PATH
echo "running BEAST"
/beast/bin/packagemanager -update
./beast/bin/packagemanager -add BEASTLabs
./beast/bin/packagemanager -add OBAMA
inputfile=$1
./beast/bin/beast -threads 4 $inputfile
echo "done with beast run"

