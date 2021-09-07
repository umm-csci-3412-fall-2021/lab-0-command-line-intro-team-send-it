#!/bin/bash

#Stores the file the user wants to run the script on
userInput=$1
#Creating a temp directory for the script to maniplulate
tempDir=$(mktemp -d)
#Variable storing the user's working directory
userDir=$(pwd)
#Removes the file extention .tgz from userInput
basedName=$(basename -s .tgz $userInput)

#Uncompress and extract input file into temp directory
# -C specifies the directory to put things into
# -xzf specify to extract, unzip, and that the input file is an archive
tar xzf $userInput -C $tempDir

#Search the files for those containing the given string
# -R search recursively
# -l return the files containing the string
#| delete the given files
# -f force it
grep "DELETE ME!" $tempDir -Rl | xargs rm -f

#Change directory to the temp directory
cd $tempDir

#tar together and compressing the contents of the temp diectory
tar czf $userDir/"cleaned_$userInput" $basedName --warning=no-file-changed
