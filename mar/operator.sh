#!/bin/bash


echo "Enter the first number:"
read num1


echo "Enter the second number:"
read num2


echo "Enter an operator (+, -, *, /):"
read operator


case $operator in
    +)
        result=$((num1 + num2))
        echo "Result: $num1 + $num2 = $result"
        ;;
    -)
        result=$((num1 - num2))
        echo "Result: $num1 - $num2 = $result"
        ;;
   \*)
        result=$((num1 * num2))
        echo "Result: $num1 * $num2 = $result"
        ;;
    /)
        # Check if division by zero
        if [ $num2 -eq 0 ]; then
            echo "Error: Division by zero is not allowed."
        else
            result=$((num1 / num2))
            echo "Result: $num1 / $num2 = $result"
        fi
        ;;
    *)
        echo "Invalid operator! Please use one of (+, -, *, /)."
        ;;
esac

