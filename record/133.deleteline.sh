#!/bin/bash

echo " enter the filename:"
read filename
echo "enter the no: starting of line "
read start
echo "enter the no: ending of line"
read end
sed "${start},${end}d" "$filename" > temp.txt
echo "lines $start to $end deleted and saved in temp.txt"



output
rmurs@Murshi MINGW64 ~/roshna
$ ./deleteline.sh
 enter the filename:
array.sh
enter the no: starting of line
4
enter the no: ending of line
7
lines 4 to 7 deleted and saved in temp.txt

