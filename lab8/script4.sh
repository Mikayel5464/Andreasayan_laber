#!/bin/bash

if [ "$#" -ne 1 ]; 
then
  echo "Usage: $0 <filename>"
  exit 1
fi

filename="$1"

if [ -e "$filename" ] && [ -r "$filename" ]; 
then
  cat "$filename"
else
  echo "File $filename does not exist or does not have read permission."
fi
