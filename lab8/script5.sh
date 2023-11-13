#!/bin/bash

if [ "$#" -ne 2 ]; 
then
  echo "Usage: $0 <source_file> <destination_file>"
  exit 1
fi

source_file="$1"
destination_file="$2"

if [ ! -e "$source_file" ]; 
then
  echo "Error: Source file $source_file does not exist."
  exit 1
fi

if [ ! -r "$source_file" ]; 
then
  echo "Error: Source file $source_file does not have read permission."
  exit 1
fi

cat "$source_file" > "$destination_file"

echo "File copied successfully from $source_file to $destination_file."
