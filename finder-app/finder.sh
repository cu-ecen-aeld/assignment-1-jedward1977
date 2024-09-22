#!/bin/bash


# Check num of vars
if [ $# -eq 2 ]
then
	filesdir=$1
	searchstr=$2
	#echo $filesdir
	#echo $searchstr
else
	echo "Error: Script need 2 arguments"
	exit 1
fi

# Check dir existence
if [ -d "$filesdir" ] 
then
  #echo "$filesdir does exist."
  a=$filesdir
else
	echo "Error: $filesdir does not exist"
	exit 1
fi

# Num of files
files=`find $filesdir -type f | wc -l`
#echo "Num of files are $files"

#Num of matches
matches=`grep -R $searchstr $filesdir | wc -l`
#echo "Num of matches: $matches"

echo "The number of files are $files and the number of matching lines are $matches"


