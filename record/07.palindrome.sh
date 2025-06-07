#!/bin/bash
echo "enter a string "
read str
reversed=$(echo "$str" | rev)

if [ "$str" = "$reversed" ]
then
        echo "the string is a palindrome"
else
        echo "the string is not a palindrome"
fi


output
rmurs@Murshi MINGW64 ~/roshna
$ ./palindrome.sh
enter a string
malayalam
the string is not a palindrome
