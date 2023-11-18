#!/bin/bash

if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <word1> <word2> ... <wordN>"
    exit 1
fi

array=("$@")

filtered_array=()

for word in "${array[@]}"; do
    if [[ ! "$word" =~ a ]]; then
        filtered_array+=("$word")
    fi
done

echo "Original array: ${array[@]}"
echo "Words without the letter 'a': ${filtered_array[@]}"

