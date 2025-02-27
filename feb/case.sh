#!/bin/bash
echo "Enter your option: 1:Add, 2:Sub, 3:Mul"
read i
echo "Enter the first number:"
read num1
echo "Enter the second number:"
read num2

case $i in
    1) echo "Result: $(($num1 + $num2))" ;;
    2) echo "Result: $(($num1 - $num2))" ;;
    3) echo "Result: $(($num1 * $num2))" ;;
    *) echo "Invalid option" ;;
esac

