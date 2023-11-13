#!/bin/bash

echo "Enter the first number:"
read num1

echo "Enter the operation (+, -, *, /, **):"
read operation

echo "Enter the second number:"
read num2

result=0

case $operation in
  "+")
    result=$(echo "$num1 + $num2" | bc)
    ;;
  "-")
    result=$(echo "$num1 - $num2" | bc)
    ;;
  "*")
    result=$(echo "$num1 * $num2" | bc)
    ;;
  "/")
    result=$(echo "scale=2; $num1 / $num2" | bc)
    ;;
  "**")
    result=$(echo "$num1 ^ $num2" | bc)
    ;;
  *)
    echo "Invalid operation. Please enter one of: +, -, *, /, **"
    exit 1
    ;;
esac

echo "Result: $result"
