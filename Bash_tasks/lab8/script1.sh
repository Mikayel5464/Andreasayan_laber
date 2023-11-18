#!/bin/bash

while true; do
  echo "Enter a number [0-3]:"
  read choice

  case $choice in
    0)
      echo "Exiting the program."
      break
      ;;
    1)
      ls /home/mikayel/* .
      echo "List of files copied to the current directory."
      ;;
    2)
      file_count=$(ls -l /home/mikayel/Desktop/txt_files/*.txt | wc -l)
      echo "Number of text files in /home/mikayel/Desktop/txt_files directory: $file_count"
      ;;
    3)
      current_directory=$(pwd)
      echo "Current working directory: $current_directory"
      ;;
    *)
      echo "Invalid choice. Please enter a number in the range [0-3]."
      ;;
  esac
done
