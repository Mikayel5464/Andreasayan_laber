#!/bin/bash 
 
read -p "Enter a number: " number 
 
if (( number % 2 == 0 && number % 3 == 0 && number % 5 == 0 ));
then
    echo "The number is a multiple of 2, 3, and 5."
else
    echo "The number is not a multiple of 2, 3, and 5."
fi
