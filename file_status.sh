#! /bin/bash

# Write a shell script which prompts for a number, and if the number is greater
# than 10, it prints you won, otherwise prints you fail.

echo "Please enter a file name."
read -r answer

if [[ ! $answer ]]; then
    echo "Missing argument"
    exit 1
fi

if [[ ! -e $answer ]]; then
    echo "File does not exist"
else
    echo "You fail"
fi