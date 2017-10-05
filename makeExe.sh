#!/bin/bash

file=$1
count=$#
if [ $count -eq 1 ]; then
	if [ -e $file ]; then
		if [ -f $file ]; then
		var1=`chmod u+x $file`
		echo "$var1"
		else
		echo "NOT A REGULAR FILE!"
		fi
	else 
	echo "FILE DOESN'T EXIST!"
	fi
else 
echo "Pass only one argument while execution : bash <script_name.sh> arg1"
fi
