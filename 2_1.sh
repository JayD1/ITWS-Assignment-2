#!/bin/bash

a=$1; b=$2

if [ $a -lt $b ]; then
low=$a; high=$b
else
low=$b; high=$a
fi

df -h | grep "/dev/disk" | tr -s " " | cut -d" " -f 1,5-5 | while read i; 
do
cap=`echo $i | cut -d" " -f 2 | cut -d"%" -f 1`
disc=`echo $i | cut -d" " -f 1`
if [ $cap -lt $low ]; then
echo OK\, $disc\, $cap\%
elif [ $i -gt $high ]; then
echo CRITICAL\, $disc\, $cap\%
else 
echo WARNING\, $disc\, $cap\%
fi
done
