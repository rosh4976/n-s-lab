create a shell name that takes a filename as input and delete all lines that contains the word 'linux' from that file .the modified content should be saved back to the original file
#!/bin/bash

# Prompt user for filename
read -p "Enter the filename: " filename

# Check if file exists
if [ ! -f "$filename" ]; then
  echo "Error: File not found!"
  exit 1
fi

# Delete lines containing 'linux' (case-sensitive) and overwrite the file
grep -v 'linux' "$filename" > temp_file && mv temp_file "$filename"

echo "All lines containing the word 'linux' have been removed from '$filename'."
