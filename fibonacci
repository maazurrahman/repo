#!/bin/bash

echo "Enter the number of terms:"
read n

# Initializing first two Fibonacci numbers
a=0
b=1

echo "Fibonacci Series up to $n terms:"

# Printing the first two terms
echo -n "$a $b "

# Generating Fibonacci series
for ((i=3;i<=n;i++))
do
    # Sum of the last two numbers
    c=$((a + b))
    echo -n "$c "

    # Updating the values of a and b for the next iteration
    a=$b
    b=$c
done

echo ""
