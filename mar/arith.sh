#!/bin/bash

# Function to perform arithmetic operations
echo "Enter first number: "
read num1
echo "Enter second number: "
read num2

echo "Select operation:"
echo "1. Addition (+)"
echo "2. Subtraction (-)"
echo "3. Multiplication (*)"
echo "4. Division (/)"
echo "5. Modulus (%)"
read operation

# Switch statement using case
case $operation in
    1)
        result=$((num1 + num2))
        echo "Result: $num1 + $num2 = $result"
        ;;
    2)
        result=$((num1 - num2))
        echo "Result: $num1 - $num2 = $result"
        ;;
    3)
        result=$((num1 * num2))
        echo "Result: $num1 * $num2 = $result"
        ;;
    4)
        if [ $num2 -ne 0 ]; then
            result=$((num1 / num2))
            echo "Result: $num1 / $num2 = $result"
        else
            echo "Error: Division by zero is not allowed."
        fi
        ;;
    5)
        result=$((num1 % num2))
        echo "Result: $num1 % $num2 = $result"
        ;;
    *)
        echo "Invalid operation selected."
        ;;
esac

