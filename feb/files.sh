#!/bin/bash

# Set the directory you want to list files from
directory="/home/mca/rosh"

# Loop through each item in the directory
for item in "$directory"/*; do
  # Check if the item is a file
  if [ -f "$item" ]; then
    echo "$item"
  fi
done

