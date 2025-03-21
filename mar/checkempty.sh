#!/bin/bash

file="ar.sh"  # The file to check (passed as a command-line argument)

if [ -e "$file" ]; then
    if [ ! -s "$file" ]; then
        echo "The file is empty."
    else
        echo "The file is not empty."
    fi
else
    echo "The file does not exist."
fi

