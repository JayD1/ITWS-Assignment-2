#!/bin/bash

file_name=$1
count=1

while read line
do

	if [ ! -z "$line" ]
	then
		echo $count\) $line
		count=`expr $count + 1`
	fi

done < $file_name

