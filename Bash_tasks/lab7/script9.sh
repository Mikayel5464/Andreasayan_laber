#!/bin/bash 
 
for file in "$@" 
do 
    shortest_word="" 
    shortest_word_length=100
 
    while IFS= read -r word 
    do 
        word_length=${#word} 
 
        if (( word_length < shortest_word_length )) 
        then 
            shortest_word=$word 
            shortest_word_length=$word_length 
        fi 
 
    done < "$file" 
 
    echo "Shortest word in $file is \"$shortest_word\" with length $shortest_word_length" 
done
