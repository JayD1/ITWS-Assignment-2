#!/bin/bash

num=$1
j=0
for i in 1000 500 100 50 10 5 1
do 
a[$j]=$(((num - (num%i))/i))
num=$((num - a[$j]*i))
echo ${a[$j]}
j=`expr $j + 1`
done
for i in M D
