#!/bin/bash
echo "Enter the file name:"
read FILENAME

if [[ ! -f "$FILENAME" ]]; then
  echo "File does not exist!"
  exit 1
fi

echo "Enter the line number to delete:"
read LINENUMBER

sed -i "${LINENUMBER}d" "$FILENAME"

echo "Line $LINENUMBER has been deleted from $FILENAME."


