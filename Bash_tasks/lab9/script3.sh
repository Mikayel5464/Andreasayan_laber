#!/bin/bash

if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <element1> <element2> ... <elementN>"
    exit 1
fi

array=("$@")

filtered_array=()
for element in "${array[@]}"; 
do
    if ((element % 3 != 0)); 
    then
        filtered_array+=("$element")
    fi
done

echo "Original array: ${array[@]}"
echo "Array after removing multiples of 3: ${filtered_array[@]}"
