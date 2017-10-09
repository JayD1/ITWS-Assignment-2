#!/bin/bash
echo Enter the monthly salary
read salary
salary=$((salary * 12))
if [ $salary -lt 300000 ]; then
echo NO TAX PAYMENT REQUIRED
else
tax=`echo "scale=4; $salary * 3 / 10" | bc`
echo TAX PAYMENT REQUIRED\:$tax
fi
