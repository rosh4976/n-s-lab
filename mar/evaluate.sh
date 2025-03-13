#!/bin/bash
echo "enter the value of a:"
read a
echo "enter the value of b:"
read b
echo "enter the value of c:"
read c
echo "enter the value of d:"
read d

if  [ "$d" -eq 0 ]; then
	echo "division is not possible"
	exit 1
fi
result=$(echo "$a*20 - $b*2 + $c / $d" | bc)
echo $result

