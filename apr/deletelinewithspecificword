#!/bin/bash

# Prompt the user for the file name
echo "Enter the file name:"
read INPUT_FILE

# Check if the file exists
if [[ ! -f "$INPUT_FILE" ]]; then
  echo "Error: The file '$INPUT_FILE' does not exist!"
  exit 1
fi

# Prompt the user for the word to search and delete
echo "Enter the word to search for and delete the line containing it:"
read SEARCH_WORD

# Use sed to delete lines containing the word
# -i: in-place editing
# /$SEARCH_WORD/: the word to search for
# d: delete the line
sed -i "/$SEARCH_WORD/d" "$INPUT_FILE"

# Confirm that the lines were deleted
echo "Lines containing '$SEARCH_WORD' have been deleted from '$INPUT_FILE'."

