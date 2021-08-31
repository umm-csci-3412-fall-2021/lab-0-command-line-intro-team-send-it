#!/bin/bash

nthArg=$1

#Uncompress and extract NthPrime.tgz into current directory.
#x - extracts contents of given file
#f - name of file to uncompress
#z - uncompress tarball via gzip
tar -xfz NthPrime.tgz

#cd into newly created NthPrime directory
cd NthPrime
