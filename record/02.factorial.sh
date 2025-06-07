#!/bin/bash
echo "enter a number"
read num
fact=1
while [ $num -gt 1 ]
do
        fact=$((fact * num))
        num=$((num-1))
done
echo $fact






output

rmurs@Murshi MINGW64 ~/roshna
$ ./fact.sh
enter a number
4
24

