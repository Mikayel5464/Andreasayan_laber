#!/bin/bash

if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <element1> <element2> ... <elementN>"
    exit 1
fi

array=("$@")

even_array=()
odd_array=()

for element in "${array[@]}"; do
    if ((element % 2 == 0)); then
        even_array+=("$element")
    else
        odd_array+=("$element")
    fi
done

echo "Original array: ${array[@]}"
echo "Even elements: ${even_array[@]}"
echo "Odd elements: ${odd_array[@]}"

