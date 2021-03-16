#! /bin/bash

# Create a script take 2 values. If either of the numbers are less than 
# 10 run a loop and print all values otherwise add them and print the 
# result.

num1=$1
num2=$2

if [[ ! $num1 ]]; then
    echo "Enter a first number"
    read -r num1
fi
if [[ ! $num2 ]]; then
    echo "Enter a second number"
    read -r num2
fi

if [[ $num1 -lt 10 || $num2 -lt 10 ]]; then
    array=( $num1 $num2 )
    for i in "${array[@]}"; do
        echo $i
    done
else
    echo "The sum of $num1 and $num2 is $((num1+num2))"
fi