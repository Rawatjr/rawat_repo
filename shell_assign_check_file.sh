#!/bin/bash
echo "enter name of the file to be searched : "
read name
ls $name
if [ $? -eq 0 ]; then
echo "file exist"
else
echo "file not found"
fi
