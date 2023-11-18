#!/bin/bash

echo "Enter array elements (press Ctrl+D when done):"

while read -r element; 
do
    array+=("$element")
done

arr_length=${#array[@]}

echo "Array elements in reverse order:"

for ((i = arr_length - 1; i >= 0; i--)); 
do
    echo "${array[i]}"
done

