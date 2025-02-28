#!/bin/bash
echo "enter the value of a"
read a
echo "enter the value of b"
read b
if [[ $a -eq $b ]]
then 
	echo "a is equal to b"
elif [[ $a -gt $b ]]
then
	echo "a is greater than b"
elif [[ $a -lt $b ]]
then 
	echo "a is less than b"
fi
