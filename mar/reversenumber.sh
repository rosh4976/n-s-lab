#!/bin/bash

# Ask the user for a number
echo "Enter a number:"
read number

# Initialize a variable to store the reversed number
reversed=0

# Reverse the number
while (( number > 0 )); do
    remainder=$(( number % 10 ))   # Get the last digit
    reversed=$(( reversed * 10 + remainder ))  # Append the digit to the reversed number
    number=$(( number / 10 ))      # Remove the last digit from the number
done

# Output the reversed number
echo "Reversed number: $reversed"

