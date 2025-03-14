#!/bin/bash


is_armstrong() {
    num=$1
    sum=0
    original_num=$num
    
    num_digits=${#num}
    
    
    while [ $num -gt 0 ]; do
        digit=$((num % 10)) 
        sum=$((sum + digit ** num_digits)) 
	num=$((num /10))
    done
    
    
    if [ $sum -eq $original_num ] && [ $original_num -gt 9 ]; then
        echo "$original_num is an Armstrong number"
    fi
}


echo "Enter the lower limit:"
read lower
echo "Enter the upper limit:"
read upper


for num in $(seq $lower $upper); do
    is_armstrong $num
done

