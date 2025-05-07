write a shell script to test whether the given year is leap year or not
#!/bin/bash

# Prompt user to enter a year
read -p "Enter a year: " year

# Check if input is a valid positive number
if ! [[ "$year" =~ ^[0-9]+$ ]]; then
  echo "Invalid input. Please enter a valid year."
  exit 1
fi

# Leap year condition
if (( (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0) )); then
  echo "$year is a leap year."
else
  echo "$year is not a leap year."
fi
