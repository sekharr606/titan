#!/bin/sh
FILE="myfile.txt"
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else
    echo "$FILE does not exist."
fi

