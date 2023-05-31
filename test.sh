#!/bin/bash

# This is an example of an infinite for loop

# Counter variable
counter=1

# Infinite loop
for (( ; ; ))
do
    echo "Loop iteration: $counter"
    # Your code here

    # Increment the counter
    counter=$((counter+1))

    # Delay for 1 second
    sleep 1
done
