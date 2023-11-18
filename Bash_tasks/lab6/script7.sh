#!/bin/bash 
 
read -p "Enter the number to be checked: " number 
 
read -p "Enter the lower limit of the range: " lower_limit 
read -p "Enter the upper limit of the range: " upper_limit 
 
if ! [[ $number =~ ^[0-9]+$ ]]; 
then 
  echo "Error: The number is not a valid positive integer." 
  exit 1 
fi 
 
if ! [[ $lower_limit =~ ^[0-9]+$ ]] || ! [[ $upper_limit =~ ^[0-9]+$ ]];
then
  echo "Error: The range limits are not valid positive integers." 
  exit 1 
fi

if (( number >= lower_limit && number <= upper_limit )); then 
  echo "The number $number is within the interval [$lower_limit, $upper_limit]." 
else 
  echo "The number $number is not within the interval [$lower_limit, $upper_limit]." 
fi
