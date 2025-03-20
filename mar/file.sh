#!/bin/bash

path="$1"


if [ -d "$path" ]; then
    echo "$path is a directory."
else
    echo "$path is not a directory."
fi

