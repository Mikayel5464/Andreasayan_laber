#!/bin/bash 

read -p "Enter the first number: " num1 
read -p "Enter the second number: " num2 

if [ "$num1" -gt "$num2" ]; then 
  largest=$num1
else 
  largest=$num2
fi

echo "The largest number is: $largest"
