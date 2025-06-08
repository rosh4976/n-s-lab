#!/bin/bash

echo "enter a filename:"
read filename
if [[ ! -f "$filename" ]]
then
        echo "error:'$filename'does not exist or is not a regular file"
        exit 1
fi
lines=$(wc -l < "$filename")
words=$(wc -w < "$filename")
chars=$(wc -m < "$filename")

echo "--------------"
echo "file:$filename"
echo "lines:$lines"
echo "words:$words"
echo "characters:$chars"
echo "--------------"

output
rmurs@Murshi MINGW64 ~/roshna
$ ./countlinewordslines.sh
enter a filename:
array.sh
--------------
file:array.sh
lines:18
words:39
characters:235
--------------


