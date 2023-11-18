#!/bin/bash

file_path="/home/mikayel/Desktop/lab5/new.txt"

if [ -f "$file_path" ]; then 
  if [ -r "$file_path" ]; then 
    echo "The file has read permission." 
  else 
    echo "The file does not have read permission." 
  fi 

  if [ -w "$file_path" ]; 
  then 
    echo "The file has write permission." 
  else 
    echo "The file does not have write permission." 
  fi 

  if [ -x "$file_path" ]; 
  then 
    echo "The file has execute permission." 
  else 
    echo "The file does not have execute permission." 
  fi 
else 
  echo "The file does not exist." 
fi
