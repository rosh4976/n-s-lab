#!/bin/bash
# Function to delete the last line
delete_last_line() {
    sed -i '$d' "com.sh"
    echo "Last line deleted."
}

# Function to delete lines in a specific range
delete_range_lines() {
    echo "Enter the start line (x):"
    read x
    echo "Enter the end line (y):"
    read y
    sed -i "${x},${y}d" "com.sh"
    echo "Lines from $x to $y deleted."
}

# Function to delete all blank lines
delete_blank_lines() {
    sed -i '/^[[:space:]]*$/d' "com.sh"
    echo "All blank lines deleted."
}

# Menu loop
while true; do
    echo "Select an option:"
    echo "1. Delete the last line"
    echo "2. Delete lines from range x to y"
    echo "3. Delete all blank lines"
    echo "4. Exit"
    read -p "Enter your choice (1-4): " choice

    # Switch-case like structure
    case $choice in
        1)
            delete_last_line
            ;;
        2)
            delete_range_lines
            ;;
        3)
            delete_blank_lines
            ;;
        4)
            echo "Exiting script."
            break
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac
done

