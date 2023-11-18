#!/bin/bash

if [ "$#" -lt 2 ]; 
then
    echo "Usage: $0 <array1_element1> <array1_element2> ... <array1_elementN> <array2_element1> <array2_element2> ... <array2_elementN>"
    exit 1
fi

array1=("${@:1:$# / 2}")
array2=("${@:$# / 2 + 1}")

sorted_array1=($(for element in "${array1[@]}"; do echo "$element"; done | sort -nr))
sorted_array2=($(for element in "${array2[@]}"; do echo "$element"; done | sort -nr))

combined_array=("${sorted_array1[@]}" "${sorted_array2[@]}")

echo "Combined array in descending order: ${combined_array[@]}"
echo "Number of elements in the combined array: ${#combined_array[@]}"
