#!/bin/bash
while true ; do
echo "Enter a number (0 to exit); "
read number
if [ "$number" -eq 0 ]; then
echo "Exiting the program"
break
elif (($number % 2==0)); then
echo "$number is even"
else 
echo "number is odd"
fi
done

