#!/bin/bash

echo "enter a number to reverse:"
read num
reverse=0
while [ $num -gt 0 ]
do
        last_digit=$((num%10))
        reverse=$((reverse*10+last_digit))
        num=$((num/10))
done
echo "reversed number:$reverse"


output

rmurs@Murshi MINGW64 ~/roshna
$ ./norev.sh
enter a number to reverse:
3456
reversed number:6543

