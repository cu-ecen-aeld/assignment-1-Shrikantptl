#!/bin/sh

filesdir=$1
searchstr=$2

echo "$filesdir"
echo "$searchstr"

if [ -z $filesdir ] || [ -z $searchstr ]
then
	echo "parameters are not defined"
	exit 1
fi

if [ ! -d $filesdir ]
then
	echo "filesdir does not represent a directory on the filesystem"
	exit 1
fi

cd $filesdir;ls | wc -l
X=$?
echo "$X"
cd $filesdir;grep -r "$searchstr"
Y=$?

echo "The number of files are $X and the number of matching lines are $Y"

