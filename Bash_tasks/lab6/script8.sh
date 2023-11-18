#!/bin/bash 
 
stty -echo 
 
read -p "Enter a word: " -s REPLY 
echo 
 
stty echo 
 
if [[ "$REPLY" == "secret" ]]; then 
  echo "Congratulations! You entered the secret word." 
else 
  echo "Sorry, the word you entered does not match the secret word." 
fi
