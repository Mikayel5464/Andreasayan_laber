#!/bin/bash 

read -p "Enter a filename: " filename 

if [[ ! $filename =~ ^[a-zA-Z0-9\-\._]+$ ]]; then 
  echo "Error: Invalid filename. Only letters, numbers, '-', '.', and '_' are allowed." 
  exit 1 
fi 

if [ -e "$filename" ]; 
then 
  echo "File '$filename' already exists." 
else 
  touch "$filename" 
  echo "File '$filename' created." 
fi
