write a shell script that takes a file name and a range of line numbers as input and print the specified lines from the file .the range should be inclusive (both start and end line numbers should be included).
#!/bin/bash

# Get input from the user
read -p "Enter the filename: " filename
read -p "Enter the start line number: " start
read -p "Enter the end line number: " end

# Validate file
if [ ! -f "$filename" ]; then
  echo "Error: File not found!"
  exit 1
fi

# Validate line numbers
if ! [[ "$start" =~ ^[0-9]+$ && "$end" =~ ^[0-9]+$ && "$start" -le "$end" ]]; then
  echo "Error: Invalid line number range."
  exit 1
fi

# Print lines using sed
echo "Lines $start to $end from '$filename':"
sed -n "${start},${end}p" "$filename"
