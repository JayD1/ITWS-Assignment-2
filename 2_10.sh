#!/bin/bash

x=`who | wc -l`
y1=`cat /etc/passwd > file.txt`
y=`cat file.txt | wc -l`
echo "$x OUT OF $y ARE ONLINE RIGHT NOW"
