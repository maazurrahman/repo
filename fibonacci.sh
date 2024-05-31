#!/bin/bash

echo "Enter the number of terms:"
read n

# Initializing first two Fibonacci numbers
a=0
b=1

# Function to check if a number is odd
is_odd() {
    if [ $(($1 % 2)) -ne 0 ]; then
        return 0
    else
        return 1
    fi
}

echo "Generating Fibonacci Series up to $n terms and saving odd numbers to output.txt"

# Generating Fibonacci series
for ((i=1;i<=n;i++))
do
    # Checking if current Fibonacci number is odd
    if is_odd $a; then
        echo $a >> output.txt
    fi

    # Calculating the next Fibonacci number
    c=$((a + b))

    # Updating the values of a and b for the next iteration
    a=$b
    b=$c
done

echo "Output saved to output.txt"
