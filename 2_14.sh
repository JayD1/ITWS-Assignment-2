#!/bin/bash

j=0

for i in $@
do
arr[j]=$i
j=`expr $j + 1`
done

n=`expr $(echo ${#arr[@]}) - 1`

for ((i=1; i<$((n+1)); i++))
do

	for ((j=0; j<$i; j++))
	do 
		if [ ${arr[$j]} -gt ${arr[$i]} ]; then
		t=${arr[i]}
		arr[$i]=${arr[$j]}
		arr[$j]=$t
		fi
	done
done

echo ${arr[@]}
