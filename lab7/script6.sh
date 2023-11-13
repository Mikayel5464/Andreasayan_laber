#!/bin/bash

directory="/home/mikayel/Desktop/txt_files"
output_file="file_list.txt"
counter=1

if [ -d "$directory" ]; 
then
  cd "$directory" || exit 1

  files=(*.txt)
  total_files=${#files[@]}
  
  while [ "$counter" -le "$total_files" ]; 
  do
    current_file="${files[counter - 1]}"
    echo "$counter: $current_file" >> "$output_file"
    ((counter++))
  done

  echo "File list created in $output_file"
else
  echo "Directory $directory not found."
fi
