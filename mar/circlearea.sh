#!/bin/bash

# Function to calculate the area of a circle
calculate_area() {
    radius=$1
    pi=3.14159
    area=$(echo "$pi * $radius * $radius" | bc)  # Using bc for floating point calculation
    echo "The area of the circle with radius $radius is: $area"
}

# Read input for the radius
echo "Enter the radius of the circle:"
read radius

# Call the function to calculate the area
calculate_area "$radius"

