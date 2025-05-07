write a shell program to print all prime numbers upto a limit
#!/bin/bash

# Read limit from user
read -p "Enter the limit: " limit

echo "Prime numbers up to $limit are:"

# Function to check if a number is prime
is_prime() {
  num=$1
  if [ "$num" -le 1 ]; then
    return 1
  fi
  for (( i=2; i*i<=num; i++ ))
  do
    if (( num % i == 0 )); then
      return 1
    fi
  done
  return 0
}

# Loop through numbers from 2 to limit
for (( n=2; n<=limit; n++ ))
do
  if is_prime $n; then
    echo "$n"
  fi
done
