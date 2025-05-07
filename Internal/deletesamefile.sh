write a shell script to check whether two files are same or not ,if same delete one
#!/bin/bash

# Prompt for two filenames
read -p "Enter the first filename: " file1
read -p "Enter the second filename: " file2

# Check if both files exist
if [ ! -f "$file1" ] || [ ! -f "$file2" ]; then
  echo "Error: One or both files do not exist."
  exit 1
fi

# Compare the files
if cmp -s "$file1" "$file2"; then
  echo "The files are identical."

  # Ask user which one to delete
  echo "Deleting '$file2' by default..."
  rm "$file2"
  echo "'$file2' has been deleted."
else
  echo "The files are different."
fi
