create a menu driven shell script that provides the following  functionalities :                                                       a.display the lines of a specified file in reverse order                                                                                                                                 b.list all files in a specified directory                                                                                                                                                                 c.exit the script
#!/bin/bash

# Function to display file content in reverse order
display_reverse() {
  file=$1
  if [ ! -f "$file" ]; then
    echo "Error: File not found!"
    return
  fi
  echo "Displaying lines of '$file' in reverse order:"
  tac "$file"  # tac is used to display lines in reverse order
}

# Function to list all files in a specified directory
list_files() {
  dir=$1
  if [ ! -d "$dir" ]; then
    echo "Error: Directory not found!"
    return
  fi
  echo "Files in '$dir':"
  ls -l "$dir" | grep "^-"  # List only files, excluding directories
}

# Main menu loop
while true
do
  echo "Menu:"
  echo "a. Display the lines of a specified file in reverse order"
  echo "b. List all files in a specified directory"
  echo "c. Exit"
  read -p "Enter your choice (a/b/c): " choice

  case $choice in
    a)
      read -p "Enter the filename: " filename
      display_reverse "$filename"
      ;;
    b)
      read -p "Enter the directory path: " dir
      list_files "$dir"
      ;;
    c)
      echo "Exiting script."
      break
      ;;
    *)
      echo "Invalid choice. Please select a, b, or c."
      ;;
  esac

  echo ""  # For spacing
done
