#!/bin/bash 
 
while true; 
do 
    echo "Enter an integer number, or enter q to quit:" 
    read input 
    
    if [ "$input" = "q" ]; then 
        break 
    fi 
    
    double=$((input * 2)) 
    
    echo "Double of $input is $double" 
done
