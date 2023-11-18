#!/bin/bash

directory="/home/"

if [ ! -d "$directory" ]; then
    echo "Error: Directory $directory does not exist."
    exit 1
fi

file_array=("$directory"/*)

echo "List of files in $directory:"
for ((i = 0; i < ${#file_array[@]}; i++)); do
    filename="${file_array[$i]}"
    length=${#filename}
    echo "[$i] $filename (Length: $length)"
done

