#!/bin/bash

echo Enter name
read name
echo Enter birthdate
read birthdate

yr=`echo $birthdate | cut -d'-' -f -1`
date=`date +%F | cut -d'-' -f -1`
mnth=`echo $birthdate | cut -c 6-10`
if [ `echo $birthdate | cut -c 6-10` == `date +%F | cut -c 6-10` ]; then
echo Happy Birthday, $name\.You are $((date-yr)) years old today\!
fi
