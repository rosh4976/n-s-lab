WRITE A SHELL SCRIPT THAT calculates nCr using a function (n!/(r!(n-r)!)
#!/bin/bash

# Function to calculate factorial
factorial() {
  local n=$1
  local fact=1
  for (( i=2; i<=n; i++ ))
  do
    fact=$((fact * i))
  done
  echo $fact
}

# Read values of n and r
read -p "Enter value of n: " n
read -p "Enter value of r: " r

# Validate input
if [ "$r" -gt "$n" ]; then
  echo "Invalid input: r cannot be greater than n."
  exit 1
fi

# Calculate factorials
fact_n=$(factorial $n)
fact_r=$(factorial $r)
fact_n_r=$(factorial $((n - r)))

# Calculate nCr = n! / (r! * (n-r)!)
nCr=$((fact_n / (fact_r * fact_n_r)))

echo "nCr (C($n, $r)) = $nCr"
