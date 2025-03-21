#!/bin/bash

file1="ar.sh"  # First file to compare
file2="arr.sh"  # Second file to compare

if [ ! -e "$file1" ]; then
    echo "File '$file1' does not exist."
    exit 1
fi

if [ ! -e "$file2" ]; then
    echo "File '$file2' does not exist."
    exit 1
fi

# Compare the files using cmp
cmp --silent "$file1" "$file2"
if [ $? -eq 0 ]; then
    echo "The files are identical."
else
    echo "The files are different."
fi

