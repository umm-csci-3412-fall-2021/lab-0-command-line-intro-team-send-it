#!/bin/bash

userInput=$1
tempDir=$(mktemp -d)
userDir=$(pwd)

#Uncompress and extract input file into temp directory
# -C specifies the directory to put things into
# -xzf specify to extract, unzip, and that the input file is an archive
tar C $tempDir xzf $userInput

#Search the files for those containing the given string
# -R search recursively
# -l return the files containing the string
#| delete the given files
# -f force it
grep "DELETE ME!" $tempDir Rl | xargs rm f

cd $tempDir || exit

tar czf "cleaned_$userInput" $userInput
