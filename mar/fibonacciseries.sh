#!/bin/bash

# Ask user for the number of terms
echo "Enter the number of terms for the Fibonacci series:"
read n

# Initialize the first two Fibonacci numbers
a=0
b=1

# Print the Fibonacci series
echo "Fibonacci Series up to $n terms:"

for (( i=0; i<n; i++ ))
do
    echo -n "$a "
    # Calculate the next number in the series
    fn=$((a + b))
    a=$b
    b=$fn
done

echo

