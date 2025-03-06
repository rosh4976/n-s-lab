#!/bin/bash

# Function to input and display array elements
input_and_display_array() {
    echo "Enter the number of elements in the array:"
    read n  # Read the number of elements

    # Initialize an empty array
    arr=()

    # Loop to input array elements
    for ((i = 0; i < n; i++)); do
        echo "Enter element $((i+1)):"
        read element  # Read each element
        arr+=("$element")  # Add element to the array
    done

    # Display the array elements
    echo "The elements in the array are:"
    for element in "${arr[@]}"; do
        echo "$element"
    done
}

# Call the function
input_and_display_array

