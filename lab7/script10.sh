#!/bin/bash 
 
for file in "$@" 
do 
    if [ -e "$file" ]; then 
        echo "File '$file' exists." 
         
        if [ -r "$file" ]; then 
            echo "File '$file' has read permission." 
        else 
            echo "File '$file' does not have read permission." 
        fi 

	if [ -w "$file" ]; then
            echo "File '$file' has write permission."
        else
            echo "File '$file' does not have write permission."
        fi

	if [ -x "$file" ]; then
            echo "File '$file' has execute permission."
        else
            echo "File '$file' does not have execute permission."
        fi

    else 
        echo "File '$file' does not exist." 
    fi 
done
