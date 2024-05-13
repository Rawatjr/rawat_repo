#!/bin/bash
count_lines(){
echo "enter filename : "
filename="$1"
read filename
if [ -e "$filename" ]; then
lines=$(wc -l < "$filename")
echo "number of lines in $filename; $lines"
else
echo "file '$filename' not found."
fi 
}

count_lines $filename
