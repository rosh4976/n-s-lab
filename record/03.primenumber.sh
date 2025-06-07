#!/bin/bash

echo "the prime numbers between 50 and 100:"
for((num=50;num<=100;num++))
do
        is_prime=1
        for((i=2;i*i<=num;i++))
        do
                if ((num%i==0))
                then
                        is_prime=0
                        break
                fi
        done
        if ((is_prime==1))
        then
                echo "$num "
        fi
done


output
rmurs@Murshi MINGW64 ~/roshna
$ ./primenumbers.sh
the prime numbers between 50 and 100:
53
59
61
67
71
73
79
83
89
97
