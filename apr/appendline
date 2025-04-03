#!/bin/bash
echo "Enter the file name:"
read FILENAME

if [[ ! -f "$FILENAME" ]]; then
  echo "File does not exist!"
  exit 1
fi

echo "Enter the text to append:"
read APPEND

sed -i "s/\$/$APPEND/" "$FILENAME"

echo "Text '$APPEND' has been appended to each line in $FILENAME."
