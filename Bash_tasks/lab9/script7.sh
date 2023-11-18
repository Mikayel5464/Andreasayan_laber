#!/bin/bash

if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <element1> <element2> ... <elementN>"
    exit 1
fi

array=("$@")

if [ "${#array[@]}" -lt 3 ]; then
    echo "Error: Array must have at least 3 elements."
    exit 1
fi

new_array=("${array[@]: -3}")

echo "Original array: ${array[@]}"
echo "New array: ${new_array[@]}"
