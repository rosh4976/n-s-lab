#!/bin/bash


echo "Enter a 5-digit number:"
read num
if [[ ! "$num" =~ ^[0-9]{5}$ ]]; then
    echo "Please enter a valid 5-digit number."
    exit 1
fi

reversed=""
while [ "$num" -gt 0 ]; do
    digit=$((num % 10))          
    reversed="$reversed$digit"    
    num=$((num / 10))             
done


echo "Reversed number: $reversed"

