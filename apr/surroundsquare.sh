#!/bin/bash
read -p "Enter the filename: " filename


if [ ! -f "$filename" ]; then
  echo "Error: File '$filename' not found."
  exit 1
fi


sed -i 's/[0-9]\+/[\0]/g' "$filename"

echo "All numbers in '$filename' have been surrounded with square brackets."

