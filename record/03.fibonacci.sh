#!/bin/bash
echo "enter a number"
read num
a=0
b=1
echo "the fibonacci series is:"
for ((i=0;i<num;i++))
do
        echo -n "$a "
        next=$((a+b))
        a=$b
        b=$next
done
echo " "



output

rmurs@Murshi MINGW64 ~/roshna
$ ./fib.sh
enter a number
9
the fibonacci series is:
0 1 1 2 3 5 8 13 21


