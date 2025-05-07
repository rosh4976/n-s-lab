create a menu driven shell script that provides the following functionalities:
a.check if a given number is a prime number
b.calculate the factorial of a given number
c.exit the script
#!/bin/bash

# Function to check if a number is prime
is_prime() {
  num=$1
  if [ "$num" -le 1 ]; then
    echo "$num is not a prime number."
    return
  fi
  for (( i=2; i*i<=num; i++ ))
  do
    if (( num % i == 0 )); then
      echo "$num is not a prime number."
      return
    fi
  done
  echo "$num is a prime number."
}

# Function to calculate factorial
factorial() {
  num=$1
  fact=1
  for (( i=2; i<=num; i++ ))
  do
    fact=$((fact * i))
  done
  echo "Factorial of $num is $fact"
}

# Main menu loop
while true
do
  echo "Menu:"
  echo "a. Check if a number is prime"
  echo "b. Calculate factorial of a number"
  echo "c. Exit"
  read -p "Enter your choice (a/b/c): " choice

  case $choice in
    a)
      read -p "Enter a number to check for prime: " num
      is_prime $num
      ;;
    b)
      read -p "Enter a number to find factorial: " num
      factorial $num
      ;;
    c)
      echo "Exiting script."
      break
      ;;
    *)
      echo "Invalid choice. Please select a, b, or c."
      ;;
  esac

  echo ""  # For spacing
done
