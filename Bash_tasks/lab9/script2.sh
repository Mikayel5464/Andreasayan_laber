#!/bin/bash

if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <element1> <element2> ... <elementN>"
    exit 1
fi

array=("$@")

sum=0

for element in "${array[@]}"; 
do
    sum=$((sum + element))
done

echo "Sum of array elements: $sum"

