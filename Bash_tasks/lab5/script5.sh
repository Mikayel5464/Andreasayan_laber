#!/bin/bash

curr_dir=$(pwd)

text_files_number=$(find . -type f -name "*.txt" | wc -l)

cat <<EOF
Current Directory:
$curr_dir
Number of text files:
$text_files_number
EOF
