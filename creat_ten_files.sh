#!/bin/bash

mkdir ten_file

for ((i=1; i<=10; i++)); do
file="ten_file/file${i}.txt"
echo "File${i}.txt" > "$file"
done
