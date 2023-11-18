#!/bin/bash

if [ "$#" -eq 0 ]; 
then
    echo "Usage: $0 <element1> <element2> ... <elementN>"
    exit 1
fi

array=("$@")

min_value=$(printf "%s\n" "${array[@]}" | sort -n | head -n 1)
max_value=$(printf "%s\n" "${array[@]}" | sort -n | tail -n 1)

mean=$(( (min_value + max_value) / 2 ))

array+=("$mean")

echo "${array[@]}"
