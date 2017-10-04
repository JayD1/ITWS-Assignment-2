#!/bin/bash

read salary

if [ $salary -lt 300000 ]; then
echo NO TAX PAYMENT REQUIRED
else
echo $((salary * 3 / 10))
fi
