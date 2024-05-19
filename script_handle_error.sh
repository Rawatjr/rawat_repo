#!/bin/bash
mkdir -p create ||
{ echo "Error: Failed to create directory 'create'."; exit 1; }

for((i=1; i<=10; i++)); do
file="create/file${i}.txt"
echo "file${i}.txt > "$file" ||
{ echo "Error: failed to create file" ${file} ; exit 1; }
done

