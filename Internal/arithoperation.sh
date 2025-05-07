write a shell script that takes two numbers and an arithmetic operation (+,-,\*,/)as command line arguments .implement the arithmetic operation based on the provided operator using a case statement.
#!/bin/bash

# Check if exactly 3 arguments are given
if [ $# -ne 3 ]; then
  echo "Usage: $0 number1 operator number2"
  echo "Example: $0 10 + 5"
  exit 1
fi

num1=$1
op=$2
num2=$3

# Case statement for arithmetic operations
case "$op" in
  +)
    result=$((num1 + num2))
    ;;
  -)
    result=$((num1 - num2))
    ;;
  \*)
    result=$((num1 * num2))
    ;;
  /)
    if [ "$num2" -eq 0 ]; then
      echo "Error: Division by zero"
      exit 1
    fi
    result=$((num1 / num2))
    ;;
  *)
    echo "Invalid operator. Use +, -, *, or /"
    exit 1
    ;;
esac

echo "Result: $result"
