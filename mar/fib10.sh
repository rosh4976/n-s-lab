#!/bin/bash


a=0
b=1
sum=0
count=10

echo "Fibonacci series up to $count terms:"


for ((i=1; i<=count; i++))
do
    echo -n "$a "        
    sum=$((sum + a))      
    temp=$a
    a=$b
    b=$((temp + b))      
done

echo -e "\nSum of the Fibonacci series up to $count terms: $sum"

