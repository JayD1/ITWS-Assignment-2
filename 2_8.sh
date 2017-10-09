#!/bin/bash

for i in $@
do
if [ -f $i ]; then 
echo `ls -l $i`
fi
done
