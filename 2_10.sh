#!/bin/bash

x=`who | wc -l`
y=`cat /etc/passwd | wc -l`
echo "$x OUT OF $y ARE ONLINE RIGHT NOW"
