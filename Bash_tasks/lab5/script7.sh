#!/bin/bash

count_files_in_directory()
{
  directory=$1 
 
  file_count=$(find "$directory" -type f | wc -l) 

  echo "The number of files in directory '$directory' is: $file_count" 
} 

count_files_in_directory "/home/mikayel/Desktop/lab5"
