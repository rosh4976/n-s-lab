
#!/bin/bash

file="ar.sh"  # The file to check (passed as a command-line argument)

if [ -e "$file" ]; then
    echo "File: $file"

    # Check if the file has read permission
    if [ -r "$file" ]; then
        echo "Read permission: Yes"
    else
        echo "Read permission: No"
    fi

    # Check if the file has write permission
    if [ -w "$file" ]; then
        echo "Write permission: Yes"
    else
        echo "Write permission: No"
    fi

    # Check if the file has execute permission
    if [ -x "$file" ]; then
        echo "Execute permission: Yes"
    else
        echo "Execute permission: No"
    fi
else
    echo "The file does not exist."
fi

