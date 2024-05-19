#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 input_file old_text new_text"
    exit 1
fi

input_file="$1"
old_text="$2"
new_text="$3"

sed "s/${old_text}/${new_text}/g" "$input_file" > "${input_file}_updated"
echo "Replacement complete. Updated file: ${input_file}_updated"
