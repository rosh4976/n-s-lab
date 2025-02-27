#!/bin/bash
# Calculate factorial of a number

echo "Enter a number:"
read num

# Initialize result as 1
fact=1

# For loop to calculate factorial
for ((i=1; i<=num; i++))
do
    fact=$((fact * i))
done

echo "Factorial of $num is $fact"


