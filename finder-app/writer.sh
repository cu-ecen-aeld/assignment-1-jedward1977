#!/bin/bash


# Check num of vars
if [ $# -eq 2 ]
then
	writefile=$1
	writestr=$2
	echo $writefile
	echo $writestr
else
	echo "Error: Script need 2 arguments"
	exit 1
fi

# Check path existence
pathdir=`dirname $1`
basefile=`basename $1`
if [ -d "$pathdir" ] 
then
  echo "$pathdir does exist, create the filename $basefile"
  touch $writefile
  retVal=$?
  echo $retVal
  if [ $retVal != 0 ]
  then
	echo "Error creating file"
	exit 1
  fi
else
	echo "$pathdir does NOT exist. Creating the full pathdir"
	mkdir -p $pathdir
	touch $writefile
	retVal=$?
  	if [ $retVal != 0 ]
	then
		echo "Error creating file"
		exit 1
	fi
fi

echo $writestr > $writefile

exit 0





