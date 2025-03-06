#!/bin/bash

# Function to check if the string is a palindrome
is_palindrome() {
    str="$1"
    reversed_str=$(echo "$str" | rev)  # Reverse the string using `rev` command
    if [ "$str" == "$reversed_str" ]; then
        echo "The string is a palindrome."
    else
        echo "The string is not a palindrome."
    fi
}

# Read input from the user
echo "Enter a string:"
read input_string

# Call the function to check palindrome
is_palindrome "$input_string"

