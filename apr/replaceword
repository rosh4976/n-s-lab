#!/bin/bash
echo "Enter the file name:"
read FILENAME

if [[ ! -f "$FILENAME" ]]; then
  echo "File does not exist!"
  exit 1
fi

echo "Enter the word to replace:"
read OLD

echo "Enter the new word:"
read NEW

sed -i "s/$OLD/$NEW/g" "$FILENAME"

echo "The word '$OLD' has been replaced with '$NEW' in $FILENAME."
