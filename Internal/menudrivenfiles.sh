Develop a shell script that performs a menudriven  program to display
A. All ordinary files
B. All directory files
C. All special files
D. All files readable by the owner, group  others
E. All files writable by the owner , group and others
F. All files executable by the owner., group and others
#!/bin/bash

# Ask for the target directory (default to current)
read -p "Enter directory (leave blank for current): " dir
dir=${dir:-.}

# Check if directory exists
if [ ! -d "$dir" ]; then
  echo "Error: Directory not found!"
  exit 1
fi

# Main menu loop
while true
do
  echo ""
  echo "Menu:"
  echo "A. All ordinary files"
  echo "B. All directory files"
  echo "C. All special files"
  echo "D. All files readable by owner, group, others"
  echo "E. All files writable by owner, group, others"
  echo "F. All files executable by owner, group, others"
  echo "G. Exit"
  read -p "Enter your choice (A-G): " choice

  case "$choice" in
    A|a)
      echo "Ordinary files:"
      find "$dir" -type f
      ;;
    B|b)
      echo "Directory files:"
      find "$dir" -type d
      ;;
    C|c)
      echo "Special files (block, char, named pipes, sockets):"
      find "$dir" \( -type b -o -type c -o -type p -o -type s \)
      ;;
    D|d)
      echo "Files readable by owner, group, others:"
      find "$dir" -perm -444
      ;;
    E|e)
      echo "Files writable by owner, group, others:"
      find "$dir" -perm -222
      ;;
    F|f)
      echo "Files executable by owner, group, others:"
      find "$dir" -perm -111
      ;;
    G|g)
      echo "Exiting script."
      break
      ;;
    *)
      echo "Invalid choice. Please enter A-G."
      ;;
  esac
done
