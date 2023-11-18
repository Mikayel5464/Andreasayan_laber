#!/bin/bash

if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <element1> <element2> ... <elementN>"
    exit 1
fi

array=("$@")

array=("${array[@]//a/s}")

echo "Original array: ${array[@]}"
echo "Reproduced array after replacing 'a' with 's': ${array[@]}"

