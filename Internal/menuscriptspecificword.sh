#create a menu driven shell script that provides the following functionalities:
a.delete all lines containing a specific  word from a specified file
b. count the occurences of each word in a specified file
c. exit


#!/bin/bash

while true
do
  echo "Menu:"
  echo "a. Delete all lines containing a specific word from a specified file"
  echo "b. Count the occurrences of each word in a specified file"
  echo "c. Exit"
  read -p "Enter your choice (a/b/c): " choice

  case $choice in
    a)
      read -p "Enter the filename: " filename
      if [ ! -f "$filename" ]; then
        echo "File not found!"
      else
        read -p "Enter the word to delete lines containing it: " word
        # Use grep -v to exclude lines and overwrite the original file
        grep -v "$word" "$filename" > temp_file && mv temp_file "$filename"
        echo "Lines containing '$word' have been deleted from '$filename'."
      fi
      ;;
    b)
      read -p "Enter the filename: " filename
      if [ ! -f "$filename" ]; then
        echo "File not found!"
      else
        echo "Word occurrences:"
        tr -cs '[:alnum:]' '[\n*]' < "$filename" | tr 'A-Z' 'a-z' | sort | uniq -c | sort -nr
      fi
      ;;
    c)
      echo "Exiting program."
      break
      ;;
    *)
      echo "Invalid choice. Please enter a, b, or c."
      ;;
  esac
  echo ""  # For spacing
done
