#!/bin/bash


read -p "Enter the filename: " filename

if [ ! -f "$filename" ]; then
  echo "Error: File '$filename' not found."
  exit 1
fi


sed '/\.$/a\
This is the appended line.' "$filename" > temp_file && mv temp_file "$filename"

echo "Line has been appended after each line ending with a period."

