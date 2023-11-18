#!/bin/bash 
 
count=0 
 
for num in "$@"; do 
  if (( num % 2 == 0 )); 
  then 
    (( count++ )) 
  fi 
done 
 
echo "Number of even numbers: $count"
