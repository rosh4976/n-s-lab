write a shell script to replace an old string with new string
#!/bin/bash

# Prompt user for inputs
read -p "Enter the filename: " filename
read -p "Enter the old string: " old
read -p "Enter the new string: " new

# Check if file exists
if [ ! -f "$filename" ]; then
  echo "File not found!"
  exit 1
fi

# Use sed to replace the string
sed -i "s/$old/$new/g" "$filename"

echo "All occurrences of '$old' have been replaced with '$new' in '$filename'."
