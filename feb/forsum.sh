#!/bin/bash
# Calculate sum of first n numbers

echo "Enter a number (n):"
read n

# Initialize sum to 0
sum=0

# For loop to calculate the sum
for ((i=1; i<=n; i++))
do
    sum=$((sum + i))
done

echo "The sum of the first $n numbers is $sum"

