Develop a shell script that calculates nCr using a function and takes the value of n and r as command lines arguments
#!/bin/bash

# Function to calculate factorial
factorial() {
  num=$1
  fact=1
  for (( i=2; i<=num; i++ ))
  do
    fact=$((fact * i))
  done
  echo $fact
}

# Check if two arguments are provided
if [ $# -ne 2 ]; then
  echo "Usage: $0 n r"
  exit 1
fi

n=$1
r=$2

# Validate that n and r are numbers and n >= r
if ! [[ "$n" =~ ^[0-9]+$ && "$r" =~ ^[0-9]+$ && "$n" -ge "$r" ]]; then
  echo "Error: Please enter valid non-negative integers with n >= r."
  exit 1
fi

# Calculate factorials
fn=$(factorial $n)
fr=$(factorial $r)
fnr=$(factorial $((n - r)))

# Calculate nCr
nCr=$((fn / (fr * fnr)))

echo "nCr (C($n, $r)) = $nCr"
