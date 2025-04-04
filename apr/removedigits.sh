#!/bin/bash


read -p "Enter the filename: " filename


if [ ! -f "$filename" ]; then
  echo "Error: File '$filename' not found."
  exit 1
fi


sed -i 's/[0-9]//g' "$filename"

echo "All digits have been removed from '$filename'."

