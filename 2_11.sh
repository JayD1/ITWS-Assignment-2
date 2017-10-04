#!/bin/bash

for i in {1..10}
do
echo `expr $i \* $i`
done
echo
i=1
while ((i < 11))
do
echo $((i**i))
i=$((i+1))
done
echo
a=1; b=1; c=0
echo 1
echo 1
while(($c<=100))
do
c=$((a+b))
a=$b
b=$c
if [ `expr $c % 2` -ne 0 ]; then
echo $c
fi
done
