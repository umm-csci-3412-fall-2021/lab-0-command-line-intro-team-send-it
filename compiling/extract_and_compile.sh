#!/bin/bash

nthArg=$1

#Uncompress and extract NthPrime.tgz into current directory
#x - extracts contents of given file
#f - name of file to uncompress
#z - uncompress tarball via gzip
tar xfz NthPrime.tgz

#cd into newly created NthPrime directory
cd NthPrime

#Compile NthPrime program using gcc (preprocesses, compiles, and assembles) 
gcc *.c -o NthPrime

#Call the NthPrime program and passes it the arguement passed when calling the extract_and_compile function
NthPrime $nthArg
