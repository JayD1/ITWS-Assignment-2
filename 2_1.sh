#!/bin/bash
a=$1; b=$2
if [ $a -lt $b ]; then
low=$a; high=$b
else
low=$b; high=$a
fi
var1=`df -h | grep "/dev/*" | tr -s " " | cut -d" " -f 5 | cut -d"%" -f 1`
for i in $var1
do
if [ $i -lt $low ]; then
echo OK\, `df -h | grep "$i" | cut -d" " -f 1`\, "$i"\%
elif [ $i -gt $high ]
then
echo CRITICAL\, `df -h | grep "$i" | cut -d" " -f 1`\, "$i"\%
else 
echo WARNING\, `df -h | grep "$i" | cut -d" " -f 1`\, "$i"\%
fi
done
