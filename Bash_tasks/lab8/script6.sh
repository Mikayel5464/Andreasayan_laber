#!/bin/bash

if [ "$#" -ne 2 ]; 
then
  echo "Usage: $0 <number1> <number2>"
  exit 1
fi

if ! [[ $1 =~ ^[0-9]*$ ]] || ! [[ $2 =~ ^[0-9]*$ ]]; 
then
  echo "Error: Please enter valid numeric values."
  exit 1
fi

number1=$1
number2=$2
sum=$((number1 + number2))

echo "Sum of $number1 and $number2 is: $sum"
