#write a shell script that takes two numbers and an arithmetic operation (+,-,\*,/)as command line arguments .implement the arithmetic operation based on the provided operator using a case statement.
#!/bin/bash

while true
do
# Check if exactly 3 arguments are given
echo "enter the 1st number:"
read num1
echo "enter the second number "
read num2
echo "enter the operator"

read op

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
echo  "do you want to continue? "
read choice
if [ "$choice" !="yes" ];then
	echo "exiting ..."
	break
fi
done

