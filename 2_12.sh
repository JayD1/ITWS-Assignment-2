#!/bin/bash

a=37
b=m
var=`ping -c $1 google.com`

echo "$var" | while read j; do
echo -e "\033[$a$b $(date) -- $j\033[0m"
a=`expr $a - 1`

if [ $a -eq 30 ] ; then
a=37
fi

done
