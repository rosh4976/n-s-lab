#!/bin/bash

# Function to validate password strength
validate_password() {
    password=$1
    length_check=$(echo "$password" | wc -c)
    length_check=$((length_check - 1))  # Remove the trailing newline

    # Check if the password length is at least 8 characters
    if [ "$length_check" -lt 8 ]; then
        echo "Password must be at least 8 characters long."
        return 1
    fi

    # Check if the password contains at least one uppercase letter
    if ! [[ "$password" =~ [A-Z] ]]; then
        echo "Password must contain at least one uppercase letter."
        return 1
    fi

    # Check if the password contains at least one lowercase letter
    if ! [[ "$password" =~ [a-z] ]]; then
        echo "Password must contain at least one lowercase letter."
        return 1
    fi

    # Check if the password contains at least one digit
    if ! [[ "$password" =~ [0-9] ]]; then
        echo "Password must contain at least one digit."
        return 1
    fi

    # Check if the password contains at least one special character
    if ! [[ "$password" =~ [[:punct:]] ]]; then
        echo "Password must contain at least one special character (e.g., @, #, $, %, etc.)."
        return 1
    fi

    echo "Password is strong."
    return 0
}

# Prompt the user to enter a password
echo "Enter a password:"
read -s password  # Read password without showing it on the screen

# Validate the password
validate_password "$password"

