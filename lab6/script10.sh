#!/bin/bash 
 
read -p "Enter three values (number, action, number): " values 
 
# Split the input into an array 
IFS=' ' read -ra values_array <<< "$values" 
 
# Check if exactly 3 values were entered 
if (( ${#values_array[@]} != 3 )); then 
  echo "Error: Invalid number of values." 
  exit 1 
fi 
 
num1=${values_array[0]} 
operator=${values_array[1]} 
num2=${values_array[2]} 
 
# Validate the operator 
if [[ "$operator" != "+" && "$operator" != "-" && "$operator" != "*" && "$operator" != "/" && "$operator" != "**" ]]; then 
  echo "Error: Invalid operator." 
  exit 1 
fi 
 
# Perform the calculation based on the operator 
result=0 
case $operator in 
  "+") 
    result=$(bc <<< "$num1 + $num2") 
    ;; 
  "-") 
    result=$(bc <<< "$num1 - $num2") 
    ;; 
  "*") 
    result=$(bc <<< "$num1 * $num2") 
    ;; 
  "/") 
    result=$(bc <<< "scale=2; $num1 / $num2") 
    ;; 
  "**") 
    result=$(bc <<< "$num1 ^ $num2") 
    ;; 
  *) 
    echo "Error: Invalid operator." 
    exit 1 
    ;; 
esac 
 
echo "Result: $result"
